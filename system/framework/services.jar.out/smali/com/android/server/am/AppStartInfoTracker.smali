.class public final Lcom/android/server/am/AppStartInfoTracker;
.super Ljava/lang/Object;
.source "AppStartInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;,
        Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;
    }
.end annotation


# static fields
.field static final APP_START_INFO_FILE:Ljava/lang/String; = "procstartinfo"

.field static final APP_START_INFO_HISTORY_LENGTH_MS:J

.field static final APP_START_INFO_HISTORY_LIST_SIZE:I = 0x10

.field private static final APP_START_INFO_MONITORING_MODE_LIST_SIZE:I = 0x64

.field private static final APP_START_INFO_PERSIST_INTERVAL:J

.field static final APP_START_STORE_DIR:Ljava/lang/String; = "procstartstore"

.field private static final DEBUG:Z = false

.field private static final FOREACH_ACTION_NONE:I = 0x0

.field private static final FOREACH_ACTION_REMOVE_AND_STOP_ITERATION:I = 0x3

.field private static final FOREACH_ACTION_REMOVE_ITEM:I = 0x1

.field private static final FOREACH_ACTION_STOP_ITERATION:I = 0x2

.field static final MAX_IN_PROGRESS_RECORDS:I = 0x5

.field private static final MONITORING_MODE_EMPTY_TEXT:Ljava/lang/String; = "No records"

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field mAppStartInfoHistoryListSize:I

.field mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAppStartInfoPersistTask:Ljava/lang/Runnable;

.field private final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mData:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;",
            ">;"
        }
    .end annotation
.end field

.field mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field final mInProgressRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAppStartInfoPersistTimestamp:J

.field final mLock:Ljava/lang/Object;

.field mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field mProcStartInfoFile:Ljava/io/File;

.field mProcStartStoreDir:Ljava/io/File;

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mTemporaryInProgressIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpStartInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KV3NBYR4Jya7P9QoojzvC9rr4KE(Lcom/android/server/am/AppStartInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppStartInfoTracker;->lambda$dumpHistoryProcessStartInfo$7(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NYsQh-8lM7FDsO3bJCG0ECUX12o(Lcom/android/server/am/AppStartInfoTracker;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->lambda$maybeTrimInProgressRecordsLocked$1(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OAAONl-88gSRJWsYfe-6xUhxybY(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->lambda$removeByUserIdLocked$5(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VdR_UMu5lcdcEkpdcV9tz9DCksE(Lcom/android/server/am/AppStartInfoTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AppStartInfoTracker;->lambda$onSystemReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$e8bB6slpx0Xgy9r3R5ue8hao6m0(Landroid/util/proto/ProtoOutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/am/AppStartInfoTracker;->lambda$persistProcessStartInfo$6(Landroid/util/proto/ProtoOutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q83gRHliZ6lknI1uFyqnNAujwE8(ILjava/util/ArrayList;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppStartInfoTracker;->lambda$getStartInfo$3(ILjava/util/ArrayList;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u6qs2IdvBWItgRWSSXIvHozrGxQ(Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->lambda$configureDetailedMonitoring$2(Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w9zNHkWKHXjwRe_q1c5gg2-70ps(Landroid/app/ApplicationStartInfo;Landroid/app/ApplicationStartInfo;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->lambda$getStartInfo$4(Landroid/app/ApplicationStartInfo;Landroid/app/ApplicationStartInfo;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckCompletenessAndCallback(Lcom/android/server/am/AppStartInfoTracker;Landroid/app/ApplicationStartInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->checkCompletenessAndCallback(Landroid/app/ApplicationStartInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_PERSIST_INTERVAL:J

    .line 102
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_HISTORY_LENGTH_MS:J

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 143
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTmpStartInfoList:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 200
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 201
    return-void
.end method

.method private addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "start"    # Landroid/app/ApplicationStartInfo;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 561
    if-nez p2, :cond_0

    .line 566
    return-void

    .line 568
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 570
    .local v0, "definingUid":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/ApplicationStartInfo;->setPid(I)V

    .line 571
    iget v2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v2}, Landroid/app/ApplicationStartInfo;->setRealUid(I)V

    .line 572
    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v2}, Landroid/app/ApplicationStartInfo;->setPackageUid(I)V

    .line 573
    if-lez v0, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    invoke-virtual {p1, v2}, Landroid/app/ApplicationStartInfo;->setDefiningUid(I)V

    .line 574
    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/app/ApplicationStartInfo;->setProcessName(Ljava/lang/String;)V

    .line 575
    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/app/ApplicationStartInfo;->setPackageName(Ljava/lang/String;)V

    .line 576
    nop

    .line 579
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 580
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->wasForceStopped()Z

    move-result v3

    nop

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    .line 581
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->wasForceStopped()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 580
    :goto_3
    invoke-virtual {p1, v1}, Landroid/app/ApplicationStartInfo;->setForceStopped(Z)V

    .line 583
    .end local v2    # "wpc":Lcom/android/server/wm/WindowProcessController;
    return-void
.end method

.method private addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;
    .locals 5
    .param p1, "raw"    # Landroid/app/ApplicationStartInfo;

    .line 643
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 645
    const-string v0, "ActivityManager"

    const-string v2, "Skipping saving the start info due to ongoing loading from storage"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-object v1

    .line 649
    :cond_0
    new-instance v0, Landroid/app/ApplicationStartInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationStartInfo;-><init>(Landroid/app/ApplicationStartInfo;)V

    .line 650
    .local v0, "info":Landroid/app/ApplicationStartInfo;
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result v2

    .line 654
    .local v2, "uid":I
    nop

    .line 655
    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    return-object v1

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 660
    .local v1, "container":Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
    if-nez v1, :cond_2

    .line 661
    new-instance v3, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    iget v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    move-object v1, v3

    .line 662
    invoke-static {v1, v2}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->-$$Nest$fputmUid(Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;I)V

    .line 663
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)V

    .line 667
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 669
    return-object v0
.end method

.method private checkCompletenessAndCallback(Landroid/app/ApplicationStartInfo;)V
    .locals 5
    .param p1, "startInfo"    # Landroid/app/ApplicationStartInfo;

    .line 678
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getStartupState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 681
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 682
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 683
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;>;"
    if-nez v1, :cond_0

    .line 684
    monitor-exit v0

    return-void

    .line 694
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 686
    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 687
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 688
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 689
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    invoke-virtual {v4, p1}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V

    .line 687
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 692
    .end local v3    # "i":I
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 694
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;>;"
    .end local v2    # "size":I
    :cond_3
    monitor-exit v0

    .line 695
    return-void

    .line 694
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "sdf"    # Landroid/icu/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;",
            ">;",
            "Landroid/icu/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 1221
    .local p4, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1223
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Historical Process Start for userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p5}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 1223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1227
    .end local v1    # "i":I
    return-void
.end method

.method private forEachPackageLocked(Ljava/util/function/BiFunction;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 835
    .local p1, "callback":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 837
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 838
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 845
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 846
    return v4

    .line 843
    :pswitch_1
    return v4

    .line 840
    :pswitch_2
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 841
    nop

    .line 837
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 853
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;>;"
    .end local v2    # "i":I
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$configureDetailedMonitoring$2(Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "records"    # Landroid/util/SparseArray;

    .line 596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 597
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    invoke-virtual {v1}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->disableAppMonitoringMode()V

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 599
    .end local v0    # "i":I
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$dumpHistoryProcessStartInfo$7(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Landroid/icu/text/SimpleDateFormat;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "records"    # Landroid/util/SparseArray;

    .line 1205
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "sdf":Landroid/icu/text/SimpleDateFormat;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "records":Landroid/util/SparseArray;
    .local v1, "pw":Ljava/io/PrintWriter;
    .local v3, "name":Ljava/lang/String;
    .local v4, "records":Landroid/util/SparseArray;
    .local v5, "sdf":Landroid/icu/text/SimpleDateFormat;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppStartInfoTracker;->dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 1206
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$getStartInfo$3(ILjava/util/ArrayList;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 2
    .param p0, "filterUid"    # I
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "records"    # Landroid/util/SparseArray;

    .line 722
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 723
    .local v0, "container":Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
    if-eqz v0, :cond_0

    .line 724
    invoke-static {v0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->-$$Nest$fgetmInfos(Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 726
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private static synthetic lambda$getStartInfo$4(Landroid/app/ApplicationStartInfo;Landroid/app/ApplicationStartInfo;)I
    .locals 4
    .param p0, "a"    # Landroid/app/ApplicationStartInfo;
    .param p1, "b"    # Landroid/app/ApplicationStartInfo;

    .line 731
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getMonotonicCreationTimeMs()J

    move-result-wide v0

    .line 732
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getMonotonicCreationTimeMs()J

    move-result-wide v2

    .line 731
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$maybeTrimInProgressRecordsLocked$1(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 4
    .param p1, "a"    # Ljava/lang/Integer;
    .param p2, "b"    # Ljava/lang/Integer;

    .line 271
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 272
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 271
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$onSystemReady$0()V
    .locals 0

    .line 230
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->loadExistingProcessStartInfo()V

    .line 231
    return-void
.end method

.method private static synthetic lambda$persistProcessStartInfo$6(Landroid/util/proto/ProtoOutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 13
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "objectOutputStream"    # Ljava/io/ObjectOutputStream;
    .param p3, "typedXmlSerializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "records"    # Landroid/util/SparseArray;

    .line 1083
    const-wide v2, 0x20b00000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1084
    .local v7, "token":J
    const-wide v2, 0x10900000001L

    move-object/from16 v9, p4

    invoke-virtual {p0, v2, v3, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1085
    invoke-virtual/range {p5 .. p5}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1086
    .local v10, "uidArraySize":I
    const/4 v0, 0x0

    move v11, v0

    .local v11, "j":I
    :goto_0
    if-ge v11, v10, :cond_0

    .line 1088
    move-object/from16 v12, p5

    :try_start_0
    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    const-wide v2, 0x20b00000002L

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    nop

    .line 1086
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write app start info into persistentstorage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 1086
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    move-object/from16 v12, p5

    .line 1101
    .end local v11    # "j":I
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$removeByUserIdLocked$5(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 886
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 887
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 888
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 889
    goto :goto_1

    .line 886
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 892
    .end local v0    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 12
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1020
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 1021
    .local v1, "token":J
    const-string v0, ""

    .line 1024
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1025
    .local v8, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v9, 0x0

    .line 1026
    .local v9, "objectInputStream":Ljava/io/ObjectInputStream;
    const/4 v10, 0x0

    .line 1028
    .local v10, "typedXmlPullParser":Lcom/android/modules/utils/TypedXmlPullParser;
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    move-object v7, v0

    move v11, v3

    .line 1029
    .end local v0    # "pkgName":Ljava/lang/String;
    .local v7, "pkgName":Ljava/lang/String;
    .local v11, "next":I
    :goto_0
    const/4 v0, -0x1

    if-eq v11, v0, :cond_1

    .line 1031
    packed-switch v11, :pswitch_data_0

    move-object v4, p1

    goto :goto_1

    .line 1036
    :pswitch_0
    new-instance v3, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    iget v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    .line 1038
    .local v3, "container":Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
    const-wide v5, 0x20b00000002L

    move-object v4, p1

    .end local p1    # "proto":Landroid/util/proto/ProtoInputStream;
    .local v4, "proto":Landroid/util/proto/ProtoInputStream;
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->readFromProto(Landroid/util/proto/ProtoInputStream;JLjava/lang/String;Ljava/io/ByteArrayInputStream;Ljava/io/ObjectInputStream;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result p1

    .line 1046
    .local p1, "uid":I
    nop

    .line 1047
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    goto :goto_1

    .line 1051
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1052
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v7, p1, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1053
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1033
    .end local v3    # "container":Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
    .end local v4    # "proto":Landroid/util/proto/ProtoInputStream;
    .local p1, "proto":Landroid/util/proto/ProtoInputStream;
    :pswitch_1
    move-object v4, p1

    .end local p1    # "proto":Landroid/util/proto/ProtoInputStream;
    .restart local v4    # "proto":Landroid/util/proto/ProtoInputStream;
    const-wide v5, 0x10900000001L

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object p1

    .line 1034
    .end local v7    # "pkgName":Ljava/lang/String;
    .local p1, "pkgName":Ljava/lang/String;
    move-object v7, p1

    .line 1030
    .end local p1    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v11

    move-object p1, v4

    goto :goto_0

    .line 1029
    .end local v4    # "proto":Landroid/util/proto/ProtoInputStream;
    .local p1, "proto":Landroid/util/proto/ProtoInputStream;
    :cond_1
    move-object v4, p1

    .line 1057
    .end local v11    # "next":I
    .end local p1    # "proto":Landroid/util/proto/ProtoInputStream;
    .restart local v4    # "proto":Landroid/util/proto/ProtoInputStream;
    invoke-virtual {v4, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1058
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeTrimInProgressRecordsLocked()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 258
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 271
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 281
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 289
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 288
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 294
    .end local v0    # "i":I
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 295
    return-void
.end method

.method private registerForPackageRemoval()V
    .locals 5

    .line 944
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 945
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 946
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppStartInfoTracker$2;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 964
    return-void
.end method

.method private registerForUserRemoval()V
    .locals 5

    .line 927
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 928
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppStartInfoTracker$1;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 941
    return-void
.end method

.method private removeByUserIdLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 880
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 882
    return-void

    .line 884
    :cond_0
    new-instance v0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 894
    return-void
.end method

.method private removePackageLocked(Ljava/lang/String;IZI)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "removeUid"    # Z
    .param p4, "userId"    # I

    .line 858
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 859
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 860
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;"
    if-nez v1, :cond_0

    .line 861
    return-void

    .line 863
    :cond_0
    const/4 v2, -0x1

    if-ne p4, v2, :cond_1

    .line 864
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 866
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 867
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p4, :cond_2

    .line 868
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 869
    goto :goto_1

    .line 866
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 872
    .end local v2    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 873
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method addStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/app/IApplicationStartInfoCompleteListener;
    .param p2, "uid"    # I

    .line 783
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 785
    monitor-exit v0

    return-void

    .line 793
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 788
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;>;"
    if-nez v1, :cond_1

    .line 789
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 792
    :cond_1
    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;-><init>(Lcom/android/server/am/AppStartInfoTracker;Landroid/app/IApplicationStartInfoCompleteListener;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    nop

    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;>;"
    monitor-exit v0

    .line 794
    return-void

    .line 793
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addTimestampToStart(Lcom/android/server/am/ProcessRecord;JI)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeNs"    # J
    .param p4, "key"    # I

    .line 620
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    .end local p2    # "timeNs":J
    .end local p4    # "key":I
    .local v4, "timeNs":J
    .local v6, "key":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppStartInfoTracker;->addTimestampToStart(Ljava/lang/String;IJI)V

    .line 621
    return-void
.end method

.method addTimestampToStart(Ljava/lang/String;IJI)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "timeNs"    # J
    .param p5, "key"    # I

    .line 624
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 625
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 629
    .local v1, "container":Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
    if-nez v1, :cond_1

    .line 635
    monitor-exit v0

    return-void

    .line 638
    .end local v1    # "container":Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 637
    .restart local v1    # "container":Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
    :cond_1
    invoke-virtual {v1, p5, p3, p4}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->addTimestampToStartLocked(IJ)V

    .line 638
    .end local v1    # "container":Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearHistoryProcessStartInfo(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1170
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 1171
    return-void

    .line 1173
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 1174
    .local v0, "appId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1176
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->removeByUserIdLocked(I)V

    .line 1177
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1179
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1180
    const-wide/32 v3, 0x20000

    invoke-virtual {v1, p1, v3, v4, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 1182
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 1183
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1184
    :try_start_1
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/am/AppStartInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 1185
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1187
    .end local v1    # "uid":I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 1188
    return-void

    .line 1185
    .restart local v1    # "uid":I
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method clearProcessStartInfo(Z)V
    .locals 3
    .param p1, "removeFile"    # Z

    .line 1149
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1150
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 1151
    monitor-exit v0

    return-void

    .line 1162
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1153
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1154
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    .line 1157
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 1158
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1160
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1161
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1162
    monitor-exit v0

    .line 1163
    return-void

    .line 1162
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method configureDetailedMonitoring(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 590
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 592
    monitor-exit v0

    return-void

    .line 616
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 595
    :cond_0
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 602
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    const-string v1, "ActivityManager AppStartInfo detailed monitoring disabled"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 606
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;"
    if-eqz v1, :cond_3

    .line 607
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 608
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    invoke-virtual {v3, p3}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->enableAppMonitoringModeForUser(I)V

    .line 607
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 610
    .end local v2    # "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityManager AppStartInfo detailed monitoring enabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 613
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    .end local v1    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;"
    :goto_1
    monitor-exit v0

    .line 617
    return-void

    .line 616
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpHistoryProcessStartInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1195
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 1196
    return-void

    .line 1198
    :cond_0
    const-string v0, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity start-info)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1199
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v0}, Landroid/icu/text/SimpleDateFormat;-><init>()V

    move-object v6, v0

    .line 1200
    .local v6, "sdf":Landroid/icu/text/SimpleDateFormat;
    iget-object v7, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1201
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last Timestamp of Persistence Into Persistent Storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1202
    invoke-virtual {v6, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1201
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    .line 1204
    :try_start_1
    new-instance v0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, v6}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/AppStartInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, p1

    move-object v4, p2

    goto :goto_0

    .line 1214
    :catchall_0
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    goto :goto_1

    .line 1209
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/SparseArray;

    .line 1210
    .local v5, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;"
    if-eqz v5, :cond_2

    .line 1211
    const-string v3, "  "
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "packageName":Ljava/lang/String;
    .local v2, "pw":Ljava/io/PrintWriter;
    .local v4, "packageName":Ljava/lang/String;
    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppStartInfoTracker;->dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    goto :goto_0

    .line 1214
    .end local v5    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;"
    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "packageName":Ljava/lang/String;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "packageName":Ljava/lang/String;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 1210
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;"
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_2
    move-object v2, p1

    move-object v4, p2

    .line 1214
    .end local v5    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;>;"
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "packageName":Ljava/lang/String;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "packageName":Ljava/lang/String;
    :goto_0
    monitor-exit v7

    .line 1215
    return-void

    .line 1214
    :goto_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getMonotonicTimeMs()J
    .locals 2

    .line 1234
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    if-nez v0, :cond_0

    .line 1236
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getStartInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterUid"    # I
    .param p3, "filterPid"    # I
    .param p4, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationStartInfo;",
            ">;)V"
        }
    .end annotation

    .line 699
    .local p5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationStartInfo;>;"
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 700
    return-void

    .line 702
    :cond_0
    if-nez p4, :cond_1

    .line 703
    const/16 p4, 0x10

    .line 705
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 707
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 708
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 709
    .local v3, "emptyPackageName":Z
    if-nez v3, :cond_3

    .line 711
    iget-object v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 712
    .local v4, "container":Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
    if-eqz v4, :cond_2

    .line 713
    invoke-virtual {v4, p3, p4, p5}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->getStartInfoLocked(IILjava/util/ArrayList;)V

    goto :goto_0

    .line 742
    .end local v3    # "emptyPackageName":Z
    .end local v4    # "container":Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 715
    .restart local v3    # "emptyPackageName":Z
    :cond_2
    :goto_0
    goto :goto_2

    .line 717
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mTmpStartInfoList:Ljava/util/ArrayList;

    .line 718
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationStartInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 720
    new-instance v5, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2, v4}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda0;-><init>(ILjava/util/ArrayList;)V

    invoke-direct {p0, v5}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 729
    new-instance v5, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 733
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 734
    .local v5, "size":I
    if-lez p4, :cond_4

    .line 735
    invoke-static {v5, p4}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 737
    :cond_4
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_5

    .line 738
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 740
    .end local v6    # "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 742
    .end local v3    # "emptyPackageName":Z
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationStartInfo;>;"
    .end local v5    # "size":I
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 745
    nop

    .line 746
    return-void

    .line 742
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/am/AppStartInfoTracker;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPid":I
    .end local p4    # "maxNum":I
    .end local p5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationStartInfo;>;"
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 744
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/am/AppStartInfoTracker;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPid":I
    .restart local p4    # "maxNum":I
    .restart local p5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationStartInfo;>;"
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 745
    throw v2
.end method

.method public handleProcessBackupStart(JLcom/android/server/am/ProcessRecord;Lcom/android/server/am/BackupRecord;Z)V
    .locals 4
    .param p1, "startTimeNs"    # J
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "backupRecord"    # Lcom/android/server/am/BackupRecord;
    .param p5, "cold"    # Z

    .line 539
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 541
    monitor-exit v0

    return-void

    .line 557
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 543
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 544
    .local v1, "start":Landroid/app/ApplicationStartInfo;
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 545
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 546
    invoke-virtual {v1, v2, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 548
    const/4 v2, 0x1

    if-eqz p5, :cond_1

    move v3, v2

    goto :goto_0

    .line 549
    :cond_1
    const/4 v3, 0x2

    .line 548
    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 550
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 552
    nop

    .line 553
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 556
    invoke-direct {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 557
    nop

    .end local v1    # "start":Landroid/app/ApplicationStartInfo;
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleProcessBroadcastStart(JLcom/android/server/am/ProcessRecord;Landroid/content/Intent;Z)V
    .locals 4
    .param p1, "startTimeNs"    # J
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "isAlarm"    # Z

    .line 490
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 492
    monitor-exit v0

    return-void

    .line 512
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 494
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 495
    .local v1, "start":Landroid/app/ApplicationStartInfo;
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 496
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 497
    invoke-virtual {v1, v2, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 499
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 500
    if-eqz p5, :cond_1

    .line 501
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    goto :goto_0

    .line 503
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 505
    :goto_0
    invoke-virtual {v1, p4}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    .line 507
    nop

    .line 508
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 511
    invoke-direct {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 512
    nop

    .end local v1    # "start":Landroid/app/ApplicationStartInfo;
    monitor-exit v0

    .line 513
    return-void

    .line 512
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleProcessContentProviderStart(JLcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "startTimeNs"    # J
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 517
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 519
    monitor-exit v0

    return-void

    .line 534
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 521
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 522
    .local v1, "start":Landroid/app/ApplicationStartInfo;
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 523
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 524
    invoke-virtual {v1, v2, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 526
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 527
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 529
    nop

    .line 530
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 533
    invoke-direct {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 534
    nop

    .end local v1    # "start":Landroid/app/ApplicationStartInfo;
    monitor-exit v0

    .line 535
    return-void

    .line 534
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleProcessServiceStart(JLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ServiceRecord;)V
    .locals 4
    .param p1, "startTimeNs"    # J
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "serviceRecord"    # Lcom/android/server/am/ServiceRecord;

    .line 460
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 462
    monitor-exit v0

    return-void

    .line 484
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 464
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 465
    .local v1, "start":Landroid/app/ApplicationStartInfo;
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 466
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 467
    invoke-virtual {v1, v2, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 469
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 471
    nop

    .line 472
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 476
    nop

    .line 477
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_JOB_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    const/4 v2, 0x5

    goto :goto_0

    .line 479
    :cond_1
    const/16 v2, 0xa

    .line 476
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 480
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v2, :cond_2

    .line 481
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    .line 483
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 484
    nop

    .end local v1    # "start":Landroid/app/ApplicationStartInfo;
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 204
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 206
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "ActivityManager:handler"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 208
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 209
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "procstartstore"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    .line 212
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    invoke-static {v1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 216
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    const-string/jumbo v3, "procstartinfo"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    .line 218
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    .line 219
    return-void
.end method

.method loadExistingProcessStartInfo()V
    .locals 9

    .line 971
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 972
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 977
    return-void

    .line 980
    :cond_1
    const/4 v0, 0x0

    .line 982
    .local v0, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 983
    .local v2, "af":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v0, v3

    .line 984
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v3, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 985
    .local v3, "proto":Landroid/util/proto/ProtoInputStream;
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    .line 986
    .local v4, "next":I
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 988
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 999
    :pswitch_0
    const-wide v5, 0x10300000003L

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    .line 1000
    .local v5, "monotonicTime":J
    new-instance v7, Lcom/android/internal/os/MonotonicClock;

    sget-object v8, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {v7, v5, v6, v8}, Lcom/android/internal/os/MonotonicClock;-><init>(JLcom/android/internal/os/Clock;)V

    iput-object v7, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    goto :goto_1

    .line 1008
    .end local v2    # "af":Landroid/util/AtomicFile;
    .end local v3    # "proto":Landroid/util/proto/ProtoInputStream;
    .end local v4    # "next":I
    .end local v5    # "monotonicTime":J
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 1004
    :catch_0
    move-exception v2

    goto :goto_3

    .line 996
    .restart local v2    # "af":Landroid/util/AtomicFile;
    .restart local v3    # "proto":Landroid/util/proto/ProtoInputStream;
    .restart local v4    # "next":I
    :pswitch_1
    int-to-long v5, v4

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/am/AppStartInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 997
    goto :goto_1

    .line 990
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    nop

    .line 992
    const-wide v6, 0x10300000001L

    :try_start_1
    invoke-virtual {v3, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    .line 993
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 994
    nop

    .line 987
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    goto :goto_0

    .line 993
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "fin":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/am/AppStartInfoTracker;
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 986
    .restart local v0    # "fin":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/am/AppStartInfoTracker;
    :cond_2
    nop

    .line 1008
    .end local v2    # "af":Landroid/util/AtomicFile;
    .end local v3    # "proto":Landroid/util/proto/ProtoInputStream;
    .end local v4    # "next":I
    if-eqz v0, :cond_3

    .line 1010
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1012
    :goto_2
    goto :goto_4

    .line 1011
    :catch_1
    move-exception v2

    goto :goto_2

    .line 1004
    :goto_3
    nop

    .line 1006
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in loading historical app start info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1008
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 1010
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 1015
    :cond_3
    :goto_4
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1016
    return-void

    .line 1008
    :goto_5
    if-eqz v0, :cond_4

    .line 1010
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1012
    goto :goto_6

    .line 1011
    :catch_2
    move-exception v2

    .line 1014
    :cond_4
    :goto_6
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onActivityIntentFailed(J)V
    .locals 4
    .param p1, "id"    # J

    .line 333
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 335
    monitor-exit v0

    return-void

    .line 348
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 338
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 339
    monitor-exit v0

    return-void

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationStartInfo;

    .line 342
    .local v2, "info":Landroid/app/ApplicationStartInfo;
    if-nez v2, :cond_2

    .line 343
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 344
    monitor-exit v0

    return-void

    .line 346
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 347
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 348
    nop

    .end local v1    # "index":I
    .end local v2    # "info":Landroid/app/ApplicationStartInfo;
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onActivityIntentStarted(Landroid/content/Intent;J)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNanos"    # J

    .line 302
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 304
    monitor-exit v0

    return-void

    .line 325
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 306
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 307
    .local v1, "start":Landroid/app/ApplicationStartInfo;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 308
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    .line 309
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 310
    invoke-virtual {v1, v2, p2, p3}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 312
    nop

    .line 313
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 317
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    goto :goto_0

    .line 321
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 323
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-direct {p0}, Lcom/android/server/am/AppStartInfoTracker;->maybeTrimInProgressRecordsLocked()V

    .line 325
    .end local v1    # "start":Landroid/app/ApplicationStartInfo;
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onActivityLaunchCancelled(J)V
    .locals 4
    .param p1, "id"    # J

    .line 387
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 389
    monitor-exit v0

    return-void

    .line 402
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 392
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 393
    monitor-exit v0

    return-void

    .line 395
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationStartInfo;

    .line 396
    .local v2, "info":Landroid/app/ApplicationStartInfo;
    if-nez v2, :cond_2

    .line 397
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 398
    monitor-exit v0

    return-void

    .line 400
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 401
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 402
    nop

    .end local v1    # "index":I
    .end local v2    # "info":Landroid/app/ApplicationStartInfo;
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "timestampNanos"    # J
    .param p6, "launchMode"    # I

    .line 411
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 413
    monitor-exit v0

    return-void

    .line 429
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 416
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 417
    monitor-exit v0

    return-void

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationStartInfo;

    .line 420
    .local v2, "info":Landroid/app/ApplicationStartInfo;
    if-nez v2, :cond_2

    .line 421
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 422
    monitor-exit v0

    return-void

    .line 424
    :cond_2
    invoke-virtual {v2, p6}, Landroid/app/ApplicationStartInfo;->setLaunchMode(I)V

    .line 425
    nop

    .line 429
    .end local v1    # "index":I
    .end local v2    # "info":Landroid/app/ApplicationStartInfo;
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onActivityLaunched(JLandroid/content/ComponentName;JLcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "temperature"    # J
    .param p6, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 356
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 358
    monitor-exit v0

    return-void

    .line 379
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 361
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 362
    monitor-exit v0

    return-void

    .line 364
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationStartInfo;

    .line 365
    .local v2, "info":Landroid/app/ApplicationStartInfo;
    if-eqz v2, :cond_2

    if-nez p6, :cond_3

    :cond_2
    goto :goto_1

    .line 369
    :cond_3
    long-to-int v3, p4

    invoke-virtual {v2, v3}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 370
    invoke-direct {p0, v2, p6}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 371
    invoke-direct {p0, v2}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    move-result-object v3

    .line 372
    .local v3, "newInfo":Landroid/app/ApplicationStartInfo;
    if-nez v3, :cond_4

    .line 375
    iget-object v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_0

    .line 377
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    .end local v1    # "index":I
    .end local v2    # "info":Landroid/app/ApplicationStartInfo;
    .end local v3    # "newInfo":Landroid/app/ApplicationStartInfo;
    :goto_0
    monitor-exit v0

    .line 380
    return-void

    .line 366
    .restart local v1    # "index":I
    .restart local v2    # "info":Landroid/app/ApplicationStartInfo;
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 367
    monitor-exit v0

    return-void

    .line 379
    .end local v1    # "index":I
    .end local v2    # "info":Landroid/app/ApplicationStartInfo;
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onActivityReportFullyDrawn(JJ)Landroid/app/ApplicationStartInfo;
    .locals 5
    .param p1, "id"    # J
    .param p3, "timestampNanos"    # J

    .line 438
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 440
    monitor-exit v0

    return-object v2

    .line 455
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 443
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 444
    monitor-exit v0

    return-object v2

    .line 446
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationStartInfo;

    .line 447
    .local v3, "info":Landroid/app/ApplicationStartInfo;
    if-nez v3, :cond_2

    .line 448
    iget-object v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 449
    monitor-exit v0

    return-object v2

    .line 451
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {v3, v2, p3, p4}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 453
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 454
    monitor-exit v0

    return-object v3

    .line 455
    .end local v1    # "index":I
    .end local v3    # "info":Landroid/app/ApplicationStartInfo;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onPackageRemoved(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "allUsers"    # Z

    .line 909
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 910
    return-void

    .line 912
    :cond_0
    if-eqz p1, :cond_2

    .line 913
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 914
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 915
    .local v0, "removeUid":Z
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 916
    nop

    .line 920
    if-eqz p3, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 916
    :goto_0
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/am/AppStartInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 921
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 922
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 924
    .end local v0    # "removeUid":Z
    :cond_2
    :goto_1
    return-void
.end method

.method onSystemReady()V
    .locals 4

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 223
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/AppStartInfoTracker;->registerForUserRemoval()V

    .line 228
    invoke-direct {p0}, Lcom/android/server/am/AppStartInfoTracker;->registerForPackageRemoval()V

    .line 229
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Lcom/android/internal/os/MonotonicClock;

    sget-object v1, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/MonotonicClock;-><init>(JLcom/android/internal/os/Clock;)V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 241
    :cond_1
    return-void
.end method

.method onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 898
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 900
    monitor-exit v0

    return-void

    .line 904
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 902
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->removeByUserIdLocked(I)V

    .line 903
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 904
    monitor-exit v0

    .line 905
    return-void

    .line 904
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method persistProcessStartInfo()V
    .locals 14

    .line 1063
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 1064
    return-void

    .line 1066
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1067
    .local v0, "af":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 1069
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1071
    .local v2, "now":J
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v1, v4

    .line 1072
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1073
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v5, 0x10300000001L

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1076
    const/4 v5, 0x0

    .line 1077
    .local v5, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 1078
    .local v6, "objectOutputStream":Ljava/io/ObjectOutputStream;
    const/4 v7, 0x0

    .line 1080
    .local v7, "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    iget-object v8, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :try_start_1
    new-instance v9, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;-><init>(Landroid/util/proto/ProtoOutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-direct {p0, v9}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    move-result v9

    .line 1104
    .local v9, "succeeded":Z
    if-eqz v9, :cond_1

    .line 1105
    iput-wide v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    goto :goto_0

    .line 1107
    .end local v9    # "succeeded":Z
    :catchall_0
    move-exception v9

    goto :goto_2

    .restart local v9    # "succeeded":Z
    :cond_1
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v10

    const-wide v12, 0x10300000003L

    invoke-virtual {v4, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1109
    if-eqz v9, :cond_2

    .line 1110
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1111
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1

    .line 1115
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local v7    # "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    .end local v9    # "succeeded":Z
    :catch_0
    move-exception v4

    goto :goto_3

    .line 1113
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v7    # "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    .restart local v9    # "succeeded":Z
    :cond_2
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1118
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local v7    # "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :goto_1
    goto :goto_4

    .line 1107
    .end local v9    # "succeeded":Z
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v7    # "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :goto_2
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "now":J
    .end local p0    # "this":Lcom/android/server/am/AppStartInfoTracker;
    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1115
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local v7    # "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    .restart local v0    # "af":Landroid/util/AtomicFile;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "now":J
    .restart local p0    # "this":Lcom/android/server/am/AppStartInfoTracker;
    :goto_3
    nop

    .line 1116
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to write historical app start info into persistent storage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1119
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1120
    const/4 v5, 0x0

    :try_start_5
    iput-object v5, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    .line 1121
    monitor-exit v4

    .line 1122
    return-void

    .line 1121
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5
.end method

.method removeStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;IZ)V
    .locals 6
    .param p1, "listener"    # Landroid/app/IApplicationStartInfoCompleteListener;
    .param p2, "uid"    # I
    .param p3, "unlinkDeathRecipient"    # Z

    .line 799
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 801
    monitor-exit v0

    return-void

    .line 824
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 803
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 804
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;>;"
    if-nez v1, :cond_1

    .line 805
    monitor-exit v0

    return-void

    .line 807
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 809
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 810
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    .line 811
    .local v4, "callback":Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;
    invoke-static {v4}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->-$$Nest$fgetmCallback(Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;)Landroid/app/IApplicationStartInfoCompleteListener;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 812
    if-eqz p3, :cond_3

    .line 813
    invoke-virtual {v4}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->unlinkToDeath()V

    goto :goto_1

    .line 811
    :cond_2
    nop

    .line 809
    .end local v4    # "callback":Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 818
    :cond_3
    :goto_1
    if-ge v3, v2, :cond_4

    .line 819
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 821
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 822
    iget-object v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 824
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;>;"
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_5
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method schedulePersistProcessStartInfo(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .line 1129
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1130
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 1131
    monitor-exit v0

    return-void

    .line 1143
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_4

    .line 1134
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1135
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1137
    :cond_2
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    .line 1138
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    .line 1141
    if-eqz p1, :cond_3

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_3
    sget-wide v3, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_PERSIST_INTERVAL:J

    .line 1139
    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1143
    :cond_4
    monitor-exit v0

    .line 1144
    return-void

    .line 1143
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
