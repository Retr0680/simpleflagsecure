.class public Lcom/android/server/power/stats/BluetoothPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "BluetoothPowerStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;,
        Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;,
        Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;,
        Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ACTIVITY_REQUEST_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerStatsCollector"


# instance fields
.field private mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

.field private mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field private mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

.field private mDeviceStats:[J

.field private final mInjector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;

.field private mIsInitialized:Z

.field private mLastIdleTime:J

.field private mLastRxTime:J

.field private mLastTxTime:J

.field private mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

.field private final mObserver:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;

.field private mPowerStats:Lcom/android/internal/os/PowerStats;

.field private final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3824U9J2kTG05xiNsh4SEdMikUA(Lcom/android/server/power/stats/BluetoothPowerStatsCollector;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->lambda$collectBluetoothScanStats$0(IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;)V
    .locals 6
    .param p1, "injector"    # Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;
    .param p2, "observer"    # Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;

    .line 98
    invoke-interface {p1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 99
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 101
    invoke-interface {p1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    .line 102
    invoke-interface {p1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    .line 98
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 95
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 103
    iput-object p1, v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;

    .line 104
    iput-object p2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;

    .line 105
    return-void
.end method

.method private collectBluetoothActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 27

    .line 169
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v2, v0

    .line 170
    .local v2, "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/bluetooth/BluetoothActivityEnergyInfo;>;"
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

    new-instance v3, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;

    invoke-direct {v4, v1, v2}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;-><init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v0, v3, v4}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)Z

    move-result v3

    .line 186
    .local v3, "success":Z
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 187
    return-object v4

    .line 192
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x4e20

    invoke-virtual {v2, v5, v6, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .local v0, "activityInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    goto :goto_0

    .line 194
    .end local v0    # "activityInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothPowerStatsCollector"

    const-string v6, "Cannot acquire BluetoothActivityEnergyInfo"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/4 v5, 0x0

    move-object v0, v5

    .line 199
    .local v0, "activityInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :goto_0
    if-nez v0, :cond_1

    .line 200
    return-object v4

    .line 203
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v5

    .line 204
    .local v5, "rxTime":J
    iget-wide v7, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastRxTime:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 205
    .local v7, "rxTimeDelta":J
    iget-object v11, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v12, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v11, v12, v7, v8}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setDeviceRxTime([JJ)V

    .line 206
    iput-wide v5, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastRxTime:J

    .line 208
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v11

    .line 209
    .local v11, "txTime":J
    iget-wide v13, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastTxTime:J

    sub-long v13, v11, v13

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 210
    .local v13, "txTimeDelta":J
    iget-object v15, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v4, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v15, v4, v13, v14}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setDeviceTxTime([JJ)V

    .line 211
    iput-wide v11, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastTxTime:J

    .line 213
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v9

    .line 214
    .local v9, "idleTime":J
    move-object v4, v2

    move v15, v3

    .end local v2    # "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/bluetooth/BluetoothActivityEnergyInfo;>;"
    .end local v3    # "success":Z
    .local v4, "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/bluetooth/BluetoothActivityEnergyInfo;>;"
    .local v15, "success":Z
    iget-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastIdleTime:J

    sub-long v2, v9, v2

    move-wide/from16 v18, v5

    move-object v6, v4

    const-wide/16 v4, 0x0

    .end local v4    # "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/bluetooth/BluetoothActivityEnergyInfo;>;"
    .end local v5    # "rxTime":J
    .local v6, "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/bluetooth/BluetoothActivityEnergyInfo;>;"
    .local v18, "rxTime":J
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 215
    .local v2, "idleTimeDelta":J
    iget-object v4, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v5, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setDeviceIdleTime([JJ)V

    .line 216
    iput-wide v9, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastIdleTime:J

    .line 218
    iget-object v4, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    add-long v20, v7, v13

    move-wide/from16 v22, v2

    .end local v2    # "idleTimeDelta":J
    .local v22, "idleTimeDelta":J
    add-long v2, v20, v22

    iput-wide v2, v4, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 220
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object v2

    .line 221
    .local v2, "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 222
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/UidTraffic;

    .line 223
    .local v4, "ut":Landroid/bluetooth/UidTraffic;
    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-object/from16 v20, v0

    .end local v0    # "activityInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v20, "activityInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v0

    .line 224
    .local v0, "uid":I
    iget-object v5, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    .line 225
    .local v5, "counts":Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;
    if-nez v5, :cond_2

    .line 226
    move-object/from16 v21, v2

    .end local v2    # "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    .local v21, "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    new-instance v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    move/from16 v24, v3

    const/4 v3, 0x0

    .end local v3    # "i":I
    .local v24, "i":I
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;-><init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector-IA;)V

    move-object v5, v2

    .line 227
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 225
    .end local v21    # "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    .end local v24    # "i":I
    .restart local v2    # "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    .restart local v3    # "i":I
    :cond_2
    move-object/from16 v21, v2

    move/from16 v24, v3

    const/4 v3, 0x0

    .line 229
    .end local v2    # "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    .end local v3    # "i":I
    .restart local v21    # "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    .restart local v24    # "i":I
    :goto_2
    move-object v2, v4

    .end local v4    # "ut":Landroid/bluetooth/UidTraffic;
    .local v2, "ut":Landroid/bluetooth/UidTraffic;
    iget-wide v3, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    invoke-virtual {v2}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v25

    add-long v3, v3, v25

    iput-wide v3, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    .line 230
    iget-wide v3, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    invoke-virtual {v2}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v25

    add-long v3, v3, v25

    iput-wide v3, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    .line 221
    .end local v0    # "uid":I
    .end local v2    # "ut":Landroid/bluetooth/UidTraffic;
    .end local v5    # "counts":Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;
    add-int/lit8 v3, v24, -0x1

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    .end local v24    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .end local v20    # "activityInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local v21    # "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    .local v0, "activityInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v2, "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    :cond_3
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move/from16 v24, v3

    .line 233
    .end local v0    # "activityInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local v2    # "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    .end local v3    # "i":I
    .restart local v20    # "activityInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v21    # "uidTraffic":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/UidTraffic;>;"
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_7

    .line 234
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    .line 235
    .local v2, "counts":Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;
    iget-wide v3, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    move-wide/from16 v24, v3

    iget-wide v3, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastRxCount:J

    sub-long v3, v24, v3

    move-object/from16 v16, v6

    const-wide/16 v5, 0x0

    .end local v6    # "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/bluetooth/BluetoothActivityEnergyInfo;>;"
    .local v16, "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/bluetooth/BluetoothActivityEnergyInfo;>;"
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 236
    .local v3, "rxDelta":J
    iget-wide v5, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    iput-wide v5, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastRxCount:J

    .line 237
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    .line 239
    iget-wide v5, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    move-wide/from16 v24, v5

    iget-wide v5, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastTxCount:J

    sub-long v5, v24, v5

    move-wide/from16 v24, v7

    const-wide/16 v7, 0x0

    .end local v7    # "rxTimeDelta":J
    .local v24, "rxTimeDelta":J
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 240
    .local v5, "txDelta":J
    iget-wide v7, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    iput-wide v7, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastTxCount:J

    .line 241
    const-wide/16 v7, 0x0

    iput-wide v7, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    .line 243
    cmp-long v17, v3, v7

    if-nez v17, :cond_4

    cmp-long v17, v5, v7

    if-eqz v17, :cond_5

    :cond_4
    goto :goto_4

    :cond_5
    move/from16 v26, v0

    goto :goto_6

    .line 244
    :goto_4
    iget-object v7, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 245
    .local v7, "uid":I
    iget-object v8, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v8, v8, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    .line 246
    .local v8, "stats":[J
    if-nez v8, :cond_6

    .line 247
    move/from16 v26, v0

    .end local v0    # "i":I
    .local v26, "i":I
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v0

    new-array v8, v0, [J

    .line 248
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 246
    .end local v26    # "i":I
    .restart local v0    # "i":I
    :cond_6
    move/from16 v26, v0

    .line 251
    .end local v0    # "i":I
    .restart local v26    # "i":I
    :goto_5
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v0, v8, v3, v4}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setUidRxBytes([JJ)V

    .line 252
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v0, v8, v5, v6}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setUidTxBytes([JJ)V

    .line 233
    .end local v2    # "counts":Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;
    .end local v3    # "rxDelta":J
    .end local v5    # "txDelta":J
    .end local v7    # "uid":I
    .end local v8    # "stats":[J
    :goto_6
    add-int/lit8 v0, v26, -0x1

    move-object/from16 v6, v16

    move-wide/from16 v7, v24

    .end local v26    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .end local v16    # "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/bluetooth/BluetoothActivityEnergyInfo;>;"
    .end local v24    # "rxTimeDelta":J
    .restart local v6    # "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/bluetooth/BluetoothActivityEnergyInfo;>;"
    .local v7, "rxTimeDelta":J
    :cond_7
    nop

    .line 256
    .end local v0    # "i":I
    return-object v20
.end method

.method private collectBluetoothScanStats()V
    .locals 10

    .line 260
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

    new-instance v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector;)V

    invoke-interface {v0, v1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;->retrieveBluetoothScanTimes(Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever$Callback;)V

    .line 270
    const-wide/16 v0, 0x0

    .line 271
    .local v0, "totalScanTime":J
    iget-object v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 272
    iget-object v3, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    .line 273
    .local v3, "counts":Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;
    iget-wide v4, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 274
    goto :goto_1

    .line 277
    :cond_0
    iget-wide v4, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    iget-wide v8, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastScanTime:J

    sub-long/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 278
    .local v4, "delta":J
    iget-wide v8, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    iput-wide v8, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastScanTime:J

    .line 279
    iput-wide v6, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    .line 281
    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 282
    iget-object v6, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 283
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v7, v7, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    .line 284
    .local v7, "stats":[J
    if-nez v7, :cond_1

    .line 285
    iget-object v8, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v8

    new-array v7, v8, [J

    .line 286
    iget-object v8, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v8, v8, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    :cond_1
    iget-object v8, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v8, v7, v4, v5}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setUidScanTime([JJ)V

    .line 290
    add-long/2addr v0, v4

    .line 271
    .end local v3    # "counts":Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;
    .end local v4    # "delta":J
    .end local v6    # "uid":I
    .end local v7    # "stats":[J
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 294
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setDeviceScanTime([JJ)V

    .line 295
    return-void
.end method

.method private ensureInitialized()Z
    .locals 9

    .line 119
    iget-boolean v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 120
    return v1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getBluetoothStatsRetriever()Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

    .line 128
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    .line 129
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 131
    new-instance v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    .line 133
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    move-object v8, v0

    .line 134
    .local v8, "extras":Landroid/os/PersistableBundle;
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v0, v8}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 135
    new-instance v2, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    .line 136
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    .line 137
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v7

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 139
    .local v2, "powerStatsDescriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 140
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    .line 142
    iput-boolean v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mIsInitialized:Z

    .line 143
    return v1
.end method

.method private synthetic lambda$collectBluetoothScanStats$0(IJ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "scanTimeMs"    # J

    .line 261
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p1

    .line 262
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    .line 263
    .local v0, "uidStats":Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;
    if-nez v0, :cond_0

    .line 264
    new-instance v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;-><init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector-IA;)V

    move-object v0, v1

    .line 265
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    :cond_0
    iget-wide v1, v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    .line 268
    return-void
.end method


# virtual methods
.method public collectStats()Lcom/android/internal/os/PowerStats;
    .locals 7

    .line 148
    invoke-direct {p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 153
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 155
    invoke-direct {p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->collectBluetoothActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v2

    .line 156
    .local v2, "activityInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-direct {p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->collectBluetoothScanStats()V

    .line 158
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    .line 160
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;

    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    .line 162
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    .line 161
    invoke-interface/range {v1 .. v6}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;->onBluetoothPowerStatsRetrieved(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object v0
.end method

.method protected onUidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 299
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->onUidRemoved(I)V

    .line 300
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 301
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 109
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;

    invoke-interface {v1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 111
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    nop

    nop

    if-eqz v1, :cond_0

    .line 112
    const-string v2, "android.hardware.bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 111
    :goto_0
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    .line 113
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_1

    .line 114
    :cond_1
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    .line 116
    :goto_1
    return-void
.end method
