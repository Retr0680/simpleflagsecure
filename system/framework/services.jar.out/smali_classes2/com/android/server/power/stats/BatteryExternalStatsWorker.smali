.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field private static final SYNC_BATTERY_LEVEL_CHANGE:I = 0x3

.field private static final SYNC_PROCESS_STATE_CHANGE:I = 0x4

.field private static final SYNC_UPDATE:I = 0x1

.field private static final SYNC_USER_REMOVAL:I = 0x5

.field private static final SYNC_WAKELOCK_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"

.field public static final UID_FINAL_REMOVAL_AFTER_USER_REMOVAL_DELAY_MILLIS:I = 0x2710

.field public static final UID_QUICK_REMOVAL_AFTER_USER_REMOVAL_DELAY_MILLIS:I = 0x7d0


# instance fields
.field private mCurrentReason:Ljava/lang/String;

.field private mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

.field private mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field final mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

.field private mLastCollectionTimeStamp:J

.field private mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field private mOnBattery:Z

.field private mOnBatteryScreenOff:Z

.field private mPerDisplayScreenStates:[I

.field private mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field private mScreenState:I

.field private final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field private final mSyncTask:Ljava/lang/Runnable;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mUpdateFlags:I

.field private mUseLatestStates:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkerLock:Ljava/lang/Object;

.field private final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$09au3fz9zJxz1a0C4NtyPAvX438(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$0Qt5-WUKKSnrPDZAFOdvVci2W08(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCleanupDueToRemovedUser$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$C4q7eJQP9Ur2raY6hyEazsDUoLs(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleSyncDueToProcessStateChange$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HU6SYqtwtE9YRIx-15RXxWLIshE(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCleanupDueToRemovedUser$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qkuzv3tC2WN77bJINOBCjoiDeio(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$updateExternalStatsLocked$5(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wchZeRT4nlzYK6ffE_ns17IfYeI(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentReason(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnBattery(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBattery:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnBatteryScreenOff(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerDisplayScreenStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenState(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mScreenState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateFlags(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseLatestStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkerLock(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentReason(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/power/stats/BatteryExternalStatsWorker;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdateFlags(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUseLatestStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelSyncDueToBatteryLevelChangeLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateExternalStatsLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;IZZI[IZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/android/server/power/stats/BatteryStatsImpl;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V

    .line 175
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;
    .param p2, "stats"    # Lcom/android/server/power/stats/BatteryStatsImpl;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 118
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 120
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 123
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 126
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 131
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 138
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 143
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 377
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 456
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    .line 179
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    .line 180
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 181
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method private addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V
    .locals 1
    .param p1, "energyConsumerIds"    # Landroid/util/IntArray;
    .param p2, "type"    # I

    .line 942
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 943
    .local v0, "consumerIds":[I
    if-nez v0, :cond_0

    return-void

    .line 944
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->addAll([I)V

    .line 945
    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 4
    .param p0, "receiver"    # Landroid/os/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 733
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 734
    return-object v0

    .line 738
    :cond_0
    nop

    .line 739
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 740
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 742
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 744
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .local v2, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1

    .line 747
    return-object v2

    .line 750
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    .end local v2    # "data":Landroid/os/Parcelable;, "TT;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 752
    :cond_1
    goto :goto_1

    .line 750
    :goto_0
    nop

    .line 751
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryExternalStatsWorker"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_1
    return-object v0
.end method

.method private cancelSyncDueToBatteryLevelChangeLocked()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    return-void
.end method

.method private getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 887
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "consumerIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0, p1}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;)[Z"
        }
    .end annotation

    .line 846
    .local p0, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    if-nez p0, :cond_0

    .line 847
    const/4 v0, 0x0

    return-object v0

    .line 849
    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Z

    .line 850
    .local v0, "buckets":[Z
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 851
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 852
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/EnergyConsumer;

    .line 853
    .local v3, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget-byte v4, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 876
    :pswitch_0
    const/16 v4, 0x8

    aput-boolean v5, v0, v4

    goto :goto_1

    .line 873
    :pswitch_1
    const/4 v4, 0x4

    aput-boolean v5, v0, v4

    .line 874
    goto :goto_1

    .line 864
    :pswitch_2
    const/4 v4, 0x7

    aput-boolean v5, v0, v4

    .line 865
    const/16 v4, 0x9

    aput-boolean v5, v0, v4

    .line 866
    goto :goto_1

    .line 861
    :pswitch_3
    const/4 v4, 0x6

    aput-boolean v5, v0, v4

    .line 862
    goto :goto_1

    .line 868
    :pswitch_4
    const/4 v4, 0x0

    aput-boolean v5, v0, v4

    .line 869
    aput-boolean v5, v0, v5

    .line 870
    const/4 v4, 0x2

    aput-boolean v5, v0, v4

    .line 871
    goto :goto_1

    .line 858
    :pswitch_5
    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 859
    goto :goto_1

    .line 855
    :pswitch_6
    const/4 v4, 0x5

    aput-boolean v5, v0, v4

    .line 856
    nop

    .line 851
    .end local v3    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 880
    .end local v2    # "idx":I
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$scheduleCleanupDueToRemovedUser$3(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 297
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 299
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$scheduleCleanupDueToRemovedUser$4(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 305
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$scheduleCpuSyncDueToWakelockChange$0()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method private synthetic lambda$scheduleCpuSyncDueToWakelockChange$1()V
    .locals 2

    .line 263
    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 264
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method private synthetic lambda$scheduleSyncDueToProcessStateChange$2(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 284
    const-string/jumbo v0, "procstate-change"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$updateExternalStatsLocked$5(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2
    .param p0, "tempWifiReceiver"    # Landroid/os/SynchronousResultReceiver;
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 495
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 496
    return-void
.end method

.method private populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;"
        }
    .end annotation

    .line 950
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 951
    return-object v1

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    .line 954
    .local v0, "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    :cond_1
    goto/16 :goto_3

    .line 959
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 961
    .local v1, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 964
    .local v2, "tempTypeToId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 966
    .local v5, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v6, :cond_3

    .line 967
    iget-byte v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    packed-switch v6, :pswitch_data_0

    .line 973
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnergyConsumer \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' has unexpected ordinal "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryExternalStatsWorker"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    goto :goto_1

    .line 971
    :pswitch_1
    nop

    .line 978
    :cond_3
    iget v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 980
    iget-byte v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/IntArray;

    .line 981
    .local v6, "ids":Landroid/util/IntArray;
    if-nez v6, :cond_4

    .line 982
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    move-object v6, v7

    .line 983
    iget-byte v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 985
    :cond_4
    iget v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->add(I)V

    .line 964
    .end local v5    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    .end local v6    # "ids":Landroid/util/IntArray;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 988
    :cond_5
    new-instance v3, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 990
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 991
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 992
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 993
    .local v5, "consumerType":I
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/IntArray;

    invoke-virtual {v6}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    .line 994
    .local v6, "consumerIds":[I
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 991
    .end local v5    # "consumerType":I
    .end local v6    # "consumerIds":[I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    nop

    .line 996
    .end local v4    # "i":I
    return-object v1

    .line 955
    .end local v1    # "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    .end local v2    # "tempTypeToId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    .end local v3    # "size":I
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private scheduleDelayedSyncLocked(ILjava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "syncRunnable"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    .line 324
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 330
    :cond_0
    return-void

    .line 334
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 335
    return-void
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 363
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iput p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 365
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 368
    :cond_0
    iget v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 369
    return-void
.end method

.method private updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V
    .locals 35
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I
    .param p3, "onBattery"    # Z
    .param p4, "onBatteryScreenOff"    # Z
    .param p5, "screenState"    # I
    .param p6, "displayScreenStates"    # [I
    .param p7, "useLatestStates"    # Z

    .line 470
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v0, 0x0

    .line 471
    .local v0, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v3, 0x0

    .line 472
    .local v3, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .line 473
    .local v4, "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    const/4 v5, 0x0

    .line 475
    .local v5, "railUpdated":Z
    nop

    .line 476
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumersLocked(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    .line 478
    .local v6, "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_1

    .line 481
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 482
    new-instance v7, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v8, "wifi"

    invoke-direct {v7, v8}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 483
    .local v7, "tempWifiReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v9, Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;

    invoke-direct {v9, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    new-instance v10, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;

    invoke-direct {v10, v7}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 498
    move-object v0, v7

    goto :goto_0

    .line 500
    .end local v7    # "tempWifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_0
    move-object v7, v0

    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .local v7, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_0
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v8

    .line 501
    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 502
    monitor-exit v8

    .line 503
    const/4 v5, 0x1

    goto :goto_1

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 478
    .end local v7    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_1
    move-object v7, v0

    .line 506
    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v7    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_1
    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPowerStatsCollector(I)Lcom/android/server/power/stats/PowerStatsCollector;

    move-result-object v0

    .line 510
    .local v0, "collector":Lcom/android/server/power/stats/PowerStatsCollector;
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 511
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_2

    .line 514
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    .line 515
    .local v8, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_3

    .line 516
    new-instance v9, Landroid/os/SynchronousResultReceiver;

    const-string v10, "bluetooth"

    invoke-direct {v9, v10}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 518
    .local v9, "resultReceiver":Landroid/os/SynchronousResultReceiver;
    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v11, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;

    invoke-direct {v11, v1, v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v8, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 540
    move-object v3, v9

    .line 545
    .end local v0    # "collector":Lcom/android/server/power/stats/PowerStatsCollector;
    .end local v8    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v9    # "resultReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_3
    :goto_2
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_6

    .line 547
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPowerStatsCollector(I)Lcom/android/server/power/stats/PowerStatsCollector;

    move-result-object v8

    .line 549
    .local v8, "collector":Lcom/android/server/power/stats/PowerStatsCollector;
    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 550
    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_3

    .line 553
    :cond_4
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    .line 554
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 555
    .local v0, "temp":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v11, Lcom/android/server/power/stats/BatteryExternalStatsWorker$5;

    invoke-direct {v11, v1, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$5;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v9, v10, v11}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 569
    move-object v4, v0

    .line 572
    .end local v0    # "temp":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    :cond_5
    :goto_3
    if-nez v5, :cond_6

    .line 573
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    .line 574
    :try_start_1
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 575
    monitor-exit v9

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 579
    .end local v8    # "collector":Lcom/android/server/power/stats/PowerStatsCollector;
    :cond_6
    :goto_4
    and-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_7

    .line 581
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->fillLowPowerStats()V

    .line 584
    :cond_7
    invoke-static {v7}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 585
    .local v8, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    invoke-static {v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 586
    .local v10, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    const/4 v9, 0x0

    .line 588
    .local v9, "modemInfo":Landroid/telephony/ModemActivityInfo;
    const-wide/16 v11, 0x7d0

    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v11, v12, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v0

    .line 594
    move-object/from16 v17, v9

    goto :goto_8

    .line 592
    :catch_0
    move-exception v0

    goto :goto_5

    .line 590
    :catch_1
    move-exception v0

    goto :goto_6

    .line 592
    :goto_5
    nop

    .line 593
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v13, "BatteryExternalStatsWorker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exception reading modem stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 590
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_6
    nop

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    const-string v13, "BatteryExternalStatsWorker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "timeout or interrupt reading modem stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 597
    :goto_7
    move-object/from16 v17, v9

    .end local v9    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .local v17, "modemInfo":Landroid/telephony/ModemActivityInfo;
    :goto_8
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    if-eqz v0, :cond_8

    if-nez v6, :cond_9

    :cond_8
    goto :goto_d

    .line 601
    :cond_9
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    .line 602
    :try_start_3
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v0

    move v13, v0

    .line 603
    .local v13, "voltageMv":I
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 607
    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v11, v12, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2

    .line 615
    .local v0, "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :goto_9
    goto :goto_c

    .line 612
    .end local v0    # "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :catch_2
    move-exception v0

    goto :goto_a

    .line 608
    :catch_3
    move-exception v0

    goto :goto_b

    .line 612
    :goto_a
    nop

    .line 613
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception reading getEnergyConsumedAsync: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v9, 0x0

    move-object v0, v9

    .local v9, "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_c

    .line 608
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v9    # "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :goto_b
    nop

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "timeout or interrupt reading getEnergyConsumedAsync: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x0

    .local v0, "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_9

    .line 617
    :goto_c
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v9, v0, v13}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;

    move-result-object v9

    .local v9, "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    goto :goto_e

    .line 603
    .end local v0    # "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    .end local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .end local v13    # "voltageMv":I
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 598
    :goto_d
    const/4 v9, 0x0

    .line 620
    .restart local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 621
    .local v19, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 622
    .local v21, "uptime":J
    const-wide/16 v11, 0x3e8

    mul-long v13, v19, v11

    .line 623
    .local v13, "elapsedRealtimeUs":J
    mul-long v27, v21, v11

    .line 626
    .local v27, "uptimeUs":J
    iget-object v11, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v11

    .line 627
    :try_start_6
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v23, 0xe

    const/16 v25, 0x0

    move-object/from16 v24, p1

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/power/stats/BatteryStatsImpl;->recordHistoryEventLocked(JJILjava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    move-object/from16 v29, v3

    move-wide/from16 v2, v19

    .line 633
    .end local v3    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v19    # "elapsedRealtime":J
    .local v2, "elapsedRealtime":J
    .local v29, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_c

    .line 634
    if-eqz p7, :cond_a

    .line 635
    :try_start_7
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move v12, v0

    .line 636
    .end local p3    # "onBattery":Z
    .local v12, "onBattery":Z
    :try_start_8
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move v15, v0

    .end local p4    # "onBatteryScreenOff":Z
    .local v0, "onBatteryScreenOff":Z
    goto :goto_f

    .line 699
    .end local v0    # "onBatteryScreenOff":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_3
    move-exception v0

    move/from16 v31, p4

    move-wide/from16 v19, v2

    move-object/from16 v30, v4

    move/from16 v34, v5

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move-object/from16 v16, v17

    goto/16 :goto_1e

    .end local v12    # "onBattery":Z
    .restart local p3    # "onBattery":Z
    :catchall_4
    move-exception v0

    move/from16 v12, p3

    move/from16 v31, p4

    move-wide/from16 v19, v2

    move-object/from16 v30, v4

    move/from16 v34, v5

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move-object/from16 v16, v17

    goto/16 :goto_1e

    .line 634
    :cond_a
    move/from16 v12, p3

    move/from16 v15, p4

    .line 640
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v12    # "onBattery":Z
    .local v15, "onBatteryScreenOff":Z
    :goto_f
    if-nez v9, :cond_b

    .line 641
    const/4 v0, 0x0

    .local v0, "cpuClusterChargeUC":[J
    goto :goto_10

    .line 643
    .end local v0    # "cpuClusterChargeUC":[J
    :cond_b
    :try_start_9
    iget-object v0, v9, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 645
    .restart local v0    # "cpuClusterChargeUC":[J
    :goto_10
    move-object/from16 v30, v4

    .end local v4    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .local v30, "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    :try_start_a
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v4, v12, v15, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimeLocked(ZZ[J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move v4, v12

    move/from16 v31, v15

    goto :goto_11

    .line 699
    .end local v0    # "cpuClusterChargeUC":[J
    :catchall_5
    move-exception v0

    move-wide/from16 v19, v2

    move/from16 v34, v5

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move/from16 v31, v15

    move-object/from16 v16, v17

    goto/16 :goto_1e

    .end local v30    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .restart local v4    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    :catchall_6
    move-exception v0

    move-object/from16 v30, v4

    move-wide/from16 v19, v2

    move/from16 v34, v5

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move/from16 v31, v15

    move-object/from16 v16, v17

    .end local v4    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .restart local v30    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    goto/16 :goto_1e

    .line 633
    .end local v12    # "onBattery":Z
    .end local v15    # "onBatteryScreenOff":Z
    .end local v30    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .restart local v4    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .restart local p3    # "onBattery":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :cond_c
    move-object/from16 v30, v4

    .end local v4    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .restart local v30    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    move/from16 v4, p3

    move/from16 v31, p4

    .line 648
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .local v4, "onBattery":Z
    .local v31, "onBatteryScreenOff":Z
    :goto_11
    and-int/lit8 v0, p2, 0x7f

    const/16 v12, 0x7f

    if-ne v0, v12, :cond_d

    .line 649
    :try_start_b
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelWakelocksLocked(J)V

    .line 650
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked(J)V

    goto :goto_12

    .line 699
    :catchall_7
    move-exception v0

    move-wide/from16 v19, v2

    move v12, v4

    move/from16 v34, v5

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move-object/from16 v16, v17

    goto/16 :goto_1e

    .line 653
    :cond_d
    :goto_12
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_e

    .line 654
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRpmStatsLocked(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 658
    :cond_e
    const-wide/16 v32, -0x1

    if-eqz v9, :cond_11

    .line 659
    :try_start_c
    iget-object v0, v9, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 660
    .local v0, "displayChargeUC":[J
    if-eqz v0, :cond_f

    :try_start_d
    array-length v12, v0

    if-lez v12, :cond_f

    .line 663
    iget-object v12, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object/from16 v15, p6

    :try_start_e
    invoke-virtual {v12, v0, v15, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateDisplayEnergyConsumerStatsLocked([J[IJ)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_13

    .line 699
    .end local v0    # "displayChargeUC":[J
    :catchall_8
    move-exception v0

    move-object/from16 v15, p6

    move-wide/from16 v19, v2

    move v12, v4

    move/from16 v34, v5

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move-object/from16 v16, v17

    goto/16 :goto_1e

    .line 660
    .restart local v0    # "displayChargeUC":[J
    :cond_f
    move-object/from16 v15, p6

    .line 667
    :goto_13
    move/from16 p3, v4

    move/from16 v34, v5

    .end local v4    # "onBattery":Z
    .end local v5    # "railUpdated":Z
    .local v34, "railUpdated":Z
    .restart local p3    # "onBattery":Z
    :try_start_f
    iget-wide v4, v9, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    .line 668
    .local v4, "gnssChargeUC":J
    cmp-long v12, v4, v32

    if-eqz v12, :cond_10

    .line 669
    iget-object v12, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v12, v4, v5, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateGnssEnergyConsumerStatsLocked(JJ)V

    goto :goto_14

    .line 699
    .end local v0    # "displayChargeUC":[J
    .end local v4    # "gnssChargeUC":J
    :catchall_9
    move-exception v0

    move/from16 v12, p3

    move-wide/from16 v19, v2

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move-object/from16 v16, v17

    goto/16 :goto_1e

    .line 672
    .restart local v0    # "displayChargeUC":[J
    .restart local v4    # "gnssChargeUC":J
    :cond_10
    :goto_14
    move-wide/from16 v18, v4

    .end local v4    # "gnssChargeUC":J
    .local v18, "gnssChargeUC":J
    iget-wide v4, v9, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    .line 673
    .local v4, "cameraChargeUC":J
    cmp-long v12, v4, v32

    if-eqz v12, :cond_12

    .line 674
    iget-object v12, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v12, v4, v5, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCameraEnergyConsumerStatsLocked(JJ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_15

    .line 699
    .end local v0    # "displayChargeUC":[J
    .end local v18    # "gnssChargeUC":J
    .end local v34    # "railUpdated":Z
    .end local p3    # "onBattery":Z
    .local v4, "onBattery":Z
    .restart local v5    # "railUpdated":Z
    :catchall_a
    move-exception v0

    move-object/from16 v15, p6

    move/from16 p3, v4

    move/from16 v34, v5

    move/from16 v12, p3

    move-wide/from16 v19, v2

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move-object/from16 v16, v17

    .end local v4    # "onBattery":Z
    .end local v5    # "railUpdated":Z
    .restart local v34    # "railUpdated":Z
    .restart local p3    # "onBattery":Z
    goto/16 :goto_1e

    .line 658
    .end local v34    # "railUpdated":Z
    .end local p3    # "onBattery":Z
    .restart local v4    # "onBattery":Z
    .restart local v5    # "railUpdated":Z
    :cond_11
    move-object/from16 v15, p6

    move/from16 p3, v4

    move/from16 v34, v5

    .line 678
    .end local v4    # "onBattery":Z
    .end local v5    # "railUpdated":Z
    .restart local v34    # "railUpdated":Z
    .restart local p3    # "onBattery":Z
    :cond_12
    :goto_15
    if-eqz v9, :cond_14

    :try_start_10
    iget-object v0, v9, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    if-eqz v0, :cond_14

    .line 681
    const/4 v0, 0x0

    .local v0, "ord":I
    :goto_16
    iget-object v4, v9, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    array-length v4, v4

    if-ge v0, v4, :cond_13

    .line 682
    iget-object v4, v9, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    aget-wide v4, v4, v0

    .line 683
    .local v4, "totalEnergy":J
    iget-object v12, v9, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aget-object v12, v12, v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 684
    .local v12, "uidEnergies":Landroid/util/SparseLongArray;
    move-wide/from16 v19, v2

    .end local v2    # "elapsedRealtime":J
    .restart local v19    # "elapsedRealtime":J
    :try_start_11
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2, v0, v4, v5, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCustomEnergyConsumerStatsLocked(IJLandroid/util/SparseLongArray;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 681
    .end local v4    # "totalEnergy":J
    .end local v12    # "uidEnergies":Landroid/util/SparseLongArray;
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v2, v19

    goto :goto_16

    .line 699
    .end local v0    # "ord":I
    :catchall_b
    move-exception v0

    move/from16 v12, p3

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move-object/from16 v16, v17

    goto/16 :goto_1e

    .end local v19    # "elapsedRealtime":J
    .restart local v2    # "elapsedRealtime":J
    :catchall_c
    move-exception v0

    move-wide/from16 v19, v2

    move/from16 v12, p3

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move-object/from16 v16, v17

    .end local v2    # "elapsedRealtime":J
    .restart local v19    # "elapsedRealtime":J
    goto/16 :goto_1e

    .line 681
    .end local v19    # "elapsedRealtime":J
    .restart local v0    # "ord":I
    .restart local v2    # "elapsedRealtime":J
    :cond_13
    move-wide/from16 v19, v2

    .end local v2    # "elapsedRealtime":J
    .restart local v19    # "elapsedRealtime":J
    goto :goto_17

    .line 678
    .end local v0    # "ord":I
    .end local v19    # "elapsedRealtime":J
    .restart local v2    # "elapsedRealtime":J
    :cond_14
    move-wide/from16 v19, v2

    .line 688
    .end local v2    # "elapsedRealtime":J
    .restart local v19    # "elapsedRealtime":J
    :goto_17
    if-eqz v10, :cond_17

    .line 689
    :try_start_12
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    if-eqz v0, :cond_16

    .line 690
    if-eqz v9, :cond_15

    .line 691
    :try_start_13
    iget-wide v2, v9, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    goto :goto_18

    .line 692
    :cond_15
    move-wide/from16 v2, v32

    :goto_18
    nop

    .line 693
    .local v2, "btChargeUC":J
    move-object v4, v9

    .end local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .local v4, "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    :try_start_14
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    move-object v5, v11

    move-wide/from16 v15, v21

    move-wide v11, v2

    move-wide v2, v13

    move-wide/from16 v13, v19

    .end local v19    # "elapsedRealtime":J
    .end local v21    # "uptime":J
    .local v2, "elapsedRealtimeUs":J
    .local v11, "btChargeUC":J
    .local v13, "elapsedRealtime":J
    .local v15, "uptime":J
    :try_start_15
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    .line 695
    .end local v11    # "btChargeUC":J
    .end local v13    # "elapsedRealtime":J
    .end local v15    # "uptime":J
    .restart local v19    # "elapsedRealtime":J
    .restart local v21    # "uptime":J
    goto :goto_19

    .line 699
    .end local v19    # "elapsedRealtime":J
    .end local v21    # "uptime":J
    .restart local v13    # "elapsedRealtime":J
    .restart local v15    # "uptime":J
    :catchall_d
    move-exception v0

    move-wide/from16 v19, v13

    move-wide/from16 v21, v15

    move/from16 v12, p3

    move-object/from16 v16, v17

    .end local v13    # "elapsedRealtime":J
    .end local v15    # "uptime":J
    .restart local v19    # "elapsedRealtime":J
    .restart local v21    # "uptime":J
    goto/16 :goto_1e

    .end local v2    # "elapsedRealtimeUs":J
    .local v13, "elapsedRealtimeUs":J
    :catchall_e
    move-exception v0

    move-object v5, v11

    move-wide v2, v13

    move/from16 v12, p3

    move-object/from16 v16, v17

    .end local v13    # "elapsedRealtimeUs":J
    .restart local v2    # "elapsedRealtimeUs":J
    goto/16 :goto_1e

    .line 696
    .end local v2    # "elapsedRealtimeUs":J
    .end local v4    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .restart local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .restart local v13    # "elapsedRealtimeUs":J
    :cond_16
    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    .end local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .end local v13    # "elapsedRealtimeUs":J
    .restart local v2    # "elapsedRealtimeUs":J
    .restart local v4    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    :try_start_16
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bluetooth info is invalid: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    goto :goto_19

    .line 699
    :catchall_f
    move-exception v0

    move/from16 v12, p3

    move-object/from16 v16, v17

    goto/16 :goto_1e

    .end local v2    # "elapsedRealtimeUs":J
    .end local v4    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .restart local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .restart local v13    # "elapsedRealtimeUs":J
    :catchall_10
    move-exception v0

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move/from16 v12, p3

    move-object/from16 v16, v17

    .end local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .end local v13    # "elapsedRealtimeUs":J
    .restart local v2    # "elapsedRealtimeUs":J
    .restart local v4    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    goto/16 :goto_1e

    .line 688
    .end local v2    # "elapsedRealtimeUs":J
    .end local v4    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .restart local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .restart local v13    # "elapsedRealtimeUs":J
    :cond_17
    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    .line 699
    .end local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .end local v13    # "elapsedRealtimeUs":J
    .restart local v2    # "elapsedRealtimeUs":J
    .restart local v4    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    :goto_19
    :try_start_17
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    .line 703
    if-eqz v8, :cond_1a

    .line 704
    invoke-virtual {v8}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 706
    if-eqz v4, :cond_18

    iget-wide v11, v4, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    goto :goto_1a

    .line 707
    :cond_18
    move-wide/from16 v11, v32

    :goto_1a
    nop

    .line 708
    .local v11, "wifiChargeUC":J
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v5, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/app/usage/NetworkStatsManager;

    .line 710
    .local v26, "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-wide/from16 v13, v19

    .end local v19    # "elapsedRealtime":J
    .local v13, "elapsedRealtime":J
    invoke-virtual {v1, v8}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v19

    move-object/from16 v18, v0

    move-wide/from16 v24, v21

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    .end local v11    # "wifiChargeUC":J
    .end local v13    # "elapsedRealtime":J
    .end local v21    # "uptime":J
    .local v20, "wifiChargeUC":J
    .local v22, "elapsedRealtime":J
    .local v24, "uptime":J
    invoke-virtual/range {v18 .. v26}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    .line 712
    move-wide/from16 v19, v22

    move-wide/from16 v21, v24

    .end local v20    # "wifiChargeUC":J
    .end local v22    # "elapsedRealtime":J
    .end local v24    # "uptime":J
    .end local v26    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    .restart local v19    # "elapsedRealtime":J
    .restart local v21    # "uptime":J
    goto :goto_1b

    .line 713
    :cond_19
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wifi info is invalid: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_1a
    :goto_1b
    if-eqz v17, :cond_1c

    .line 718
    if-eqz v4, :cond_1b

    .line 719
    iget-wide v11, v4, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    move-wide/from16 v32, v11

    goto :goto_1c

    :cond_1b
    nop

    .line 720
    .local v32, "mobileRadioChargeUC":J
    :goto_1c
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v5, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/usage/NetworkStatsManager;

    .line 722
    .local v23, "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v15, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v16, v17

    move-wide/from16 v17, v32

    .end local v32    # "mobileRadioChargeUC":J
    .local v16, "modemInfo":Landroid/telephony/ModemActivityInfo;
    .local v17, "mobileRadioChargeUC":J
    invoke-virtual/range {v15 .. v23}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    goto :goto_1d

    .line 717
    .end local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v23    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    .local v17, "modemInfo":Landroid/telephony/ModemActivityInfo;
    :cond_1c
    move-object/from16 v16, v17

    .line 725
    .end local v17    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    :goto_1d
    return-void

    .line 699
    .end local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v17    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    :catchall_11
    move-exception v0

    move-object/from16 v16, v17

    move/from16 v12, p3

    .end local v17    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    goto :goto_1e

    .end local v2    # "elapsedRealtimeUs":J
    .end local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v29    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v30    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .end local v31    # "onBatteryScreenOff":Z
    .end local v34    # "railUpdated":Z
    .restart local v3    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .local v4, "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .restart local v5    # "railUpdated":Z
    .restart local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .local v13, "elapsedRealtimeUs":J
    .restart local v17    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_12
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move/from16 v34, v5

    move-object v4, v9

    move-object v5, v11

    move-wide v2, v13

    move-object/from16 v16, v17

    move/from16 v12, p3

    move/from16 v31, p4

    .end local v3    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v5    # "railUpdated":Z
    .end local v9    # "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .end local v13    # "elapsedRealtimeUs":J
    .end local v17    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v2    # "elapsedRealtimeUs":J
    .local v4, "energyConsumerDeltas":Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .local v12, "onBattery":Z
    .restart local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v29    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v30    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .restart local v31    # "onBatteryScreenOff":Z
    .restart local v34    # "railUpdated":Z
    :goto_1e
    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_13

    throw v0

    :catchall_13
    move-exception v0

    goto :goto_1e
.end method


# virtual methods
.method public cancelCpuSyncDueToWakelockChange()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    return-void
.end method

.method public cancelSyncDueToProcessStateChange()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    return-void
.end method

.method public extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .locals 42
    .param p1, "latest"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 763
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    if-nez v2, :cond_0

    .line 766
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 768
    :cond_0
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 769
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 770
    .local v2, "timePeriodMs":J
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v4

    .line 771
    .local v4, "lastScanMs":J
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v6

    .line 772
    .local v6, "lastIdleMs":J
    iget-object v8, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v8}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v8

    .line 773
    .local v8, "lastTxMs":J
    iget-object v10, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v10}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v10

    .line 774
    .local v10, "lastRxMs":J
    iget-object v12, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v12}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v12

    .line 776
    .local v12, "lastEnergy":J
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v15

    .line 777
    .local v15, "deltaTimeSinceBootMillis":J
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v17

    .line 784
    .local v17, "deltaStackState":I
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v18

    sub-long v28, v18, v8

    .line 785
    .local v28, "txTimeMs":J
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v18

    sub-long v30, v18, v10

    .line 786
    .local v30, "rxTimeMs":J
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v18

    sub-long v32, v18, v6

    .line 787
    .local v32, "idleTimeMs":J
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v18

    sub-long v34, v18, v4

    .line 790
    .local v34, "scanTimeMs":J
    move-wide/from16 v36, v2

    .end local v2    # "timePeriodMs":J
    .local v36, "timePeriodMs":J
    const-wide/16 v2, 0x0

    cmp-long v14, v28, v2

    if-ltz v14, :cond_2

    cmp-long v14, v30, v2

    if-ltz v14, :cond_2

    cmp-long v14, v34, v2

    if-ltz v14, :cond_2

    cmp-long v14, v32, v2

    if-gez v14, :cond_1

    move-wide/from16 v38, v4

    goto :goto_0

    .line 813
    :cond_1
    move-wide/from16 v18, v28

    .line 814
    .local v18, "deltaControllerTxDurationMillis":J
    move-wide/from16 v20, v30

    .line 815
    .local v20, "deltaControllerRxDurationMillis":J
    move-wide/from16 v22, v34

    .line 816
    .local v22, "deltaControllerScanDurationMillis":J
    move-wide/from16 v24, v32

    .line 817
    .local v24, "deltaControllerIdleDurationMillis":J
    nop

    .line 818
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v26

    move-wide/from16 v38, v4

    .end local v4    # "lastScanMs":J
    .local v38, "lastScanMs":J
    sub-long v4, v26, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 819
    .local v2, "deltaControllerEnergyUsedMicroJoules":J
    const/4 v4, 0x0

    move-wide/from16 v26, v2

    .local v4, "wasReset":Z
    goto :goto_2

    .line 790
    .end local v2    # "deltaControllerEnergyUsedMicroJoules":J
    .end local v18    # "deltaControllerTxDurationMillis":J
    .end local v20    # "deltaControllerRxDurationMillis":J
    .end local v22    # "deltaControllerScanDurationMillis":J
    .end local v24    # "deltaControllerIdleDurationMillis":J
    .end local v38    # "lastScanMs":J
    .local v4, "lastScanMs":J
    :cond_2
    move-wide/from16 v38, v4

    .line 794
    .end local v4    # "lastScanMs":J
    .restart local v38    # "lastScanMs":J
    :goto_0
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v2

    .line 795
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 796
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 797
    .local v2, "totalOnTimeMs":J
    const-wide/16 v4, 0x2ee

    add-long v4, v36, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    .line 798
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v4

    .line 799
    .local v4, "deltaControllerEnergyUsedMicroJoules":J
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v18

    .line 800
    .local v18, "deltaControllerRxDurationMillis":J
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v20

    .line 801
    .local v20, "deltaControllerTxDurationMillis":J
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v22

    .line 802
    .local v22, "deltaControllerIdleDurationMillis":J
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v24

    move-wide/from16 v40, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v40

    move-wide/from16 v40, v24

    move-wide/from16 v24, v22

    move-wide/from16 v22, v40

    .local v24, "deltaControllerScanDurationMillis":J
    goto :goto_1

    .line 804
    .end local v4    # "deltaControllerEnergyUsedMicroJoules":J
    .end local v18    # "deltaControllerRxDurationMillis":J
    .end local v20    # "deltaControllerTxDurationMillis":J
    .end local v22    # "deltaControllerIdleDurationMillis":J
    .end local v24    # "deltaControllerScanDurationMillis":J
    :cond_3
    const-wide/16 v4, 0x0

    .line 805
    .restart local v4    # "deltaControllerEnergyUsedMicroJoules":J
    const-wide/16 v18, 0x0

    .line 806
    .restart local v18    # "deltaControllerRxDurationMillis":J
    const-wide/16 v20, 0x0

    .line 807
    .restart local v20    # "deltaControllerTxDurationMillis":J
    const-wide/16 v22, 0x0

    .line 808
    .restart local v22    # "deltaControllerIdleDurationMillis":J
    const-wide/16 v24, 0x0

    move-wide/from16 v40, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v40

    move-wide/from16 v40, v24

    move-wide/from16 v24, v22

    move-wide/from16 v22, v40

    .line 810
    .local v18, "deltaControllerTxDurationMillis":J
    .local v20, "deltaControllerRxDurationMillis":J
    .local v22, "deltaControllerScanDurationMillis":J
    .local v24, "deltaControllerIdleDurationMillis":J
    :goto_1
    const/4 v2, 0x1

    .line 811
    .local v2, "wasReset":Z
    move-wide/from16 v26, v4

    move v4, v2

    .line 822
    .end local v2    # "wasReset":Z
    .local v4, "wasReset":Z
    .local v26, "deltaControllerEnergyUsedMicroJoules":J
    :goto_2
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 823
    new-instance v14, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-direct/range {v14 .. v27}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    .line 831
    .local v14, "delta":Landroid/os/connectivity/WifiActivityEnergyInfo;
    if-eqz v4, :cond_4

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryExternalStatsWorker"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_4
    return-object v14
.end method

.method public getEnergyConsumersLocked(I)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 908
    :cond_1
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_2

    .line 910
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 913
    :cond_2
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 914
    .local v0, "energyConsumerIds":Landroid/util/IntArray;
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    .line 915
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 917
    :cond_3
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_4

    .line 918
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 920
    :cond_4
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_5

    .line 921
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 923
    :cond_5
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_6

    .line 924
    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 926
    :cond_6
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_7

    .line 927
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 929
    :cond_7
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_8

    .line 930
    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 933
    :cond_8
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 934
    return-object v1

    .line 936
    :cond_9
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 906
    .end local v0    # "energyConsumerIds":Landroid/util/IntArray;
    :goto_0
    return-object v1
.end method

.method public getLastCollectionTimeStamp()J
    .locals 2

    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleCleanupDueToRemovedUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 296
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 304
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 309
    return-void
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)V
    .locals 2
    .param p1, "uid"    # I

    monitor-enter p0

    .line 239
    :try_start_0
    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 238
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)V
    .locals 2
    .param p1, "delayMillis"    # J

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(ILjava/lang/Runnable;J)V

    .line 267
    monitor-exit p0

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 349
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker;
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I

    monitor-enter p0

    .line 234
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 233
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker;
    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "flags":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public scheduleSyncDueToProcessStateChange(IJ)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "delayMillis"    # J

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(ILjava/lang/Runnable;J)V

    .line 286
    monitor-exit p0

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleSyncDueToScreenStateChange(IZZI[I)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "onBattery"    # Z
    .param p3, "onBatteryScreenOff"    # Z
    .param p4, "screenState"    # I
    .param p5, "perDisplayScreenStates"    # [I

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 247
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 248
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 252
    :cond_1
    iput p4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mScreenState:I

    .line 253
    iput-object p5, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 254
    const-string/jumbo v0, "screen-state"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V

    .line 255
    monitor-exit p0

    .line 256
    return-void

    .line 255
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized scheduleWrite()V
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    const-string/jumbo v0, "write"

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V

    .line 342
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 340
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    return-void
.end method

.method public systemServicesReady()V
    .locals 12

    .line 185
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 186
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 187
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v3, Landroid/power/PowerStatsInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/power/PowerStatsInternal;

    .line 189
    .local v2, "psi":Landroid/power/PowerStatsInternal;
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    .line 190
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v4

    .line 191
    .local v4, "voltageMv":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 193
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 194
    :try_start_1
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 195
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 196
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "supportedStdBuckets":[Z
    const/4 v6, 0x0

    .line 200
    .local v6, "customBucketNames":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v7, :cond_0

    .line 201
    nop

    .line 202
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;

    move-result-object v7

    .line 203
    .local v7, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    if-eqz v7, :cond_0

    .line 204
    new-instance v8, Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-direct {v8, v7}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;-><init>(Landroid/util/SparseArray;)V

    iput-object v8, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object v8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v10, v11, v9}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 211
    .local v8, "initialEcrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    iget-object v9, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v9, v8, v4}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .end local v8    # "initialEcrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_2

    .line 229
    .end local v3    # "supportedStdBuckets":[Z
    .end local v6    # "customBucketNames":[Ljava/lang/String;
    .end local v7    # "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 216
    .restart local v3    # "supportedStdBuckets":[Z
    .restart local v6    # "customBucketNames":[Ljava/lang/String;
    .restart local v7    # "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    :catch_0
    move-exception v8

    goto :goto_0

    .line 212
    :catch_1
    move-exception v8

    goto :goto_1

    .line 216
    :goto_0
    nop

    .line 217
    .local v8, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception reading initial getEnergyConsumedAsync: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v8}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 217
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 212
    .end local v8    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_1
    nop

    .line 213
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeout or interrupt reading initial getEnergyConsumedAsync: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    nop

    .line 221
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v8, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v8}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->getOtherOrdinalNames()[Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 222
    invoke-static {v7}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z

    move-result-object v8

    move-object v3, v8

    .line 225
    .end local v7    # "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    :cond_0
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    :try_start_4
    iget-object v8, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8, v3, v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->initEnergyConsumerStatsLocked([Z[Ljava/lang/String;)V

    .line 227
    iget-object v8, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayCount()I

    move-result v8

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 228
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 229
    .end local v3    # "supportedStdBuckets":[Z
    .end local v6    # "customBucketNames":[Ljava/lang/String;
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    return-void

    .line 228
    .restart local v3    # "supportedStdBuckets":[Z
    .restart local v6    # "customBucketNames":[Ljava/lang/String;
    :catchall_1
    move-exception v8

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "wm":Landroid/net/wifi/WifiManager;
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "psi":Landroid/power/PowerStatsInternal;
    .end local v4    # "voltageMv":I
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker;
    :try_start_7
    throw v8

    .line 229
    .end local v3    # "supportedStdBuckets":[Z
    .end local v6    # "customBucketNames":[Ljava/lang/String;
    .restart local v0    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v2    # "psi":Landroid/power/PowerStatsInternal;
    .restart local v4    # "voltageMv":I
    .restart local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker;
    :goto_3
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3

    .line 191
    .end local v4    # "voltageMv":I
    :catchall_2
    move-exception v4

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v4
.end method
