.class public Lcom/android/server/am/ProcessFreezerManager;
.super Ljava/lang/Object;
.source "ProcessFreezerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;,
        Lcom/android/server/am/ProcessFreezerManager$PidMap;,
        Lcom/android/server/am/ProcessFreezerManager$PackageMap;
    }
.end annotation


# static fields
.field private static ALREADY_READ_PROPERTIES:Z = false

.field public static final COLD_LAUNCH_FREEZE:I = 0x2

.field public static final COMPLETE_LAUNCH_UNFREEZE:I = 0x0

.field public static final CROSS_LAUNCH_UNFREEZE:I = 0x4

.field private static final DEFAULT_CPU_USAGE_THRESHOLD:I = 0x3c

.field private static final DEFAULT_DELAY_UNFREEZER_TIMEOUT:J = 0x3e8L

.field private static final DEFAULT_FREEZE_ADJ_THRESHOLD:I = 0xc9

.field private static final DEFAULT_LAUNCH_TIMEOUT:J = 0x7d0L

.field public static final DEPEND_LAUNCH_UNFREEZE:I = 0x5

.field public static final FIRST_LAUNCH_FREEZE:I = 0x0

.field private static final FROZEN_AND_UPDATE_PROCESS_MSG:I = 0x1

.field public static final INTERRUPT_LAUNCH_UNFREEZE:I = 0x1

.field public static final REMOVE_PROCESS_UNFREEZE:I = 0x3

.field private static final REPORT_UNFREEZE_PROCESS_MSG:I = 0x2

.field private static final REPORT_UNFREEZE_SERVICE_MSG:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final TIMEOUT_LAUNCH_UNFREEZE:I = 0x2

.field public static final WARM_LAUNCH_FREEZE:I = 0x1

.field private static volatile mCpuLoadMonitorBG:Z

.field private static volatile mCpuUsageThreshold:I

.field private static volatile mDelayUnfreezeTimeout:J

.field private static volatile mFreezeAdjThreshold:I

.field private static mInstance:Lcom/android/server/am/ProcessFreezerManager;

.field private static volatile mLaunchTimeout:J

.field private static mPerf:Landroid/util/BoostFramework;

.field private static volatile mUseCpuLoadMonitor:Z

.field private static volatile mUseDebug:Z

.field private static volatile mUseFreezerManager:Z


# instance fields
.field private volatile mCpuHighLoadFlag:Z

.field private mCpuHighLoadLock:Ljava/lang/Object;

.field private final mCpuLoadMonitor:Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;

.field private mFreezeFlagLock:Ljava/lang/Object;

.field private final mFreezer:Lcom/android/server/am/Freezer;

.field private final mFreezerManagerHandler:Landroid/os/Handler;

.field final mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

.field private mPhenotypeFlagLock:Ljava/lang/Object;

.field final mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

.field private final mProcessFreezeRecordLocked:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$kfVzHzuRG2hDNim4gvKvpe-VW60(Lcom/android/server/am/ProcessFreezerManager;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessFreezerManager;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetCpuHighLoadFlagLocked(Lcom/android/server/am/ProcessFreezerManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessFreezerManager;->setCpuHighLoadFlagLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmUseDebug()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    const-string v0, "ProcessFreezerManager"

    sput-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessFreezerManager;->mPerf:Landroid/util/BoostFramework;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->ALREADY_READ_PROPERTIES:Z

    .line 64
    const/16 v1, 0xc9

    sput v1, Lcom/android/server/am/ProcessFreezerManager;->mFreezeAdjThreshold:I

    .line 65
    const-wide/16 v1, 0x7d0

    sput-wide v1, Lcom/android/server/am/ProcessFreezerManager;->mLaunchTimeout:J

    .line 66
    const/16 v1, 0x3c

    sput v1, Lcom/android/server/am/ProcessFreezerManager;->mCpuUsageThreshold:I

    .line 67
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/ProcessFreezerManager;->mCpuLoadMonitorBG:Z

    .line 68
    const-wide/16 v1, 0x3e8

    sput-wide v1, Lcom/android/server/am/ProcessFreezerManager;->mDelayUnfreezeTimeout:J

    .line 69
    sput-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    .line 70
    sput-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseFreezerManager:Z

    .line 71
    sput-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseCpuLoadMonitor:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezeFlagLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mCpuHighLoadLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;-><init>(Lcom/android/server/am/ProcessFreezerManager;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mCpuLoadMonitor:Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mCpuHighLoadFlag:Z

    .line 371
    new-instance v0, Lcom/android/server/am/ProcessFreezerManager$PidMap;

    invoke-direct {v0}, Lcom/android/server/am/ProcessFreezerManager$PidMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    .line 451
    new-instance v0, Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-direct {v0}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    .line 643
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mProcessFreezeRecordLocked:Ljava/util/Map;

    .line 251
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseCpuLoadMonitor:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mCpuLoadMonitor:Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;

    sget v1, Lcom/android/server/am/ProcessFreezerManager;->mCpuUsageThreshold:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;->setCpuUsageThreshold(I)V

    .line 253
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mCpuLoadMonitor:Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;

    sget-boolean v1, Lcom/android/server/am/ProcessFreezerManager;->mCpuLoadMonitorBG:Z

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;->setCpuSet(Z)V

    .line 256
    :cond_0
    new-instance v0, Lcom/android/server/am/Freezer;

    invoke-direct {v0}, Lcom/android/server/am/Freezer;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezer:Lcom/android/server/am/Freezer;

    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/am/ProcessFreezerManager;->createAndStartFreezeThread()Lcom/android/server/ServiceThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ProcessFreezerManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessFreezerManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessFreezerManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    .line 369
    return-void
.end method

.method private addFreezeRecordLocked(Ljava/lang/String;I)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "freezeReason"    # I

    .line 654
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mProcessFreezeRecordLocked:Ljava/util/Map;

    monitor-enter v0

    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mProcessFreezeRecordLocked:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addPackageLocked(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 618
    .local p2, "pidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->put(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 620
    monitor-exit v0

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkInFreezeProcessLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 495
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 496
    .local v0, "pid":I
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-static {v2}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->-$$Nest$fgetmPackageMap(Lcom/android/server/am/ProcessFreezerManager$PackageMap;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 498
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->get(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 499
    .local v4, "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 500
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 504
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 499
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_0
    nop

    .line 502
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    goto :goto_0

    .line 503
    :cond_1
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 504
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private clearPackageLocked()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v0

    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->clear()V

    .line 640
    monitor-exit v0

    .line 641
    return-void

    .line 640
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static createAndStartFreezeThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 244
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, -0xa

    const/4 v2, 0x1

    const-string v3, "FreezerManagerThread"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 246
    .local v0, "freezerManagerThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 247
    return-object v0
.end method

.method private findNeedFreezeProcessesLocked(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 7
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 434
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 435
    .local v0, "needFreezeProcesses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    monitor-enter v1

    .line 436
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessFreezerManager$PidMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 437
    iget-object v3, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessFreezerManager$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 438
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 439
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    if-ltz v5, :cond_1

    .line 440
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 441
    .local v5, "appPackageName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 442
    goto :goto_1

    .line 444
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 448
    .end local v2    # "i":I
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v5    # "appPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 436
    .restart local v2    # "i":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 447
    .end local v2    # "i":I
    monitor-exit v1

    return-object v0

    .line 448
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private freezeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 19
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 737
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 738
    .local v3, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 739
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 740
    .local v5, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    .line 741
    .local v6, "pid":I
    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 742
    .local v7, "uid":I
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v8

    .line 743
    .local v8, "sevicesNum":I
    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 744
    .local v14, "processName":Ljava/lang/String;
    nop

    .line 746
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 744
    const-string v9, "app info: uid=%d, pid=%d, adj=%d, frozen=%b, services=%d, proc name=%s"

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 747
    .local v9, "logInfo":Ljava/lang/String;
    const/4 v10, 0x0

    .line 748
    .local v10, "freezeBinderSuccess":Z
    const/4 v11, 0x0

    .line 750
    .local v11, "freezeProcessSuccess":Z
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_d

    if-nez v6, :cond_0

    move-object v13, v3

    move-object v12, v4

    move-object/from16 v16, v5

    goto/16 :goto_9

    .line 767
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move/from16 v16, v15

    sget v15, Lcom/android/server/am/ProcessFreezerManager;->mFreezeAdjThreshold:I

    if-ge v0, v15, :cond_2

    .line 768
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v0, :cond_1

    .line 769
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " *skip freeze: skip reason: process\'s adj < "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/server/am/ProcessFreezerManager;->mFreezeAdjThreshold:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ". "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_1
    return v16

    .line 775
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v15, 0xc8

    if-gt v0, v15, :cond_5

    .line 776
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move/from16 v15, v16

    invoke-direct {v1, v2, v0, v15}, Lcom/android/server/am/ProcessFreezerManager;->isBoundClient(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)Z

    move-result v0

    .line 777
    .local v0, "hasBoundClient":Z
    if-eqz v0, :cond_4

    .line 778
    sget-boolean v16, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v16, :cond_3

    .line 779
    sget-object v15, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " *skip freeze: skip reason: process\'s service has bound client. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skip freeze: skip reason: process\'s service has bound client. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v3

    const-wide/16 v2, 0x40

    .end local v3    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v13, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-static {v2, v3, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 784
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 778
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v3    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :cond_3
    move-object v13, v3

    .line 786
    .end local v3    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :goto_0
    const/4 v15, 0x0

    return v15

    .line 777
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v3    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :cond_4
    move-object v13, v3

    .end local v3    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    goto :goto_1

    .line 775
    .end local v0    # "hasBoundClient":Z
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v3    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :cond_5
    move-object v13, v3

    .line 790
    .end local v3    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :goto_1
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v0, :cond_6

    .line 791
    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "freeze binder: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 796
    :cond_6
    const/4 v2, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ProcessFreezerManager;->mFreezer:Lcom/android/server/am/Freezer;

    const/4 v3, 0x2

    invoke-virtual {v0, v6, v2, v3}, Lcom/android/server/am/Freezer;->freezeBinder(IZI)I

    move-result v0

    .line 797
    .local v0, "rc":I
    if-eqz v0, :cond_7

    .line 798
    sget-object v3, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " *unable to freeze binder for "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 805
    .end local v0    # "rc":I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 800
    .restart local v0    # "rc":I
    :cond_7
    const/4 v10, 0x1

    .line 801
    sget-boolean v3, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v3, :cond_8

    .line 802
    sget-object v3, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  freeze binder : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    .end local v0    # "rc":I
    :cond_8
    :goto_2
    move-object v12, v4

    move-object/from16 v16, v5

    goto :goto_4

    .line 805
    :goto_3
    nop

    .line 806
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to freeze binder: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v4

    move-object/from16 v16, v5

    const-wide/16 v4, 0x40

    .end local v4    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v5    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v12, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v16, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 808
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 809
    sget-object v3, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  unbale to freeze binder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_4
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v0, :cond_9

    .line 813
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "freeze process: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 818
    :cond_9
    if-eqz v10, :cond_b

    .line 819
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/ProcessFreezerManager;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v0, v6, v7, v2}, Lcom/android/server/am/Freezer;->setProcessFrozen(IIZ)V

    .line 820
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v0, :cond_a

    .line 821
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  freeze process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 829
    :catch_1
    move-exception v0

    goto :goto_7

    .line 823
    :cond_a
    :goto_5
    const/4 v11, 0x1

    goto :goto_6

    .line 825
    :cond_b
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " *skip freeze process: skip reason: unable to freeze process\'s binder. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 834
    :goto_6
    goto :goto_8

    .line 829
    :goto_7
    nop

    .line 830
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to freeze process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 832
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 833
    sget-object v2, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  unbale to freeze process: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_8
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v0, :cond_c

    .line 837
    const-wide/16 v17, 0x40

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 838
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 840
    :cond_c
    return v11

    .line 750
    .end local v12    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v4    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v5    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_d
    move-object v13, v3

    move-object v12, v4

    move-object/from16 v16, v5

    .line 751
    .end local v3    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v4    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v5    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v12    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_9
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v0, :cond_f

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip frozen process: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 754
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 755
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 756
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " *skip freeze: skip reason: process is frozen by default freezer. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_e
    if-nez v6, :cond_f

    .line 761
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " *skip freeze: skip reason: process is dead. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_f
    const/4 v15, 0x0

    return v15
.end method

.method private getCpuHighLoadFlagLocked()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mCpuHighLoadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mCpuHighLoadFlag:Z

    monitor-exit v0

    return v1

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFreezeProcessesLocked(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->get(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 599
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 598
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 599
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final getFreezeReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "freezeReason"    # I

    .line 212
    packed-switch p0, :pswitch_data_0

    .line 220
    const-string v0, "Unknown"

    return-object v0

    .line 218
    :pswitch_0
    const-string v0, "Cold launch"

    return-object v0

    .line 216
    :pswitch_1
    const-string v0, "Warm launch"

    return-object v0

    .line 214
    :pswitch_2
    const-string v0, "First launch"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFreezeRecordLocked(Ljava/lang/String;)I
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mProcessFreezeRecordLocked:Ljava/util/Map;

    monitor-enter v0

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mProcessFreezeRecordLocked:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mProcessFreezeRecordLocked:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 650
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 649
    :cond_0
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 650
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/android/server/am/ProcessFreezerManager;
    .locals 4

    .line 164
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->ALREADY_READ_PROPERTIES:Z

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->ALREADY_READ_PROPERTIES:Z

    .line 166
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.perf.freezer_manager.enable"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseFreezerManager:Z

    .line 168
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.perf.freezer_manager.enable_cpu_load_monitor"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseCpuLoadMonitor:Z

    .line 170
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.perf.freezer_manager.cpu_load_monitor_usage_threshold"

    .line 172
    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessFreezerManager;->mCpuUsageThreshold:I

    .line 173
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.perf.freezer_manager.cpu_load_monitor_cpuset_bg"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mCpuLoadMonitorBG:Z

    .line 175
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.perf.freezer_manager.freeze_adj_threshold"

    .line 177
    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessFreezerManager;->mFreezeAdjThreshold:I

    .line 178
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.perf.freezer_manager.launch_timeout_threshold"

    .line 180
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ProcessFreezerManager;->mLaunchTimeout:J

    .line 181
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.perf.freezer_manager.delay_unfreeze_threshold"

    .line 183
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ProcessFreezerManager;->mDelayUnfreezeTimeout:J

    .line 184
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "ro.vendor.perf.freezer_manager.enable_debug"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    .line 187
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    const-string v1, "---- freezer manager settings ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use_freezer_manager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/ProcessFreezerManager;->mUseFreezerManager:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable_cpu_load_monitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/ProcessFreezerManager;->mUseCpuLoadMonitor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cpu_load_monitor_usage_threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/ProcessFreezerManager;->mCpuUsageThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cpu_load_monitor_cpuset_bg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/ProcessFreezerManager;->mCpuLoadMonitorBG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "freeze_adj_threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/ProcessFreezerManager;->mFreezeAdjThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launch_timeout_threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/ProcessFreezerManager;->mLaunchTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay_unfreeze_threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/ProcessFreezerManager;->mDelayUnfreezeTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable_debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseFreezerManager:Z

    if-nez v0, :cond_1

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_1
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->mInstance:Lcom/android/server/am/ProcessFreezerManager;

    if-nez v0, :cond_3

    .line 202
    const-class v0, Lcom/android/server/am/ProcessFreezerManager;

    monitor-enter v0

    .line 203
    :try_start_0
    sget-object v1, Lcom/android/server/am/ProcessFreezerManager;->mInstance:Lcom/android/server/am/ProcessFreezerManager;

    if-nez v1, :cond_2

    .line 204
    new-instance v1, Lcom/android/server/am/ProcessFreezerManager;

    invoke-direct {v1}, Lcom/android/server/am/ProcessFreezerManager;-><init>()V

    sput-object v1, Lcom/android/server/am/ProcessFreezerManager;->mInstance:Lcom/android/server/am/ProcessFreezerManager;

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 208
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->mInstance:Lcom/android/server/am/ProcessFreezerManager;

    return-object v0
.end method

.method private getPackageNameListLocked()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v0

    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->getAllKeys()Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 634
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPackageSizeLocked()I
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v0

    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 614
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUnfreezeProcessesLocked(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v0

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->get(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 608
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 607
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 608
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final getUnfreezeReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "unfreezeReason"    # I

    .line 225
    packed-switch p0, :pswitch_data_0

    .line 239
    const-string v0, "Unknown"

    return-object v0

    .line 237
    :pswitch_0
    const-string v0, "Dependent launch"

    return-object v0

    .line 235
    :pswitch_1
    const-string v0, "Cross launch process"

    return-object v0

    .line 233
    :pswitch_2
    const-string v0, "Remove main process"

    return-object v0

    .line 231
    :pswitch_3
    const-string v0, "Launch timeout"

    return-object v0

    .line 229
    :pswitch_4
    const-string v0, "Interrupt launch"

    return-object v0

    .line 227
    :pswitch_5
    const-string v0, "Complete launch"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isBoundClient(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)Z
    .locals 15
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "equal"    # Z

    .line 508
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 509
    .local v2, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v3

    .line 510
    .local v3, "sevicesNum":I
    const/4 v4, 0x0

    .line 511
    .local v4, "isBound":Z
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_7

    .line 512
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v6

    .line 513
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    if-nez v6, :cond_0

    .line 514
    goto/16 :goto_3

    .line 517
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v7

    .line 518
    .local v7, "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .local v8, "conni":I
    :goto_1
    if-ltz v8, :cond_6

    .line 519
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 520
    .local v9, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v10, 0x0

    .local v10, "con":I
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 521
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    .line 522
    .local v11, "cr":Lcom/android/server/am/ConnectionRecord;
    if-eqz p3, :cond_2

    .line 523
    iget-object v12, v11, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 524
    const/4 v4, 0x1

    .line 525
    sget-boolean v12, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v12, :cond_1

    .line 526
    sget-object v12, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Immediately unfreeze service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ". Reason: depend on service("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ") when launch "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1
    return v4

    .line 534
    :cond_2
    const/4 v4, 0x1

    .line 535
    sget-boolean v12, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v12, :cond_4

    .line 536
    sget-object v12, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " has been bound client ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    nop

    .line 520
    .end local v11    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 541
    .restart local v11    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_4
    return v4

    .line 520
    .end local v11    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_5
    nop

    .line 518
    .end local v9    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v10    # "con":I
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_1

    .line 511
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v8    # "conni":I
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_7
    nop

    .line 546
    .end local v5    # "i":I
    return v4
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x40

    packed-switch v0, :pswitch_data_0

    .line 365
    return v1

    .line 324
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 325
    .local v0, "unfreezeReason":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 326
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/am/ProcessFreezerManager;->packageContainKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 327
    sget-object v2, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alread triggered unfreeze for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    goto/16 :goto_7

    .line 331
    :cond_0
    sget-boolean v5, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v5, :cond_1

    .line 332
    invoke-static {v0}, Lcom/android/server/am/ProcessFreezerManager;->getUnfreezeReason(I)Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, "unfreezeReasonStr":Ljava/lang/String;
    sget-object v6, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "= start unfreeze processes for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start unfreeze processes for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 340
    .end local v5    # "unfreezeReasonStr":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezeFlagLock:Ljava/lang/Object;

    monitor-enter v5

    .line 341
    nop

    .line 342
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/am/ProcessFreezerManager;->getUnfreezeProcessesLocked(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v6

    .line 343
    .local v6, "needUnfreezeProcesses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v6, :cond_4

    .line 344
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 345
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 346
    .local v8, "pid":I
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 347
    .local v9, "app":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, v9}, Lcom/android/server/am/ProcessFreezerManager;->unFreezeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 344
    .end local v8    # "pid":I
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 358
    .end local v6    # "needUnfreezeProcesses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 344
    .restart local v6    # "needUnfreezeProcesses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "i":I
    :cond_2
    nop

    .line 349
    .end local v7    # "i":I
    sget-boolean v7, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v7, :cond_3

    .line 350
    sget-object v7, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "= number of processes to unfreeze is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 350
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/am/ProcessFreezerManager;->removePackageLocked(Ljava/lang/String;)Z

    .line 354
    invoke-direct {p0, v4}, Lcom/android/server/am/ProcessFreezerManager;->removeFreezeRecordLocked(Ljava/lang/String;)V

    goto :goto_1

    .line 356
    :cond_4
    sget-object v7, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unfreeze object is null for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v6    # "needUnfreezeProcesses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    sget-boolean v5, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v5, :cond_5

    .line 361
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 363
    .end local v0    # "unfreezeReason":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_5
    goto/16 :goto_7

    .line 358
    .restart local v0    # "unfreezeReason":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 285
    .end local v0    # "unfreezeReason":I
    .end local v4    # "packageName":Ljava/lang/String;
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 286
    .local v0, "freezeReason":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 287
    .restart local v4    # "packageName":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v5, :cond_6

    .line 288
    invoke-static {v0}, Lcom/android/server/am/ProcessFreezerManager;->getFreezeReason(I)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "freezeReasonStr":Ljava/lang/String;
    sget-object v6, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# start freeze processes which adj >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/am/ProcessFreezerManager;->mFreezeAdjThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start freeze processes which adj >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/ProcessFreezerManager;->mFreezeAdjThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 297
    .end local v5    # "freezeReasonStr":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezeFlagLock:Ljava/lang/Object;

    monitor-enter v5

    .line 298
    nop

    .line 299
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/server/am/ProcessFreezerManager;->getFreezeProcessesLocked(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v6

    .line 300
    .local v6, "needFreezeProcesses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v6, :cond_a

    .line 301
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v7, "pidsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 303
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 304
    .local v9, "pid":I
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 305
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, v10}, Lcom/android/server/am/ProcessFreezerManager;->freezeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 306
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 317
    .end local v6    # "needFreezeProcesses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7    # "pidsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8    # "i":I
    .end local v9    # "pid":I
    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v1

    goto :goto_6

    .line 302
    .restart local v6    # "needFreezeProcesses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "pidsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8    # "i":I
    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    nop

    .line 309
    .end local v8    # "i":I
    invoke-direct {p0, v4, v7}, Lcom/android/server/am/ProcessFreezerManager;->removeProcessFromListLocked(Ljava/lang/String;Ljava/util/List;)V

    .line 310
    sget-boolean v8, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v8, :cond_9

    .line 311
    sget-object v8, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# number of processes to freeze is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 311
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v7    # "pidsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    :cond_9
    goto :goto_5

    .line 315
    :cond_a
    sget-object v7, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "freeze object is null for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v6    # "needFreezeProcesses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :goto_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    sget-boolean v5, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v5, :cond_b

    .line 320
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 322
    .end local v0    # "freezeReason":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_b
    goto/16 :goto_7

    .line 317
    .restart local v0    # "freezeReason":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :goto_6
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 261
    .end local v0    # "freezeReason":I
    .end local v4    # "packageName":Ljava/lang/String;
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 262
    .local v0, "unfreezeReason":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 263
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, v4}, Lcom/android/server/am/ProcessFreezerManager;->checkInFreezeProcessLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 264
    sget-object v2, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip unfreeze service: skip reason: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has been removed from freeze list"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    goto :goto_7

    .line 268
    :cond_c
    sget-boolean v5, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v5, :cond_d

    .line 269
    invoke-static {v0}, Lcom/android/server/am/ProcessFreezerManager;->getUnfreezeReason(I)Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "unfreezeReasonStr":Ljava/lang/String;
    sget-object v6, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "= start unfreeze service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start unfreeze service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 277
    .end local v5    # "unfreezeReasonStr":Ljava/lang/String;
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/server/am/ProcessFreezerManager;->unFreezeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 278
    invoke-direct {p0, v4}, Lcom/android/server/am/ProcessFreezerManager;->removeProcessFromListLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 280
    sget-boolean v5, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v5, :cond_e

    .line 281
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 283
    .end local v0    # "unfreezeReason":I
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_e
    nop

    .line 367
    :goto_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private packageContainKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->contains(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 590
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeFreezeRecordLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mProcessFreezeRecordLocked:Ljava/util/Map;

    monitor-enter v0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mProcessFreezeRecordLocked:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mProcessFreezeRecordLocked:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 665
    return-void

    .line 664
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removePackageLocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->get(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 626
    .local v1, "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 627
    iget-object v2, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->remove(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 628
    .end local v1    # "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeProcessFromListLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 567
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 568
    .local v0, "pid":I
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v1

    .line 569
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-static {v2}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->-$$Nest$fgetmPackageMap(Lcom/android/server/am/ProcessFreezerManager$PackageMap;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 570
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->get(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 571
    .local v4, "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 572
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 575
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 574
    :cond_0
    :goto_1
    goto :goto_0

    .line 575
    :cond_1
    monitor-exit v1

    .line 576
    return-void

    .line 575
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeProcessFromListLocked(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 579
    .local p2, "pidsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->get(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 581
    .local v1, "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 582
    .local v3, "process":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 583
    .end local v3    # "process":Lcom/android/server/am/ProcessRecord;
    goto :goto_0

    .line 584
    .end local v1    # "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeTimeoutUnfreeze(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 899
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 900
    return-void
.end method

.method private setCpuHighLoadFlagLocked(Z)V
    .locals 2
    .param p1, "isHighLoad"    # Z

    .line 152
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mCpuHighLoadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessFreezerManager;->mCpuHighLoadFlag:Z

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startFreezeInternal(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "freezeReason"    # I

    .line 855
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessFreezerManager;->isMainProcess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    return-void

    .line 859
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessFreezerManager;->packageContainKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already triggered freeze for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void

    .line 865
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseCpuLoadMonitor:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/ProcessFreezerManager;->getCpuHighLoadFlagLocked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 866
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v0, :cond_2

    .line 867
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip freeze: skip reason: CPU load is low when launching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_2
    return-void

    .line 873
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/ProcessFreezerManager;->startUnfreezeAll()V

    .line 874
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessFreezerManager;->findNeedFreezeProcessesLocked(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 875
    .local v0, "needFreezeProcesses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 876
    sget-boolean v1, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v1, :cond_4

    .line 877
    sget-object v1, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip freeze: skip reason: No proper processes to freeze for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_4
    return-void

    .line 883
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessFreezerManager;->addFreezeRecordLocked(Ljava/lang/String;I)V

    .line 884
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessFreezerManager;->addPackageLocked(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 885
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 887
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessFreezerManager;->startTimeoutUnfreeze(Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method private startTimeoutUnfreeze(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 892
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/android/server/am/ProcessFreezerManager;->mLaunchTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 895
    return-void
.end method

.method private startUnfreezeAll()V
    .locals 4

    .line 903
    invoke-direct {p0}, Lcom/android/server/am/ProcessFreezerManager;->getPackageNameListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 904
    .local v0, "packageNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 905
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ProcessFreezerManager;->startUnfreezeInternal(Ljava/lang/String;I)V

    .line 906
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 907
    :cond_0
    return-void
.end method

.method private startUnfreezeInternal(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "unfreezeReason"    # I

    .line 920
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessFreezerManager;->packageContainKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    return-void

    .line 924
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessFreezerManager;->removeTimeoutUnfreeze(Ljava/lang/String;)V

    .line 925
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p2, :cond_2

    .line 926
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessFreezerManager;->getFreezeRecordLocked(Ljava/lang/String;)I

    move-result v2

    .line 927
    .local v2, "freezeReason":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 928
    iget-object v3, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 931
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-wide v4, Lcom/android/server/am/ProcessFreezerManager;->mDelayUnfreezeTimeout:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 935
    .end local v2    # "freezeReason":I
    :goto_0
    goto :goto_1

    .line 936
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 939
    :goto_1
    return-void
.end method

.method private unFreezeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 668
    const-string v0, " "

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 669
    .local v1, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 670
    .local v2, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    .line 671
    .local v3, "pid":I
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 672
    .local v4, "uid":I
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 673
    .local v5, "processName":Ljava/lang/String;
    nop

    .line 674
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v6, v7, v8, v9, v5}, [Ljava/lang/Object;

    move-result-object v6

    .line 673
    const-string v7, "app info: uid=%d, pid=%d, adj=%d, frozen=%b, proc name=%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 676
    .local v6, "logInfo":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v7

    const-wide/16 v8, 0x40

    if-nez v7, :cond_0

    if-nez v3, :cond_1

    :cond_0
    goto/16 :goto_6

    .line 692
    :cond_1
    sget-boolean v7, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v7, :cond_2

    .line 693
    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 694
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unfreeze binder: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 698
    :cond_2
    const/4 v7, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezer:Lcom/android/server/am/Freezer;

    const/4 v11, 0x2

    invoke-virtual {v10, v3, v7, v11}, Lcom/android/server/am/Freezer;->freezeBinder(IZI)I

    move-result v10

    .line 699
    .local v10, "rc":I
    if-eqz v10, :cond_3

    .line 700
    sget-object v11, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " *unable to unfreeze binder: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 706
    .end local v10    # "rc":I
    :catch_0
    move-exception v10

    goto :goto_1

    .line 702
    .restart local v10    # "rc":I
    :cond_3
    sget-boolean v11, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v11, :cond_4

    .line 703
    sget-object v11, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  unfreeze binder:  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v10    # "rc":I
    :cond_4
    :goto_0
    goto :goto_2

    .line 706
    :goto_1
    nop

    .line 707
    .local v10, "e":Ljava/lang/RuntimeException;
    sget-object v11, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " *unable to unfreeze binder for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to unfreeze binder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 710
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 713
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_2
    sget-boolean v10, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v10, :cond_5

    .line 714
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 715
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unfreeze process: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 719
    :cond_5
    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v10, v3, v4, v7}, Lcom/android/server/am/Freezer;->setProcessFrozen(IIZ)V

    .line 720
    sget-boolean v7, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v7, :cond_6

    .line 721
    sget-object v7, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  unfreeze process: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 723
    :catch_1
    move-exception v7

    goto :goto_4

    .line 728
    :cond_6
    :goto_3
    goto :goto_5

    .line 723
    :goto_4
    nop

    .line 724
    .local v7, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " *unable to unfreeze process: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unable to unfreeze process: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 727
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 730
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_5
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v0, :cond_7

    .line 731
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 732
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 734
    :cond_7
    return-void

    .line 677
    :goto_6
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseDebug:Z

    if-eqz v0, :cond_9

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skip unfreeze: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 679
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 680
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 681
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " *skip unfreeze: skip reason: process is frozen by default freezer. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_8
    if-nez v3, :cond_9

    .line 686
    sget-object v0, Lcom/android/server/am/ProcessFreezerManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " *skip unfreeze: skip reason: process is dead. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_9
    return-void
.end method


# virtual methods
.method addPidLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 410
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    monitor-enter v0

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ProcessFreezerManager$PidMap;->doAddInternal(ILcom/android/server/am/ProcessRecord;)V

    .line 412
    monitor-exit v0

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkNeedFreezeProcessLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 550
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 551
    .local v0, "pid":I
    const/4 v1, 0x0

    .line 552
    .local v1, "isInList":Z
    iget-object v2, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    monitor-enter v2

    .line 553
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-static {v3}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->-$$Nest$fgetmPackageMap(Lcom/android/server/am/ProcessFreezerManager$PackageMap;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 554
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ProcessFreezerManager;->mPackagesSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PackageMap;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessFreezerManager$PackageMap;->get(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    .line 555
    .local v5, "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 556
    goto :goto_0

    .line 558
    :cond_0
    const/4 v6, 0x1

    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/am/ProcessFreezerManager;->isBoundClient(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 559
    const/4 v1, 0x1

    .line 561
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "freezeList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_1
    goto :goto_0

    .line 563
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 562
    :cond_2
    monitor-exit v2

    return v1

    .line 563
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method findProcessByNameLocked(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    monitor-enter v0

    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessFreezerManager$PidMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessFreezerManager$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 425
    .local v2, "foundProcess":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    monitor-exit v0

    return-object v2

    .line 429
    .end local v1    # "i":I
    .end local v2    # "foundProcess":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 425
    .restart local v1    # "i":I
    .restart local v2    # "foundProcess":Lcom/android/server/am/ProcessRecord;
    :cond_0
    nop

    .line 423
    .end local v2    # "foundProcess":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 429
    .end local v1    # "i":I
    monitor-exit v0

    .line 430
    const/4 v0, 0x0

    return-object v0

    .line 429
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMainProcess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 844
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method removePidLocked(ILcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 416
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mPidsSelfLocked:Lcom/android/server/am/ProcessFreezerManager$PidMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ProcessFreezerManager$PidMap;->doRemoveInternal(ILcom/android/server/am/ProcessRecord;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startFreeze(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "freezeReason"    # I

    .line 848
    sget-boolean v0, Lcom/android/server/am/ProcessFreezerManager;->mUseCpuLoadMonitor:Z

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mCpuLoadMonitor:Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessFreezerManager$CpuLoadMonitor;->startCpuLoadMonitorOnce()V

    .line 851
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessFreezerManager;->startFreezeInternal(Ljava/lang/String;I)V

    .line 852
    return-void
.end method

.method public startUnfreeze(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "unfreezeReason"    # I

    .line 916
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessFreezerManager;->startUnfreezeInternal(Ljava/lang/String;I)V

    .line 917
    return-void
.end method

.method public startUnfreezeService(Lcom/android/server/am/ProcessRecord;I)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "unfreezeReason"    # I

    .line 911
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/ProcessFreezerManager;->mFreezerManagerHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 913
    return-void
.end method

.method public useFreezerManager()Z
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/android/server/am/ProcessFreezerManager;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/ProcessFreezerManager;->mUseFreezerManager:Z

    monitor-exit v0

    return v1

    .line 944
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
