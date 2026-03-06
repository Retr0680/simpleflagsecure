.class public Lcom/android/server/am/AppProfiler;
.super Ljava/lang/Object;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppProfiler$RecordPssRunnable;,
        Lcom/android/server/am/AppProfiler$BgHandler;,
        Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;,
        Lcom/android/server/am/AppProfiler$ProfileData;,
        Lcom/android/server/am/AppProfiler$CpuBinder;,
        Lcom/android/server/am/AppProfiler$ProcessCpuThread;
    }
.end annotation


# static fields
.field private static final ACTION_HEAP_DUMP_FINISHED:Ljava/lang/String; = "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

.field static final ACTIVITY_START_PSS_DEFER_CONFIG:Ljava/lang/String; = "activity_start_pss_defer"

.field static final BATTERY_STATS_TIME:J = 0x1b7740L

.field private static final EXTRA_HEAP_DUMP_IS_USER_INITIATED:Ljava/lang/String; = "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

.field private static final EXTRA_HEAP_DUMP_PROCESS_NAME:Ljava/lang/String; = "com.android.internal.extra.heap_dump.PROCESS_NAME"

.field private static final EXTRA_HEAP_DUMP_REPORT_PACKAGE:Ljava/lang/String; = "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

.field private static final EXTRA_HEAP_DUMP_SIZE_BYTES:Ljava/lang/String; = "com.android.internal.extra.heap_dump.SIZE_BYTES"

.field static final MONITOR_CPU_MAX_TIME:J = 0xfffffffL

.field static final MONITOR_CPU_MIN_TIME:J = 0x1388L

.field static final MONITOR_CPU_USAGE:Z = true

.field static final MONITOR_THREAD_CPU_USAGE:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_OOM_ADJ:Ljava/lang/String; = "ActivityManager"

.field static final TAG_PSS:Ljava/lang/String; = "ActivityManager"

.field static final TAG_RSS:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAllowLowerMemLevel:Z

.field private mAppAgentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgHandler:Landroid/os/Handler;

.field final mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

.field private mFullPssOrRssPending:Z

.field mHasHomeProcess:Z

.field mHasPreviousProcess:Z

.field private final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLastFullPssTime:J

.field private mLastMemUsageReportTime:J

.field private mLastMemoryLevel:I

.field private mLastNumProcesses:I

.field private volatile mLastWriteTime:J

.field private final mLowMemDetector:Lcom/android/server/am/LowMemDetector;

.field private mLowRamStartTime:J

.field private mLowRamTimeSinceLastIdle:J

.field private mMemFactorOverride:I

.field private mMemWatchDumpPid:I

.field private mMemWatchDumpProcName:Ljava/lang/String;

.field private mMemWatchDumpUid:I

.field private mMemWatchDumpUri:Landroid/net/Uri;

.field private mMemWatchIsUserInitiated:Z

.field private final mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPendingPssOrRssProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessProfileRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mProcessCpuThread:Ljava/lang/Thread;

.field private final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private final mProcessesToGc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

.field private mProfileType:I

.field final mProfilerLock:Ljava/lang/Object;

.field private volatile mPssDeferralTime:J

.field private final mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private volatile mTestPssOrRssMode:Z


# direct methods
.method public static synthetic $r8$lambda$5OBAsIN8AUD6oXr1UL23SzYui-A(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->lambda$reportMemUsage$5(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Mu4Mmv7nLKTnNFWY9SGxNTlQQHE(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->lambda$collectRssInBackground$1(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$O0KXijwG7-p0M_PB8ZuTBcOSGho(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->lambda$updateLowMemStateLSP$3(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9mDQXO9b6I541heYJg3Dye-gv4(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/AppProfiler;->lambda$doLowMemReportIfNeededLocked$4(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aB4rfrc1k-58zrhIodLdNJI2deY(Lcom/android/server/am/AppProfiler;ZZJLcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/AppProfiler;->lambda$requestPssAllProcsLPr$2(ZZJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWbwHOlSw54MLlfLuHPQWGs2h6Y(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->lambda$collectPssInBackground$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hjeAJXDhcV6uScFkM6n_Owtv5tE(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/AppProfiler;->lambda$getCpuStats$6(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCpuTime(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastWriteTime(Lcom/android/server/am/AppProfiler;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessCpuInitLatch(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessCpuMutexFree(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPssDeferralTime(Lcom/android/server/am/AppProfiler;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPssDeferralTime(Lcom/android/server/am/AppProfiler;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mabortHeapDump(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppProfiler;->abortHeapDump(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->collectPssInBackground()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcollectRssInBackground(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->collectRssInBackground()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeferPssForActivityStart(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->deferPssForActivityStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMemoryPressureChangedLocked(Lcom/android/server/am/AppProfiler;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppProfiler;->handleMemoryPressureChangedLocked(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopDeferPss(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->stopDeferPss()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;Lcom/android/server/am/LowMemDetector;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "bgLooper"    # Landroid/os/Looper;
    .param p3, "detector"    # Lcom/android/server/am/LowMemDetector;

    .line 2395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 202
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 207
    nop

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 214
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 222
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 232
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 239
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 242
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 255
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 261
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 267
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 281
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 284
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 287
    new-instance v4, Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-direct {v4, p0, v2}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/AppProfiler-IA;)V

    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 290
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 321
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 323
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 324
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 325
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 327
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 338
    new-instance v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 347
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 354
    new-instance v0, Lcom/android/server/am/AppProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$1;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2396
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2397
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 2398
    new-instance v0, Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/AppProfiler$BgHandler;-><init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    .line 2399
    iput-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    .line 2400
    new-instance v0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    const-string v1, "CpuTracker"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppProfiler$ProcessCpuThread;-><init>(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    .line 2401
    return-void
.end method

.method private abortHeapDump(Ljava/lang/String;)V
    .locals 2
    .param p1, "procName"    # Ljava/lang/String;

    .line 1192
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1193
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1194
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1195
    return-void
.end method

.method private addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1615
    const/4 v0, 0x0

    .line 1616
    .local v0, "added":Z
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1617
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1618
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1619
    const/4 v0, 0x1

    .line 1620
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1621
    goto :goto_1

    .line 1616
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1624
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1625
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1627
    :cond_2
    return-void
.end method

.method private collectPssInBackground()V
    .locals 44

    .line 631
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 632
    .local v17, "start":J
    const/4 v2, 0x0

    .line 633
    .local v2, "memInfo":Lcom/android/internal/util/MemInfoReader;
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 634
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 635
    iput-boolean v4, v1, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 636
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    move-object/from16 v19, v2

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v0

    goto/16 :goto_18

    .line 634
    :cond_0
    move-object/from16 v19, v2

    .line 638
    .end local v2    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v19, "memInfo":Lcom/android/internal/util/MemInfoReader;
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    .line 639
    const/4 v0, 0x0

    if-eqz v19, :cond_5

    .line 640
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 641
    const-wide/16 v2, 0x0

    .line 643
    .local v2, "nativeTotalPss":J
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v5

    .line 644
    :try_start_2
    iget-object v6, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v7, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v6, v7}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v6

    .line 647
    .local v6, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 649
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-nez v5, :cond_3

    .line 650
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 651
    .local v5, "numOfStats":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 652
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v8

    .line 653
    :try_start_3
    iget-object v9, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v10, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_1

    .line 655
    monitor-exit v8

    goto :goto_2

    .line 657
    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 658
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v8, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v8, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 651
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 657
    :goto_3
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 651
    :cond_2
    move-wide/from16 v29, v2

    goto :goto_4

    .line 649
    .end local v5    # "numOfStats":I
    .end local v7    # "j":I
    :cond_3
    move-wide/from16 v29, v2

    .line 662
    .end local v2    # "nativeTotalPss":J
    .local v29, "nativeTotalPss":J
    :goto_4
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 663
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v7, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 664
    :try_start_5
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_4

    .line 665
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collected native and kernel memory in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v17

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 676
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 668
    :cond_4
    :goto_5
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v21

    .line 669
    .local v21, "cachedKb":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v23

    .line 670
    .local v23, "freeKb":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v25

    .line 671
    .local v25, "zramKb":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v27

    .line 672
    .local v27, "kernelKb":J
    const-wide/16 v2, 0x400

    mul-long v31, v21, v2

    mul-long v33, v23, v2

    mul-long v35, v25, v2

    mul-long v37, v27, v2

    mul-long v39, v29, v2

    invoke-static/range {v31 .. v40}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 674
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v30}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 676
    .end local v21    # "cachedKb":J
    .end local v23    # "freeKb":J
    .end local v25    # "zramKb":J
    .end local v27    # "kernelKb":J
    monitor-exit v7

    goto :goto_7

    :goto_6
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 647
    .end local v6    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v29    # "nativeTotalPss":J
    .restart local v2    # "nativeTotalPss":J
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 679
    .end local v2    # "nativeTotalPss":J
    :cond_5
    :goto_7
    const/4 v2, 0x0

    .line 680
    .local v2, "num":I
    const/4 v3, 0x3

    new-array v3, v3, [J

    .line 685
    .local v3, "tmp":[J
    :goto_8
    const/4 v5, -0x1

    .line 687
    .local v5, "pid":I
    iget-object v6, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 688
    :try_start_7
    iget-object v7, v1, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    if-gtz v7, :cond_8

    .line 689
    :try_start_8
    iget-boolean v0, v1, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_7

    :cond_6
    goto :goto_9

    .line 716
    :catchall_4
    move-exception v0

    move-object/from16 v28, v3

    goto/16 :goto_17

    .line 690
    :goto_9
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collected pss of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " processes in "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v17

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 690
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_7
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 695
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    return-void

    .line 697
    :cond_8
    :try_start_9
    iget-object v7, v1, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessProfileRecord;

    .line 698
    .local v7, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getPssProcState()I

    move-result v8

    .line 699
    .local v8, "procState":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getPssStatType()I

    move-result v12

    .line 700
    .local v12, "statType":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v9

    move-wide/from16 v20, v9

    .line 701
    .local v20, "lastPssTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 702
    .local v9, "now":J
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_d

    const-wide/16 v13, 0x3e8

    if-eqz v11, :cond_9

    :try_start_a
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v11

    if-ne v8, v11, :cond_9

    add-long v15, v20, v13

    cmp-long v11, v15, v9

    if-gez v11, :cond_9

    .line 704
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move/from16 v16, v4

    move v4, v11

    .end local v5    # "pid":I
    .local v11, "pid":I
    goto :goto_b

    .line 706
    .end local v11    # "pid":I
    .restart local v5    # "pid":I
    :cond_9
    :try_start_b
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 707
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    if-eqz v11, :cond_a

    .line 708
    :try_start_c
    const-string v11, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    const-string v4, "Skipped pss collection of "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": still need "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v13, v20, v13

    sub-long/2addr v13, v9

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms until safe"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_a

    .line 707
    :cond_a
    move/from16 v16, v4

    .line 713
    :goto_a
    const/4 v7, 0x0

    .line 714
    const/4 v4, 0x0

    .line 716
    .end local v5    # "pid":I
    .end local v9    # "now":J
    .local v4, "pid":I
    :goto_b
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 717
    if-eqz v7, :cond_18

    .line 718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 722
    .local v22, "startTime":J
    iget-object v5, v7, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v6, 0x1

    nop

    if-eqz v5, :cond_b

    iget-object v5, v7, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 724
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->skipPSSCollectionBecauseFrozen()Z

    move-result v5

    if-nez v5, :cond_e

    :cond_b
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v7, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 725
    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-eqz v5, :cond_d

    :cond_c
    goto :goto_c

    :cond_d
    move/from16 v5, v16

    goto :goto_d

    :cond_e
    :goto_c
    move v5, v6

    :goto_d
    move/from16 v24, v5

    .line 727
    .local v24, "skipPSSCollection":Z
    const-wide/16 v9, 0x0

    if-eqz v24, :cond_f

    move-wide v13, v9

    goto :goto_e

    :cond_f
    invoke-static {v4, v3, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v13

    .line 728
    .local v13, "pss":J
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    .line 729
    .local v25, "endTime":J
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 730
    cmp-long v9, v13, v9

    if-eqz v9, :cond_12

    :try_start_e
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 731
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v9

    if-ne v9, v8, :cond_11

    .line 732
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v9

    if-ne v9, v4, :cond_10

    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    cmp-long v9, v9, v20

    if-nez v9, :cond_10

    .line 733
    add-int/lit8 v27, v2, 0x1

    .line 734
    .end local v2    # "num":I
    .local v27, "num":I
    :try_start_f
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 735
    move v9, v6

    move-object v2, v7

    .end local v7    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v2, "profile":Lcom/android/server/am/ProcessProfileRecord;
    :try_start_10
    aget-wide v6, v3, v16

    aget-wide v9, v3, v9

    const/4 v11, 0x2

    aget-wide v28, v3, v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move v11, v4

    move-object v15, v5

    move-wide v4, v13

    .end local v13    # "pss":J
    .local v4, "pss":J
    .restart local v11    # "pid":I
    sub-long v13, v25, v22

    .line 736
    move-object/from16 v31, v15

    move/from16 v30, v16

    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 735
    move/from16 v41, v11

    move-wide/from16 v42, v28

    move-object/from16 v28, v3

    move v3, v8

    move-wide v8, v9

    move-wide/from16 v10, v42

    .end local v8    # "procState":I
    .end local v11    # "pid":I
    .local v3, "procState":I
    .local v28, "tmp":[J
    .local v41, "pid":I
    :try_start_12
    invoke-direct/range {v1 .. v16}, Lcom/android/server/am/AppProfiler;->recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object v7, v2

    .end local v2    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v7    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    move/from16 v2, v27

    move/from16 v11, v41

    goto/16 :goto_14

    .line 750
    .end local v7    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v2    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :catchall_5
    move-exception v0

    move-object v7, v2

    move/from16 v2, v27

    move/from16 v11, v41

    .end local v2    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v7    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    goto/16 :goto_15

    .end local v7    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v28    # "tmp":[J
    .end local v41    # "pid":I
    .restart local v2    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v3, "tmp":[J
    .restart local v8    # "procState":I
    .restart local v11    # "pid":I
    :catchall_6
    move-exception v0

    move-object v7, v2

    move-object/from16 v28, v3

    move v3, v8

    move/from16 v41, v11

    move/from16 v2, v27

    .end local v2    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v8    # "procState":I
    .end local v11    # "pid":I
    .local v3, "procState":I
    .restart local v7    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v28    # "tmp":[J
    .restart local v41    # "pid":I
    goto/16 :goto_15

    .end local v7    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v28    # "tmp":[J
    .end local v41    # "pid":I
    .restart local v2    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v3, "tmp":[J
    .local v4, "pid":I
    .restart local v8    # "procState":I
    .restart local v13    # "pss":J
    :catchall_7
    move-exception v0

    move-object v7, v2

    move-object/from16 v28, v3

    move/from16 v41, v4

    move-object/from16 v31, v5

    move v3, v8

    move-wide v4, v13

    move/from16 v2, v27

    move/from16 v11, v41

    .end local v2    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v8    # "procState":I
    .end local v13    # "pss":J
    .local v3, "procState":I
    .local v4, "pss":J
    .restart local v7    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v28    # "tmp":[J
    .restart local v41    # "pid":I
    goto/16 :goto_15

    .end local v28    # "tmp":[J
    .end local v41    # "pid":I
    .local v3, "tmp":[J
    .local v4, "pid":I
    .restart local v8    # "procState":I
    .restart local v13    # "pss":J
    :catchall_8
    move-exception v0

    move-object/from16 v28, v3

    move/from16 v41, v4

    move-object/from16 v31, v5

    move v3, v8

    move-wide v4, v13

    move/from16 v2, v27

    move/from16 v11, v41

    .end local v8    # "procState":I
    .end local v13    # "pss":J
    .local v3, "procState":I
    .local v4, "pss":J
    .restart local v28    # "tmp":[J
    .restart local v41    # "pid":I
    goto/16 :goto_15

    .line 732
    .end local v27    # "num":I
    .end local v28    # "tmp":[J
    .end local v41    # "pid":I
    .local v2, "num":I
    .local v3, "tmp":[J
    .local v4, "pid":I
    .restart local v8    # "procState":I
    .restart local v13    # "pss":J
    :cond_10
    move-object/from16 v28, v3

    move/from16 v41, v4

    move-object/from16 v31, v5

    move v3, v8

    move-wide v4, v13

    move/from16 v30, v16

    .end local v8    # "procState":I
    .end local v13    # "pss":J
    .local v3, "procState":I
    .local v4, "pss":J
    .restart local v28    # "tmp":[J
    .restart local v41    # "pid":I
    goto :goto_f

    .line 750
    .end local v28    # "tmp":[J
    .end local v41    # "pid":I
    .local v3, "tmp":[J
    .local v4, "pid":I
    .restart local v8    # "procState":I
    .restart local v13    # "pss":J
    :catchall_9
    move-exception v0

    move-object/from16 v28, v3

    move/from16 v41, v4

    move-object/from16 v31, v5

    move v3, v8

    move-wide v4, v13

    move/from16 v11, v41

    .end local v8    # "procState":I
    .end local v13    # "pss":J
    .local v3, "procState":I
    .local v4, "pss":J
    .restart local v28    # "tmp":[J
    .restart local v41    # "pid":I
    goto/16 :goto_15

    .line 731
    .end local v28    # "tmp":[J
    .end local v41    # "pid":I
    .local v3, "tmp":[J
    .local v4, "pid":I
    .restart local v8    # "procState":I
    .restart local v13    # "pss":J
    :cond_11
    move-object/from16 v28, v3

    move/from16 v41, v4

    move-object/from16 v31, v5

    move v3, v8

    move-wide v4, v13

    move/from16 v30, v16

    .end local v8    # "procState":I
    .end local v13    # "pss":J
    .local v3, "procState":I
    .local v4, "pss":J
    .restart local v28    # "tmp":[J
    .restart local v41    # "pid":I
    goto :goto_f

    .line 730
    .end local v28    # "tmp":[J
    .end local v41    # "pid":I
    .local v3, "tmp":[J
    .local v4, "pid":I
    .restart local v8    # "procState":I
    .restart local v13    # "pss":J
    :cond_12
    move-object/from16 v28, v3

    move/from16 v41, v4

    move-object/from16 v31, v5

    move v3, v8

    move-wide v4, v13

    move/from16 v30, v16

    .line 738
    .end local v8    # "procState":I
    .end local v13    # "pss":J
    .local v3, "procState":I
    .local v4, "pss":J
    .restart local v28    # "tmp":[J
    .restart local v41    # "pid":I
    :goto_f
    :try_start_13
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 739
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_17

    .line 740
    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped pss collection of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    move/from16 v11, v41

    .end local v41    # "pid":I
    .restart local v11    # "pid":I
    :try_start_14
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v8

    nop

    if-nez v8, :cond_13

    const-string v8, "NO_THREAD "

    goto :goto_10

    .line 750
    :catchall_a
    move-exception v0

    goto :goto_15

    .line 741
    :cond_13
    const-string v8, ""

    :goto_10
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    nop

    nop

    if-eqz v24, :cond_14

    const-string v8, "SKIP_PSS_COLLECTION "

    goto :goto_11

    :cond_14
    const-string v8, ""

    :goto_11
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v8

    nop

    if-eq v8, v11, :cond_15

    const-string v8, "PID_CHANGED "

    goto :goto_12

    :cond_15
    const-string v8, ""

    :goto_12
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " initState="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " curState="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v8

    cmp-long v8, v8, v20

    if-eqz v8, :cond_16

    .line 747
    const-string v8, "TIME_CHANGED"

    goto :goto_13

    :cond_16
    const-string v8, ""

    :goto_13
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 740
    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 750
    .end local v11    # "pid":I
    .restart local v41    # "pid":I
    :catchall_b
    move-exception v0

    move/from16 v11, v41

    .end local v41    # "pid":I
    .restart local v11    # "pid":I
    goto :goto_15

    .line 739
    .end local v11    # "pid":I
    .restart local v41    # "pid":I
    :cond_17
    move/from16 v11, v41

    .line 750
    .end local v41    # "pid":I
    .restart local v11    # "pid":I
    :goto_14
    monitor-exit v31

    goto :goto_16

    :goto_15
    monitor-exit v31
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    throw v0

    .line 717
    .end local v11    # "pid":I
    .end local v22    # "startTime":J
    .end local v24    # "skipPSSCollection":Z
    .end local v25    # "endTime":J
    .end local v28    # "tmp":[J
    .local v3, "tmp":[J
    .local v4, "pid":I
    .restart local v8    # "procState":I
    :cond_18
    move-object/from16 v28, v3

    move v11, v4

    move v3, v8

    move/from16 v30, v16

    .line 752
    .end local v3    # "tmp":[J
    .end local v4    # "pid":I
    .end local v7    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v8    # "procState":I
    .end local v12    # "statType":I
    .end local v20    # "lastPssTime":J
    .restart local v28    # "tmp":[J
    :goto_16
    move-object/from16 v1, p0

    move-object/from16 v3, v28

    move/from16 v4, v30

    goto/16 :goto_8

    .line 716
    .end local v28    # "tmp":[J
    .restart local v3    # "tmp":[J
    .restart local v4    # "pid":I
    :catchall_c
    move-exception v0

    move-object/from16 v28, v3

    move v11, v4

    move v5, v11

    .end local v3    # "tmp":[J
    .end local v4    # "pid":I
    .restart local v11    # "pid":I
    .restart local v28    # "tmp":[J
    goto :goto_17

    .end local v11    # "pid":I
    .end local v28    # "tmp":[J
    .restart local v3    # "tmp":[J
    .restart local v5    # "pid":I
    :catchall_d
    move-exception v0

    move-object/from16 v28, v3

    .end local v3    # "tmp":[J
    .restart local v28    # "tmp":[J
    :goto_17
    :try_start_15
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    throw v0

    :catchall_e
    move-exception v0

    goto :goto_17

    .line 638
    .end local v2    # "num":I
    .end local v5    # "pid":I
    .end local v28    # "tmp":[J
    :catchall_f
    move-exception v0

    move-object/from16 v2, v19

    .end local v19    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v2, "memInfo":Lcom/android/internal/util/MemInfoReader;
    :goto_18
    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    throw v0
.end method

.method private collectRssInBackground()V
    .locals 38

    .line 765
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 766
    .local v11, "start":J
    const/4 v2, 0x0

    .line 767
    .local v2, "memInfo":Lcom/android/internal/util/MemInfoReader;
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 768
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 769
    iput-boolean v13, v1, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 770
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    move-object v14, v2

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v0

    goto/16 :goto_19

    .line 768
    :cond_0
    move-object v14, v2

    .line 772
    .end local v2    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v14, "memInfo":Lcom/android/internal/util/MemInfoReader;
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    .line 773
    const/4 v0, 0x0

    if-eqz v14, :cond_5

    .line 774
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 775
    const-wide/16 v2, 0x0

    .line 777
    .local v2, "nativeTotalRss":J
    iget-object v4, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v4

    .line 778
    :try_start_2
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v6, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v5

    .line 781
    .local v5, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 785
    iget-object v4, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-nez v4, :cond_3

    .line 786
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 787
    .local v4, "numOfStats":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 788
    iget-object v7, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v7

    .line 789
    :try_start_3
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_1

    .line 791
    monitor-exit v7

    goto :goto_2

    .line 793
    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 794
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v7, v0}, Landroid/os/Debug;->getRss(I[J)J

    move-result-wide v7

    add-long/2addr v2, v7

    .line 787
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 793
    :goto_3
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 787
    :cond_2
    move-wide/from16 v24, v2

    goto :goto_4

    .line 785
    .end local v4    # "numOfStats":I
    .end local v6    # "j":I
    :cond_3
    move-wide/from16 v24, v2

    .line 798
    .end local v2    # "nativeTotalRss":J
    .local v24, "nativeTotalRss":J
    :goto_4
    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 799
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v6, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 802
    :try_start_5
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    if-eqz v2, :cond_4

    .line 803
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Collected native and kernel memory in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v11

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 803
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 816
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 806
    :cond_4
    :goto_5
    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v16

    .line 807
    .local v16, "cachedKb":J
    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v18

    .line 808
    .local v18, "freeKb":J
    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v20

    .line 809
    .local v20, "zramKb":J
    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v22

    .line 812
    .local v22, "kernelKb":J
    const-wide/16 v2, 0x400

    mul-long v26, v16, v2

    mul-long v28, v18, v2

    mul-long v30, v20, v2

    mul-long v32, v22, v2

    mul-long v34, v24, v2

    invoke-static/range {v26 .. v35}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 814
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual/range {v15 .. v25}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 816
    .end local v16    # "cachedKb":J
    .end local v18    # "freeKb":J
    .end local v20    # "zramKb":J
    .end local v22    # "kernelKb":J
    monitor-exit v6

    goto :goto_7

    :goto_6
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 781
    .end local v5    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v24    # "nativeTotalRss":J
    .restart local v2    # "nativeTotalRss":J
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 821
    .end local v2    # "nativeTotalRss":J
    :cond_5
    :goto_7
    const/4 v2, 0x0

    .line 826
    .local v2, "num":I
    :goto_8
    const/4 v3, -0x1

    .line 828
    .local v3, "pid":I
    iget-object v4, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 829
    :try_start_7
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-gtz v5, :cond_8

    .line 830
    :try_start_8
    iget-boolean v0, v1, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    if-eqz v0, :cond_7

    :cond_6
    goto :goto_9

    .line 857
    :catchall_4
    move-exception v0

    move/from16 v21, v2

    goto/16 :goto_18

    .line 831
    :goto_9
    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collected rss of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " processes in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v11

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 831
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_7
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 836
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    return-void

    .line 838
    :cond_8
    :try_start_9
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessProfileRecord;

    .line 839
    .local v5, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getPssProcState()I

    move-result v6

    .line 840
    .local v6, "procState":I
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getPssStatType()I

    move-result v7

    .line 841
    .local v7, "statType":I
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v8

    move-wide v15, v8

    .line 842
    .local v15, "lastRssTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 843
    .local v8, "now":J
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    const-wide/16 v17, 0x3e8

    if-eqz v10, :cond_9

    :try_start_a
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v10

    if-ne v6, v10, :cond_9

    add-long v19, v15, v17

    cmp-long v10, v19, v8

    if-gez v10, :cond_9

    .line 845
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move/from16 v21, v2

    move v13, v10

    move-object v2, v5

    .end local v3    # "pid":I
    .local v10, "pid":I
    goto :goto_b

    .line 847
    .end local v10    # "pid":I
    .restart local v3    # "pid":I
    :cond_9
    :try_start_b
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 848
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    if-eqz v10, :cond_a

    .line 849
    const-string v10, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipped rss collection of "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": still need "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    add-long v17, v15, v17

    move/from16 v21, v2

    move/from16 v22, v3

    .end local v2    # "num":I
    .end local v3    # "pid":I
    .local v21, "num":I
    .local v22, "pid":I
    sub-long v2, v17, v8

    :try_start_c
    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms until safe"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_a

    .line 857
    .end local v5    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v6    # "procState":I
    .end local v7    # "statType":I
    .end local v8    # "now":J
    .end local v15    # "lastRssTime":J
    :catchall_5
    move-exception v0

    move/from16 v3, v22

    goto/16 :goto_18

    .end local v21    # "num":I
    .end local v22    # "pid":I
    .restart local v2    # "num":I
    .restart local v3    # "pid":I
    :catchall_6
    move-exception v0

    move/from16 v21, v2

    move/from16 v22, v3

    .end local v2    # "num":I
    .end local v3    # "pid":I
    .restart local v21    # "num":I
    .restart local v22    # "pid":I
    goto/16 :goto_18

    .line 848
    .end local v21    # "num":I
    .end local v22    # "pid":I
    .restart local v2    # "num":I
    .restart local v3    # "pid":I
    .restart local v5    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v6    # "procState":I
    .restart local v7    # "statType":I
    .restart local v8    # "now":J
    .restart local v15    # "lastRssTime":J
    :cond_a
    move/from16 v21, v2

    move/from16 v22, v3

    .line 854
    .end local v2    # "num":I
    .end local v3    # "pid":I
    .restart local v21    # "num":I
    .restart local v22    # "pid":I
    :goto_a
    const/4 v5, 0x0

    .line 855
    const/4 v0, 0x0

    .end local v22    # "pid":I
    .local v0, "pid":I
    move v13, v0

    move-object v2, v5

    .line 857
    .end local v0    # "pid":I
    .end local v5    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v8    # "now":J
    .local v2, "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v13, "pid":I
    :goto_b
    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 858
    if-eqz v2, :cond_18

    .line 859
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 863
    .local v17, "startTime":J
    iget-object v0, v2, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    nop

    if-eqz v0, :cond_b

    iget-object v0, v2, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 865
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->skipPSSCollectionBecauseFrozen()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_b
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 866
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-eqz v0, :cond_d

    :cond_c
    goto :goto_c

    :cond_d
    const/4 v0, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v0, 0x1

    :goto_d
    move/from16 v22, v0

    .line 868
    .local v22, "skipRSSCollection":Z
    const-wide/16 v3, 0x0

    if-eqz v22, :cond_f

    move-wide v8, v3

    const/4 v0, 0x0

    goto :goto_e

    :cond_f
    const/4 v0, 0x0

    invoke-static {v13, v0}, Landroid/os/Debug;->getRss(I[J)J

    move-result-wide v8

    .line 869
    .local v8, "rss":J
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 870
    .local v23, "endTime":J
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 871
    cmp-long v3, v8, v3

    if-eqz v3, :cond_12

    :try_start_e
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 872
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v3

    if-ne v3, v6, :cond_11

    .line 873
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v3

    if-ne v3, v13, :cond_10

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    cmp-long v3, v3, v15

    if-nez v3, :cond_10

    .line 874
    add-int/lit8 v20, v21, 0x1

    .line 875
    .end local v21    # "num":I
    .local v20, "num":I
    :try_start_f
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 876
    move-wide/from16 v36, v8

    move-object v9, v5

    move-wide/from16 v4, v36

    move v3, v6

    move v6, v7

    .end local v7    # "statType":I
    .end local v8    # "rss":J
    .local v3, "procState":I
    .local v4, "rss":J
    .local v6, "statType":I
    sub-long v7, v23, v17

    .line 877
    move-object/from16 v21, v9

    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 876
    move-object/from16 v25, v21

    :try_start_11
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppProfiler;->recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto/16 :goto_15

    .line 891
    :catchall_7
    move-exception v0

    :goto_f
    move/from16 v21, v20

    goto/16 :goto_16

    :catchall_8
    move-exception v0

    move-object/from16 v25, v21

    goto :goto_f

    .end local v3    # "procState":I
    .end local v4    # "rss":J
    .local v6, "procState":I
    .restart local v7    # "statType":I
    .restart local v8    # "rss":J
    :catchall_9
    move-exception v0

    move-object/from16 v25, v5

    move v3, v6

    move v6, v7

    move-wide v4, v8

    move/from16 v21, v20

    .end local v7    # "statType":I
    .end local v8    # "rss":J
    .restart local v3    # "procState":I
    .restart local v4    # "rss":J
    .local v6, "statType":I
    goto/16 :goto_16

    .line 873
    .end local v3    # "procState":I
    .end local v4    # "rss":J
    .end local v20    # "num":I
    .local v6, "procState":I
    .restart local v7    # "statType":I
    .restart local v8    # "rss":J
    .restart local v21    # "num":I
    :cond_10
    move-object/from16 v25, v5

    move v3, v6

    move v6, v7

    move-wide v4, v8

    .end local v7    # "statType":I
    .end local v8    # "rss":J
    .restart local v3    # "procState":I
    .restart local v4    # "rss":J
    .local v6, "statType":I
    goto :goto_10

    .line 891
    .end local v3    # "procState":I
    .end local v4    # "rss":J
    .local v6, "procState":I
    .restart local v7    # "statType":I
    .restart local v8    # "rss":J
    :catchall_a
    move-exception v0

    move-object/from16 v25, v5

    move v3, v6

    move v6, v7

    move-wide v4, v8

    .end local v7    # "statType":I
    .end local v8    # "rss":J
    .restart local v3    # "procState":I
    .restart local v4    # "rss":J
    .local v6, "statType":I
    goto/16 :goto_16

    .line 872
    .end local v3    # "procState":I
    .end local v4    # "rss":J
    .local v6, "procState":I
    .restart local v7    # "statType":I
    .restart local v8    # "rss":J
    :cond_11
    move-object/from16 v25, v5

    move v3, v6

    move v6, v7

    move-wide v4, v8

    .end local v7    # "statType":I
    .end local v8    # "rss":J
    .restart local v3    # "procState":I
    .restart local v4    # "rss":J
    .local v6, "statType":I
    goto :goto_10

    .line 871
    .end local v3    # "procState":I
    .end local v4    # "rss":J
    .local v6, "procState":I
    .restart local v7    # "statType":I
    .restart local v8    # "rss":J
    :cond_12
    move-object/from16 v25, v5

    move v3, v6

    move v6, v7

    move-wide v4, v8

    .line 879
    .end local v7    # "statType":I
    .end local v8    # "rss":J
    .restart local v3    # "procState":I
    .restart local v4    # "rss":J
    .local v6, "statType":I
    :goto_10
    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 880
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    if-eqz v1, :cond_17

    .line 881
    const-string v1, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped rss collection of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v8

    nop

    if-nez v8, :cond_13

    const-string v8, "NO_THREAD "

    goto :goto_11

    .line 891
    :catchall_b
    move-exception v0

    goto :goto_16

    .line 882
    :cond_13
    const-string v8, ""

    :goto_11
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    nop

    nop

    if-eqz v22, :cond_14

    const-string v8, "SKIP_RSS_COLLECTION "

    goto :goto_12

    :cond_14
    const-string v8, ""

    :goto_12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v8

    nop

    if-eq v8, v13, :cond_15

    const-string v8, "PID_CHANGED "

    goto :goto_13

    :cond_15
    const-string v8, ""

    :goto_13
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " initState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " curState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v8

    cmp-long v8, v8, v15

    if-eqz v8, :cond_16

    .line 888
    const-string v8, "TIME_CHANGED"

    goto :goto_14

    :cond_16
    const-string v8, ""

    :goto_14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 881
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 891
    :cond_17
    move/from16 v20, v21

    .end local v21    # "num":I
    .restart local v20    # "num":I
    :goto_15
    :try_start_13
    monitor-exit v25
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move/from16 v2, v20

    goto :goto_17

    .end local v20    # "num":I
    .restart local v21    # "num":I
    :goto_16
    :try_start_14
    monitor-exit v25
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    throw v0

    .line 858
    .end local v3    # "procState":I
    .end local v4    # "rss":J
    .end local v17    # "startTime":J
    .end local v22    # "skipRSSCollection":Z
    .end local v23    # "endTime":J
    .local v6, "procState":I
    .restart local v7    # "statType":I
    :cond_18
    move v3, v6

    move v6, v7

    const/4 v0, 0x0

    .end local v7    # "statType":I
    .restart local v3    # "procState":I
    .local v6, "statType":I
    move/from16 v2, v21

    .line 893
    .end local v3    # "procState":I
    .end local v6    # "statType":I
    .end local v13    # "pid":I
    .end local v15    # "lastRssTime":J
    .end local v21    # "num":I
    .local v2, "num":I
    :goto_17
    const/4 v13, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_8

    .line 857
    .end local v2    # "num":I
    .restart local v13    # "pid":I
    .restart local v21    # "num":I
    :catchall_c
    move-exception v0

    move v3, v13

    .end local v13    # "pid":I
    .local v3, "pid":I
    :goto_18
    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_18

    .line 772
    .end local v3    # "pid":I
    .end local v21    # "num":I
    :catchall_e
    move-exception v0

    move-object v2, v14

    .end local v14    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v2, "memInfo":Lcom/android/internal/util/MemInfoReader;
    :goto_19
    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    throw v0
.end method

.method private deferPssForActivityStart()V
    .locals 4

    .line 1252
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1253
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_0

    .line 1254
    const-string v0, "ActivityManager"

    const-string v1, "Deferring PSS collection for activity start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1257
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->deferPssIfNeededLPf()V

    .line 1258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1259
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 1260
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1258
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1262
    :cond_1
    :goto_0
    return-void
.end method

.method private deferPssIfNeededLPf()V
    .locals 4

    .line 1245
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1247
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1249
    :cond_0
    return-void
.end method

.method private handleMemoryPressureChangedLocked(II)V
    .locals 7
    .param p1, "oldMemFactor"    # I
    .param p2, "newMemFactor"    # I

    .line 2011
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 2012
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2011
    const-string/jumbo v4, "mem-pressure-event"

    move v2, p1

    move v3, p2

    .end local p1    # "oldMemFactor":I
    .end local p2    # "newMemFactor":I
    .local v2, "oldMemFactor":I
    .local v3, "newMemFactor":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartOnMemoryPressureIfNeededLocked(IILjava/lang/String;J)V

    .line 2013
    return-void
.end method

.method private static synthetic lambda$collectPssInBackground$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 645
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$collectRssInBackground$1(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 779
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$doLowMemReportIfNeededLocked$4(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p1, "dyingProc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "memInfos"    # Ljava/util/ArrayList;
    .param p3, "now"    # J
    .param p5, "rec"    # Lcom/android/server/am/ProcessRecord;

    .line 1649
    if-eq p5, p1, :cond_0

    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_3

    .line 1652
    :cond_1
    iget-object v1, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1653
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    if-eqz p2, :cond_2

    .line 1654
    new-instance v2, Lcom/android/server/am/ProcessMemInfo;

    iget-object v3, p5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    .line 1655
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v6

    .line 1656
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1654
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    :cond_2
    iget-object v2, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1659
    .local v2, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v3, v5

    cmp-long v0, v3, p3

    if-gtz v0, :cond_4

    .line 1663
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1664
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    const/16 v4, 0x190

    if-gt v0, v4, :cond_3

    .line 1665
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    goto :goto_0

    .line 1673
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1667
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    .line 1669
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1670
    invoke-virtual {v2, p3, p4}, Lcom/android/server/am/ProcessProfileRecord;->setLastLowMemory(J)V

    .line 1671
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1672
    invoke-direct {p0, p5}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1673
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1675
    :cond_4
    :goto_2
    return-void

    .line 1650
    .end local v1    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v2    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :goto_3
    return-void
.end method

.method private static synthetic lambda$getCpuStats$6(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 1
    .param p0, "predicate"    # Ljava/util/function/Predicate;
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 2310
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$reportMemUsage$5(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 1696
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$requestPssAllProcsLPr$2(ZZJLcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "memLowered"    # Z
    .param p2, "always"    # Z
    .param p3, "now"    # J
    .param p5, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1306
    iget-object v2, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1307
    .local v2, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1308
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-wide v3, p3

    goto :goto_3

    .line 1311
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v6

    .line 1312
    .local v6, "lastStateTime":J
    if-nez p1, :cond_3

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x3e8

    add-long/2addr v0, v6

    cmp-long v0, p3, v0

    if-gtz v0, :cond_3

    :cond_1
    const-wide/32 v0, 0x124f80

    add-long/2addr v0, v6

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-wide v3, p3

    goto :goto_2

    .line 1315
    :cond_3
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    .line 1316
    if-eqz p2, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    .line 1317
    :cond_4
    const/4 v0, 0x1

    .line 1316
    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 1318
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v1

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v3, p3

    .end local p3    # "now":J
    .local v3, "now":J
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 1319
    iget-object p3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    :goto_2
    return-void

    .line 1307
    .end local v3    # "now":J
    .end local v6    # "lastStateTime":J
    .restart local p3    # "now":J
    :cond_5
    move-object v0, p0

    move-wide v3, p3

    .line 1309
    .end local p3    # "now":J
    .restart local v3    # "now":J
    :goto_3
    return-void
.end method

.method private static synthetic lambda$updateLowMemStateLSP$3(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1455
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1457
    .local v0, "profile":Lcom/android/server/am/ProcessProfileRecord;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1458
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasProcStateChanged()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1459
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1461
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    .line 1462
    .local v2, "procState":I
    const/4 v4, 0x7

    if-lt v2, v4, :cond_1

    const/16 v4, 0x10

    if-lt v2, v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1465
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v4

    nop

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1466
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1470
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    move-object v5, v4

    .local v5, "thread":Landroid/app/IApplicationThread;
    if-eqz v4, :cond_3

    .line 1472
    const/16 v4, 0x14

    :try_start_0
    invoke-interface {v5, v4}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 1474
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    goto :goto_0

    .line 1475
    :catch_0
    move-exception v3

    .line 1480
    .end local v5    # "thread":Landroid/app/IApplicationThread;
    :cond_3
    :goto_0
    return-void
.end method

.method private static makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "procName"    # Ljava/lang/String;

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.shell.heapdump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_javaheap.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1523
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1524
    .local v0, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    .line 1525
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1526
    .local v1, "thread":Landroid/app/IApplicationThread;
    if-eqz v1, :cond_1

    .line 1527
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1528
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1529
    invoke-interface {v1}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    goto :goto_0

    .line 1534
    .end local v0    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v1    # "thread":Landroid/app/IApplicationThread;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1531
    .restart local v0    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v1    # "thread":Landroid/app/IApplicationThread;
    :cond_0
    invoke-interface {v1}, Landroid/app/IApplicationThread;->processInBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    .end local v0    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v1    # "thread":Landroid/app/IApplicationThread;
    :cond_1
    :goto_0
    nop

    .line 1537
    :goto_1
    return-void
.end method

.method private performAppGcsLPf()V
    .locals 6

    .line 1545
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1546
    return-void

    .line 1548
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1549
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1550
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1551
    .local v1, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getCurRawAdj()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_2

    .line 1552
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1567
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_1
    goto :goto_0

    .line 1553
    .restart local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    .line 1554
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 1557
    invoke-direct {p0, v0}, Lcom/android/server/am/AppProfiler;->performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1558
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1559
    return-void

    .line 1563
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1564
    nop

    .line 1569
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1570
    return-void
.end method

.method private recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    .locals 32
    .param p1, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p2, "procState"    # I
    .param p3, "pss"    # J
    .param p5, "uss"    # J
    .param p7, "swapPss"    # J
    .param p9, "rss"    # J
    .param p11, "statType"    # I
    .param p12, "pssDuration"    # J
    .param p14, "now"    # J

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v12, p7

    iget-object v14, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 921
    .local v14, "proc":Lcom/android/server/am/ProcessRecord;
    nop

    .line 922
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v15

    iget v2, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v30, 0x400

    mul-long v18, p3, v30

    mul-long v20, p5, v30

    mul-long v22, v12, v30

    mul-long v24, p9, v30

    .line 921
    move/from16 v27, p2

    move/from16 v26, p11

    move-wide/from16 v28, p12

    move/from16 v16, v2

    move-object/from16 v17, v3

    invoke-static/range {v15 .. v29}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    .line 924
    move-wide/from16 v2, p14

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastPssTime(J)V

    .line 925
    const/4 v8, 0x1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    move/from16 v9, p11

    move-wide/from16 v10, p12

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 926
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    const-string v5, "ActivityManager"

    if-eqz v4, :cond_0

    .line 927
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pss of "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " lastPss="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " state="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 927
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePssOrRss()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    .line 933
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setInitialIdlePssOrRss(J)V

    .line 935
    :cond_1
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastPss(J)V

    .line 939
    sget-object v4, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_APP_USAGE_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v4}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nothing/server/ext/INtAppUsageManager;

    iget-object v8, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v4, v8, v2, v3}, Lcom/nothing/server/ext/INtAppUsageManager;->setLastCachedPss(Ljava/lang/String;J)V

    .line 942
    invoke-virtual {v1, v12, v13}, Lcom/android/server/am/ProcessProfileRecord;->setLastSwapPss(J)V

    .line 943
    const/16 v4, 0xe

    move/from16 v8, p2

    if-lt v8, v4, :cond_2

    .line 944
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedPss(J)V

    .line 945
    invoke-virtual {v1, v12, v13}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedSwapPss(J)V

    .line 947
    :cond_2
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    .line 949
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 950
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v9, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 951
    .local v4, "watchUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .line 952
    .local v9, "check":Ljava/lang/Long;
    const/4 v10, 0x0

    if-eqz v4, :cond_4

    .line 953
    iget v11, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 954
    .local v11, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v11, :cond_3

    .line 955
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v11, v15

    check-cast v11, Landroid/util/Pair;

    .line 957
    :cond_3
    if-eqz v11, :cond_4

    .line 958
    iget-object v15, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v15

    check-cast v9, Ljava/lang/Long;

    .line 961
    .end local v11    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_4
    if-eqz v9, :cond_7

    .line 962
    mul-long v15, v2, v30

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v11, v15, v17

    if-ltz v11, :cond_7

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 964
    sget-boolean v11, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v15, " exceeded pss limit "

    const-string v10, "Process "

    if-nez v11, :cond_5

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    goto :goto_0

    .line 968
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", but debugging not enabled"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 965
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; reporting"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    .line 973
    :cond_7
    :goto_1
    return-void
.end method

.method private recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V
    .locals 30
    .param p1, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p2, "procState"    # I
    .param p3, "rss"    # J
    .param p5, "statType"    # I
    .param p6, "rssDuration"    # J
    .param p8, "now"    # J

    .line 988
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v12, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 993
    .local v12, "proc":Lcom/android/server/am/ProcessRecord;
    nop

    .line 994
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v13

    iget v14, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v28, 0x400

    mul-long v22, p3, v28

    .line 993
    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move/from16 v25, p2

    move/from16 v24, p5

    move-wide/from16 v26, p6

    invoke-static/range {v13 .. v27}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    .line 996
    move-wide/from16 v13, p8

    invoke-virtual {v1, v13, v14}, Lcom/android/server/am/ProcessProfileRecord;->setLastPssTime(J)V

    .line 998
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    move-wide/from16 v6, p3

    move/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 999
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    const-string v3, "ActivityManager"

    if-eqz v2, :cond_0

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rss of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " lastRss="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePssOrRss()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-nez v2, :cond_1

    .line 1006
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setInitialIdlePssOrRss(J)V

    .line 1008
    :cond_1
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    .line 1012
    sget-object v2, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_APP_USAGE_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v2}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nothing/server/ext/INtAppUsageManager;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v2, v4, v6, v7}, Lcom/nothing/server/ext/INtAppUsageManager;->setLastCachedPss(Ljava/lang/String;J)V

    .line 1015
    const/16 v2, 0xe

    move/from16 v4, p2

    if-lt v4, v2, :cond_2

    .line 1016
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedRss(J)V

    .line 1019
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 1020
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1021
    .local v2, "watchUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .line 1022
    .local v5, "check":Ljava/lang/Long;
    const/4 v8, 0x0

    if-eqz v2, :cond_4

    .line 1023
    iget v9, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 1024
    .local v9, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v9, :cond_3

    .line 1025
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, Landroid/util/Pair;

    .line 1027
    :cond_3
    if-eqz v9, :cond_4

    .line 1028
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v10

    check-cast v5, Ljava/lang/Long;

    .line 1032
    .end local v9    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_4
    if-eqz v5, :cond_7

    .line 1033
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v10}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v9

    .line 1034
    .local v9, "pss":J
    mul-long v28, v28, v9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v11, v28, v15

    if-ltz v11, :cond_7

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 1036
    sget-boolean v11, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v15, " exceeded pss limit "

    const-string v8, "Process "

    if-nez v11, :cond_5

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    goto :goto_0

    .line 1040
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", but debugging not enabled"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1037
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; reporting"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    .line 1045
    .end local v9    # "pss":J
    :cond_7
    :goto_1
    return-void
.end method

.method private requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z
    .locals 8
    .param p1, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p2, "procState"    # I

    .line 1220
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1221
    return v1

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "ActivityManager"

    if-nez v0, :cond_3

    .line 1224
    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 1225
    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    goto :goto_0

    :cond_1
    move-wide v4, v6

    :goto_0
    nop

    .line 1226
    .local v4, "deferral":J
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_2

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestPssLPf() deferring PSS request by "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1232
    .end local v4    # "deferral":J
    :cond_3
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting pss of: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    .line 1234
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 1235
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    return v2
.end method

.method private scheduleTrimMemoryLSP(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "level"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 1499
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v0

    nop

    if-ge v0, p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v1, v0

    .local v1, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_2

    .line 1501
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1507
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1502
    :goto_0
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/16 v2, 0xd

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 1506
    invoke-interface {v1, p2}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    nop

    .line 1510
    .end local v1    # "thread":Landroid/app/IApplicationThread;
    :cond_2
    :goto_1
    return-void
.end method

.method private stopDeferPss()V
    .locals 4

    .line 1265
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 1266
    .local v0, "nesting":I
    const-string v1, "ActivityManager"

    if-gtz v0, :cond_1

    .line 1267
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_0

    .line 1268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSS activity start deferral interval ended; now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_0
    if-gez v0, :cond_2

    .line 1272
    const-string v2, "Activity start nesting undercount!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 1276
    :cond_1
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_2

    .line 1277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still deferring PSS, nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_2
    :goto_0
    return-void
.end method

.method private stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 2017
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2018
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 2019
    iget p3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 2020
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2022
    :cond_1
    if-nez p1, :cond_2

    .line 2023
    return-void

    .line 2025
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2026
    .local v0, "thread":Landroid/app/IApplicationThread;
    if-nez v0, :cond_3

    .line 2027
    return-void

    .line 2030
    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p2, p3}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2033
    nop

    .line 2034
    return-void

    .line 2031
    :catch_0
    move-exception v1

    .line 2032
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Process disappeared"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private trimMemoryUiHiddenIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1485
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x7

    nop

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1486
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1490
    const/16 v0, 0x14

    const-string v1, "Trimming memory of bg-ui "

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/AppProfiler;->scheduleTrimMemoryLSP(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    .line 1492
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V

    .line 1494
    :cond_1
    return-void
.end method


# virtual methods
.method allowLowerMemLevelLocked()Z
    .locals 1

    .line 1374
    iget-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    return v0
.end method

.method clearProfilerLPf()V
    .locals 2

    .line 2038
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2039
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2041
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    goto :goto_0

    .line 2042
    :catch_0
    move-exception v0

    .line 2045
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 2046
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2047
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 2048
    return-void
.end method

.method clearProfilerLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2052
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2053
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2054
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2057
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2058
    return-void

    .line 2055
    :cond_1
    :goto_0
    return-void
.end method

.method final doLowMemReportIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p1, "dyingProc"    # Lcom/android/server/am/ProcessRecord;

    .line 1634
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->haveBackgroundProcessLOSP()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1635
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1636
    .local v0, "doReport":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1637
    .local v5, "now":J
    if-eqz v0, :cond_1

    .line 1638
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    cmp-long v1, v5, v1

    if-gez v1, :cond_0

    .line 1639
    const/4 v0, 0x0

    goto :goto_0

    .line 1641
    :cond_0
    iput-wide v5, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1644
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v7

    .line 1645
    .local v7, "lruSize":I
    if-eqz v0, :cond_2

    .line 1646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    move-object v4, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1647
    .local v4, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    :goto_2
    invoke-static {v7}, Lcom/android/server/am/EventLogTags;->writeAmLowMemory(I)V

    .line 1648
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v3, "dyingProc":Lcom/android/server/am/ProcessRecord;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V

    const/4 p1, 0x0

    invoke-virtual {v8, p1, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1676
    if-eqz v0, :cond_4

    .line 1677
    iget-object p1, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x21

    invoke-virtual {p1, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1678
    .local p1, "msg":Landroid/os/Message;
    iget-object v1, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 1634
    .end local v0    # "doReport":Z
    .end local v3    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v5    # "now":J
    .end local v7    # "lruSize":I
    .local p1, "dyingProc":Lcom/android/server/am/ProcessRecord;
    :cond_3
    move-object v2, p0

    move-object v3, p1

    .line 1681
    .end local p1    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    :goto_3
    iget-object p1, v2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1682
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1683
    monitor-exit p1

    .line 1684
    return-void

    .line 1683
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dumpHeapFinished(Ljava/lang/String;I)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callerPid"    # I

    .line 1107
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1108
    :try_start_0
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    if-eq p2, v1, :cond_0

    .line 1109
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpHeapFinished: Calling pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not match last pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    monitor-exit v0

    return-void

    .line 1124
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    goto :goto_0

    .line 1118
    :cond_2
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_3

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump heap finished for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1123
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 1124
    monitor-exit v0

    .line 1125
    return-void

    .line 1114
    :goto_0
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpHeapFinished: Calling path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not match last path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    monitor-exit v0

    return-void

    .line 1124
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpLastMemoryLevelLocked(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2619
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    packed-switch v0, :pswitch_data_0

    .line 2633
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2634
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2630
    :pswitch_0
    const-string v0, "critical)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2631
    goto :goto_0

    .line 2627
    :pswitch_1
    const-string/jumbo v0, "low)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    goto :goto_0

    .line 2624
    :pswitch_2
    const-string/jumbo v0, "moderate)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    goto :goto_0

    .line 2621
    :pswitch_3
    const-string/jumbo v0, "normal)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2622
    nop

    .line 2637
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method dumpMemWatchProcessesLPf(Ljava/io/PrintWriter;Z)Z
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "needSep"    # Z

    .line 2552
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2553
    const-string v0, "  Mem watch processes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2554
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 2555
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2556
    .local v0, "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2557
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2558
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2559
    .local v3, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_2

    .line 2560
    if-eqz p2, :cond_0

    .line 2561
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2562
    const/4 p2, 0x0

    .line 2564
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2565
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2566
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2567
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2568
    .local v6, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 2569
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 2570
    const-string v7, ", report to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2572
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2559
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    nop

    .line 2556
    .end local v2    # "proc":Ljava/lang/String;
    .end local v3    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v4    # "j":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 2575
    .end local v1    # "i":I
    const-string v1, "  mMemWatchDumpProcName="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2576
    const-string v1, "  mMemWatchDumpUri="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2577
    const-string v1, "  mMemWatchDumpPid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2578
    const-string v1, "  mMemWatchDumpUid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2579
    const-string v1, "  mMemWatchIsUserInitiated="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2581
    .end local v0    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_4
    return p2
.end method

.method dumpMemoryLevelsLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowLowerMemLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastMemoryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLastNumProcesses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    return-void
.end method

.method dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "needSep"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 2776
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2777
    const/4 v0, 0x0

    .line 2778
    .local v0, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2779
    .local v1, "now":J
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 2780
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 2781
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz p3, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2782
    goto :goto_1

    .line 2784
    :cond_0
    if-nez v0, :cond_2

    .line 2785
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2786
    :cond_1
    const/4 p2, 0x1

    .line 2787
    const-string v6, "  Processes that are waiting to GC:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    const/4 v0, 0x1

    .line 2790
    :cond_2
    const-string v6, "    Process "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2791
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2792
    .local v6, "profile":Lcom/android/server/am/ProcessProfileRecord;
    const-string v7, "      lowMem="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 2793
    const-string v7, ", last gced="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2794
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v7

    sub-long v7, v1, v7

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2795
    const-string v7, " ms ago, last lowMem="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2796
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v7

    sub-long v7, v1, v7

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2797
    const-string v7, " ms ago"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2779
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2801
    .end local v0    # "printed":Z
    .end local v1    # "now":J
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_3
    return p2
.end method

.method dumpProfileDataLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z

    .line 2586
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2587
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    nop

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2588
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    nop

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2589
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    .line 2590
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2591
    :cond_1
    if-eqz p3, :cond_2

    .line 2592
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2593
    const/4 p3, 0x0

    .line 2595
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProfileApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mProfileProc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2596
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2595
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2597
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProfileFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mProfileFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2599
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2598
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSamplingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2601
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAutoStopProfiler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2603
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mStreamingOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2605
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mClockType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2607
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mProfilerOutputVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2609
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2600
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProfileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2614
    :cond_3
    return p3
.end method

.method forAllCpuStats(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)V"
        }
    .end annotation

    .line 2315
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    .line 2317
    .local v1, "numOfStats":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2318
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2320
    .end local v1    # "numOfStats":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2317
    .restart local v1    # "numOfStats":I
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 2320
    .end local v1    # "numOfStats":I
    .end local v2    # "i":I
    monitor-exit v0

    .line 2321
    return-void

    .line 2320
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAppProfileStatsForDebugging(JI)Landroid/util/Pair;
    .locals 6
    .param p1, "time"    # J
    .param p3, "linesOfStats"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2733
    const/4 v0, 0x0

    .line 2734
    .local v0, "cpuLoad":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2735
    .local v1, "stats":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v2

    .line 2736
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 2737
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 2738
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2739
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2741
    const/4 v2, 0x0

    .line 2742
    .local v2, "toIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, p3, :cond_1

    .line 2743
    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2744
    .local v4, "nextIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2745
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2746
    goto :goto_1

    .line 2748
    :cond_0
    add-int/lit8 v2, v4, 0x1

    .line 2742
    .end local v4    # "nextIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2750
    .end local v3    # "i":I
    :cond_1
    :goto_1
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 2739
    .end local v2    # "toIndex":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method getCpuDelayTimeForPid(I)J
    .locals 2
    .param p1, "pid"    # I

    .line 2305
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuDelayTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 2309
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2310
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v2, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2311
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCpuTimeForPid(I)J
    .locals 2
    .param p1, "pid"    # I

    .line 2301
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getLastMemoryLevelLocked()I
    .locals 2

    .line 1345
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1346
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    return v0

    .line 1348
    :cond_0
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    return v0
.end method

.method getLowRamTimeSinceIdleLPr(J)J
    .locals 6
    .param p1, "now"    # J

    .line 1514
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    sub-long v4, p1, v2

    :cond_0
    add-long/2addr v0, v4

    return-wide v0
.end method

.method getTestPssMode()Z
    .locals 1

    .line 1340
    iget-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    return v0
.end method

.method handleAbortDumpHeap(Ljava/lang/String;)V
    .locals 2
    .param p1, "procName"    # Ljava/lang/String;

    .line 1198
    if-eqz p1, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1202
    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 1203
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 1204
    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    goto :goto_0

    .line 1206
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1208
    :cond_1
    :goto_2
    return-void
.end method

.method handlePostDumpHeapNotification()V
    .locals 9

    .line 1133
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1134
    :try_start_0
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 1135
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1136
    .local v2, "procName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1137
    .local v3, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 1138
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    move-object v3, v4

    goto :goto_0

    .line 1153
    .end local v1    # "uid":I
    .end local v2    # "procName":Ljava/lang/String;
    .end local v3    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1140
    .restart local v1    # "uid":I
    .restart local v2    # "procName":Ljava/lang/String;
    .restart local v3    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 1141
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1142
    .local v4, "memLimit":J
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "reportPackage":Ljava/lang/String;
    goto :goto_1

    .line 1144
    .end local v4    # "memLimit":J
    .end local v6    # "reportPackage":Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    .line 1145
    .restart local v4    # "memLimit":J
    const/4 v6, 0x0

    .line 1147
    .restart local v6    # "reportPackage":Ljava/lang/String;
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 1149
    .local v7, "isUserInitiated":Z
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 1150
    iput-object v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1151
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 1152
    iput v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 1153
    .end local v3    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    if-nez v2, :cond_2

    .line 1155
    return-void

    .line 1158
    :cond_2
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_3

    .line 1159
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing dump heap notification from "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v0, "dumpFinishedIntent":Landroid/content/Intent;
    const-string v3, "com.android.shell"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1166
    const-string v3, "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1167
    const-string v3, "com.android.internal.extra.heap_dump.SIZE_BYTES"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1168
    const-string v3, "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    const-string v3, "com.android.internal.extra.heap_dump.PROCESS_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1172
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 1171
    invoke-virtual {v3, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1173
    return-void

    .line 1153
    .end local v0    # "dumpFinishedIntent":Landroid/content/Intent;
    .end local v1    # "uid":I
    .end local v2    # "procName":Ljava/lang/String;
    .end local v4    # "memLimit":J
    .end local v6    # "reportPackage":Ljava/lang/String;
    .end local v7    # "isUserInitiated":Z
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method isLastMemoryLevelNormal()Z
    .locals 4

    .line 1353
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 1354
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    if-gtz v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 1356
    :cond_1
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-gtz v0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method isProfilingPss()Z
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onActivityLaunched()V
    .locals 4

    .line 2431
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2433
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2435
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method onActivityManagerInternalAdded()V
    .locals 3

    .line 2413
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2418
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2423
    nop

    .line 2424
    return-void

    .line 2419
    :catch_0
    move-exception v0

    .line 2420
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ActivityManager"

    const-string v2, "Interrupted wait during start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2421
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2422
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method onAppDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2543
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2544
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 2545
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    goto :goto_0

    .line 2547
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 2548
    return-void

    .line 2547
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2533
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2534
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2535
    .local v1, "profile":Lcom/android/server/am/ProcessProfileRecord;
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2536
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2537
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 2538
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    monitor-exit v0

    .line 2539
    return-void

    .line 2538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final performAppGcsIfAppropriateLocked()V
    .locals 2

    .line 1577
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1578
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canGcNowLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1579
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsLPf()V

    .line 1580
    monitor-exit v0

    return-void

    .line 1584
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1583
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1584
    monitor-exit v0

    .line 1585
    return-void

    .line 1584
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method printCurrentCpuState(Ljava/lang/StringBuilder;J)V
    .locals 3
    .param p1, "report"    # Ljava/lang/StringBuilder;
    .param p2, "time"    # J

    .line 2726
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2728
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/16 v2, 0xa

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    monitor-exit v0

    .line 2730
    return-void

    .line 2729
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method profileControlLPf(Lcom/android/server/am/ProcessRecord;ZLandroid/app/ProfilerInfo;I)Z
    .locals 10
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "start"    # Z
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "profileType"    # I

    .line 2064
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 2065
    if-nez p4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2066
    .local v2, "needsFile":Z
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3, v3, v0}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V

    .line 2067
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2068
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    goto :goto_1

    .line 2123
    .end local v2    # "needsFile":Z
    :catchall_0
    move-exception v0

    move-object v7, p3

    move v9, p4

    move-object p3, v0

    goto/16 :goto_b

    .line 2120
    :catch_0
    move-exception v0

    move-object v7, p3

    move v9, p4

    goto/16 :goto_a

    .line 2068
    .restart local v2    # "needsFile":Z
    :cond_1
    move-object v8, v3

    .line 2067
    :goto_1
    move-object v7, p3

    move v9, p4

    .end local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p4    # "profileType":I
    .local v7, "profilerInfo":Landroid/app/ProfilerInfo;
    .local v9, "profileType":I
    :try_start_2
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;Landroid/content/pm/ApplicationInfo;I)V

    .line 2069
    iget-object p3, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p3, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2070
    iput v9, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 2072
    const/4 p3, 0x0

    .line 2073
    .local p3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_2

    .line 2074
    iget-object p4, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2076
    .end local p3    # "fd":Landroid/os/ParcelFileDescriptor;
    .local p4, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_3
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2079
    .end local p4    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 2123
    .end local v2    # "needsFile":Z
    .end local p3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v0

    move-object p3, v0

    goto/16 :goto_b

    .line 2120
    :catch_1
    move-exception v0

    goto/16 :goto_a

    .line 2077
    .restart local v2    # "needsFile":Z
    .restart local p4    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v0

    move-object p3, v0

    .line 2078
    .local p3, "e":Ljava/io/IOException;
    const/4 p4, 0x0

    move-object p3, p4

    .line 2080
    .end local p4    # "fd":Landroid/os/ParcelFileDescriptor;
    .local p3, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_2
    :try_start_4
    iput-object p3, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2083
    :cond_2
    iget-object p4, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p4}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p4

    invoke-interface {p4, p2, v7, v9}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2085
    if-eqz v2, :cond_3

    .line 2086
    const/4 p3, 0x0

    .line 2088
    :try_start_5
    iget-object p4, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p4}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2090
    goto :goto_3

    .line 2089
    :catch_3
    move-exception v0

    .line 2091
    :goto_3
    :try_start_6
    iget-object p4, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p4}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p4

    iput-object v3, p4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2093
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p4

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p4, v0, :cond_3

    .line 2098
    const/4 p4, 0x0

    move-object p3, p4

    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local p4, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4

    .line 2101
    .end local v2    # "needsFile":Z
    .end local p3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    move-object p3, v7

    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local p3, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_4
    goto :goto_8

    .line 2123
    .end local v9    # "profileType":I
    .local p4, "profileType":I
    :catchall_2
    move-exception v0

    move-object v7, p3

    move v9, p4

    move-object p3, v0

    .end local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p4    # "profileType":I
    .restart local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v9    # "profileType":I
    goto :goto_b

    .line 2120
    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v9    # "profileType":I
    .restart local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p4    # "profileType":I
    :catch_4
    move-exception v0

    move-object v7, p3

    move v9, p4

    .end local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p4    # "profileType":I
    .restart local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v9    # "profileType":I
    goto :goto_a

    .line 2102
    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v9    # "profileType":I
    .restart local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p4    # "profileType":I
    :cond_4
    move-object v7, p3

    move v9, p4

    .end local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p4    # "profileType":I
    .restart local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v9    # "profileType":I
    if-ne v9, v1, :cond_5

    move v0, v1

    :cond_5
    move p3, v0

    .line 2103
    .local p3, "mayNeedFile":Z
    if-eqz v7, :cond_7

    iget-object p4, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p4, :cond_7

    .line 2104
    iget-object p4, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2106
    .local p4, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz p3, :cond_6

    .line 2107
    :try_start_7
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object p4, v0

    goto :goto_5

    .line 2111
    :catch_5
    move-exception v0

    goto :goto_6

    .line 2109
    :cond_6
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2113
    :goto_5
    goto :goto_7

    .line 2111
    :goto_6
    nop

    .line 2112
    .local v0, "e":Ljava/io/IOException;
    const/4 p4, 0x0

    .line 2114
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_8
    iput-object p4, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2116
    .end local p4    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_7
    invoke-direct {p0, p1, v7, v9}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object p3, v7

    .line 2119
    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local p3, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_8
    nop

    .line 2123
    if-eqz p3, :cond_8

    iget-object p4, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p4, :cond_8

    .line 2125
    :try_start_9
    iget-object p4, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2127
    goto :goto_9

    .line 2126
    :catch_6
    move-exception v0

    .line 2119
    :cond_8
    :goto_9
    return v1

    .line 2120
    .end local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_a
    nop

    .line 2121
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "Process disappeared"

    invoke-direct {p3, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v9    # "profileType":I
    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    .end local p1    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "start":Z
    throw p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2123
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v9    # "profileType":I
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    .restart local p1    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "start":Z
    :goto_b
    if-eqz v7, :cond_9

    iget-object p4, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p4, :cond_9

    .line 2125
    :try_start_b
    iget-object p4, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 2127
    goto :goto_c

    .line 2126
    :catch_7
    move-exception v0

    .line 2129
    :cond_9
    :goto_c
    throw p3
.end method

.method reportMemUsage(Ljava/util/ArrayList;)V
    .locals 71
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessMemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1687
    .local p1, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    move-object v3, v0

    .line 1688
    .local v3, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1689
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    .line 1690
    .local v5, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v6, v5, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1688
    .end local v5    # "mi":Lcom/android/server/am/ProcessMemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1692
    .end local v0    # "i":I
    .end local v4    # "size":I
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 1693
    const/4 v0, 0x4

    new-array v4, v0, [J

    .line 1694
    .local v4, "memtrackTmp":[J
    const/4 v5, 0x2

    new-array v6, v5, [J

    .line 1696
    .local v6, "swaptrackTmp":[J
    new-instance v7, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/server/am/AppProfiler;->getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v7

    .line 1697
    .local v7, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1698
    .local v8, "statsCount":I
    const-wide/16 v9, 0x0

    .line 1699
    .local v9, "totalMemtrackGraphics":J
    const-wide/16 v11, 0x0

    .line 1700
    .local v11, "totalMemtrackGl":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v17, v0

    if-ge v13, v8, :cond_3

    .line 1701
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 1702
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const-wide/16 v20, 0x0

    iget v15, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v16, 0x0

    invoke-static {v15, v6, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v14

    .line 1703
    .local v14, "pss":J
    cmp-long v18, v14, v20

    if-lez v18, :cond_2

    .line 1704
    const/16 v18, 0x1

    iget v0, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 1705
    new-instance v20, Lcom/android/server/am/ProcessMemInfo;

    iget-object v0, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const-string/jumbo v25, "native"

    const/16 v26, 0x0

    const/16 v23, -0x3e8

    const/16 v24, -0x1

    move/from16 v22, v0

    invoke-direct/range {v20 .. v26}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    .line 1707
    .local v0, "mi":Lcom/android/server/am/ProcessMemInfo;
    iput-wide v14, v0, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1708
    move-object/from16 v22, v7

    move/from16 v23, v8

    .end local v7    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v8    # "statsCount":I
    .local v22, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .local v23, "statsCount":I
    aget-wide v7, v6, v18

    iput-wide v7, v0, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 1709
    aget-wide v7, v4, v16

    iput-wide v7, v0, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 1710
    aget-wide v7, v4, v18

    add-long/2addr v9, v7

    .line 1711
    aget-wide v7, v4, v19

    add-long/2addr v11, v7

    .line 1712
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1704
    .end local v0    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .end local v22    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v23    # "statsCount":I
    .restart local v7    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v8    # "statsCount":I
    :cond_1
    move-object/from16 v22, v7

    move/from16 v23, v8

    .end local v7    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v8    # "statsCount":I
    .restart local v22    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v23    # "statsCount":I
    goto :goto_2

    .line 1703
    .end local v22    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v23    # "statsCount":I
    .restart local v7    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v8    # "statsCount":I
    :cond_2
    move-object/from16 v22, v7

    move/from16 v23, v8

    .line 1700
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v7    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v8    # "statsCount":I
    .end local v14    # "pss":J
    .restart local v22    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v23    # "statsCount":I
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    move/from16 v5, v19

    move-object/from16 v7, v22

    move/from16 v8, v23

    goto :goto_1

    .end local v22    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v23    # "statsCount":I
    .restart local v7    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v8    # "statsCount":I
    :cond_3
    move/from16 v19, v5

    move-object/from16 v22, v7

    move/from16 v23, v8

    const/16 v16, 0x0

    const/16 v18, 0x1

    const-wide/16 v20, 0x0

    .line 1717
    .end local v7    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v8    # "statsCount":I
    .end local v13    # "i":I
    .restart local v22    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v23    # "statsCount":I
    const-wide/16 v7, 0x0

    .line 1718
    .local v7, "totalPss":J
    const-wide/16 v13, 0x0

    .line 1719
    .local v13, "totalSwapPss":J
    const-wide/16 v24, 0x0

    .line 1720
    .local v24, "totalMemtrack":J
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    :goto_3
    if-ge v0, v5, :cond_5

    .line 1721
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessMemInfo;

    .line 1722
    .local v15, "mi":Lcom/android/server/am/ProcessMemInfo;
    move-wide/from16 v26, v9

    .end local v9    # "totalMemtrackGraphics":J
    .local v26, "totalMemtrackGraphics":J
    iget-wide v9, v15, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v9, v9, v20

    if-nez v9, :cond_4

    .line 1723
    iget v9, v15, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-static {v9, v6, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v9

    iput-wide v9, v15, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1724
    aget-wide v9, v6, v18

    iput-wide v9, v15, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 1725
    aget-wide v9, v4, v16

    iput-wide v9, v15, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 1726
    aget-wide v9, v4, v18

    add-long v9, v26, v9

    .line 1727
    .end local v26    # "totalMemtrackGraphics":J
    .restart local v9    # "totalMemtrackGraphics":J
    aget-wide v26, v4, v19

    add-long v11, v11, v26

    goto :goto_4

    .line 1722
    .end local v9    # "totalMemtrackGraphics":J
    .restart local v26    # "totalMemtrackGraphics":J
    :cond_4
    move-wide/from16 v9, v26

    .line 1729
    .end local v26    # "totalMemtrackGraphics":J
    .restart local v9    # "totalMemtrackGraphics":J
    :goto_4
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    .end local v3    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v4    # "memtrackTmp":[J
    .local v28, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .local v29, "memtrackTmp":[J
    iget-wide v3, v15, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long/2addr v7, v3

    .line 1730
    iget-wide v3, v15, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    add-long/2addr v13, v3

    .line 1731
    iget-wide v3, v15, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v24, v24, v3

    .line 1720
    .end local v15    # "mi":Lcom/android/server/am/ProcessMemInfo;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    goto :goto_3

    .end local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v29    # "memtrackTmp":[J
    .restart local v3    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .restart local v4    # "memtrackTmp":[J
    :cond_5
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-wide/from16 v26, v9

    .line 1733
    .end local v0    # "i":I
    .end local v3    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v4    # "memtrackTmp":[J
    .end local v5    # "size":I
    .end local v9    # "totalMemtrackGraphics":J
    .restart local v26    # "totalMemtrackGraphics":J
    .restart local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .restart local v29    # "memtrackTmp":[J
    new-instance v0, Lcom/android/server/am/AppProfiler$2;

    invoke-direct {v0, v1}, Lcom/android/server/am/AppProfiler$2;-><init>(Lcom/android/server/am/AppProfiler;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v0

    .line 1746
    .local v4, "tag":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    .line 1747
    .local v3, "stack":Ljava/lang/StringBuilder;
    const-string v0, "Low on memory -- "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    const-string/jumbo v0, "total"

    move/from16 v5, v16

    invoke-static {v4, v7, v8, v0, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1749
    const-string/jumbo v0, "total"

    move/from16 v5, v18

    invoke-static {v3, v7, v8, v0, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v0

    .line 1752
    .local v9, "fullNativeBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v10, v0

    .line 1753
    .local v10, "shortNativeBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v15, v0

    .line 1755
    .local v15, "fullJavaBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1756
    .local v0, "firstLine":Z
    const/high16 v30, -0x80000000

    .line 1757
    .local v30, "lastOomAdj":I
    const-wide/16 v31, 0x0

    .line 1758
    .local v31, "extraNativeRam":J
    const-wide/16 v33, 0x0

    .line 1759
    .local v33, "extraNativeMemtrack":J
    const-wide/16 v35, 0x0

    .line 1760
    .local v35, "cachedPss":J
    const/16 v37, 0x0

    .local v37, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-wide/from16 v69, v33

    move-wide/from16 v33, v31

    move-wide/from16 v31, v35

    move-wide/from16 v35, v69

    move-object/from16 v39, v6

    move/from16 v6, v30

    move/from16 v30, v0

    move/from16 v0, v37

    .end local v37    # "i":I
    .local v0, "i":I
    .restart local v5    # "size":I
    .local v6, "lastOomAdj":I
    .local v30, "firstLine":Z
    .local v31, "cachedPss":J
    .local v33, "extraNativeRam":J
    .local v35, "extraNativeMemtrack":J
    .local v39, "swaptrackTmp":[J
    :goto_5
    move-wide/from16 v40, v11

    .end local v11    # "totalMemtrackGl":J
    .local v40, "totalMemtrackGl":J
    if-ge v0, v5, :cond_16

    .line 1761
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessMemInfo;

    .line 1763
    .local v12, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v11, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v43, v0

    .end local v0    # "i":I
    .local v43, "i":I
    const/16 v0, 0x384

    if-lt v11, v0, :cond_6

    .line 1764
    move-wide/from16 v44, v13

    .end local v13    # "totalSwapPss":J
    .local v44, "totalSwapPss":J
    iget-wide v13, v12, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v31, v31, v13

    move-wide/from16 v13, v31

    goto :goto_6

    .line 1763
    .end local v44    # "totalSwapPss":J
    .restart local v13    # "totalSwapPss":J
    :cond_6
    move-wide/from16 v44, v13

    .end local v13    # "totalSwapPss":J
    .restart local v44    # "totalSwapPss":J
    move-wide/from16 v13, v31

    .line 1767
    .end local v31    # "cachedPss":J
    .local v13, "cachedPss":J
    :goto_6
    iget v0, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v11, -0x3e8

    if-eq v0, v11, :cond_12

    iget v0, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v11, 0x1f4

    if-lt v0, v11, :cond_7

    iget v0, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v11, 0x258

    if-eq v0, v11, :cond_7

    iget v0, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v11, 0x2bc

    if-ne v0, v11, :cond_8

    :cond_7
    goto :goto_7

    :cond_8
    move-wide/from16 v46, v13

    goto/16 :goto_b

    .line 1771
    :goto_7
    iget v0, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v6, v0, :cond_c

    .line 1772
    iget v6, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 1773
    iget v0, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v0, :cond_9

    .line 1774
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    :cond_9
    iget v0, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v0, :cond_b

    .line 1777
    if-eqz v30, :cond_a

    .line 1778
    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    const/16 v30, 0x0

    .line 1781
    :cond_a
    const-string v0, "\n\t at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1783
    :cond_b
    const-string v0, "$"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1786
    :cond_c
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    const-string v0, "$"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    :goto_8
    iget v0, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v0, :cond_d

    .line 1790
    move-wide/from16 v46, v13

    .end local v13    # "cachedPss":J
    .local v46, "cachedPss":J
    iget-wide v13, v12, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v0, v12, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v4, v13, v14, v0, v11}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    goto :goto_9

    .line 1789
    .end local v46    # "cachedPss":J
    .restart local v13    # "cachedPss":J
    :cond_d
    move-wide/from16 v46, v13

    .line 1792
    .end local v13    # "cachedPss":J
    .restart local v46    # "cachedPss":J
    :goto_9
    iget-wide v13, v12, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v0, v12, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v3, v13, v14, v0, v11}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1793
    iget v0, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    nop

    if-ltz v0, :cond_11

    add-int/lit8 v0, v43, 0x1

    nop

    if-ge v0, v5, :cond_e

    add-int/lit8 v0, v43, 0x1

    .line 1794
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessMemInfo;

    iget v0, v0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v0, v6, :cond_11

    .line 1795
    :cond_e
    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_a
    sget-object v11, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v11, v11

    if-ge v0, v11, :cond_10

    .line 1797
    sget-object v11, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v11, v11, v0

    iget v13, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v11, v13, :cond_f

    .line 1798
    sget-object v11, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    const-string v11, ":"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    sget-object v11, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v11, v11, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1796
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_10
    nop

    .line 1803
    .end local v0    # "k":I
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    :cond_11
    move/from16 v0, v30

    goto :goto_c

    .line 1767
    .end local v46    # "cachedPss":J
    .restart local v13    # "cachedPss":J
    :cond_12
    move-wide/from16 v46, v13

    .line 1807
    :goto_b
    move/from16 v0, v30

    .end local v13    # "cachedPss":J
    .end local v30    # "firstLine":Z
    .local v0, "firstLine":Z
    .restart local v46    # "cachedPss":J
    :goto_c
    invoke-static {v9, v12}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 1808
    iget v11, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v13, -0x3e8

    if-ne v11, v13, :cond_14

    .line 1810
    iget-wide v13, v12, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v30, 0x200

    cmp-long v11, v13, v30

    if-ltz v11, :cond_13

    .line 1811
    invoke-static {v10, v12}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    goto :goto_d

    .line 1813
    :cond_13
    iget-wide v13, v12, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v33, v33, v13

    .line 1814
    iget-wide v13, v12, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v35, v35, v13

    goto :goto_d

    .line 1819
    :cond_14
    cmp-long v11, v33, v20

    if-lez v11, :cond_15

    .line 1820
    const/16 v32, -0x1

    const-string v37, "(Other native)"

    const/16 v31, -0x3e8

    move-object/from16 v30, v10

    .end local v10    # "shortNativeBuilder":Ljava/lang/StringBuilder;
    .local v30, "shortNativeBuilder":Ljava/lang/StringBuilder;
    invoke-static/range {v30 .. v37}, Lcom/android/server/am/ActivityManagerService;->appendBasicMemEntry(Ljava/lang/StringBuilder;IIJJLjava/lang/String;)V

    .line 1822
    .end local v30    # "shortNativeBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "shortNativeBuilder":Ljava/lang/StringBuilder;
    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1823
    const-wide/16 v33, 0x0

    .line 1825
    :cond_15
    invoke-static {v15, v12}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 1760
    .end local v12    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :goto_d
    add-int/lit8 v11, v43, 0x1

    move/from16 v30, v0

    move v0, v11

    move-wide/from16 v11, v40

    move-wide/from16 v13, v44

    move-wide/from16 v31, v46

    .end local v43    # "i":I
    .local v11, "i":I
    goto/16 :goto_5

    .end local v11    # "i":I
    .end local v44    # "totalSwapPss":J
    .end local v46    # "cachedPss":J
    .local v0, "i":I
    .local v13, "totalSwapPss":J
    .local v30, "firstLine":Z
    .restart local v31    # "cachedPss":J
    :cond_16
    move/from16 v43, v0

    move-wide/from16 v44, v13

    .line 1829
    .end local v0    # "i":I
    .end local v5    # "size":I
    .end local v13    # "totalSwapPss":J
    .restart local v44    # "totalSwapPss":J
    const-string v0, "           "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-static {v15, v7, v8}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 1831
    const-string v0, ": TOTAL"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    cmp-long v0, v24, v20

    if-lez v0, :cond_17

    .line 1833
    const-string v0, " ("

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    invoke-static/range {v24 .. v25}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    const-string v0, " memtrack)"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    :cond_17
    const-string v0, "\n"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    move-object v5, v0

    .line 1840
    .local v5, "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1841
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v11

    .line 1843
    .local v11, "infos":[J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v12, 0x400

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v12, v0

    .line 1844
    .local v12, "memInfoBuilder":Ljava/lang/StringBuilder;
    invoke-static {v11}, Landroid/os/Debug;->getMemInfo([J)V

    .line 1845
    const-string v0, "  MemInfo: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    const/4 v0, 0x5

    aget-wide v13, v11, v0

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " slab, "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    aget-wide v13, v11, v17

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " shmem, "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1848
    const/16 v0, 0xc

    aget-wide v13, v11, v0

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " vm alloc, "

    .line 1849
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    const/16 v0, 0xd

    aget-wide v13, v11, v0

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " page tables "

    .line 1851
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    const/16 v0, 0xf

    aget-wide v13, v11, v0

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " kernel stack\n"

    .line 1853
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    const-string v0, "           "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    aget-wide v13, v11, v19

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " buffers, "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    const/4 v0, 0x3

    aget-wide v13, v11, v0

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " cached, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    const/16 v13, 0xb

    aget-wide v13, v11, v13

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " mapped, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    const/16 v18, 0x1

    aget-wide v13, v11, v18

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " free\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    const/16 v42, 0xa

    aget-wide v13, v11, v42

    cmp-long v13, v13, v20

    if-eqz v13, :cond_18

    .line 1860
    const-string v13, "  ZRAM: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    aget-wide v13, v11, v42

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    const-string v13, " RAM, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    const/16 v13, 0x8

    aget-wide v13, v11, v13

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    const-string v13, " swap total, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    const/16 v13, 0x9

    aget-wide v13, v11, v13

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    const-string v13, " swap free\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    :cond_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    move-result-object v13

    .line 1869
    .local v13, "ksm":[J
    const/16 v18, 0x1

    aget-wide v46, v13, v18

    cmp-long v14, v46, v20

    if-nez v14, :cond_19

    const/16 v16, 0x0

    aget-wide v46, v13, v16

    cmp-long v14, v46, v20

    if-nez v14, :cond_19

    aget-wide v46, v13, v19

    cmp-long v14, v46, v20

    if-nez v14, :cond_19

    aget-wide v46, v13, v0

    cmp-long v14, v46, v20

    if-eqz v14, :cond_1a

    .line 1871
    :cond_19
    const-string v14, "  KSM: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    const/16 v18, 0x1

    aget-wide v17, v13, v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    const-string v14, " saved from shared "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    const/16 v16, 0x0

    aget-wide v17, v13, v16

    invoke-static/range {v17 .. v18}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    const-string v14, "\n       "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    aget-wide v17, v13, v19

    invoke-static/range {v17 .. v18}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    const-string v14, " unshared; "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    aget-wide v17, v13, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    const-string v0, " volatile\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    :cond_1a
    const-string v0, "  Free RAM: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v17

    add-long v17, v31, v17

    .line 1883
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v46

    add-long v17, v17, v46

    .line 1882
    invoke-static/range {v17 .. v18}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v17

    .line 1886
    .local v17, "kernelUsed":J
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v46

    .line 1887
    .local v46, "ionHeap":J
    invoke-static {}, Landroid/os/Debug;->getIonPoolsSizeKb()J

    move-result-wide v48

    .line 1888
    .local v48, "ionPool":J
    invoke-static {}, Landroid/os/Debug;->getDmabufMappedSizeKb()J

    move-result-wide v50

    .line 1889
    .local v50, "dmabufMapped":J
    cmp-long v0, v46, v20

    if-ltz v0, :cond_1b

    cmp-long v0, v48, v20

    if-ltz v0, :cond_1b

    .line 1890
    sub-long v52, v46, v50

    .line 1891
    .local v52, "ionUnmapped":J
    const-string v0, "       ION: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    add-long v54, v46, v48

    invoke-static/range {v54 .. v55}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    add-long v17, v17, v52

    .line 1898
    sub-long v7, v7, v26

    .line 1899
    add-long v7, v7, v50

    .line 1900
    .end local v52    # "ionUnmapped":J
    goto :goto_e

    .line 1901
    :cond_1b
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v52

    .line 1902
    .local v52, "totalExportedDmabuf":J
    cmp-long v0, v52, v20

    if-ltz v0, :cond_1c

    .line 1903
    sub-long v54, v52, v50

    .line 1904
    .local v54, "dmabufUnmapped":J
    const-string v0, "DMA-BUF: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    invoke-static/range {v52 .. v53}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    add-long v17, v17, v54

    .line 1910
    sub-long v7, v7, v26

    .line 1911
    add-long v7, v7, v50

    .line 1915
    .end local v54    # "dmabufUnmapped":J
    :cond_1c
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v54

    .line 1916
    .local v54, "totalExportedDmabufHeap":J
    cmp-long v0, v54, v20

    if-ltz v0, :cond_1d

    .line 1917
    const-string v0, "DMA-BUF Heap: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    invoke-static/range {v54 .. v55}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1922
    :cond_1d
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapPoolsSizeKb()J

    move-result-wide v56

    .line 1923
    .local v56, "totalDmabufHeapPool":J
    cmp-long v0, v56, v20

    if-ltz v0, :cond_1e

    .line 1924
    const-string v0, "DMA-BUF Heaps pool: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    invoke-static/range {v56 .. v57}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    .end local v52    # "totalExportedDmabuf":J
    .end local v54    # "totalExportedDmabufHeap":J
    .end local v56    # "totalDmabufHeapPool":J
    :cond_1e
    :goto_e
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v52

    .line 1931
    .local v52, "gpuUsage":J
    cmp-long v0, v52, v20

    if-ltz v0, :cond_20

    .line 1932
    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    move-result-wide v54

    .line 1933
    .local v54, "gpuPrivateUsage":J
    cmp-long v0, v54, v20

    if-ltz v0, :cond_1f

    .line 1934
    sub-long v19, v52, v54

    .line 1935
    .local v19, "gpuDmaBufUsage":J
    const-string v0, "      GPU: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    invoke-static/range {v52 .. v53}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    const-string v0, " ("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    invoke-static/range {v19 .. v20}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    const-string v0, " dmabuf + "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    invoke-static/range {v54 .. v55}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    const-string v0, " private)\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    sub-long v7, v7, v40

    .line 1945
    add-long v17, v17, v54

    .line 1946
    .end local v19    # "gpuDmaBufUsage":J
    goto :goto_f

    .line 1947
    :cond_1f
    const-string v0, "       GPU: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    invoke-static/range {v52 .. v53}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    .end local v54    # "gpuPrivateUsage":J
    :cond_20
    :goto_f
    const-string v0, "  Used RAM: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    sub-long v19, v7, v31

    add-long v19, v19, v17

    invoke-static/range {v19 .. v20}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1960
    const-string v0, "  Lost RAM: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v19

    sub-long v54, v7, v44

    sub-long v19, v19, v54

    .line 1962
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v54

    sub-long v19, v19, v54

    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v54

    sub-long v19, v19, v54

    sub-long v19, v19, v17

    .line 1963
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v54

    sub-long v19, v19, v54

    .line 1961
    invoke-static/range {v19 .. v20}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    const-string v0, "ActivityManager"

    const-string v14, "Low on memory:"

    invoke-static {v0, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const-string v0, "ActivityManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const-string v0, "ActivityManager"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const-string v0, "ActivityManager"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v14, 0x400

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v14, v0

    .line 1971
    .local v14, "dropBuilder":Ljava/lang/StringBuilder;
    const-string v0, "Low on memory:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1973
    const/16 v0, 0xa

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1974
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1975
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1976
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1977
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1979
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object/from16 v19, v0

    .line 1980
    .local v19, "catSw":Ljava/io/StringWriter;
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 1981
    :try_start_0
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v20, v3

    .end local v3    # "stack":Ljava/lang/StringBuilder;
    .local v20, "stack":Ljava/lang/StringBuilder;
    const/16 v3, 0x100

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v5, v19

    const/4 v4, 0x0

    .end local v4    # "tag":Ljava/lang/StringBuilder;
    .end local v19    # "catSw":Ljava/io/StringWriter;
    .local v5, "catSw":Ljava/io/StringWriter;
    .local v16, "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v21, "tag":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-direct {v0, v5, v4, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    move-object/from16 v56, v0

    .line 1982
    .local v56, "catPw":Ljava/io/PrintWriter;
    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v57, v0

    .line 1983
    .local v57, "emptyArgs":[Ljava/lang/String;
    invoke-virtual/range {v56 .. v56}, Ljava/io/PrintWriter;->println()V

    .line 1984
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1985
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v60, 0x0

    const/16 v61, -0x1

    const/16 v55, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v61}, Lcom/android/server/am/ProcessList;->dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V

    .line 1986
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1987
    invoke-virtual/range {v56 .. v56}, Ljava/io/PrintWriter;->println()V

    .line 1988
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v55, 0x0

    const/16 v58, 0x0

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v60}, Lcom/android/server/am/ActiveServices;->newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-result-object v0

    .line 1989
    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpLocked()V

    .line 1990
    invoke-virtual/range {v56 .. v56}, Ljava/io/PrintWriter;->println()V

    .line 1991
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v55, "activities"

    const/16 v62, 0x0

    const/16 v63, -0x1

    move-object/from16 v58, v57

    move-object/from16 v57, v56

    .end local v56    # "catPw":Ljava/io/PrintWriter;
    .local v57, "catPw":Ljava/io/PrintWriter;
    .local v58, "emptyArgs":[Ljava/lang/String;
    const/16 v56, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v63}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;I)V

    move-object/from16 v56, v57

    move-object/from16 v57, v58

    .line 1993
    .end local v58    # "emptyArgs":[Ljava/lang/String;
    .restart local v56    # "catPw":Ljava/io/PrintWriter;
    .local v57, "emptyArgs":[Ljava/lang/String;
    invoke-virtual/range {v56 .. v56}, Ljava/io/PrintWriter;->flush()V

    .line 1994
    .end local v56    # "catPw":Ljava/io/PrintWriter;
    .end local v57    # "emptyArgs":[Ljava/lang/String;
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1995
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    const/16 v0, 0x51

    invoke-static {v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 1997
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v55, "lowmem"

    const-string/jumbo v57, "system_server"

    .line 1998
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 1997
    const/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v68}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    .line 2000
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 2001
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v37
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide/from16 v42, v37

    .line 2002
    .local v42, "now":J
    move-object v4, v3

    :try_start_5
    iget-wide v2, v1, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    cmp-long v0, v2, v42

    if-gez v0, :cond_21

    .line 2003
    move-wide/from16 v2, v42

    .end local v42    # "now":J
    .local v2, "now":J
    iput-wide v2, v1, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    goto :goto_10

    .line 2005
    .end local v2    # "now":J
    :catchall_0
    move-exception v0

    goto :goto_11

    .line 2002
    .restart local v42    # "now":J
    :cond_21
    move-wide/from16 v2, v42

    .line 2005
    .end local v42    # "now":J
    :goto_10
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2006
    return-void

    .line 2005
    :catchall_1
    move-exception v0

    move-object v4, v3

    :goto_11
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1994
    :catchall_2
    move-exception v0

    goto :goto_12

    .line 1986
    .restart local v56    # "catPw":Ljava/io/PrintWriter;
    .restart local v57    # "emptyArgs":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v5    # "catSw":Ljava/io/StringWriter;
    .end local v6    # "lastOomAdj":I
    .end local v7    # "totalPss":J
    .end local v9    # "fullNativeBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "shortNativeBuilder":Ljava/lang/StringBuilder;
    .end local v11    # "infos":[J
    .end local v12    # "memInfoBuilder":Ljava/lang/StringBuilder;
    .end local v13    # "ksm":[J
    .end local v14    # "dropBuilder":Ljava/lang/StringBuilder;
    .end local v15    # "fullJavaBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .end local v17    # "kernelUsed":J
    .end local v20    # "stack":Ljava/lang/StringBuilder;
    .end local v21    # "tag":Ljava/lang/StringBuilder;
    .end local v22    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v23    # "statsCount":I
    .end local v24    # "totalMemtrack":J
    .end local v26    # "totalMemtrackGraphics":J
    .end local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v29    # "memtrackTmp":[J
    .end local v30    # "firstLine":Z
    .end local v31    # "cachedPss":J
    .end local v33    # "extraNativeRam":J
    .end local v35    # "extraNativeMemtrack":J
    .end local v39    # "swaptrackTmp":[J
    .end local v40    # "totalMemtrackGl":J
    .end local v44    # "totalSwapPss":J
    .end local v46    # "ionHeap":J
    .end local v48    # "ionPool":J
    .end local v50    # "dmabufMapped":J
    .end local v52    # "gpuUsage":J
    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    .end local p1    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    throw v0

    .line 1994
    .end local v56    # "catPw":Ljava/io/PrintWriter;
    .end local v57    # "emptyArgs":[Ljava/lang/String;
    .restart local v3    # "stack":Ljava/lang/StringBuilder;
    .restart local v4    # "tag":Ljava/lang/StringBuilder;
    .local v5, "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v6    # "lastOomAdj":I
    .restart local v7    # "totalPss":J
    .restart local v9    # "fullNativeBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "shortNativeBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "infos":[J
    .restart local v12    # "memInfoBuilder":Ljava/lang/StringBuilder;
    .restart local v13    # "ksm":[J
    .restart local v14    # "dropBuilder":Ljava/lang/StringBuilder;
    .restart local v15    # "fullJavaBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "kernelUsed":J
    .restart local v19    # "catSw":Ljava/io/StringWriter;
    .restart local v22    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v23    # "statsCount":I
    .restart local v24    # "totalMemtrack":J
    .restart local v26    # "totalMemtrackGraphics":J
    .restart local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .restart local v29    # "memtrackTmp":[J
    .restart local v30    # "firstLine":Z
    .restart local v31    # "cachedPss":J
    .restart local v33    # "extraNativeRam":J
    .restart local v35    # "extraNativeMemtrack":J
    .restart local v39    # "swaptrackTmp":[J
    .restart local v40    # "totalMemtrackGl":J
    .restart local v44    # "totalSwapPss":J
    .restart local v46    # "ionHeap":J
    .restart local v48    # "ionPool":J
    .restart local v50    # "dmabufMapped":J
    .restart local v52    # "gpuUsage":J
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    .restart local p1    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v5, v19

    .end local v3    # "stack":Ljava/lang/StringBuilder;
    .end local v4    # "tag":Ljava/lang/StringBuilder;
    .end local v19    # "catSw":Ljava/io/StringWriter;
    .local v5, "catSw":Ljava/io/StringWriter;
    .restart local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v20    # "stack":Ljava/lang/StringBuilder;
    .restart local v21    # "tag":Ljava/lang/StringBuilder;
    :goto_12
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method requestPssAllProcsLPr(JZZ)V
    .locals 9
    .param p1, "now"    # J
    .param p3, "always"    # Z
    .param p4, "memLowered"    # Z

    .line 1287
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1288
    if-nez p3, :cond_1

    .line 1289
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 1290
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    goto :goto_0

    .line 1325
    :catchall_0
    move-exception v0

    move-object v4, p0

    move-wide v7, p1

    move v6, p3

    move v5, p4

    goto/16 :goto_3

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    :goto_0
    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 1292
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1295
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    .line 1296
    :try_start_2
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting pss of all procs!  memLowered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1298
    :cond_2
    :try_start_3
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 1299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 1300
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 1301
    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1300
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    nop

    .line 1303
    .end local v2    # "i":I
    :try_start_5
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1304
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1305
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v3, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v4, p0

    move-wide v7, p1

    move v6, p3

    move v5, p4

    .end local p1    # "now":J
    .end local p3    # "always":Z
    .end local p4    # "memLowered":Z
    .local v5, "memLowered":Z
    .local v6, "always":Z
    .local v7, "now":J
    :try_start_6
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/AppProfiler;ZZJ)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1322
    iget-object p1, v4, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1323
    iget-object p1, v4, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1325
    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v1

    .line 1326
    return-void

    .line 1325
    .end local v5    # "memLowered":Z
    .end local v6    # "always":Z
    .end local v7    # "now":J
    .restart local p1    # "now":J
    .restart local p3    # "always":Z
    .restart local p4    # "memLowered":Z
    :catchall_2
    move-exception v0

    move-object v4, p0

    move-wide v7, p1

    move v6, p3

    move v5, p4

    .end local p1    # "now":J
    .end local p3    # "always":Z
    .end local p4    # "memLowered":Z
    .restart local v5    # "memLowered":Z
    .restart local v6    # "always":Z
    .restart local v7    # "now":J
    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method retrieveSettings()V
    .locals 5

    .line 2404
    const-string v0, "activity_start_pss_defer"

    const-wide/16 v1, 0x0

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2406
    .local v0, "pssDeferralMs":J
    nop

    .line 2407
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2406
    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2409
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 2410
    return-void
.end method

.method final scheduleAppGcsLPf()V
    .locals 8

    .line 1592
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1594
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1596
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1597
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1599
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    .line 1600
    .local v2, "when":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1601
    .local v4, "now":J
    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    add-long/2addr v6, v4

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    .line 1602
    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    add-long v2, v4, v6

    .line 1604
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v6, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1606
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "when":J
    .end local v4    # "now":J
    :cond_1
    return-void
.end method

.method setAgentAppLPf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Ljava/lang/String;

    .line 2157
    if-nez p2, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2159
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    goto :goto_0

    .line 2165
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 2168
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 2170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App agent map has too many entries, cannot add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    return-void

    .line 2174
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2176
    :cond_3
    :goto_0
    return-void
.end method

.method setAllowLowerMemLevelLocked(Z)V
    .locals 0
    .param p1, "allowLowerMemLevel"    # Z

    .line 1369
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 1370
    return-void
.end method

.method setCpuInfoService()V
    .locals 4

    .line 2390
    new-instance v0, Lcom/android/server/am/AppProfiler$CpuBinder;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CpuBinder;-><init>(Lcom/android/server/am/AppProfiler;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "cpuinfo"

    invoke-static {v3, v0, v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 2393
    return-void
.end method

.method setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "maxMemSize"    # J
    .param p5, "reportPackage"    # Ljava/lang/String;

    .line 1177
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1178
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    .line 1179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1187
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1181
    :cond_0
    if-eqz p2, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_0

    .line 1184
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    :goto_0
    monitor-exit v0

    .line 1188
    return-void

    .line 1187
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setMemFactorOverrideLocked(I)V
    .locals 2
    .param p1, "factor"    # I

    .line 1379
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 1380
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateController;->setIsLastMemoryLevelNormal(Z)V

    .line 1381
    return-void
.end method

.method setProfileAppLPf(Ljava/lang/String;Landroid/app/ProfilerInfo;I)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 2134
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2141
    goto :goto_0

    .line 2140
    :catch_0
    move-exception v0

    .line 2144
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 2145
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    new-instance v1, Landroid/app/ProfilerInfo;

    invoke-direct {v1, p2}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 2147
    :cond_1
    iput p3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 2148
    return-void
.end method

.method setProfileProcLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 2152
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2153
    return-void
.end method

.method setTestPssMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1329
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1330
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 1331
    if-eqz p1, :cond_0

    .line 1334
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    goto :goto_0

    .line 1336
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1337
    return-void

    .line 1336
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method setupProfilerInfoLocked(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)Landroid/app/ProfilerInfo;
    .locals 21
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "instr"    # Lcom/android/server/am/ActiveInstrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2440
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 2441
    .local v5, "profilerInfo":Landroid/app/ProfilerInfo;
    const/4 v6, 0x0

    .line 2442
    .local v6, "preBindAgent":Ljava/lang/String;
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2443
    .local v7, "processName":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2444
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2445
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2446
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2447
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2450
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2451
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v9

    goto :goto_1

    .line 2485
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 2451
    :cond_1
    :goto_0
    move v0, v10

    :goto_1
    nop

    .line 2452
    .local v0, "needsInfo":Z
    if-eqz v0, :cond_2

    .line 2453
    new-instance v11, Landroid/app/ProfilerInfo;

    iget-object v12, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v12}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    move-object v5, v11

    .line 2454
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v11}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 2455
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v11}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    move-object v6, v11

    .line 2457
    .end local v0    # "needsInfo":Z
    :cond_3
    goto :goto_3

    .line 2458
    :cond_4
    if-eqz v4, :cond_5

    iget-object v0, v4, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2459
    new-instance v11, Landroid/app/ProfilerInfo;

    iget-object v12, v4, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v20}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    move-object v5, v11

    .line 2462
    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2465
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2466
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2468
    .local v0, "agent":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 2469
    new-instance v11, Landroid/app/ProfilerInfo;

    iget-object v12, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 2470
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    invoke-direct/range {v11 .. v20}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    move-object v5, v11

    .end local v5    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v11, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4

    .line 2472
    .end local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v5    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_6
    iget-object v11, v5, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 2473
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11, v10}, Landroid/app/ProfilerInfo;->setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;

    move-result-object v11

    move-object v5, v11

    .line 2478
    .end local v0    # "agent":Ljava/lang/String;
    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    iget-object v0, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_8

    .line 2479
    iget-object v0, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2480
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2481
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2482
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2485
    :cond_8
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2491
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    if-nez v4, :cond_d

    .line 2492
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v10

    move v8, v0

    .line 2493
    .local v8, "i":I
    :goto_5
    if-ltz v8, :cond_d

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2494
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/am/ActiveInstrumentation;

    .line 2495
    .local v10, "aInstr":Lcom/android/server/am/ActiveInstrumentation;
    iget-boolean v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-nez v0, :cond_c

    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v11, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v11, :cond_c

    .line 2496
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v11

    .line 2497
    :try_start_1
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_9

    .line 2500
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2501
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0, v3, v10}, Lcom/android/server/am/ProcessStateController;->setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2503
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2515
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 2506
    :cond_9
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v12, v0

    move v13, v9

    :goto_6
    if-ge v13, v12, :cond_b

    aget-object v14, v0, v13

    .line 2507
    .local v14, "proc":Ljava/lang/String;
    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 2508
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0, v3, v10}, Lcom/android/server/am/ProcessStateController;->setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2510
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2511
    goto :goto_7

    .line 2507
    :cond_a
    nop

    .line 2506
    .end local v14    # "proc":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 2515
    :cond_b
    :goto_7
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_9

    :goto_8
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 2493
    .end local v10    # "aInstr":Lcom/android/server/am/ActiveInstrumentation;
    :cond_c
    :goto_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 2522
    .end local v8    # "i":I
    :cond_d
    if-eqz v6, :cond_e

    .line 2523
    invoke-interface {v2, v6}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 2525
    :cond_e
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2526
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    .line 2528
    :cond_f
    return-object v5

    .line 2485
    :goto_a
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V
    .locals 6
    .param p1, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p2, "isUserInitiated"    # Z

    .line 1089
    iget-object v0, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1090
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1091
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 1092
    invoke-virtual {p1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 1093
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 1094
    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 1097
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android"

    iget v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 1098
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 1097
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .local v1, "ctx":Landroid/content/Context;
    nop

    .line 1102
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/AppProfiler$RecordPssRunnable;

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 1103
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/android/server/am/AppProfiler$RecordPssRunnable;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 1102
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1104
    return-void

    .line 1099
    .end local v1    # "ctx":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1100
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "android package not found."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method updateCpuStats()V
    .locals 6

    .line 2179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2180
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 2181
    return-void

    .line 2183
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2184
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 2185
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 2186
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2188
    :cond_1
    :goto_0
    return-void
.end method

.method updateCpuStatsNow()V
    .locals 40

    .line 2191
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "settings_enable_monitor_phantom_procs"

    invoke-static {v0, v3}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v3, v0

    .line 2193
    .local v3, "monitorPhantomProcs":Z
    iget-object v4, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v4

    .line 2194
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2196
    .local v5, "now":J
    const/4 v0, 0x0

    .line 2198
    .local v0, "haveNewCpuStats":Z
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2199
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    const-wide/16 v9, 0x1388

    sub-long v9, v5, v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    .line 2200
    :try_start_1
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2201
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 2202
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->hasGoodLastStats()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2203
    const/4 v0, 0x1

    .line 2209
    const-string/jumbo v2, "true"

    const-string v7, "events.cpu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2210
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v2

    .line 2211
    .local v2, "user":I
    iget-object v7, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v7

    .line 2212
    .local v7, "system":I
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v8

    .line 2213
    .local v8, "iowait":I
    iget-object v9, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v9

    .line 2214
    .local v9, "irq":I
    iget-object v10, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v10

    .line 2215
    .local v10, "softIrq":I
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v11

    .line 2217
    .local v11, "idle":I
    add-int v12, v2, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    add-int/2addr v12, v10

    add-int/2addr v12, v11

    .line 2218
    .local v12, "total":I
    if-nez v12, :cond_1

    const/4 v12, 0x1

    .line 2220
    :cond_1
    add-int v13, v2, v7

    add-int/2addr v13, v8

    add-int/2addr v13, v9

    add-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x64

    div-int v14, v13, v12

    mul-int/lit8 v13, v2, 0x64

    div-int v15, v13, v12

    mul-int/lit8 v13, v7, 0x64

    div-int v16, v13, v12

    mul-int/lit8 v13, v8, 0x64

    div-int v17, v13, v12

    mul-int/lit8 v13, v9, 0x64

    div-int v18, v13, v12

    mul-int/lit8 v13, v10, 0x64

    div-int v19, v13, v12

    invoke-static/range {v14 .. v19}, Lcom/android/server/am/EventLogTags;->writeCpu(IIIIII)V

    goto :goto_1

    .line 2297
    .end local v0    # "haveNewCpuStats":Z
    .end local v2    # "user":I
    .end local v5    # "now":J
    .end local v7    # "system":I
    .end local v8    # "iowait":I
    .end local v9    # "irq":I
    .end local v10    # "softIrq":I
    .end local v11    # "idle":I
    .end local v12    # "total":I
    :catchall_0
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v21, v4

    goto/16 :goto_c

    .line 2231
    .restart local v0    # "haveNewCpuStats":Z
    .restart local v5    # "now":J
    :cond_2
    :goto_1
    move v2, v0

    .end local v0    # "haveNewCpuStats":Z
    .local v2, "haveNewCpuStats":Z
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 2232
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object v7, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, v7}, Lcom/android/server/am/PhantomProcessList;->updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2235
    :cond_3
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v0

    move-object v7, v0

    .line 2236
    .local v7, "bstats":Lcom/android/server/power/stats/BatteryStatsImpl;
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    .line 2237
    if-eqz v2, :cond_c

    .line 2238
    :try_start_3
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->startAddingCpuStatsLocked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2239
    const/4 v0, 0x0

    .line 2240
    .local v0, "totalUTime":I
    const/4 v8, 0x0

    .line 2241
    .local v8, "totalSTime":I
    iget-object v9, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v9

    move v14, v9

    .line 2242
    .local v14, "statsCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2243
    .local v10, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2244
    .local v12, "uptime":J
    iget-object v9, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_f

    .line 2245
    const/4 v9, 0x0

    move/from16 v39, v8

    move v8, v0

    move v0, v9

    move/from16 v9, v39

    .local v0, "i":I
    .local v8, "totalUTime":I
    .local v9, "totalSTime":I
    :goto_2
    if-ge v0, v14, :cond_a

    .line 2246
    move/from16 v16, v2

    .end local v2    # "haveNewCpuStats":Z
    .local v16, "haveNewCpuStats":Z
    :try_start_4
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 2247
    .local v2, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    iget-boolean v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-nez v0, :cond_4

    .line 2248
    move/from16 v18, v3

    move-object/from16 v21, v4

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    goto/16 :goto_8

    .line 2250
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    move/from16 v18, v3

    .end local v3    # "monitorPhantomProcs":Z
    .local v18, "monitorPhantomProcs":Z
    :try_start_5
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2251
    .local v0, "pr":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    add-int/2addr v3, v8

    .line 2252
    .end local v8    # "totalUTime":I
    .local v3, "totalUTime":I
    :try_start_6
    iget v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    add-int v19, v9, v8

    .line 2253
    .end local v9    # "totalSTime":I
    .local v19, "totalSTime":I
    if-eqz v0, :cond_7

    .line 2254
    :try_start_7
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2255
    .local v8, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getCurProcBatteryStats()Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v20, v9

    .line 2256
    .local v20, "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    if-eqz v20, :cond_5

    :try_start_8
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v9, :cond_6

    :cond_5
    goto :goto_3

    :cond_6
    move-object/from16 v22, v0

    move-object v0, v8

    move-object/from16 v8, v20

    goto :goto_4

    .line 2278
    .end local v0    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v17    # "i":I
    .end local v20    # "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    :catchall_1
    move-exception v0

    move v8, v3

    move-object/from16 v21, v4

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    move v2, v14

    move/from16 v9, v19

    goto/16 :goto_9

    .line 2257
    .restart local v0    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v17    # "i":I
    .restart local v20    # "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    :goto_3
    :try_start_9
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v21, v8

    move v8, v9

    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v21, "profile":Lcom/android/server/am/ProcessProfileRecord;
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2258
    move-object/from16 v22, v0

    move-object/from16 v0, v21

    .end local v21    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v0, "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v22, "pr":Lcom/android/server/am/ProcessRecord;
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v8

    move-object/from16 v20, v8

    .line 2257
    invoke-virtual {v0, v8}, Lcom/android/server/am/ProcessProfileRecord;->setCurProcBatteryStats(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;)V

    move-object/from16 v8, v20

    .line 2262
    .end local v20    # "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    .local v8, "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    :goto_4
    iget v9, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move/from16 v20, v3

    .end local v3    # "totalUTime":I
    .local v20, "totalUTime":I
    :try_start_a
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v8, v9, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2263
    iget-object v3, v0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget v9, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v21, v8

    .end local v8    # "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    .local v21, "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    iget v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v9, v8

    int-to-long v8, v9

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v8

    .line 2265
    .local v8, "curCpuTime":J
    iget-object v3, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-wide/from16 v23, v10

    .end local v10    # "elapsedRealtime":J
    .local v23, "elapsedRealtime":J
    const-wide/16 v10, 0x0

    :try_start_b
    invoke-virtual {v3, v10, v11, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2266
    move-wide/from16 v25, v12

    .end local v0    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v8    # "curCpuTime":J
    .end local v21    # "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    goto :goto_7

    .line 2278
    .end local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v17    # "i":I
    .end local v22    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v0

    move-object/from16 v21, v4

    move-wide/from16 v25, v12

    move v2, v14

    move/from16 v9, v19

    move/from16 v8, v20

    goto/16 :goto_9

    .end local v23    # "elapsedRealtime":J
    .restart local v10    # "elapsedRealtime":J
    :catchall_3
    move-exception v0

    move-wide/from16 v23, v10

    move-object/from16 v21, v4

    move-wide/from16 v25, v12

    move v2, v14

    move/from16 v9, v19

    move/from16 v8, v20

    .end local v10    # "elapsedRealtime":J
    .restart local v23    # "elapsedRealtime":J
    goto/16 :goto_9

    .end local v20    # "totalUTime":I
    .end local v23    # "elapsedRealtime":J
    .restart local v3    # "totalUTime":I
    .restart local v10    # "elapsedRealtime":J
    :catchall_4
    move-exception v0

    move/from16 v20, v3

    move-wide/from16 v23, v10

    move-object/from16 v21, v4

    move-wide/from16 v25, v12

    move v2, v14

    move/from16 v9, v19

    move/from16 v8, v20

    .end local v3    # "totalUTime":I
    .end local v10    # "elapsedRealtime":J
    .restart local v20    # "totalUTime":I
    .restart local v23    # "elapsedRealtime":J
    goto/16 :goto_9

    .line 2267
    .end local v20    # "totalUTime":I
    .end local v23    # "elapsedRealtime":J
    .local v0, "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v3    # "totalUTime":I
    .restart local v10    # "elapsedRealtime":J
    .restart local v17    # "i":I
    :cond_7
    move-object/from16 v22, v0

    move/from16 v20, v3

    move-wide/from16 v23, v10

    .end local v0    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "totalUTime":I
    .end local v10    # "elapsedRealtime":J
    .restart local v20    # "totalUTime":I
    .restart local v22    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "elapsedRealtime":J
    :try_start_c
    iget-object v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 2269
    .local v0, "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_8

    :try_start_d
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v3, :cond_9

    :cond_8
    goto :goto_5

    :cond_9
    move-wide/from16 v25, v12

    goto :goto_6

    .line 2270
    :goto_5
    :try_start_e
    iget v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v9, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-wide/from16 v10, v23

    .end local v23    # "elapsedRealtime":J
    .restart local v10    # "elapsedRealtime":J
    :try_start_f
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-wide/from16 v25, v12

    .end local v10    # "elapsedRealtime":J
    .end local v12    # "uptime":J
    .restart local v23    # "elapsedRealtime":J
    .local v25, "uptime":J
    move-object v0, v3

    :try_start_10
    iput-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    .line 2273
    :goto_6
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v0, v3, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2275
    .end local v0    # "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    :goto_7
    iget v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    int-to-long v8, v0

    iget v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    int-to-long v10, v0

    iget-object v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iget-wide v12, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move-object/from16 v21, v4

    int-to-long v3, v3

    move-object/from16 v31, v0

    :try_start_11
    iget v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move-object/from16 v38, v2

    move-wide/from16 v34, v3

    .end local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v38, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    int-to-long v2, v0

    move-wide/from16 v36, v2

    move-wide/from16 v27, v8

    move-wide/from16 v29, v10

    move-wide/from16 v32, v12

    invoke-static/range {v27 .. v37}, Lcom/android/server/am/EventLogTags;->writeAmCpu(JJLjava/lang/String;JJJ)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move/from16 v9, v19

    move/from16 v8, v20

    .line 2245
    .end local v19    # "totalSTime":I
    .end local v20    # "totalUTime":I
    .end local v22    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v8, "totalUTime":I
    .restart local v9    # "totalSTime":I
    :goto_8
    add-int/lit8 v0, v17, 0x1

    move/from16 v2, v16

    move/from16 v3, v18

    move-object/from16 v4, v21

    move-wide/from16 v10, v23

    move-wide/from16 v12, v25

    .end local v17    # "i":I
    .local v0, "i":I
    goto/16 :goto_2

    .line 2278
    .end local v0    # "i":I
    .end local v8    # "totalUTime":I
    .end local v9    # "totalSTime":I
    .restart local v19    # "totalSTime":I
    .restart local v20    # "totalUTime":I
    :catchall_5
    move-exception v0

    move v2, v14

    move/from16 v9, v19

    move/from16 v8, v20

    goto/16 :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v21, v4

    move v2, v14

    move/from16 v9, v19

    move/from16 v8, v20

    goto/16 :goto_9

    .end local v23    # "elapsedRealtime":J
    .end local v25    # "uptime":J
    .restart local v10    # "elapsedRealtime":J
    .restart local v12    # "uptime":J
    :catchall_7
    move-exception v0

    move-object/from16 v21, v4

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    move v2, v14

    move/from16 v9, v19

    move/from16 v8, v20

    .end local v10    # "elapsedRealtime":J
    .end local v12    # "uptime":J
    .restart local v23    # "elapsedRealtime":J
    .restart local v25    # "uptime":J
    goto/16 :goto_9

    .end local v25    # "uptime":J
    .restart local v12    # "uptime":J
    :catchall_8
    move-exception v0

    move-object/from16 v21, v4

    move-wide/from16 v25, v12

    move v2, v14

    move/from16 v9, v19

    move/from16 v8, v20

    .end local v12    # "uptime":J
    .restart local v25    # "uptime":J
    goto/16 :goto_9

    .end local v19    # "totalSTime":I
    .end local v20    # "totalUTime":I
    .end local v23    # "elapsedRealtime":J
    .end local v25    # "uptime":J
    .restart local v3    # "totalUTime":I
    .restart local v9    # "totalSTime":I
    .restart local v10    # "elapsedRealtime":J
    .restart local v12    # "uptime":J
    :catchall_9
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    move v2, v14

    move/from16 v8, v20

    .end local v3    # "totalUTime":I
    .end local v10    # "elapsedRealtime":J
    .end local v12    # "uptime":J
    .restart local v20    # "totalUTime":I
    .restart local v23    # "elapsedRealtime":J
    .restart local v25    # "uptime":J
    goto :goto_9

    .end local v20    # "totalUTime":I
    .end local v23    # "elapsedRealtime":J
    .end local v25    # "uptime":J
    .restart local v8    # "totalUTime":I
    .restart local v10    # "elapsedRealtime":J
    .restart local v12    # "uptime":J
    :catchall_a
    move-exception v0

    move-object/from16 v21, v4

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    move v2, v14

    .end local v10    # "elapsedRealtime":J
    .end local v12    # "uptime":J
    .restart local v23    # "elapsedRealtime":J
    .restart local v25    # "uptime":J
    goto :goto_9

    .end local v18    # "monitorPhantomProcs":Z
    .end local v23    # "elapsedRealtime":J
    .end local v25    # "uptime":J
    .local v3, "monitorPhantomProcs":Z
    .restart local v10    # "elapsedRealtime":J
    .restart local v12    # "uptime":J
    :catchall_b
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v21, v4

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    move v2, v14

    .end local v3    # "monitorPhantomProcs":Z
    .end local v10    # "elapsedRealtime":J
    .end local v12    # "uptime":J
    .restart local v18    # "monitorPhantomProcs":Z
    .restart local v23    # "elapsedRealtime":J
    .restart local v25    # "uptime":J
    goto :goto_9

    .line 2245
    .end local v16    # "haveNewCpuStats":Z
    .end local v18    # "monitorPhantomProcs":Z
    .end local v23    # "elapsedRealtime":J
    .end local v25    # "uptime":J
    .restart local v0    # "i":I
    .local v2, "haveNewCpuStats":Z
    .restart local v3    # "monitorPhantomProcs":Z
    .restart local v10    # "elapsedRealtime":J
    .restart local v12    # "uptime":J
    :cond_a
    move/from16 v17, v0

    move/from16 v16, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    .line 2278
    .end local v0    # "i":I
    .end local v2    # "haveNewCpuStats":Z
    .end local v3    # "monitorPhantomProcs":Z
    .end local v10    # "elapsedRealtime":J
    .end local v12    # "uptime":J
    .restart local v16    # "haveNewCpuStats":Z
    .restart local v18    # "monitorPhantomProcs":Z
    .restart local v23    # "elapsedRealtime":J
    .restart local v25    # "uptime":J
    :try_start_12
    monitor-exit v15
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 2280
    :try_start_13
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v10

    .line 2281
    .local v10, "userTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v11

    .line 2282
    .local v11, "systemTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v12

    .line 2283
    .local v12, "iowaitTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v13

    .line 2284
    .local v13, "irqTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v0

    .line 2285
    .local v0, "softIrqTime":I
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v15

    .line 2286
    .local v15, "idleTime":I
    move v2, v14

    move v14, v0

    .end local v0    # "softIrqTime":I
    .local v2, "statsCount":I
    .local v14, "softIrqTime":I
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/power/stats/BatteryStatsImpl;->addCpuStatsLocked(IIIIIIII)V

    .line 2288
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->finishAddingCpuStatsLocked()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    goto :goto_a

    .line 2296
    .end local v2    # "statsCount":I
    .end local v8    # "totalUTime":I
    .end local v9    # "totalSTime":I
    .end local v10    # "userTime":I
    .end local v11    # "systemTime":I
    .end local v12    # "iowaitTime":I
    .end local v13    # "irqTime":I
    .end local v14    # "softIrqTime":I
    .end local v15    # "idleTime":I
    .end local v23    # "elapsedRealtime":J
    .end local v25    # "uptime":J
    :catchall_c
    move-exception v0

    goto :goto_b

    .line 2278
    .restart local v8    # "totalUTime":I
    .restart local v9    # "totalSTime":I
    .local v14, "statsCount":I
    .restart local v23    # "elapsedRealtime":J
    .restart local v25    # "uptime":J
    :catchall_d
    move-exception v0

    move v2, v14

    .end local v14    # "statsCount":I
    .restart local v2    # "statsCount":I
    :goto_9
    :try_start_14
    monitor-exit v15
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .end local v5    # "now":J
    .end local v7    # "bstats":Lcom/android/server/power/stats/BatteryStatsImpl;
    .end local v16    # "haveNewCpuStats":Z
    .end local v18    # "monitorPhantomProcs":Z
    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    :try_start_15
    throw v0

    .restart local v5    # "now":J
    .restart local v7    # "bstats":Lcom/android/server/power/stats/BatteryStatsImpl;
    .restart local v16    # "haveNewCpuStats":Z
    .restart local v18    # "monitorPhantomProcs":Z
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    :catchall_e
    move-exception v0

    goto :goto_9

    .line 2296
    .end local v8    # "totalUTime":I
    .end local v9    # "totalSTime":I
    .end local v16    # "haveNewCpuStats":Z
    .end local v18    # "monitorPhantomProcs":Z
    .end local v23    # "elapsedRealtime":J
    .end local v25    # "uptime":J
    .local v2, "haveNewCpuStats":Z
    .restart local v3    # "monitorPhantomProcs":Z
    :catchall_f
    move-exception v0

    move/from16 v16, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    .end local v2    # "haveNewCpuStats":Z
    .end local v3    # "monitorPhantomProcs":Z
    .restart local v16    # "haveNewCpuStats":Z
    .restart local v18    # "monitorPhantomProcs":Z
    goto :goto_b

    .line 2238
    .end local v16    # "haveNewCpuStats":Z
    .end local v18    # "monitorPhantomProcs":Z
    .restart local v2    # "haveNewCpuStats":Z
    .restart local v3    # "monitorPhantomProcs":Z
    :cond_b
    move/from16 v16, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    .end local v2    # "haveNewCpuStats":Z
    .end local v3    # "monitorPhantomProcs":Z
    .restart local v16    # "haveNewCpuStats":Z
    .restart local v18    # "monitorPhantomProcs":Z
    goto :goto_a

    .line 2237
    .end local v16    # "haveNewCpuStats":Z
    .end local v18    # "monitorPhantomProcs":Z
    .restart local v2    # "haveNewCpuStats":Z
    .restart local v3    # "monitorPhantomProcs":Z
    :cond_c
    move/from16 v16, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    .line 2292
    .end local v2    # "haveNewCpuStats":Z
    .end local v3    # "monitorPhantomProcs":Z
    .restart local v16    # "haveNewCpuStats":Z
    .restart local v18    # "monitorPhantomProcs":Z
    :goto_a
    iget-wide v2, v1, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    const-wide/32 v8, 0x1b7740

    sub-long v8, v5, v8

    cmp-long v0, v2, v8

    if-gez v0, :cond_d

    .line 2293
    iput-wide v5, v1, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 2294
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    .line 2296
    :cond_d
    monitor-exit v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 2297
    .end local v5    # "now":J
    .end local v7    # "bstats":Lcom/android/server/power/stats/BatteryStatsImpl;
    .end local v16    # "haveNewCpuStats":Z
    :try_start_16
    monitor-exit v21
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    .line 2298
    return-void

    .line 2297
    :catchall_10
    move-exception v0

    goto :goto_c

    .line 2296
    .restart local v5    # "now":J
    .restart local v7    # "bstats":Lcom/android/server/power/stats/BatteryStatsImpl;
    .restart local v16    # "haveNewCpuStats":Z
    :goto_b
    :try_start_17
    monitor-exit v7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .end local v18    # "monitorPhantomProcs":Z
    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    :try_start_18
    throw v0

    .line 2297
    .end local v5    # "now":J
    .end local v7    # "bstats":Lcom/android/server/power/stats/BatteryStatsImpl;
    .end local v16    # "haveNewCpuStats":Z
    .restart local v3    # "monitorPhantomProcs":Z
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    :catchall_11
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v21, v4

    .end local v3    # "monitorPhantomProcs":Z
    .restart local v18    # "monitorPhantomProcs":Z
    :goto_c
    monitor-exit v21
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    throw v0
.end method

.method updateLowMemStateLSP(IIIJ)V
    .locals 8
    .param p1, "numCached"    # I
    .param p2, "numEmpty"    # I
    .param p3, "numTrimming"    # I
    .param p4, "now"    # J

    .line 1386
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    invoke-virtual {v0}, Lcom/android/server/am/LowMemDetector;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    invoke-virtual {v0}, Lcom/android/server/am/LowMemDetector;->getMemFactor()I

    move-result v0

    .local v0, "memFactor":I
    goto :goto_1

    .line 1395
    .end local v0    # "memFactor":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-gt p2, v0, :cond_3

    .line 1397
    add-int v0, p1, p2

    .line 1398
    .local v0, "numCachedAndEmpty":I
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 1399
    const/4 v1, 0x3

    move v0, v1

    .local v1, "memFactor":I
    goto :goto_0

    .line 1400
    .end local v1    # "memFactor":I
    :cond_1
    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 1401
    const/4 v1, 0x2

    move v0, v1

    .restart local v1    # "memFactor":I
    goto :goto_0

    .line 1403
    .end local v1    # "memFactor":I
    :cond_2
    const/4 v1, 0x1

    move v0, v1

    .line 1405
    .local v0, "memFactor":I
    :goto_0
    goto :goto_1

    .line 1406
    .end local v0    # "memFactor":I
    :cond_3
    const/4 v0, 0x0

    .line 1412
    .restart local v0    # "memFactor":I
    :goto_1
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_4

    .line 1413
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oom: memFactor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " override="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " allowLow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " numProcs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1415
    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1413
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_4
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    move v2, v1

    .local v2, "override":Z
    if-eqz v1, :cond_6

    .line 1420
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 1422
    :cond_6
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-le v0, v1, :cond_8

    .line 1423
    nop

    nop

    if-nez v2, :cond_8

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    nop

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1424
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    iget v5, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    if-lt v1, v5, :cond_8

    .line 1425
    :cond_7
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1426
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_8

    const-string v1, "ActivityManager"

    const-string v5, "Keeping last mem factor!"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_8
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-eq v0, v1, :cond_9

    .line 1430
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-static {v0, v1}, Lcom/android/server/am/EventLogTags;->writeAmMemFactor(II)V

    .line 1431
    const/16 v1, 0xf

    invoke-static {v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1432
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v1, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1433
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1436
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    add-int v5, p1, p2

    invoke-virtual {v1, v5, p4, p5}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->updateCachedAppsHighWatermarkIfNecessaryLocked(IJ)V

    .line 1440
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1441
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1442
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_3

    .line 1445
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 1442
    :cond_a
    :goto_3
    move v3, v4

    .line 1443
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1441
    invoke-virtual {v5, v0, v3, v6, v7}, Lcom/android/server/am/ProcessStatsService;->setMemFactorLocked(IZJ)Z

    move-result v3

    .line 1444
    .local v3, "allChanged":Z
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 1445
    .local v5, "trackerMemFactor":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    iput v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1448
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateController;->setIsLastMemoryLevelNormal(Z)V

    .line 1449
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 1452
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v6, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v4, v6}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1481
    return-void

    .line 1445
    .end local v3    # "allChanged":Z
    .end local v5    # "trackerMemFactor":I
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method updateLowRamTimestampLPr(J)V
    .locals 4
    .param p1, "now"    # J

    .line 1361
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 1362
    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 1363
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 1365
    :cond_0
    return-void
.end method

.method updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V
    .locals 7
    .param p1, "procState"    # I
    .param p2, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p3, "now"    # J
    .param p5, "forceUpdate"    # Z

    .line 899
    if-nez p5, :cond_1

    .line 900
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getNextPssTime()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 901
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 902
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 900
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 904
    return-void

    .line 906
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/am/AppProfiler;->requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 907
    return-void

    .line 910
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 911
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v4

    .line 910
    move v2, p1

    move-object v1, p2

    move-wide v5, p3

    .end local p1    # "procState":I
    .end local p2    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local p3    # "now":J
    .local v1, "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v2, "procState":I
    .local v5, "now":J
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessProfileRecord;->computeNextPssTime(IZZJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->setNextPssTime(J)V

    .line 912
    return-void
.end method

.method writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V
    .locals 17
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2648
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2649
    const-wide v2, 0x10b00000020L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2651
    .local v2, "token":J
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 2652
    .local v4, "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const-wide v7, 0x10900000001L

    if-ge v5, v6, :cond_1

    .line 2653
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2654
    .local v6, "proc":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 2655
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const-wide v10, 0x20b00000001L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 2657
    .local v10, "ptoken":J
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2659
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_0

    .line 2660
    const-wide v12, 0x20b00000002L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 2662
    .local v12, "utoken":J
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 2663
    .local v8, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    nop

    .line 2664
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 2663
    move-object v15, v4

    move/from16 v16, v5

    .end local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .end local v5    # "i":I
    .local v15, "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .local v16, "i":I
    const-wide v4, 0x10500000001L

    invoke-virtual {v1, v4, v5, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2665
    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 2667
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5, v14}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 2665
    move-object v14, v6

    .end local v6    # "proc":Ljava/lang/String;
    .local v14, "proc":Ljava/lang/String;
    const-wide v5, 0x10900000002L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2668
    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x10900000003L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2670
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2659
    .end local v8    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v12    # "utoken":J
    add-int/lit8 v7, v7, -0x1

    move-object v6, v14

    move-object v4, v15

    move/from16 v5, v16

    goto :goto_1

    .end local v14    # "proc":Ljava/lang/String;
    .end local v15    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .end local v16    # "i":I
    .restart local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .restart local v5    # "i":I
    .restart local v6    # "proc":Ljava/lang/String;
    :cond_0
    move-object v15, v4

    move/from16 v16, v5

    move-object v14, v6

    .line 2672
    .end local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .end local v5    # "i":I
    .end local v6    # "proc":Ljava/lang/String;
    .end local v7    # "j":I
    .restart local v14    # "proc":Ljava/lang/String;
    .restart local v15    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .restart local v16    # "i":I
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2652
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v10    # "ptoken":J
    .end local v14    # "proc":Ljava/lang/String;
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_0

    .end local v15    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .restart local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_1
    move-object v15, v4

    move/from16 v16, v5

    .line 2675
    .end local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .end local v5    # "i":I
    .restart local v15    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    const-wide v4, 0x10b00000002L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2677
    .local v4, "dtoken":J
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2679
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 2680
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2679
    const-wide v7, 0x10900000006L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2681
    const-wide v6, 0x10500000003L

    iget v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2683
    const-wide v6, 0x10500000004L

    iget v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2685
    const-wide v6, 0x10800000005L

    iget-boolean v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2688
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2690
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2692
    .end local v2    # "token":J
    .end local v4    # "dtoken":J
    .end local v15    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_2
    return-void
.end method

.method writeMemoryLevelsToProtoLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2719
    const-wide v0, 0x10800000037L

    iget-boolean v2, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2721
    const-wide v0, 0x10500000038L

    iget v2, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2722
    const-wide v0, 0x10500000039L

    iget v2, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2723
    return-void
.end method

.method writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 2755
    move-object/from16 v0, p4

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2757
    .local v1, "now":J
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 2758
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 2759
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2760
    goto :goto_1

    .line 2762
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2763
    .local v6, "token":J
    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2764
    .local v8, "profile":Lcom/android/server/am/ProcessProfileRecord;
    const-wide v9, 0x10b00000001L

    invoke-virtual {v5, p1, v9, v10}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2765
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v9

    const-wide v10, 0x10800000002L

    invoke-virtual {p1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2766
    const-wide v9, 0x10300000003L

    invoke-virtual {p1, v9, v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2767
    const-wide v9, 0x10300000004L

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2768
    const-wide v9, 0x10300000005L

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2769
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2757
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "token":J
    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2772
    .end local v1    # "now":J
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_1
    return-void
.end method

.method writeProfileDataToProtoLocked(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 2696
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2697
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    nop

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2698
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    nop

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2699
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    .line 2700
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2701
    :cond_1
    const-wide v0, 0x10b00000022L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2702
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2703
    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v2

    .line 2702
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2704
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2706
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2707
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/ProfilerInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2709
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2712
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2715
    .end local v0    # "token":J
    :cond_3
    return-void
.end method
