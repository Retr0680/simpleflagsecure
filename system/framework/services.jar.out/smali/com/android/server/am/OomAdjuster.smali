.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$Injector;,
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;,
        Lcom/android/server/am/OomAdjuster$GlobalState;
    }
.end annotation


# static fields
.field private static final CACHING_UI_SERVICE_CLIENT_ADJ_THRESHOLD:I

.field static final CAMERA_MICROPHONE_CAPABILITY_CHANGE_ID:J = 0x81e8a55L

.field private static final CAMERA_PROCESS_NAME:Ljava/lang/String; = "com.nothing.camera"

.field private static final ESSENTIAL_RECORDER_PROCESS_NAME:Ljava/lang/String; = "com.nothing.ntessentialrecorder"

.field private static final LAUNCHER_PROCESS_NAME:Ljava/lang/String; = "com.nothing.launcher"

.field private static final NOTHING_PREFIX:Ljava/lang/String; = "com.nothing"

.field private static final NO_FOLLOW_UP_TIME:J = 0x7fffffffffffffffL

.field static final PERCEPTIBLE_TASK_TIMEOUT_MILLIS:J = 0x493e0L

.field static final PROCESS_CAPABILITY_CHANGE_ID:J = 0x81f62a4L

.field private static final SYSTEMUI_PROCESS_NAME:Ljava/lang/String; = "com.android.systemui"

.field static final TAG:Ljava/lang/String; = "OomAdjuster"

.field static final USE_SHORT_FGS_USAGE_INTERACTION_TIME:J = 0xaf7340dL

.field public static mCurAppPid:I

.field public static mCurRenderThreadTid:I

.field public static mCurRenderTid:I

.field public static mIsTopAppRenderThreadBoostEnabled:Z

.field public static mPerf:Landroid/util/BoostFramework;

.field public static mPerfBoost:Landroid/util/BoostFramework;

.field public static mPerfHandle:I

.field private static sAppWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mBServiceAppThreshold:I

.field mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mEnableBServicePropagation:Z

.field mEnableBgt:Z

.field mEnableProcessGroupCgroupFollow:Z

.field private final mFollowUpUpdateSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

.field final mInjector:Lcom/android/server/am/OomAdjuster$Injector;

.field private mLastFreeSwapPercent:D

.field protected mLastReason:I

.field mLazyLmkKillMainProc:Z

.field private final mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

.field mMinBServiceAgingTime:I

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field private mNextFollowUpUpdateUptimeMs:J

.field private mNextNoKillDebugMessageTime:J

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field private final mNumSlots:I

.field private mOomAdjUpdateOngoing:Z

.field private mPendingFullOomAdjUpdate:Z

.field protected final mPendingProcessSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field mProcessGroupCgroupFollowDex2oatOnly:Z

.field private final mProcessGroupHandler:Landroid/os/Handler;

.field final mProcessList:Lcom/android/server/am/ProcessList;

.field protected mProcessStateCurTop:I

.field protected final mProcessesInCycle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mProcsToOomAdj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field protected final mTmpBecameIdle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field final mTmpLong:[J

.field protected final mTmpProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTmpProcessList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTmpProcessSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTmpQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTmpSchedGroup:[I

.field protected final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public static synthetic $r8$lambda$9F-hNbXzRFxc_BBmKMXasg6rCRI(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HE3RR_IDk_ZVk05ZPt838QkiYKw(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$applyOomAdjLSP$1(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uOb2fkEfiodlL-R7ljyXmiY1wCQ(Lcom/android/server/am/OomAdjuster;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 448
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    .line 453
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    .line 454
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    .line 457
    sput v0, Lcom/android/server/am/OomAdjuster;->mCurAppPid:I

    .line 458
    sput v0, Lcom/android/server/am/OomAdjuster;->mCurRenderTid:I

    .line 461
    sput v0, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    .line 462
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    .line 523
    const/16 v0, 0x1f4

    sput v0, Lcom/android/server/am/OomAdjuster;->CACHING_UI_SERVICE_CLIENT_ADJ_THRESHOLD:I

    .line 4304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->sAppWhiteList:Ljava/util/ArrayList;

    .line 4306
    sget-object v0, Lcom/android/server/am/OomAdjuster;->sAppWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.providers.media.module"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4307
    sget-object v0, Lcom/android/server/am/OomAdjuster;->sAppWhiteList:Ljava/util/ArrayList;

    const-string v1, "android.process.media"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4308
    sget-object v0, Lcom/android/server/am/OomAdjuster;->sAppWhiteList:Ljava/util/ArrayList;

    const-string v1, "android.os.cts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4309
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p4, "adjusterThread"    # Lcom/android/server/ServiceThread;
    .param p5, "globalState"    # Lcom/android/server/am/OomAdjuster$GlobalState;
    .param p6, "cachedAppOptimizer"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p7, "injector"    # Lcom/android/server/am/OomAdjuster$Injector;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 384
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 385
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 386
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 392
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 398
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 410
    const/4 v1, 0x1

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    .line 422
    const/16 v2, 0x1388

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    .line 428
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 434
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    .line 438
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    .line 439
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    .line 443
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    .line 446
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mLazyLmkKillMainProc:Z

    .line 466
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList2:Ljava/util/ArrayList;

    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 471
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 472
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 473
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 489
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 495
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 509
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 512
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 516
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 1531
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1988
    new-instance v2, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 593
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 594
    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    .line 595
    iput-object p7, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 596
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 597
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 598
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 600
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 601
    iput-object p6, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 602
    new-instance v2, Lcom/android/server/am/CacheOomRanker;

    invoke-direct {v2, p1}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 604
    new-instance v2, Lcom/android/server/am/OomAdjusterDebugLogger;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OomAdjusterDebugLogger;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 606
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_0

    .line 607
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_age"

    const-string v4, "5000"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    .line 608
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_limit"

    const-string v4, "5"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 609
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_enable"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    .line 612
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.vendor.qti.cgroup_follow.enable"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    .line 613
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.vendor.qti.cgroup_follow.dex2oat_only"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    .line 616
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "vendor.perf.topAppRenderThreadBoost.enable"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    .line 619
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "vendor.perf.bgt.enable"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    .line 622
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.lmk.lazy_killing_3rd_app_main_proc"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mLazyLmkKillMainProc:Z

    .line 626
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 672
    new-instance v2, Lcom/android/server/am/ActiveUids;

    invoke-direct {v2, p1, v0}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 673
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/lit8 v1, v2, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 674
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 676
    return-void
.end method

.method private checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1076
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-nez v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    return v0

    .line 1079
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1082
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 1084
    :goto_0
    return v0
.end method

.method static createAdjusterThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 584
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, -0xa

    const/4 v2, 0x0

    const-string v3, "OomAdjuster"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 586
    .local v0, "adjusterThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 587
    return-object v0
.end method

.method private evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4891
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    goto :goto_1

    .line 4894
    :cond_1
    iget-boolean v1, p2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    goto :goto_0

    .line 4898
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 4896
    :goto_0
    return v0

    .line 4892
    :goto_1
    return v0
.end method

.method private static getCpuCapability(Lcom/android/server/am/ProcessRecord;JZ)I
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "nowUptime"    # J
    .param p3, "hasForegroundActivities"    # Z

    .line 3746
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 3747
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    const/16 v1, 0x80

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3749
    return v1

    .line 3751
    :cond_0
    if-eqz p3, :cond_1

    .line 3755
    return v1

    .line 3757
    :cond_1
    nop

    .line 3762
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3763
    return v1

    .line 3765
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v2

    if-lez v2, :cond_3

    .line 3766
    return v1

    .line 3768
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasActiveInstrumentation()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3769
    return v1

    .line 3773
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private static getCpuCapabilityFromClient(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p0, "conn"    # Lcom/android/server/am/OomAdjusterModernImpl$Connection;
    .param p1, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 3828
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/am/OomAdjusterModernImpl$Connection;->transmitsCpuTime()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 3831
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 3829
    :goto_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    return v0
.end method

.method private static getFreeSwapPercent()D
    .locals 2

    .line 1534
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    move-result-wide v0

    return-wide v0
.end method

.method private isBackupProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2163
    nop

    .line 2166
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BackupRecord;

    .line 2167
    .local v0, "backupTarget":Lcom/android/server/am/BackupRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2168
    return v1

    .line 2170
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isCamera(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 704
    if-eqz p1, :cond_0

    const-string v0, "com.nothing.camera"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDeviceFullyAwake()Z
    .locals 2

    .line 2151
    nop

    .line 2154
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isEssentialRecorder(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 696
    if-eqz p1, :cond_0

    const-string v0, "com.nothing.ntessentialrecorder"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isForegroundNeedSelfControll(ILcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "oldScheduleGroup"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isTop = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4277
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hasActivity = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4278
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4276
    const-string v2, "OomAdjuster"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    const/4 v0, 0x3

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4280
    const-string/jumbo v0, "previous schedule group is top, not need limit!"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4281
    return v4

    .line 4283
    :cond_1
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const v5, 0x186a0

    rem-int/2addr v0, v5

    const/16 v5, 0x2710

    nop

    if-lt v0, v5, :cond_4

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 4284
    const-string v5, "com.android.systemui"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 4285
    invoke-direct {p0, v0}, Lcom/android/server/am/OomAdjuster;->isNothingApp(Ljava/lang/String;)Z

    move-result v0

    nop

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 4286
    invoke-direct {p0, v0}, Lcom/android/server/am/OomAdjuster;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4290
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not top!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    return v3

    .line 4294
    :cond_3
    return v4

    .line 4287
    :cond_4
    :goto_1
    const-string/jumbo v0, "system app not need limit!"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    return v4
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 4311
    if-eqz p1, :cond_0

    .line 4312
    sget-object v0, Lcom/android/server/am/OomAdjuster;->sAppWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 4314
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isLastMemoryLevelNormal()Z
    .locals 1

    .line 2175
    nop

    .line 2178
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v0

    return v0
.end method

.method private isLauncher(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 689
    if-eqz p1, :cond_0

    const-string v0, "com.nothing.launcher"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNothingApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 4298
    if-eqz p1, :cond_0

    const-string v0, "com.nothing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4299
    const/4 v0, 0x1

    return v0

    .line 4301
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNtCustomizeApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 709
    nop

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->isNtMajorApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 711
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->isEssentialRecorder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->isCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 709
    :goto_1
    return v0
.end method

.method private isNtMajorApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 718
    nop

    .line 719
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->isSystemui(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->isLauncher(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 718
    :goto_1
    return v0
.end method

.method private isRestrictedNeedSelfControll(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4319
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isTop = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4320
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4318
    const-string v2, "OomAdjuster"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    const-string v0, "com.android.systemui"

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    nop

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 4323
    invoke-direct {p0, v0}, Lcom/android/server/am/OomAdjuster;->isNothingApp(Ljava/lang/String;)Z

    move-result v0

    nop

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 4324
    invoke-direct {p0, v0}, Lcom/android/server/am/OomAdjuster;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4328
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not top!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    return v3

    .line 4332
    :cond_2
    return v4

    .line 4325
    :cond_3
    :goto_1
    const-string/jumbo v0, "system app not need limit!"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4326
    return v4
.end method

.method private isScreenOnOrAnimatingLocked(Lcom/android/server/am/ProcessStateRecord;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/server/am/ProcessStateRecord;

    .line 2159
    invoke-direct {p0}, Lcom/android/server/am/OomAdjuster;->isDeviceFullyAwake()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSystemui(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 681
    if-eqz p1, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$applyOomAdjLSP$1(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4219
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 4220
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 4222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4223
    return-void

    .line 4222
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 627
    iget v0, p1, Landroid/os/Message;->what:I

    .line 628
    .local v0, "group":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 632
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    .line 633
    .local v2, "pid":I
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 641
    .local v3, "processName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/am/OomAdjuster;->isNtCustomizeApp(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "OomAdjuster"

    if-eqz v4, :cond_0

    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set group = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/am/OomAdjuster;->isCamera(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v6, "set cpuset: "

    const/4 v7, 0x7

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    if-ne v0, v7, :cond_2

    .line 648
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {p0, v2, v7, v3}, Lcom/android/server/am/OomAdjuster;->setProcessGroup(IILjava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/am/OomAdjuster;->isEssentialRecorder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0, v2, v7, v3}, Lcom/android/server/am/OomAdjuster;->setProcessGroup(IILjava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/am/OomAdjuster;->isNtMajorApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p0, v2, v7, v3}, Lcom/android/server/am/OomAdjuster;->setProcessGroup(IILjava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_4
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/am/OomAdjuster;->setProcessGroup(IILjava/lang/String;)V

    .line 667
    :goto_0
    nop

    .line 668
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    invoke-virtual {v4, v1, v0}, Lcom/android/server/am/PhantomProcessList;->setProcessGroupForPhantomProcessOfApp(Lcom/android/server/am/ProcessRecord;I)V

    .line 670
    const/4 v4, 0x1

    return v4
.end method

.method private maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "updateUptimeMs"    # J
    .param p4, "now"    # J

    .line 4904
    nop

    .line 4907
    cmp-long v0, p2, p4

    if-gtz v0, :cond_0

    .line 4909
    return-void

    .line 4912
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4913
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setFollowupUpdateUptimeMs(J)V

    .line 4915
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/am/OomAdjuster;->scheduleFollowUpOomAdjusterUpdateLocked(JJ)V

    .line 4916
    return-void
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/am/ProcessStateRecord;
    .param p2, "nowUptime"    # J

    .line 4450
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 4451
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 4452
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setLastTopTime(J)V

    .line 4454
    :cond_0
    return-void
.end method

.method private maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .locals 17
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J

    .line 4395
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4396
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    if-eqz v5, :cond_0

    .line 4397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking proc ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] state changes: old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4398
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4399
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4397
    const-string v6, "OomAdjuster"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    :cond_0
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v5, :cond_1

    .line 4402
    return-void

    .line 4404
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v5

    .line 4410
    .local v5, "fgsInteractionChangeEnabled":Z
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    invoke-static {v6}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result v6

    const/4 v7, 0x6

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_2

    .line 4411
    const/4 v6, 0x1

    .line 4412
    .local v6, "isInteraction":Z
    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    goto :goto_1

    .line 4413
    .end local v6    # "isInteraction":Z
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-gt v6, v10, :cond_6

    .line 4414
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v13

    cmp-long v6, v13, v8

    if-nez v6, :cond_3

    .line 4415
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    .line 4416
    const/4 v6, 0x0

    .restart local v6    # "isInteraction":Z
    goto :goto_1

    .line 4418
    .end local v6    # "isInteraction":Z
    :cond_3
    if-eqz v5, :cond_4

    .line 4419
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_0

    .line 4420
    :cond_4
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_0
    nop

    .line 4421
    .local v13, "interactionTime":J
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v15

    add-long/2addr v15, v13

    cmp-long v6, v2, v15

    if-lez v6, :cond_5

    move v11, v12

    :cond_5
    move v6, v11

    .line 4422
    .end local v13    # "interactionTime":J
    .restart local v6    # "isInteraction":Z
    goto :goto_1

    .line 4424
    .end local v6    # "isInteraction":Z
    :cond_6
    nop

    .line 4425
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    if-gt v6, v7, :cond_7

    move v11, v12

    :cond_7
    move v6, v11

    .line 4426
    .restart local v6    # "isInteraction":Z
    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    .line 4428
    :goto_1
    if-eqz v5, :cond_8

    .line 4429
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_2

    .line 4430
    :cond_8
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_2
    nop

    .line 4431
    .local v10, "interactionThreshold":J
    if-eqz v6, :cond_a

    .line 4432
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 4433
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v12

    sub-long v12, v2, v12

    cmp-long v12, v12, v10

    if-lez v12, :cond_a

    .line 4434
    :cond_9
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    .line 4435
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v12

    .line 4436
    .local v12, "packages":[Ljava/lang/String;
    if-eqz v12, :cond_a

    .line 4437
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    array-length v14, v12

    if-ge v13, v14, :cond_a

    .line 4438
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v15, v12, v13

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v14, v15, v8, v7}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 4437
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v8, 0x0

    goto :goto_3

    .line 4443
    .end local v12    # "packages":[Ljava/lang/String;
    .end local v13    # "i":I
    :cond_a
    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessStateRecord;->setReportedInteraction(Z)V

    .line 4444
    if-nez v6, :cond_b

    .line 4445
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    .line 4447
    :cond_b
    return-void
.end method

.method public static final oomAdjReasonToProto(I)I
    .locals 1
    .param p0, "oomReason"    # I

    .line 214
    packed-switch p0, :pswitch_data_0

    .line 266
    const/4 v0, -0x1

    return v0

    .line 264
    :pswitch_0
    const/16 v0, 0x18

    return v0

    .line 262
    :pswitch_1
    const/16 v0, 0x17

    return v0

    .line 260
    :pswitch_2
    const/16 v0, 0x16

    return v0

    .line 258
    :pswitch_3
    const/16 v0, 0x15

    return v0

    .line 256
    :pswitch_4
    const/16 v0, 0x14

    return v0

    .line 254
    :pswitch_5
    const/16 v0, 0x13

    return v0

    .line 252
    :pswitch_6
    const/16 v0, 0x12

    return v0

    .line 250
    :pswitch_7
    const/16 v0, 0x11

    return v0

    .line 248
    :pswitch_8
    const/16 v0, 0x10

    return v0

    .line 246
    :pswitch_9
    const/16 v0, 0xf

    return v0

    .line 244
    :pswitch_a
    const/16 v0, 0xe

    return v0

    .line 242
    :pswitch_b
    const/16 v0, 0xd

    return v0

    .line 240
    :pswitch_c
    const/16 v0, 0xc

    return v0

    .line 238
    :pswitch_d
    const/16 v0, 0xb

    return v0

    .line 236
    :pswitch_e
    const/16 v0, 0xa

    return v0

    .line 234
    :pswitch_f
    const/16 v0, 0x9

    return v0

    .line 232
    :pswitch_10
    const/16 v0, 0x8

    return v0

    .line 230
    :pswitch_11
    const/4 v0, 0x7

    return v0

    .line 228
    :pswitch_12
    const/4 v0, 0x6

    return v0

    .line 226
    :pswitch_13
    const/4 v0, 0x5

    return v0

    .line 224
    :pswitch_14
    const/4 v0, 0x4

    return v0

    .line 222
    :pswitch_15
    const/4 v0, 0x3

    return v0

    .line 220
    :pswitch_16
    const/4 v0, 0x2

    return v0

    .line 218
    :pswitch_17
    const/4 v0, 0x1

    return v0

    .line 216
    :pswitch_18
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final oomAdjReasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "oomReason"    # I

    .line 271
    const-string/jumbo v0, "updateOomAdj"

    .line 272
    .local v0, "OOM_ADJ_REASON_METHOD":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 324
    const-string v1, "_unknown"

    return-object v1

    .line 322
    :pswitch_0
    const-string/jumbo v1, "updateOomAdj_reconfiguration"

    return-object v1

    .line 320
    :pswitch_1
    const-string/jumbo v1, "updateOomAdj_followUp"

    return-object v1

    .line 318
    :pswitch_2
    const-string/jumbo v1, "updateOomAdj_componentDisabled"

    return-object v1

    .line 316
    :pswitch_3
    const-string/jumbo v1, "updateOomAdj_restrictionChange"

    return-object v1

    .line 314
    :pswitch_4
    const-string/jumbo v1, "updateOomAdj_executingService"

    return-object v1

    .line 312
    :pswitch_5
    const-string/jumbo v1, "updateOomAdj_stopService"

    return-object v1

    .line 310
    :pswitch_6
    const-string/jumbo v1, "updateOomAdj_uidIdle"

    return-object v1

    .line 308
    :pswitch_7
    const-string/jumbo v1, "updateOomAdj_removeTask"

    return-object v1

    .line 306
    :pswitch_8
    const-string/jumbo v1, "updateOomAdj_shell"

    return-object v1

    .line 304
    :pswitch_9
    const-string/jumbo v1, "updateOomAdj_backup"

    return-object v1

    .line 302
    :pswitch_a
    const-string/jumbo v1, "updateOomAdj_systemInit"

    return-object v1

    .line 300
    :pswitch_b
    const-string/jumbo v1, "updateOomAdj_shortFgs"

    return-object v1

    .line 298
    :pswitch_c
    const-string/jumbo v1, "updateOomAdj_processEnd"

    return-object v1

    .line 296
    :pswitch_d
    const-string/jumbo v1, "updateOomAdj_processBegin"

    return-object v1

    .line 294
    :pswitch_e
    const-string/jumbo v1, "updateOomAdj_allowlistChange"

    return-object v1

    .line 292
    :pswitch_f
    const-string/jumbo v1, "updateOomAdj_uiVisibility"

    return-object v1

    .line 290
    :pswitch_10
    const-string/jumbo v1, "updateOomAdj_removeProvider"

    return-object v1

    .line 288
    :pswitch_11
    const-string/jumbo v1, "updateOomAdj_getProvider"

    return-object v1

    .line 286
    :pswitch_12
    const-string/jumbo v1, "updateOomAdj_startService"

    return-object v1

    .line 284
    :pswitch_13
    const-string/jumbo v1, "updateOomAdj_unbindService"

    return-object v1

    .line 282
    :pswitch_14
    const-string/jumbo v1, "updateOomAdj_bindService"

    return-object v1

    .line 280
    :pswitch_15
    const-string/jumbo v1, "updateOomAdj_startReceiver"

    return-object v1

    .line 278
    :pswitch_16
    const-string/jumbo v1, "updateOomAdj_finishReceiver"

    return-object v1

    .line 276
    :pswitch_17
    const-string/jumbo v1, "updateOomAdj_activityChange"

    return-object v1

    .line 274
    :pswitch_18
    const-string/jumbo v1, "updateOomAdj_meh"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetUidRecordsLsp(Lcom/android/server/am/ActiveUids;)V
    .locals 4
    .param p1, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 1303
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1304
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 1305
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v2, :cond_0

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting update of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->reset()V

    .line 1303
    .end local v1    # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1310
    .end local v0    # "i":I
    return-void
.end method

.method private scheduleFollowUpOomAdjusterUpdateLocked(JJ)V
    .locals 4
    .param p1, "updateUptimeMs"    # J
    .param p3, "now"    # J

    .line 4922
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 4925
    return-void

    .line 4927
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    add-long/2addr v0, p3

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 4930
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    add-long p1, p3, v0

    .line 4935
    :cond_1
    iput-wide p1, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 4936
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x56

    iget-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 4938
    return-void
.end method

.method private shouldKillExcessiveProcesses(J)Z
    .locals 8
    .param p1, "nowUptime"    # J

    .line 1973
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getLastUserUnlockingUptime()J

    move-result-wide v0

    .line 1975
    .local v0, "lastUserUnlockingUptime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1977
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    xor-int/2addr v2, v3

    return v2

    .line 1979
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v2, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 1981
    .local v4, "noKillCachedProcessesPostBootCompletedDurationMillis":J
    add-long v6, v0, v4

    cmp-long v2, v6, p1

    if-lez v2, :cond_1

    .line 1983
    const/4 v2, 0x0

    return v2

    .line 1985
    :cond_1
    return v3
.end method

.method private shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"    # Lcom/android/server/am/ProcessStateRecord;
    .param p3, "procState"    # I
    .param p4, "adj"    # I
    .param p5, "cycleReEval"    # Z

    .line 3848
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3852
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 3853
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3856
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v0

    iget v3, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v0, v3, :cond_1

    .line 3857
    if-eqz p5, :cond_0

    .line 3860
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v0

    if-lt v0, p3, :cond_1

    .line 3861
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    if-lt v0, p4, :cond_1

    .line 3862
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    and-int/2addr v0, v3

    .line 3863
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 3864
    return v2

    .line 3869
    :cond_0
    return v1

    .line 3873
    :cond_1
    return v1
.end method

.method private updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;IZ)V
    .locals 43
    .param p1, "now"    # J
    .param p3, "nowElapsed"    # J
    .param p5, "oldTime"    # J
    .param p7, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p8, "oomAdjReason"    # I
    .param p9, "doingAll"    # Z

    .line 1541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v9

    .line 1542
    .local v9, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1544
    .local v10, "numLru":I
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->shouldKillExcessiveProcesses(J)Z

    move-result v11

    .line 1545
    .local v11, "doKillExcessiveProcesses":Z
    const-string v12, "OomAdjuster"

    if-nez v11, :cond_0

    .line 1546
    iget-wide v1, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    .line 1547
    const-string v1, "Not killing cached processes"

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const-wide/16 v1, 0x1388

    add-long v1, p1, v1

    iput-wide v1, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    .line 1551
    :cond_0
    const v1, 0x7fffffff

    if-eqz v11, :cond_1

    .line 1552
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v13, v2

    .line 1553
    .local v13, "emptyProcessLimit":I
    if-eqz v11, :cond_2

    .line 1554
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v1, v13

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move v14, v1

    .line 1555
    .local v14, "cachedProcessLimit":I
    const/4 v1, 0x0

    .line 1556
    .local v1, "lastCachedGroup":I
    const/4 v2, 0x0

    .line 1557
    .local v2, "lastCachedGroupUid":I
    const/4 v3, 0x0

    .line 1558
    .local v3, "numCached":I
    const/4 v4, 0x0

    .line 1559
    .local v4, "numCachedExtraGroup":I
    const/4 v5, 0x0

    .line 1560
    .local v5, "numEmpty":I
    const/4 v6, 0x0

    .line 1562
    .local v6, "numTrimming":I
    const/4 v7, 0x0

    .line 1563
    .local v7, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v15, 0x0

    .line 1564
    .local v15, "serviceLastActivity":J
    const/4 v8, 0x0

    .line 1567
    .local v8, "numBServices":I
    sget-boolean v17, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 1568
    .local v17, "proactiveKillsEnabled":Z
    move/from16 v18, v1

    .end local v1    # "lastCachedGroup":I
    .local v18, "lastCachedGroup":I
    sget v1, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    move/from16 v20, v8

    move-object/from16 v19, v9

    .end local v8    # "numBServices":I
    .end local v9    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v20, "numBServices":I
    float-to-double v8, v1

    .line 1569
    .local v8, "lowSwapThresholdPercent":D
    if-eqz v17, :cond_3

    invoke-static {}, Lcom/android/server/am/OomAdjuster;->getFreeSwapPercent()D

    move-result-wide v21

    goto :goto_2

    :cond_3
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    :goto_2
    move-wide/from16 v23, v21

    .line 1570
    .local v23, "freeSwapPercent":D
    const/4 v1, 0x0

    .line 1572
    .local v1, "lruCachedApp":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v21, v10, -0x1

    move/from16 v26, v3

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v3, v20

    move/from16 v6, v21

    move-wide/from16 v41, v15

    move-object v15, v1

    move/from16 v16, v4

    move-wide/from16 v4, v41

    move/from16 v1, v18

    .end local v5    # "numEmpty":I
    .end local v18    # "lastCachedGroup":I
    .end local v20    # "numBServices":I
    .local v1, "lastCachedGroup":I
    .local v3, "numBServices":I
    .local v4, "serviceLastActivity":J
    .local v6, "i":I
    .local v15, "lruCachedApp":Lcom/android/server/am/ProcessRecord;
    .local v16, "numCachedExtraGroup":I
    .local v26, "numCached":I
    .local v27, "numEmpty":I
    .local v28, "numTrimming":I
    :goto_3
    move/from16 v18, v1

    .end local v1    # "lastCachedGroup":I
    .restart local v18    # "lastCachedGroup":I
    const-string v1, " app.pid = "

    move/from16 v20, v2

    .end local v2    # "lastCachedGroupUid":I
    .local v20, "lastCachedGroupUid":I
    const-string v2, "app.processName = "

    move-wide/from16 v21, v8

    .end local v8    # "lowSwapThresholdPercent":D
    .local v21, "lowSwapThresholdPercent":D
    if-ltz v6, :cond_1a

    .line 1573
    move-object/from16 v9, v19

    const/16 v25, 0x1

    .end local v19    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1574
    .local v8, "app":Lcom/android/server/am/ProcessRecord;
    move-wide/from16 v31, v4

    .end local v4    # "serviceLastActivity":J
    .local v31, "serviceLastActivity":J
    iget-boolean v4, v0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    if-eqz v4, :cond_a

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1575
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    const/16 v5, 0x320

    if-ne v4, v5, :cond_9

    .line 1577
    add-int/lit8 v3, v3, 0x1

    .line 1579
    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "s":I
    :goto_4
    if-ltz v4, :cond_8

    .line 1580
    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v5

    .line 1582
    .local v5, "sr":Lcom/android/server/am/ServiceRecord;
    sget-boolean v19, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v19, :cond_4

    move/from16 v19, v3

    .end local v3    # "numBServices":I
    .local v19, "numBServices":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v30, v6

    .end local v6    # "i":I
    .local v30, "i":I
    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " serviceb = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1584
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " s = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sr.lastActivity = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v33, v7

    .end local v7    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v33, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    iget-wide v6, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " packageName = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " processName = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1582
    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v19    # "numBServices":I
    .end local v30    # "i":I
    .end local v33    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "numBServices":I
    .restart local v6    # "i":I
    .restart local v7    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_4
    move/from16 v19, v3

    move/from16 v30, v6

    move-object/from16 v33, v7

    .line 1588
    .end local v3    # "numBServices":I
    .end local v6    # "i":I
    .end local v7    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "numBServices":I
    .restart local v30    # "i":I
    .restart local v33    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move/from16 v34, v4

    .end local v4    # "s":I
    .local v34, "s":I
    iget-wide v3, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    sub-long/2addr v6, v3

    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    int-to-long v3, v3

    cmp-long v3, v6, v3

    if-gez v3, :cond_5

    .line 1590
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v3, :cond_7

    .line 1591
    const-string v3, "Not aged enough!!!"

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1595
    :cond_5
    const-wide/16 v3, 0x0

    cmp-long v3, v31, v3

    if-nez v3, :cond_6

    .line 1596
    iget-wide v3, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1597
    .end local v31    # "serviceLastActivity":J
    .local v3, "serviceLastActivity":J
    move-object v6, v8

    move-wide/from16 v31, v3

    move-object v7, v6

    .end local v33    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v6, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    goto :goto_7

    .line 1598
    .end local v3    # "serviceLastActivity":J
    .end local v6    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v31    # "serviceLastActivity":J
    .restart local v33    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_6
    iget-wide v3, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    cmp-long v3, v3, v31

    if-gez v3, :cond_7

    .line 1599
    iget-wide v3, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1600
    .end local v31    # "serviceLastActivity":J
    .restart local v3    # "serviceLastActivity":J
    move-object v6, v8

    move-wide/from16 v31, v3

    move-object v7, v6

    .end local v33    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    goto :goto_7

    .line 1579
    .end local v3    # "serviceLastActivity":J
    .end local v5    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v31    # "serviceLastActivity":J
    .restart local v33    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_7
    :goto_6
    move-object/from16 v7, v33

    .end local v33    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :goto_7
    add-int/lit8 v4, v34, -0x1

    move/from16 v3, v19

    move/from16 v6, v30

    .end local v34    # "s":I
    .restart local v4    # "s":I
    goto/16 :goto_4

    .end local v19    # "numBServices":I
    .end local v30    # "i":I
    .local v3, "numBServices":I
    .local v6, "i":I
    :cond_8
    move/from16 v19, v3

    move/from16 v34, v4

    move/from16 v30, v6

    move-object/from16 v33, v7

    .end local v3    # "numBServices":I
    .end local v4    # "s":I
    .end local v6    # "i":I
    .end local v7    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "numBServices":I
    .restart local v30    # "i":I
    .restart local v33    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "s":I
    move-object/from16 v2, v33

    move-wide/from16 v35, v31

    goto :goto_9

    .line 1575
    .end local v19    # "numBServices":I
    .end local v30    # "i":I
    .end local v33    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "s":I
    .restart local v3    # "numBServices":I
    .restart local v6    # "i":I
    .restart local v7    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_9
    move/from16 v30, v6

    .end local v6    # "i":I
    .restart local v30    # "i":I
    goto :goto_8

    .line 1574
    .end local v30    # "i":I
    .restart local v6    # "i":I
    :cond_a
    move/from16 v30, v6

    .line 1604
    .end local v6    # "i":I
    .restart local v30    # "i":I
    :goto_8
    move/from16 v19, v3

    move-object v2, v7

    move-wide/from16 v35, v31

    .end local v3    # "numBServices":I
    .end local v7    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v31    # "serviceLastActivity":J
    .local v2, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "numBServices":I
    .local v35, "serviceLastActivity":J
    :goto_9
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Identified app.processName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1604
    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_b
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1609
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1610
    nop

    .line 1612
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v3

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v3, v4, :cond_c

    .line 1613
    move-object v3, v1

    move-object v1, v8

    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .local v3, "state":Lcom/android/server/am/ProcessStateRecord;
    const/4 v8, 0x1

    move-wide/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move-object/from16 v37, v9

    move-object/from16 v38, v12

    move/from16 v9, v18

    const/16 v12, 0xd

    move-wide/from16 v3, p1

    move/from16 v2, p9

    move/from16 v18, v10

    move/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v27

    move/from16 v27, v30

    .end local v2    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v30    # "i":I
    .local v9, "lastCachedGroup":I
    .local v10, "lastCachedGroupUid":I
    .local v11, "numEmpty":I
    .local v18, "numLru":I
    .local v20, "doKillExcessiveProcesses":Z
    .local v27, "i":I
    .local v37, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v39, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v40, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z

    goto :goto_a

    .line 1612
    .end local v37    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v39    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v2    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .local v9, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v10, "numLru":I
    .local v11, "doKillExcessiveProcesses":Z
    .local v18, "lastCachedGroup":I
    .local v20, "lastCachedGroupUid":I
    .local v27, "numEmpty":I
    .restart local v30    # "i":I
    :cond_c
    move-object/from16 v40, v1

    move-object/from16 v39, v2

    move-object v1, v8

    move-object/from16 v37, v9

    move-object/from16 v38, v12

    move/from16 v9, v18

    const/16 v12, 0xd

    move/from16 v18, v10

    move/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v27

    move/from16 v27, v30

    .line 1617
    .end local v2    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v30    # "i":I
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .local v9, "lastCachedGroup":I
    .local v10, "lastCachedGroupUid":I
    .local v11, "numEmpty":I
    .local v18, "numLru":I
    .local v20, "doKillExcessiveProcesses":Z
    .local v27, "i":I
    .restart local v37    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v39    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v40    # "state":Lcom/android/server/am/ProcessStateRecord;
    :goto_a
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPendingFinishAttach()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1621
    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1622
    goto/16 :goto_12

    .line 1625
    :cond_d
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1627
    .local v2, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1680
    :pswitch_0
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    move-object/from16 v29, v1

    goto :goto_b

    .line 1658
    :pswitch_1
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v11, v3, :cond_f

    .line 1659
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v3

    cmp-long v3, v3, p5

    if-gez v3, :cond_e

    .line 1660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1660
    const-string v31, "empty for too long"

    const/16 v32, 0xd

    const/16 v33, 0x4

    const/16 v34, 0x1

    move-object/from16 v29, v1

    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .local v29, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual/range {v29 .. v34}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1686
    .end local v29    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_b
    move v1, v9

    move-object/from16 v3, v29

    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_10

    .line 1659
    .end local v29    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_e
    move-object/from16 v29, v1

    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_c

    .line 1658
    .end local v29    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_f
    move-object/from16 v29, v1

    .line 1667
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_c
    add-int/lit8 v1, v11, 0x1

    .line 1668
    .end local v11    # "numEmpty":I
    .local v1, "numEmpty":I
    if-le v1, v13, :cond_10

    .line 1669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v33, 0x3

    const/16 v34, 0x1

    const-string/jumbo v31, "too many empty"

    const/16 v32, 0xd

    invoke-virtual/range {v29 .. v34}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    move-object/from16 v3, v29

    .end local v29    # "app":Lcom/android/server/am/ProcessRecord;
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_d

    .line 1674
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_10
    move-object/from16 v3, v29

    .end local v29    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v17, :cond_11

    .line 1675
    move-object v15, v3

    move v11, v1

    move v1, v9

    goto/16 :goto_10

    .line 1686
    :cond_11
    :goto_d
    move v11, v1

    move v1, v9

    goto :goto_10

    .line 1630
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "numEmpty":I
    :pswitch_2
    move-object v3, v1

    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 1631
    add-int/lit8 v1, v26, 0x1

    .line 1632
    .end local v26    # "numCached":I
    .local v1, "numCached":I
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v4

    .line 1633
    .local v4, "connectionGroup":I
    if-eqz v4, :cond_13

    .line 1634
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v10, v5, :cond_12

    if-ne v9, v4, :cond_12

    .line 1639
    add-int/lit8 v16, v16, 0x1

    move v6, v9

    move v5, v10

    goto :goto_e

    .line 1641
    :cond_12
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1642
    .end local v10    # "lastCachedGroupUid":I
    .local v5, "lastCachedGroupUid":I
    move v6, v4

    .end local v9    # "lastCachedGroup":I
    .local v6, "lastCachedGroup":I
    goto :goto_e

    .line 1645
    .end local v5    # "lastCachedGroupUid":I
    .end local v6    # "lastCachedGroup":I
    .restart local v9    # "lastCachedGroup":I
    .restart local v10    # "lastCachedGroupUid":I
    :cond_13
    const/4 v5, 0x0

    move v6, v5

    .line 1647
    .end local v9    # "lastCachedGroup":I
    .end local v10    # "lastCachedGroupUid":I
    .restart local v5    # "lastCachedGroupUid":I
    .restart local v6    # "lastCachedGroup":I
    :goto_e
    sub-int v7, v1, v16

    if-le v7, v14, :cond_14

    .line 1648
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cached #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v33, 0x2

    const/16 v34, 0x1

    const-string/jumbo v31, "too many cached"

    const/16 v32, 0xd

    move-object/from16 v29, v3

    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual/range {v29 .. v34}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .end local v29    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_f

    .line 1653
    :cond_14
    if-eqz v17, :cond_15

    .line 1654
    move-object v15, v3

    move/from16 v26, v1

    move v10, v5

    move v1, v6

    goto :goto_10

    .line 1686
    .end local v4    # "connectionGroup":I
    :cond_15
    :goto_f
    move/from16 v26, v1

    move v10, v5

    move v1, v6

    .end local v5    # "lastCachedGroupUid":I
    .end local v6    # "lastCachedGroup":I
    .local v1, "lastCachedGroup":I
    .restart local v10    # "lastCachedGroupUid":I
    .restart local v26    # "numCached":I
    :goto_10
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v4, :cond_16

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v4

    if-gtz v4, :cond_16

    .line 1687
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    .line 1695
    const-string/jumbo v4, "isolated not needed"

    const/16 v5, 0x11

    move/from16 v6, v25

    invoke-virtual {v3, v4, v12, v5, v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_11

    .line 1697
    :cond_16
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v4, :cond_17

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v4

    if-gtz v4, :cond_17

    .line 1698
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v4

    if-nez v4, :cond_17

    .line 1702
    const-string/jumbo v4, "sandbox not needed"

    const/16 v5, 0x1c

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v12, v5, v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_11

    .line 1706
    :cond_17
    invoke-direct {v0, v3}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1709
    :goto_11
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_18

    .line 1710
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v4

    if-nez v4, :cond_18

    .line 1711
    add-int/lit8 v28, v28, 0x1

    move v2, v10

    goto :goto_13

    .line 1572
    .end local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_18
    move v2, v10

    goto :goto_13

    .line 1609
    .end local v37    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v39    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v2, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .local v9, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v10, "numLru":I
    .local v11, "doKillExcessiveProcesses":Z
    .local v18, "lastCachedGroup":I
    .local v20, "lastCachedGroupUid":I
    .local v27, "numEmpty":I
    .restart local v30    # "i":I
    :cond_19
    move-object/from16 v40, v1

    move-object/from16 v39, v2

    move-object v3, v8

    move-object/from16 v37, v9

    move-object/from16 v38, v12

    move/from16 v9, v18

    move/from16 v18, v10

    move/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v27

    move/from16 v27, v30

    .line 1572
    .end local v1    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v2    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v30    # "i":I
    .local v9, "lastCachedGroup":I
    .local v10, "lastCachedGroupUid":I
    .local v11, "numEmpty":I
    .local v18, "numLru":I
    .local v20, "doKillExcessiveProcesses":Z
    .local v27, "i":I
    .restart local v37    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v39    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :goto_12
    move v1, v9

    move v2, v10

    .end local v9    # "lastCachedGroup":I
    .end local v10    # "lastCachedGroupUid":I
    .local v1, "lastCachedGroup":I
    .local v2, "lastCachedGroupUid":I
    :goto_13
    add-int/lit8 v6, v27, -0x1

    move/from16 v27, v11

    move/from16 v10, v18

    move/from16 v3, v19

    move/from16 v11, v20

    move-wide/from16 v8, v21

    move-wide/from16 v4, v35

    move-object/from16 v19, v37

    move-object/from16 v12, v38

    move-object/from16 v7, v39

    .end local v27    # "i":I
    .local v6, "i":I
    goto/16 :goto_3

    .end local v1    # "lastCachedGroup":I
    .end local v2    # "lastCachedGroupUid":I
    .end local v35    # "serviceLastActivity":J
    .end local v37    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v39    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v3, "numBServices":I
    .local v4, "serviceLastActivity":J
    .restart local v7    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v10, "numLru":I
    .local v11, "doKillExcessiveProcesses":Z
    .local v18, "lastCachedGroup":I
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v20, "lastCachedGroupUid":I
    .local v27, "numEmpty":I
    :cond_1a
    move-wide/from16 v31, v4

    move-object/from16 v38, v12

    move/from16 v9, v18

    move-object/from16 v37, v19

    const/16 v12, 0xd

    move/from16 v18, v10

    move/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v27

    move/from16 v27, v6

    .line 1716
    .end local v4    # "serviceLastActivity":J
    .end local v6    # "i":I
    .end local v19    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v27    # "numEmpty":I
    .restart local v9    # "lastCachedGroup":I
    .local v10, "lastCachedGroupUid":I
    .local v11, "numEmpty":I
    .local v18, "numLru":I
    .local v20, "doKillExcessiveProcesses":Z
    .restart local v31    # "serviceLastActivity":J
    .restart local v37    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    nop

    .line 1729
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1730
    iget-boolean v4, v0, Lcom/android/server/am/OomAdjuster;->mLazyLmkKillMainProc:Z

    if-eqz v4, :cond_1b

    .line 1731
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/server/am/OomAdjuster$Injector;->batchSetOomAdjExt(Ljava/util/ArrayList;)V

    goto :goto_14

    .line 1733
    :cond_1b
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/server/am/OomAdjuster$Injector;->batchSetOomAdj(Ljava/util/ArrayList;)V

    .line 1735
    :goto_14
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1738
    :cond_1c
    if-eqz v17, :cond_1d

    if-eqz v20, :cond_1d

    cmpg-double v4, v23, v21

    if-gez v4, :cond_1d

    if-eqz v15, :cond_1d

    iget-wide v4, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    cmpg-double v4, v23, v4

    if-gez v4, :cond_1d

    .line 1744
    const-string/jumbo v4, "swap low and too many cached"

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v15, v4, v12, v5, v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1750
    :cond_1d
    move-wide/from16 v4, v23

    .end local v23    # "freeSwapPercent":D
    .local v4, "freeSwapPercent":D
    iput-wide v4, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1752
    iget v6, v0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    if-le v3, v6, :cond_21

    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler;->allowLowerMemLevelLocked()Z

    move-result v6

    const/4 v8, 0x1

    if-ne v8, v6, :cond_21

    if-eqz v7, :cond_21

    .line 1755
    iget-boolean v6, v0, Lcom/android/server/am/OomAdjuster;->mLazyLmkKillMainProc:Z

    if-eqz v6, :cond_20

    .line 1756
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1757
    .local v6, "packageName":Ljava/lang/String;
    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1758
    .local v12, "processName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1759
    .local v19, "isMainProc":I
    const/16 v23, 0x0

    .line 1760
    .local v23, "isSystemApp":I
    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 1761
    const/16 v19, 0x1

    move/from16 v24, v3

    move/from16 v3, v19

    goto :goto_15

    .line 1760
    :cond_1e
    move/from16 v24, v3

    move/from16 v3, v19

    .line 1763
    .end local v19    # "isMainProc":I
    .local v3, "isMainProc":I
    .local v24, "numBServices":I
    :goto_15
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1764
    const/16 v23, 0x1

    move/from16 v8, v23

    goto :goto_16

    .line 1763
    :cond_1f
    move/from16 v8, v23

    .line 1766
    .end local v23    # "isSystemApp":I
    .local v8, "isSystemApp":I
    :goto_16
    move-wide/from16 v33, v4

    .end local v4    # "freeSwapPercent":D
    .local v33, "freeSwapPercent":D
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v23, v6

    const/16 v6, 0x3e7

    .end local v6    # "packageName":Ljava/lang/String;
    .local v23, "packageName":Ljava/lang/String;
    invoke-static {v4, v5, v6, v8, v3}, Lcom/android/server/am/ProcessList;->setOomAdjExt(IIIII)V

    .line 1768
    .end local v3    # "isMainProc":I
    .end local v8    # "isSystemApp":I
    .end local v12    # "processName":Ljava/lang/String;
    .end local v23    # "packageName":Ljava/lang/String;
    goto :goto_17

    .line 1770
    .end local v24    # "numBServices":I
    .end local v33    # "freeSwapPercent":D
    .local v3, "numBServices":I
    .restart local v4    # "freeSwapPercent":D
    :cond_20
    move/from16 v24, v3

    move-wide/from16 v33, v4

    const/16 v6, 0x3e7

    .end local v3    # "numBServices":I
    .end local v4    # "freeSwapPercent":D
    .restart local v24    # "numBServices":I
    .restart local v33    # "freeSwapPercent":D
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v4, v6}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 1775
    :goto_17
    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    .line 1777
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    nop

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is moved to higher adj"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1777
    move-object/from16 v2, v38

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1752
    .end local v24    # "numBServices":I
    .end local v33    # "freeSwapPercent":D
    .restart local v3    # "numBServices":I
    .restart local v4    # "freeSwapPercent":D
    :cond_21
    move/from16 v24, v3

    move-wide/from16 v33, v4

    .line 1784
    .end local v3    # "numBServices":I
    .end local v4    # "freeSwapPercent":D
    .restart local v24    # "numBServices":I
    .restart local v33    # "freeSwapPercent":D
    :cond_22
    :goto_18
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move-wide/from16 v29, p1

    move-object/from16 v25, v1

    move/from16 v27, v11

    .end local v11    # "numEmpty":I
    .restart local v27    # "numEmpty":I
    invoke-virtual/range {v25 .. v30}, Lcom/android/server/am/AppProfiler;->updateLowMemStateLSP(IIIJ)V

    .line 1785
    .end local v27    # "numEmpty":I
    .restart local v11    # "numEmpty":I
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1802
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 1803
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v0, :cond_2

    .line 1804
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1805
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setEphemeral(Z)V

    .line 1806
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 1807
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 1809
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1810
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setForegroundServices(Z)V

    .line 1812
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    .line 1814
    .end local v1    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_2
    return-void
.end method

.method private updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 781
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 782
    .local v0, "warmServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .line 783
    .local v1, "includeWarmPkg":Z
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    .line 784
    .local v2, "pkgList":Lcom/android/server/am/PackageList;
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_0
    if-ltz v3, :cond_1

    .line 785
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 786
    const/4 v1, 0x1

    .line 787
    goto :goto_1

    .line 784
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 790
    .end local v3    # "j":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 791
    return-void

    .line 793
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 794
    .local v3, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_2
    if-ltz v4, :cond_3

    .line 795
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    .line 794
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    nop

    .line 797
    .end local v4    # "j":I
    return-void
.end method

.method private updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 26
    .param p1, "oomAdjReason"    # I
    .param p2, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uids"    # Lcom/android/server/am/ActiveUids;
    .param p5, "potentialCycles"    # Z
    .param p6, "startProfiling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            "ZZ)V"
        }
    .end annotation

    .line 1186
    .local p3, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    move/from16 v9, p1

    const/4 v11, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v11

    .line 1187
    .local v4, "fullUpdate":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 1188
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    :goto_1
    move-object v12, v2

    .line 1189
    .local v12, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v2, p4

    .line 1190
    .local v2, "activeUids":Lcom/android/server/am/ActiveUids;
    if-nez v2, :cond_3

    .line 1191
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v3

    .line 1192
    .local v3, "numUids":I
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 1193
    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 1194
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_2

    .line 1195
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v6

    .line 1196
    .local v6, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-virtual {v2, v7, v6}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 1194
    .end local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object v13, v2

    goto :goto_3

    .line 1190
    .end local v3    # "numUids":I
    .end local v5    # "i":I
    :cond_3
    move-object v13, v2

    .line 1200
    .end local v2    # "activeUids":Lcom/android/server/am/ActiveUids;
    .local v13, "activeUids":Lcom/android/server/am/ActiveUids;
    :goto_3
    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 1201
    const-wide/16 v14, 0x40

    if-eqz p6, :cond_4

    .line 1202
    invoke-static {v9}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v15, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1204
    :cond_4
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v5

    .line 1205
    .local v5, "now":J
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v16

    .line 1206
    .local v16, "nowElapsed":J
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v18, v5, v2

    .line 1207
    .local v18, "oldTime":J
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1209
    .local v2, "numProc":I
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 1210
    if-eqz v4, :cond_5

    .line 1211
    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 1212
    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 1216
    :cond_5
    invoke-direct {v0, v13}, Lcom/android/server/am/OomAdjuster;->resetUidRecordsLsp(Lcom/android/server/am/ActiveUids;)V

    .line 1218
    const/4 v3, 0x0

    .line 1219
    .local v3, "retryCycles":Z
    if-nez v4, :cond_6

    if-eqz p5, :cond_7

    :cond_6
    goto :goto_4

    :cond_7
    move v8, v11

    goto :goto_5

    :goto_4
    move v8, v1

    .line 1222
    .local v8, "computeClients":Z
    :goto_5
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_9

    .line 1223
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1224
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1225
    .local v10, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 1227
    move-wide/from16 v20, v14

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v14

    iget v15, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v14, v15, :cond_8

    .line 1228
    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 1229
    const/16 v14, 0x13

    invoke-virtual {v10, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 1230
    const/16 v14, 0x3e9

    invoke-virtual {v10, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1231
    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    .line 1232
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 1233
    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 1222
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_8
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v14, v20

    goto :goto_6

    :cond_9
    move-wide/from16 v20, v14

    .line 1236
    .end local v1    # "i":I
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1237
    add-int/lit8 v1, v2, -0x1

    move v14, v1

    move v15, v3

    .end local v3    # "retryCycles":Z
    .local v14, "i":I
    .local v15, "retryCycles":Z
    :goto_7
    if-ltz v14, :cond_b

    .line 1238
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1239
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1240
    .local v3, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 1241
    invoke-virtual {v3, v11}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1242
    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastOomAdjChangeReason(I)V

    .line 1244
    const/4 v7, 0x0

    const/4 v10, 0x1

    move/from16 v22, v2

    .end local v2    # "numProc":I
    .local v22, "numProc":I
    const/16 v2, 0x3e9

    move/from16 v11, v22

    move-object/from16 v22, v3

    move-object/from16 v3, p2

    .end local v3    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v11, "numProc":I
    .local v22, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 1247
    move/from16 v24, v4

    move/from16 v25, v8

    .end local v4    # "fullUpdate":Z
    .end local v8    # "computeClients":Z
    .local v24, "fullUpdate":Z
    .local v25, "computeClients":Z
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v2

    or-int/2addr v2, v15

    .line 1249
    .end local v15    # "retryCycles":Z
    .local v2, "retryCycles":Z
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v4, v22

    .end local v22    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    move v15, v2

    goto :goto_8

    .line 1240
    .end local v11    # "numProc":I
    .end local v24    # "fullUpdate":Z
    .end local v25    # "computeClients":Z
    .local v2, "numProc":I
    .restart local v3    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v4, "fullUpdate":Z
    .restart local v8    # "computeClients":Z
    .restart local v15    # "retryCycles":Z
    :cond_a
    move v11, v2

    move/from16 v24, v4

    move/from16 v25, v8

    move-object v4, v3

    .line 1237
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "numProc":I
    .end local v3    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v4    # "fullUpdate":Z
    .end local v8    # "computeClients":Z
    .restart local v11    # "numProc":I
    .restart local v24    # "fullUpdate":Z
    .restart local v25    # "computeClients":Z
    :goto_8
    add-int/lit8 v14, v14, -0x1

    move/from16 v9, p1

    move v2, v11

    move/from16 v4, v24

    move/from16 v8, v25

    const/4 v11, 0x0

    goto :goto_7

    .end local v11    # "numProc":I
    .end local v24    # "fullUpdate":Z
    .end local v25    # "computeClients":Z
    .restart local v2    # "numProc":I
    .restart local v4    # "fullUpdate":Z
    .restart local v8    # "computeClients":Z
    :cond_b
    move v11, v2

    move/from16 v24, v4

    move/from16 v25, v8

    .line 1253
    .end local v2    # "numProc":I
    .end local v4    # "fullUpdate":Z
    .end local v8    # "computeClients":Z
    .end local v14    # "i":I
    .restart local v11    # "numProc":I
    .restart local v24    # "fullUpdate":Z
    .restart local v25    # "computeClients":Z
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v1}, Lcom/android/server/am/CacheOomRanker;->useOomReranking()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1254
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessesLSP()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1255
    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruProcessServiceStartLOSP()I

    move-result v3

    .line 1254
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/CacheOomRanker;->reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V

    .line 1258
    :cond_c
    if-eqz v25, :cond_12

    .line 1263
    const/4 v1, 0x0

    .line 1264
    .local v1, "cycleCount":I
    :goto_9
    if-eqz v15, :cond_12

    const/16 v2, 0xa

    if-ge v1, v2, :cond_12

    .line 1265
    add-int/lit8 v14, v1, 0x1

    .line 1266
    .end local v1    # "cycleCount":I
    .local v14, "cycleCount":I
    const/4 v1, 0x0

    .line 1268
    .end local v15    # "retryCycles":Z
    .local v1, "retryCycles":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v11, :cond_e

    .line 1269
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1270
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1271
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1272
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->decAdjSeq()V

    .line 1273
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->decCompletedAdjSeq()V

    .line 1268
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_e
    nop

    .line 1277
    .end local v2    # "i":I
    const/4 v2, 0x0

    move/from16 v22, v1

    move v15, v2

    .end local v1    # "retryCycles":Z
    .local v15, "i":I
    .local v22, "retryCycles":Z
    :goto_b
    if-ge v15, v11, :cond_11

    .line 1278
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1279
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1280
    .local v2, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1281
    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object v3, v2

    .end local v2    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v3, "state":Lcom/android/server/am/ProcessStateRecord;
    const/16 v2, 0x3e9

    const/4 v4, 0x1

    const/4 v7, 0x1

    move/from16 v9, p1

    move-object/from16 v23, v3

    move-object/from16 v3, p2

    .end local v3    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v23, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1283
    const/16 v22, 0x1

    goto :goto_c

    .line 1280
    .end local v23    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v2    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_f
    move-object/from16 v23, v2

    .line 1277
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_10
    :goto_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_11
    move v1, v14

    move/from16 v15, v22

    .end local v15    # "i":I
    goto :goto_9

    .line 1289
    .end local v14    # "cycleCount":I
    .end local v22    # "retryCycles":Z
    .local v15, "retryCycles":Z
    :cond_12
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1291
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    .line 1293
    const/4 v9, 0x1

    move/from16 v1, p1

    move-wide v3, v5

    move-object v2, v13

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    .end local v13    # "activeUids":Lcom/android/server/am/ActiveUids;
    .end local v16    # "nowElapsed":J
    .end local v18    # "oldTime":J
    .local v2, "activeUids":Lcom/android/server/am/ActiveUids;
    .local v3, "now":J
    .local v5, "nowElapsed":J
    .local v7, "oldTime":J
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    .line 1295
    move-wide v0, v5

    move-wide v5, v3

    .end local v3    # "now":J
    .local v0, "nowElapsed":J
    .local v5, "now":J
    if-eqz p6, :cond_13

    .line 1296
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1298
    :cond_13
    return-void
.end method

.method private updateOomAdjLSP(I)V
    .locals 2
    .param p1, "oomAdjReason"    # I

    .line 811
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 817
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 821
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 822
    nop

    .line 823
    return-void

    .line 820
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 821
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 822
    throw v0
.end method

.method private updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # I

    .line 852
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 857
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    return v0

    .line 863
    :cond_2
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 864
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 868
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 864
    return v0

    .line 867
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 868
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 869
    throw v0

    .line 853
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    .line 854
    return v0
.end method


# virtual methods
.method protected applyLruAdjust(Ljava/util/ArrayList;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 1354
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1355
    .local v2, "numLru":I
    const/16 v3, 0x2bc

    .line 1356
    .local v3, "nextPreviousAppAdj":I
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    const/16 v5, 0x3e9

    const/16 v6, 0x2bc

    if-eqz v4, :cond_9

    .line 1357
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v7

    .line 1358
    .local v7, "now":J
    const/16 v4, 0xa

    .line 1360
    .local v4, "uiTargetAdj":I
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v9, v9, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    add-int/lit8 v9, v9, 0xa

    .line 1361
    .local v9, "uiTierMaxAdj":I
    add-int/lit8 v10, v2, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_8

    .line 1362
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 1363
    .local v11, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1364
    .local v12, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1365
    .local v13, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v14

    .line 1366
    .local v14, "curAdj":I
    if-gt v6, v14, :cond_0

    sget v15, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    if-gt v14, v15, :cond_0

    .line 1367
    invoke-virtual {v12, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1368
    add-int/lit8 v15, v3, 0x1

    sget v6, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    invoke-static {v15, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v18, v2

    goto/16 :goto_4

    .line 1369
    :cond_0
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    if-eqz v6, :cond_7

    const/16 v6, 0x384

    if-ge v14, v5, :cond_2

    .line 1370
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v15

    if-eqz v15, :cond_1

    if-lt v14, v6, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v18, v2

    move/from16 v19, v3

    goto/16 :goto_3

    .line 1371
    :cond_2
    :goto_1
    iget-object v15, v11, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1372
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    const/16 v16, 0x384

    .line 1374
    .local v16, "targetAdj":I
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1376
    add-int/lit8 v16, v16, 0x0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v2, v16

    goto :goto_2

    .line 1377
    :cond_3
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v17

    if-eqz v17, :cond_4

    if-ge v4, v9, :cond_4

    .line 1379
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "uiTargetAdj":I
    .local v6, "uiTargetAdj":I
    add-int v16, v16, v4

    move/from16 v18, v2

    move/from16 v19, v3

    move v4, v6

    move/from16 v2, v16

    goto :goto_2

    .line 1380
    .end local v6    # "uiTargetAdj":I
    .restart local v4    # "uiTargetAdj":I
    :cond_4
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    if-lt v5, v6, :cond_5

    .line 1381
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v5

    move/from16 v18, v2

    .end local v2    # "numLru":I
    .local v18, "numLru":I
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v19, v3

    .end local v3    # "nextPreviousAppAdj":I
    .local v19, "nextPreviousAppAdj":I
    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    add-long/2addr v5, v2

    cmp-long v2, v5, v7

    if-gez v2, :cond_6

    .line 1384
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    add-int/lit8 v2, v2, 0x28

    add-int v16, v16, v2

    move/from16 v2, v16

    goto :goto_2

    .line 1380
    .end local v18    # "numLru":I
    .end local v19    # "nextPreviousAppAdj":I
    .restart local v2    # "numLru":I
    .restart local v3    # "nextPreviousAppAdj":I
    :cond_5
    move/from16 v18, v2

    move/from16 v19, v3

    .line 1387
    .end local v2    # "numLru":I
    .end local v3    # "nextPreviousAppAdj":I
    .restart local v18    # "numLru":I
    .restart local v19    # "nextPreviousAppAdj":I
    :cond_6
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    add-int/lit8 v2, v2, 0xa

    add-int v16, v16, v2

    move/from16 v2, v16

    .line 1389
    .end local v16    # "targetAdj":I
    .local v2, "targetAdj":I
    :goto_2
    invoke-virtual {v12, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1390
    invoke-virtual {v15, v2}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    move/from16 v3, v19

    goto :goto_4

    .line 1369
    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v18    # "numLru":I
    .end local v19    # "nextPreviousAppAdj":I
    .local v2, "numLru":I
    .restart local v3    # "nextPreviousAppAdj":I
    :cond_7
    move/from16 v18, v2

    move/from16 v19, v3

    .line 1361
    .end local v11    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v14    # "curAdj":I
    :goto_3
    move/from16 v3, v19

    .end local v2    # "numLru":I
    .restart local v18    # "numLru":I
    :goto_4
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, v18

    const/16 v5, 0x3e9

    const/16 v6, 0x2bc

    goto/16 :goto_0

    .end local v18    # "numLru":I
    .restart local v2    # "numLru":I
    :cond_8
    move/from16 v18, v2

    move/from16 v19, v3

    .line 1393
    .end local v2    # "numLru":I
    .end local v3    # "nextPreviousAppAdj":I
    .end local v4    # "uiTargetAdj":I
    .end local v7    # "now":J
    .end local v9    # "uiTierMaxAdj":I
    .end local v10    # "i":I
    .restart local v18    # "numLru":I
    .restart local v19    # "nextPreviousAppAdj":I
    goto/16 :goto_d

    .line 1396
    .end local v18    # "numLru":I
    .end local v19    # "nextPreviousAppAdj":I
    .restart local v2    # "numLru":I
    .restart local v3    # "nextPreviousAppAdj":I
    :cond_9
    move/from16 v18, v2

    .end local v2    # "numLru":I
    .restart local v18    # "numLru":I
    const/16 v2, 0x384

    .line 1397
    .local v2, "curCachedAdj":I
    add-int/lit8 v4, v2, 0xa

    .line 1398
    .local v4, "nextCachedAdj":I
    const/4 v5, 0x0

    .line 1399
    .local v5, "curCachedImpAdj":I
    const/16 v6, 0x389

    .line 1400
    .local v6, "curEmptyAdj":I
    add-int/lit8 v7, v6, 0xa

    .line 1402
    .local v7, "nextEmptyAdj":I
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1403
    .local v8, "emptyProcessLimit":I
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v9, v9, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v9, v8

    .line 1409
    .local v9, "cachedProcessLimit":I
    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v10, v18, v10

    iget v11, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v10, v11

    .line 1410
    .local v10, "numEmptyProcs":I
    if-le v10, v9, :cond_a

    .line 1417
    move v10, v9

    .line 1419
    :cond_a
    iget v11, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v12, 0x1

    if-lez v11, :cond_b

    .line 1420
    iget v11, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    iget v13, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v11, v13

    sub-int/2addr v11, v12

    goto :goto_5

    :cond_b
    move v11, v12

    :goto_5
    iget v13, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v11, v13

    .line 1422
    .local v11, "cachedFactor":I
    if-ge v11, v12, :cond_c

    const/4 v11, 0x1

    .line 1424
    :cond_c
    iget v13, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v13, v10

    sub-int/2addr v13, v12

    iget v14, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v13, v14

    .line 1425
    .local v13, "emptyFactor":I
    if-ge v13, v12, :cond_d

    const/4 v13, 0x1

    .line 1427
    :cond_d
    const/4 v12, -0x1

    .line 1428
    .local v12, "stepCached":I
    const/4 v14, -0x1

    .line 1429
    .local v14, "stepEmpty":I
    const/4 v15, 0x0

    .line 1430
    .local v15, "lastCachedGroup":I
    const/16 v16, 0x0

    .line 1431
    .local v16, "lastCachedGroupImportance":I
    const/16 v19, 0x0

    .line 1434
    .local v19, "lastCachedGroupUid":I
    add-int/lit8 v20, v18, -0x1

    move/from16 v0, v16

    move/from16 v16, v5

    move/from16 v5, v19

    move/from16 v19, v8

    move/from16 v8, v20

    .local v0, "lastCachedGroupImportance":I
    .local v5, "lastCachedGroupUid":I
    .local v8, "i":I
    .local v16, "curCachedImpAdj":I
    .local v19, "emptyProcessLimit":I
    :goto_6
    if-ltz v8, :cond_1b

    .line 1435
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v1, v20

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1436
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v20, v9

    .end local v9    # "cachedProcessLimit":I
    .local v20, "cachedProcessLimit":I
    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1437
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    move/from16 v21, v10

    .end local v10    # "numEmptyProcs":I
    .local v21, "numEmptyProcs":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v10

    .line 1438
    .local v10, "curAdj":I
    move/from16 v22, v12

    const/16 v12, 0x2bc

    .end local v12    # "stepCached":I
    .local v22, "stepCached":I
    if-gt v12, v10, :cond_e

    sget v12, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    if-gt v10, v12, :cond_e

    .line 1439
    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1440
    add-int/lit8 v12, v3, 0x1

    move/from16 v23, v3

    .end local v3    # "nextPreviousAppAdj":I
    .local v23, "nextPreviousAppAdj":I
    sget v3, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v26, v11

    move/from16 v12, v22

    .end local v23    # "nextPreviousAppAdj":I
    .restart local v3    # "nextPreviousAppAdj":I
    goto/16 :goto_c

    .line 1438
    :cond_e
    move/from16 v23, v3

    .line 1441
    .end local v3    # "nextPreviousAppAdj":I
    .restart local v23    # "nextPreviousAppAdj":I
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_1a

    const/16 v3, 0x3e9

    if-lt v10, v3, :cond_1a

    .line 1444
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1445
    .local v12, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v17

    const-string v3, ")"

    move/from16 v24, v10

    .end local v10    # "curAdj":I
    .local v24, "curAdj":I
    const-string v10, " adj: "

    move/from16 v25, v14

    .end local v14    # "stepEmpty":I
    .local v25, "stepEmpty":I
    const-string v14, "ActivityManager"

    move/from16 v26, v11

    .end local v11    # "cachedFactor":I
    .local v26, "cachedFactor":I
    packed-switch v17, :pswitch_data_0

    .line 1499
    if-eq v6, v7, :cond_10

    .line 1500
    add-int/lit8 v11, v25, 0x1

    .line 1501
    .end local v25    # "stepEmpty":I
    .local v11, "stepEmpty":I
    if-lt v11, v13, :cond_11

    .line 1502
    const/4 v11, 0x0

    .line 1503
    move v6, v7

    .line 1504
    add-int/lit8 v7, v7, 0xa

    .line 1505
    move/from16 v25, v6

    const/16 v6, 0x3e7

    .end local v6    # "curEmptyAdj":I
    .local v25, "curEmptyAdj":I
    if-le v7, v6, :cond_f

    .line 1506
    const/16 v7, 0x3e7

    move/from16 v6, v25

    goto :goto_7

    .line 1505
    :cond_f
    move/from16 v6, v25

    goto :goto_7

    .line 1499
    .end local v11    # "stepEmpty":I
    .restart local v6    # "curEmptyAdj":I
    .local v25, "stepEmpty":I
    :cond_10
    move/from16 v11, v25

    .line 1515
    .end local v25    # "stepEmpty":I
    .restart local v11    # "stepEmpty":I
    :cond_11
    :goto_7
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1516
    move/from16 v17, v7

    .end local v7    # "nextEmptyAdj":I
    .local v17, "nextEmptyAdj":I
    invoke-virtual {v12, v6}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1517
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v7, :cond_12

    .line 1518
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v11

    .end local v11    # "stepEmpty":I
    .restart local v25    # "stepEmpty":I
    const-string v11, "Assigning empty LRU #"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " (curEmptyAdj="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1518
    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1517
    .end local v25    # "stepEmpty":I
    .restart local v11    # "stepEmpty":I
    :cond_12
    move/from16 v25, v11

    .line 1434
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v11    # "stepEmpty":I
    .end local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v24    # "curAdj":I
    .restart local v25    # "stepEmpty":I
    :goto_8
    move/from16 v7, v17

    move/from16 v12, v22

    move/from16 v3, v23

    move/from16 v14, v25

    goto/16 :goto_c

    .line 1451
    .end local v17    # "nextEmptyAdj":I
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "nextEmptyAdj":I
    .restart local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v24    # "curAdj":I
    :pswitch_0
    const/4 v11, 0x0

    .line 1452
    .local v11, "inGroup":Z
    move/from16 v27, v6

    .end local v6    # "curEmptyAdj":I
    .local v27, "curEmptyAdj":I
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v6

    .line 1453
    .local v6, "connectionGroup":I
    if-eqz v6, :cond_15

    .line 1454
    move/from16 v28, v7

    .end local v7    # "nextEmptyAdj":I
    .local v28, "nextEmptyAdj":I
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v7

    .line 1455
    .local v7, "connectionImportance":I
    move/from16 v29, v11

    .end local v11    # "inGroup":Z
    .local v29, "inGroup":Z
    iget v11, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v11, :cond_14

    if-ne v15, v6, :cond_14

    .line 1459
    if-le v7, v0, :cond_13

    .line 1460
    move v0, v7

    .line 1461
    if-ge v2, v4, :cond_13

    const/16 v11, 0x3e7

    if-ge v2, v11, :cond_13

    .line 1463
    add-int/lit8 v11, v16, 0x1

    move/from16 v16, v11

    .line 1466
    :cond_13
    const/4 v11, 0x1

    move v7, v5

    move/from16 v5, v16

    .end local v29    # "inGroup":Z
    .restart local v11    # "inGroup":Z
    goto :goto_9

    .line 1468
    .end local v11    # "inGroup":Z
    .restart local v29    # "inGroup":Z
    :cond_14
    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1469
    move v15, v6

    .line 1470
    move v0, v7

    move v7, v5

    move/from16 v5, v16

    move/from16 v11, v29

    goto :goto_9

    .line 1453
    .end local v28    # "nextEmptyAdj":I
    .end local v29    # "inGroup":Z
    .local v7, "nextEmptyAdj":I
    .restart local v11    # "inGroup":Z
    :cond_15
    move/from16 v28, v7

    move/from16 v29, v11

    .end local v7    # "nextEmptyAdj":I
    .end local v11    # "inGroup":Z
    .restart local v28    # "nextEmptyAdj":I
    .restart local v29    # "inGroup":Z
    move v7, v5

    move/from16 v5, v16

    .line 1473
    .end local v16    # "curCachedImpAdj":I
    .end local v29    # "inGroup":Z
    .local v5, "curCachedImpAdj":I
    .local v7, "lastCachedGroupUid":I
    .restart local v11    # "inGroup":Z
    :goto_9
    if-nez v11, :cond_17

    if-eq v2, v4, :cond_17

    .line 1474
    move/from16 v16, v0

    .end local v0    # "lastCachedGroupImportance":I
    .local v16, "lastCachedGroupImportance":I
    add-int/lit8 v0, v22, 0x1

    .line 1475
    .end local v22    # "stepCached":I
    .local v0, "stepCached":I
    const/4 v5, 0x0

    .line 1476
    move-object/from16 v29, v1

    move/from16 v1, v26

    .end local v26    # "cachedFactor":I
    .local v1, "cachedFactor":I
    .local v29, "app":Lcom/android/server/am/ProcessRecord;
    if-lt v0, v1, :cond_16

    .line 1477
    const/4 v0, 0x0

    .line 1478
    move v2, v4

    .line 1479
    add-int/lit8 v4, v4, 0xa

    .line 1480
    move/from16 v22, v0

    const/16 v0, 0x3e7

    .end local v0    # "stepCached":I
    .restart local v22    # "stepCached":I
    if-le v4, v0, :cond_18

    .line 1481
    const/16 v4, 0x3e7

    goto :goto_a

    .line 1476
    .end local v22    # "stepCached":I
    .restart local v0    # "stepCached":I
    :cond_16
    move/from16 v22, v0

    goto :goto_a

    .line 1473
    .end local v16    # "lastCachedGroupImportance":I
    .end local v29    # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "lastCachedGroupImportance":I
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .restart local v22    # "stepCached":I
    .restart local v26    # "cachedFactor":I
    :cond_17
    move/from16 v16, v0

    move-object/from16 v29, v1

    move/from16 v1, v26

    .line 1488
    .end local v0    # "lastCachedGroupImportance":I
    .end local v26    # "cachedFactor":I
    .local v1, "cachedFactor":I
    .restart local v16    # "lastCachedGroupImportance":I
    .restart local v29    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_18
    :goto_a
    add-int v0, v2, v5

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1489
    add-int v0, v2, v5

    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1490
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_19

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v1

    .end local v1    # "cachedFactor":I
    .restart local v26    # "cachedFactor":I
    const-string v1, "Assigning activity LRU #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (curCachedAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " curCachedImpAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1491
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1490
    .end local v26    # "cachedFactor":I
    .restart local v1    # "cachedFactor":I
    :cond_19
    move/from16 v26, v1

    .line 1434
    .end local v1    # "cachedFactor":I
    .end local v6    # "connectionGroup":I
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v11    # "inGroup":Z
    .end local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v24    # "curAdj":I
    .end local v29    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v26    # "cachedFactor":I
    :goto_b
    move/from16 v0, v16

    move/from16 v12, v22

    move/from16 v3, v23

    move/from16 v14, v25

    move/from16 v6, v27

    move/from16 v16, v5

    move v5, v7

    move/from16 v7, v28

    goto :goto_c

    .line 1441
    .end local v25    # "stepEmpty":I
    .end local v26    # "cachedFactor":I
    .end local v27    # "curEmptyAdj":I
    .end local v28    # "nextEmptyAdj":I
    .restart local v0    # "lastCachedGroupImportance":I
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .local v5, "lastCachedGroupUid":I
    .local v6, "curEmptyAdj":I
    .local v7, "nextEmptyAdj":I
    .restart local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v10    # "curAdj":I
    .local v11, "cachedFactor":I
    .restart local v14    # "stepEmpty":I
    .local v16, "curCachedImpAdj":I
    :cond_1a
    move-object/from16 v29, v1

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v24, v10

    move/from16 v26, v11

    move/from16 v25, v14

    .line 1434
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "curEmptyAdj":I
    .end local v7    # "nextEmptyAdj":I
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v10    # "curAdj":I
    .end local v11    # "cachedFactor":I
    .end local v14    # "stepEmpty":I
    .restart local v25    # "stepEmpty":I
    .restart local v26    # "cachedFactor":I
    .restart local v27    # "curEmptyAdj":I
    .restart local v28    # "nextEmptyAdj":I
    move/from16 v12, v22

    move/from16 v3, v23

    move/from16 v14, v25

    move/from16 v6, v27

    move/from16 v7, v28

    .end local v22    # "stepCached":I
    .end local v23    # "nextPreviousAppAdj":I
    .end local v25    # "stepEmpty":I
    .end local v27    # "curEmptyAdj":I
    .end local v28    # "nextEmptyAdj":I
    .restart local v3    # "nextPreviousAppAdj":I
    .restart local v6    # "curEmptyAdj":I
    .restart local v7    # "nextEmptyAdj":I
    .local v12, "stepCached":I
    .restart local v14    # "stepEmpty":I
    :goto_c
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v1, p1

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v26

    goto/16 :goto_6

    .end local v20    # "cachedProcessLimit":I
    .end local v21    # "numEmptyProcs":I
    .end local v26    # "cachedFactor":I
    .local v9, "cachedProcessLimit":I
    .local v10, "numEmptyProcs":I
    .restart local v11    # "cachedFactor":I
    :cond_1b
    move/from16 v23, v3

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move/from16 v25, v14

    .line 1528
    .end local v0    # "lastCachedGroupImportance":I
    .end local v2    # "curCachedAdj":I
    .end local v4    # "nextCachedAdj":I
    .end local v5    # "lastCachedGroupUid":I
    .end local v6    # "curEmptyAdj":I
    .end local v7    # "nextEmptyAdj":I
    .end local v8    # "i":I
    .end local v9    # "cachedProcessLimit":I
    .end local v10    # "numEmptyProcs":I
    .end local v11    # "cachedFactor":I
    .end local v12    # "stepCached":I
    .end local v13    # "emptyFactor":I
    .end local v14    # "stepEmpty":I
    .end local v15    # "lastCachedGroup":I
    .end local v16    # "curCachedImpAdj":I
    .end local v19    # "emptyProcessLimit":I
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJI)Z
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "doingAll"    # Z
    .param p3, "now"    # J
    .param p5, "nowElapsed"    # J
    .param p7, "oomAdjReason"    # I

    .line 3895
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z

    move-result v8

    return v8
.end method

.method protected applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z
    .locals 26
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "doingAll"    # Z
    .param p3, "now"    # J
    .param p5, "nowElapsed"    # J
    .param p7, "oomAdjReson"    # I
    .param p8, "isBatchingOomAdj"    # Z

    .line 3902
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    const/4 v3, 0x1

    .line 3903
    .local v3, "success":Z
    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3904
    .local v11, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v12

    .line 3906
    .local v12, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 3907
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetRawAdj(I)V

    .line 3911
    :cond_0
    invoke-static {}, Lcom/android/server/am/ProcessFreezerManager;->getInstance()Lcom/android/server/am/ProcessFreezerManager;

    move-result-object v13

    .line 3914
    .local v13, "freezer":Lcom/android/server/am/ProcessFreezerManager;
    const/4 v14, 0x1

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/server/am/ProcessFreezerManager;->useFreezerManager()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3916
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    const/16 v4, 0x64

    if-ltz v0, :cond_1

    .line 3917
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-gt v0, v4, :cond_1

    .line 3918
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 3919
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v0, v14}, Lcom/android/server/am/ProcessFreezerManager;->startUnfreeze(Ljava/lang/String;I)V

    .line 3923
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 3924
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-gt v0, v4, :cond_2

    .line 3925
    invoke-virtual {v13, v2}, Lcom/android/server/am/ProcessFreezerManager;->checkNeedFreezeProcessLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3926
    const/4 v0, 0x5

    invoke-virtual {v13, v2, v0}, Lcom/android/server/am/ProcessFreezerManager;->startUnfreezeService(Lcom/android/server/am/ProcessRecord;I)V

    .line 3933
    :cond_2
    const/4 v4, 0x0

    .line 3935
    .local v4, "changes":I
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 3936
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    invoke-virtual {v0, v5, v8, v2}, Lcom/android/server/am/CachedAppOptimizer;->onOomAdjustChanged(IILcom/android/server/am/ProcessRecord;)V

    .line 3939
    :cond_3
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v15

    .line 3940
    .local v15, "oldOomAdj":I
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    const/16 v8, 0xa

    if-eq v0, v5, :cond_e

    .line 3943
    iget-boolean v0, v1, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    if-eqz v0, :cond_5

    .line 3945
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    const/16 v5, 0x3e7

    const/16 v14, 0x384

    if-lt v0, v14, :cond_4

    .line 3946
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-gt v0, v5, :cond_4

    .line 3947
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-nez v0, :cond_4

    .line 3948
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3950
    const-string v0, "OomAdjuster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "App adj change from cached state to fg state : "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3952
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3950
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    sget-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_4

    .line 3956
    const/high16 v0, 0x42820000    # 65.0f

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    filled-new-array {v0, v5}, [I

    move-result-object v0

    .line 3958
    .local v0, "fgAppPerfLockArgs":[I
    sget-object v5, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v5, v8, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 3962
    .end local v0    # "fgAppPerfLockArgs":[I
    :cond_4
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    const/16 v5, 0x2bc

    if-ne v0, v5, :cond_5

    .line 3963
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x384

    if-lt v0, v5, :cond_5

    .line 3964
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x3e7

    if-gt v0, v5, :cond_5

    .line 3966
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3967
    const-string v0, "OomAdjuster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "App adj change from previous state to cached state : "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3969
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3967
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    sget-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_5

    .line 3973
    const v0, 0x42824000    # 65.125f

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    filled-new-array {v0, v5}, [I

    move-result-object v0

    .line 3975
    .local v0, "bgAppPerfLockArgs":[I
    sget-object v5, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v5, v8, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 3981
    .end local v0    # "bgAppPerfLockArgs":[I
    :cond_5
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_MEMORY_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/INtMemoryManager;

    invoke-interface {v0, v2}, Lcom/android/server/am/INtMemoryManager;->isEnableOptHighUsed(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3982
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_MEMORY_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/INtMemoryManager;

    invoke-interface {v0, v2}, Lcom/android/server/am/INtMemoryManager;->getTargetAdj(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    .line 3983
    .local v0, "targetAdj":I
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    if-le v5, v0, :cond_6

    const/4 v5, -0x1

    if-eq v0, v5, :cond_6

    .line 3984
    const-string v5, "NtMemoryManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " adj to "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8, v14, v0}, Lcom/android/server/am/OomAdjuster$Injector;->setOomAdj(III)V

    goto :goto_0

    .line 3987
    :cond_6
    const-string v5, "NtMemoryManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "not set "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " adj to "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v18, v0

    .end local v0    # "targetAdj":I
    .local v18, "targetAdj":I
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v5, v8, v14, v0}, Lcom/android/server/am/OomAdjuster$Injector;->setOomAdj(III)V

    .line 3990
    .end local v18    # "targetAdj":I
    :goto_0
    goto :goto_3

    .line 3991
    :cond_7
    iget-boolean v0, v1, Lcom/android/server/am/OomAdjuster;->mLazyLmkKillMainProc:Z

    if-eqz v0, :cond_a

    .line 3992
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3993
    .local v0, "packageName":Ljava/lang/String;
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3994
    .local v5, "processName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3995
    .local v8, "isMainProc":I
    const/4 v14, 0x0

    .line 3996
    .local v14, "isSystemApp":I
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 3997
    const/4 v8, 0x1

    move/from16 v23, v8

    goto :goto_1

    .line 3996
    :cond_8
    move/from16 v23, v8

    .line 3999
    .end local v8    # "isMainProc":I
    .local v23, "isMainProc":I
    :goto_1
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4000
    const/4 v14, 0x1

    move/from16 v22, v14

    goto :goto_2

    .line 3999
    :cond_9
    move/from16 v22, v14

    .line 4002
    .end local v14    # "isSystemApp":I
    .local v22, "isSystemApp":I
    :goto_2
    iget-object v8, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v19

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v24, v0

    .end local v0    # "packageName":Ljava/lang/String;
    .local v24, "packageName":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v21

    move-object/from16 v18, v8

    move/from16 v20, v14

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/am/OomAdjuster$Injector;->setOomAdjExt(IIIII)V

    .line 4003
    .end local v5    # "processName":Ljava/lang/String;
    .end local v22    # "isSystemApp":I
    .end local v23    # "isMainProc":I
    .end local v24    # "packageName":Ljava/lang/String;
    goto :goto_3

    .line 4004
    :cond_a
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v14

    invoke-virtual {v0, v5, v8, v14}, Lcom/android/server/am/OomAdjuster$Injector;->setOomAdj(III)V

    .line 4009
    :goto_3
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v5, :cond_c

    .line 4010
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " adj "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4011
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4012
    .local v0, "msg":Ljava/lang/String;
    const-string v5, "ActivityManager"

    invoke-virtual {v1, v5, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 4014
    .end local v0    # "msg":Ljava/lang/String;
    :cond_c
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    .line 4015
    if-eqz v12, :cond_d

    .line 4016
    invoke-virtual {v12}, Lcom/android/server/am/UidRecord;->noteProcAdjChanged()V

    .line 4018
    :cond_d
    const/16 v0, -0x2710

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    .line 4021
    :cond_e
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v14

    .line 4022
    .local v14, "curSchedGroup":I
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v0

    if-nez v0, :cond_11

    .line 4023
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4024
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasStartedServices()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4025
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x16

    move/from16 v17, v3

    const/16 v3, 0xa

    const/4 v5, 0x1

    .end local v3    # "success":Z
    .local v17, "success":Z
    invoke-virtual {v2, v0, v3, v8, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 4027
    const/4 v0, 0x0

    move/from16 v22, v0

    move/from16 v21, v4

    .end local v17    # "success":Z
    .local v0, "success":Z
    goto/16 :goto_a

    .line 4024
    .end local v0    # "success":Z
    .restart local v3    # "success":Z
    :cond_f
    move/from16 v17, v3

    const/16 v3, 0xa

    .end local v3    # "success":Z
    .restart local v17    # "success":Z
    goto :goto_4

    .line 4023
    .end local v17    # "success":Z
    .restart local v3    # "success":Z
    :cond_10
    move/from16 v17, v3

    const/16 v3, 0xa

    .end local v3    # "success":Z
    .restart local v17    # "success":Z
    goto :goto_4

    .line 4022
    .end local v17    # "success":Z
    .restart local v3    # "success":Z
    :cond_11
    move/from16 v17, v3

    const/16 v3, 0xa

    .line 4028
    .end local v3    # "success":Z
    .restart local v17    # "success":Z
    :goto_4
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v0

    if-eq v0, v14, :cond_1d

    .line 4029
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v5

    .line 4030
    .local v5, "oldSchedGroup":I
    invoke-virtual {v11, v14}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 4031
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v8, :cond_13

    .line 4032
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting sched group of "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4033
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4034
    .local v0, "msg":Ljava/lang/String;
    const-string v8, "ActivityManager"

    invoke-virtual {v1, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 4037
    .end local v0    # "msg":Ljava/lang/String;
    :cond_13
    packed-switch v14, :pswitch_data_0

    .line 4058
    :pswitch_0
    invoke-direct {v1, v5, v2}, Lcom/android/server/am/OomAdjuster;->isForegroundNeedSelfControll(ILcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4059
    const/16 v0, 0x9

    move v8, v0

    .local v0, "processGroup":I
    goto :goto_5

    .line 4061
    .end local v0    # "processGroup":I
    :cond_14
    const/4 v0, -0x1

    move v8, v0

    .restart local v0    # "processGroup":I
    goto :goto_5

    .line 4055
    .end local v0    # "processGroup":I
    :pswitch_1
    const/16 v0, 0x8

    .line 4056
    .restart local v0    # "processGroup":I
    move v8, v0

    goto :goto_5

    .line 4043
    .end local v0    # "processGroup":I
    :pswitch_2
    const/4 v0, 0x5

    .line 4044
    .restart local v0    # "processGroup":I
    move v8, v0

    goto :goto_5

    .line 4048
    .end local v0    # "processGroup":I
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isRestrictedNeedSelfControll(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4049
    const/16 v0, 0x9

    move v8, v0

    .restart local v0    # "processGroup":I
    goto :goto_5

    .line 4051
    .end local v0    # "processGroup":I
    :cond_15
    const/4 v0, 0x7

    .line 4053
    .restart local v0    # "processGroup":I
    move v8, v0

    goto :goto_5

    .line 4039
    .end local v0    # "processGroup":I
    :pswitch_4
    const/4 v0, 0x0

    .line 4040
    .restart local v0    # "processGroup":I
    move v8, v0

    .line 4066
    .end local v0    # "processGroup":I
    .local v8, "processGroup":I
    :goto_5
    invoke-virtual {v1, v2, v8}, Lcom/android/server/am/OomAdjuster;->setAppAndChildProcessGroup(Lcom/android/server/am/ProcessRecord;I)V

    .line 4068
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move/from16 v19, v0

    .line 4069
    .local v19, "renderThreadTid":I
    const/4 v0, 0x3

    if-ne v14, v0, :cond_19

    .line 4071
    if-eq v5, v0, :cond_18

    .line 4072
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 4073
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v0, :cond_16

    .line 4075
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSavedPriority(I)V

    .line 4076
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v21, v4

    move/from16 v19, v5

    goto/16 :goto_8

    .line 4107
    .end local v19    # "renderThreadTid":I
    :catch_0
    move-exception v0

    move/from16 v21, v4

    move/from16 v19, v5

    goto/16 :goto_9

    .line 4079
    .restart local v19    # "renderThreadTid":I
    :cond_16
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v21, v4

    .end local v4    # "changes":I
    .local v21, "changes":I
    const/16 v4, -0xa

    :try_start_4
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 4081
    if-eqz v19, :cond_17

    .line 4083
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move/from16 v3, v19

    .end local v19    # "renderThreadTid":I
    .local v3, "renderThreadTid":I
    :try_start_6
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 4087
    :goto_6
    move/from16 v19, v5

    goto/16 :goto_8

    .line 4107
    .end local v3    # "renderThreadTid":I
    :catch_1
    move-exception v0

    move/from16 v19, v5

    goto/16 :goto_9

    .line 4085
    .restart local v3    # "renderThreadTid":I
    :catch_2
    move-exception v0

    goto :goto_6

    .end local v3    # "renderThreadTid":I
    .restart local v19    # "renderThreadTid":I
    :catch_3
    move-exception v0

    move/from16 v3, v19

    .end local v19    # "renderThreadTid":I
    .restart local v3    # "renderThreadTid":I
    goto :goto_6

    .line 4081
    .end local v3    # "renderThreadTid":I
    .restart local v19    # "renderThreadTid":I
    :cond_17
    move/from16 v3, v19

    .end local v19    # "renderThreadTid":I
    .restart local v3    # "renderThreadTid":I
    move/from16 v19, v5

    goto :goto_8

    .line 4107
    .end local v3    # "renderThreadTid":I
    .end local v21    # "changes":I
    .restart local v4    # "changes":I
    :catch_4
    move-exception v0

    move/from16 v21, v4

    move/from16 v19, v5

    .end local v4    # "changes":I
    .restart local v21    # "changes":I
    goto :goto_9

    .line 4071
    .end local v21    # "changes":I
    .restart local v4    # "changes":I
    .restart local v19    # "renderThreadTid":I
    :cond_18
    move/from16 v21, v4

    move/from16 v3, v19

    .end local v4    # "changes":I
    .end local v19    # "renderThreadTid":I
    .restart local v3    # "renderThreadTid":I
    .restart local v21    # "changes":I
    move/from16 v19, v5

    goto :goto_8

    .line 4091
    .end local v3    # "renderThreadTid":I
    .end local v21    # "changes":I
    .restart local v4    # "changes":I
    .restart local v19    # "renderThreadTid":I
    :cond_19
    move/from16 v21, v4

    move/from16 v3, v19

    .end local v4    # "changes":I
    .end local v19    # "renderThreadTid":I
    .restart local v3    # "renderThreadTid":I
    .restart local v21    # "changes":I
    if-ne v5, v0, :cond_1b

    if-eq v14, v0, :cond_1b

    .line 4093
    :try_start_7
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 4094
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4096
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/ProcessRecord;Z)V

    .line 4097
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move/from16 v19, v5

    .end local v5    # "oldSchedGroup":I
    .local v19, "oldSchedGroup":I
    :try_start_8
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSavedPriority()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V

    goto :goto_7

    .line 4107
    .end local v3    # "renderThreadTid":I
    :catch_5
    move-exception v0

    goto :goto_9

    .end local v19    # "oldSchedGroup":I
    .restart local v5    # "oldSchedGroup":I
    :catch_6
    move-exception v0

    move/from16 v19, v5

    .end local v5    # "oldSchedGroup":I
    .restart local v19    # "oldSchedGroup":I
    goto :goto_9

    .line 4100
    .end local v19    # "oldSchedGroup":I
    .restart local v3    # "renderThreadTid":I
    .restart local v5    # "oldSchedGroup":I
    :cond_1a
    move/from16 v19, v5

    .end local v5    # "oldSchedGroup":I
    .restart local v19    # "oldSchedGroup":I
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V

    .line 4103
    :goto_7
    if-eqz v3, :cond_1c

    .line 4104
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    const/4 v4, -0x4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    .line 4091
    .end local v19    # "oldSchedGroup":I
    .restart local v5    # "oldSchedGroup":I
    :cond_1b
    move/from16 v19, v5

    .line 4111
    .end local v3    # "renderThreadTid":I
    .end local v5    # "oldSchedGroup":I
    .restart local v19    # "oldSchedGroup":I
    :cond_1c
    :goto_8
    goto :goto_9

    .line 4107
    .end local v19    # "oldSchedGroup":I
    .end local v21    # "changes":I
    .restart local v4    # "changes":I
    .restart local v5    # "oldSchedGroup":I
    :catch_7
    move-exception v0

    move/from16 v21, v4

    move/from16 v19, v5

    .end local v4    # "changes":I
    .end local v5    # "oldSchedGroup":I
    .restart local v19    # "oldSchedGroup":I
    .restart local v21    # "changes":I
    goto :goto_9

    .line 4028
    .end local v8    # "processGroup":I
    .end local v19    # "oldSchedGroup":I
    .end local v21    # "changes":I
    .restart local v4    # "changes":I
    :cond_1d
    move/from16 v21, v4

    .line 4113
    .end local v4    # "changes":I
    .restart local v21    # "changes":I
    :goto_9
    move/from16 v22, v17

    .end local v17    # "success":Z
    .local v22, "success":Z
    :goto_a
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_1e

    .line 4114
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setRepForegroundActivities(Z)V

    .line 4115
    or-int/lit8 v4, v21, 0x1

    .end local v21    # "changes":I
    .restart local v4    # "changes":I
    goto :goto_b

    .line 4113
    .end local v4    # "changes":I
    .restart local v21    # "changes":I
    :cond_1e
    move/from16 v4, v21

    .line 4118
    .end local v21    # "changes":I
    .restart local v4    # "changes":I
    :goto_b
    move/from16 v3, p7

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v15}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZI)V

    .line 4120
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    if-eq v0, v8, :cond_1f

    .line 4121
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 4122
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4129
    :try_start_9
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v8

    invoke-interface {v0, v8}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    .line 4131
    goto :goto_c

    .line 4130
    :catch_8
    move-exception v0

    .line 4134
    :cond_1f
    :goto_c
    const/4 v0, 0x0

    .line 4135
    .local v0, "forceUpdatePssTime":Z
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v8

    const/16 v5, 0x14

    if-eq v8, v5, :cond_21

    .line 4137
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v8

    .line 4136
    invoke-static {v5, v8}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_d

    :cond_20
    move v8, v0

    move/from16 v19, v4

    goto :goto_f

    .line 4138
    :cond_21
    :goto_d
    invoke-virtual {v11, v6, v7}, Lcom/android/server/am/ProcessStateRecord;->setLastStateTime(J)V

    .line 4139
    const/4 v0, 0x1

    .line 4140
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v5, :cond_22

    .line 4141
    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    .end local v0    # "forceUpdatePssTime":Z
    .local v17, "forceUpdatePssTime":Z
    const-string v0, "Process state change from "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4142
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4143
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " next pss in "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4144
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getNextPssTime()J

    move-result-wide v23

    move/from16 v19, v4

    .end local v4    # "changes":I
    .local v19, "changes":I
    sub-long v3, v23, v6

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4141
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4140
    .end local v17    # "forceUpdatePssTime":Z
    .end local v19    # "changes":I
    .restart local v0    # "forceUpdatePssTime":Z
    .restart local v4    # "changes":I
    :cond_22
    move/from16 v17, v0

    move/from16 v19, v4

    .line 4147
    .end local v0    # "forceUpdatePssTime":Z
    .end local v4    # "changes":I
    .restart local v17    # "forceUpdatePssTime":Z
    .restart local v19    # "changes":I
    :goto_e
    move/from16 v8, v17

    .end local v17    # "forceUpdatePssTime":Z
    .local v8, "forceUpdatePssTime":Z
    :goto_f
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4148
    :try_start_a
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessProfileRecord;->updateProcState(Lcom/android/server/am/ProcessStateRecord;)V

    .line 4149
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 4150
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 4149
    move-object/from16 v17, v3

    move-object/from16 v23, v12

    move/from16 v25, v19

    const/16 v12, 0xa

    move-object v3, v0

    .end local v12    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v19    # "changes":I
    .local v23, "uidRec":Lcom/android/server/am/UidRecord;
    .local v25, "changes":I
    :try_start_b
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 4151
    monitor-exit v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 4152
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    .line 4153
    .local v3, "oldProcState":I
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-eq v0, v4, :cond_2a

    .line 4154
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_23

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v4, :cond_24

    .line 4155
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proc state change of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4156
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4157
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4158
    .local v0, "msg":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 4160
    .end local v0    # "msg":Ljava/lang/String;
    :cond_24
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    if-ge v0, v12, :cond_25

    const/4 v5, 0x1

    goto :goto_10

    :cond_25
    const/4 v5, 0x0

    .line 4161
    .local v5, "setImportant":Z
    :goto_10
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ge v0, v12, :cond_26

    const/4 v0, 0x1

    goto :goto_11

    :cond_26
    const/4 v0, 0x0

    :goto_11
    move v4, v0

    .line 4162
    .local v4, "curImportant":Z
    if-eqz v5, :cond_27

    if-nez v4, :cond_27

    .line 4166
    invoke-virtual {v11, v6, v7}, Lcom/android/server/am/ProcessStateRecord;->setWhenUnimportant(J)V

    .line 4167
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    move/from16 v17, v4

    move v12, v5

    .end local v4    # "curImportant":Z
    .end local v5    # "setImportant":Z
    .local v12, "setImportant":Z
    .local v17, "curImportant":Z
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_12

    .line 4162
    .end local v12    # "setImportant":Z
    .end local v17    # "curImportant":Z
    .restart local v4    # "curImportant":Z
    .restart local v5    # "setImportant":Z
    :cond_27
    move/from16 v17, v4

    move v12, v5

    .line 4171
    .end local v4    # "curImportant":Z
    .end local v5    # "setImportant":Z
    .restart local v12    # "setImportant":Z
    .restart local v17    # "curImportant":Z
    :goto_12
    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 4173
    invoke-direct {v1, v11, v6, v7}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V

    .line 4175
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetProcState(I)V

    .line 4176
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/16 v4, 0xe

    if-lt v0, v4, :cond_28

    .line 4177
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcom/android/server/am/ProcessStateRecord;->setNotCachedSinceIdle(Z)V

    .line 4179
    :cond_28
    if-nez p2, :cond_29

    .line 4180
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4181
    :try_start_c
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 4182
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 4181
    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 4183
    monitor-exit v4

    goto :goto_13

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0

    .line 4185
    :cond_29
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 4187
    .end local v12    # "setImportant":Z
    .end local v17    # "curImportant":Z
    :goto_13
    goto :goto_16

    :cond_2a
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_2d

    .line 4188
    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v0

    .line 4190
    .local v0, "fgsInteractionChangeEnabled":Z
    if-eqz v0, :cond_2b

    .line 4191
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_14

    .line 4192
    :cond_2b
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_14
    nop

    .line 4195
    .local v4, "interactionThreshold":J
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v16

    sub-long v16, v9, v16

    cmp-long v12, v16, v4

    if-lez v12, :cond_2c

    .line 4196
    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 4198
    .end local v0    # "fgsInteractionChangeEnabled":Z
    .end local v4    # "interactionThreshold":J
    :cond_2c
    goto :goto_16

    .line 4199
    :cond_2d
    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v0

    .line 4201
    .restart local v0    # "fgsInteractionChangeEnabled":Z
    if-eqz v0, :cond_2e

    .line 4202
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_15

    .line 4203
    :cond_2e
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_15
    nop

    .line 4205
    .restart local v4    # "interactionThreshold":J
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v16

    sub-long v16, v9, v16

    cmp-long v12, v16, v4

    if-lez v12, :cond_2f

    .line 4206
    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 4210
    .end local v0    # "fgsInteractionChangeEnabled":Z
    .end local v4    # "interactionThreshold":J
    :cond_2f
    :goto_16
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v4

    if-eq v0, v4, :cond_30

    .line 4211
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    .line 4214
    :cond_30
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v0

    .line 4215
    .local v0, "curBoundByNonBgRestrictedApp":Z
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isSetBoundByNonBgRestrictedApp()Z

    move-result v4

    if-eq v0, v4, :cond_31

    .line 4216
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetBoundByNonBgRestrictedApp(Z)V

    .line 4217
    if-nez v0, :cond_31

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 4218
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4227
    :cond_31
    move/from16 v4, v25

    .end local v25    # "changes":I
    .local v4, "changes":I
    if-eqz v4, :cond_33

    .line 4228
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v5, :cond_32

    const-string v5, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v0

    .end local v0    # "curBoundByNonBgRestrictedApp":Z
    .local v24, "curBoundByNonBgRestrictedApp":Z
    const-string v0, "Changes in "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .end local v24    # "curBoundByNonBgRestrictedApp":Z
    .restart local v0    # "curBoundByNonBgRestrictedApp":Z
    :cond_32
    move/from16 v24, v0

    .line 4230
    .end local v0    # "curBoundByNonBgRestrictedApp":Z
    .restart local v24    # "curBoundByNonBgRestrictedApp":Z
    :goto_17
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4231
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v6

    .line 4230
    invoke-virtual {v0, v5, v12, v4, v6}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(IIIZ)V

    .line 4232
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    nop

    if-eqz v0, :cond_34

    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueued process change item for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4234
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": changes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " foreground="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4235
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " source="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4237
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4232
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 4227
    .end local v24    # "curBoundByNonBgRestrictedApp":Z
    .restart local v0    # "curBoundByNonBgRestrictedApp":Z
    :cond_33
    move/from16 v24, v0

    .line 4240
    .end local v0    # "curBoundByNonBgRestrictedApp":Z
    .restart local v24    # "curBoundByNonBgRestrictedApp":Z
    :cond_34
    :goto_18
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4243
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isSetCached()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isSetNoKillOnBgRestrictedAndIdle()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    goto :goto_19

    :cond_36
    move v10, v8

    goto :goto_1c

    .line 4246
    :goto_19
    invoke-virtual {v11, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setLastCanKillOnBgRestrictedAndIdleTime(J)V

    .line 4248
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v5, 0x3a

    nop

    if-nez v0, :cond_38

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 4249
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_1a

    :cond_37
    move v10, v8

    goto :goto_1c

    .line 4250
    :cond_38
    :goto_1a
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v6}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 4251
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 4252
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    iget-object v12, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move v10, v8

    .end local v8    # "forceUpdatePssTime":Z
    .local v10, "forceUpdatePssTime":Z
    iget-wide v8, v12, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 4251
    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/server/am/OomAdjusterDebugLogger;->logScheduleUidIdle2(IIJ)V

    goto :goto_1b

    .line 4250
    .end local v10    # "forceUpdatePssTime":Z
    .restart local v8    # "forceUpdatePssTime":Z
    :cond_39
    move v10, v8

    .line 4255
    .end local v8    # "forceUpdatePssTime":Z
    .restart local v10    # "forceUpdatePssTime":Z
    :goto_1b
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c

    .line 4240
    .end local v10    # "forceUpdatePssTime":Z
    .restart local v8    # "forceUpdatePssTime":Z
    :cond_3a
    move v10, v8

    .line 4260
    .end local v8    # "forceUpdatePssTime":Z
    .restart local v10    # "forceUpdatePssTime":Z
    :goto_1c
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetCached(Z)V

    .line 4261
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetNoKillOnBgRestrictedAndIdle(Z)V

    .line 4262
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    if-ne v3, v0, :cond_3b

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-eq v15, v0, :cond_3c

    :cond_3b
    goto :goto_1d

    :cond_3c
    move/from16 v19, v3

    move/from16 v21, v15

    goto :goto_1e

    :goto_1d
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 4263
    invoke-virtual {v0, v5}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4264
    move/from16 v21, v15

    .end local v15    # "oldOomAdj":I
    .local v21, "oldOomAdj":I
    iget-object v15, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v17

    .line 4265
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v18

    .line 4266
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v20

    .line 4264
    move/from16 v16, v0

    move/from16 v19, v3

    .end local v3    # "oldProcState":I
    .local v19, "oldProcState":I
    invoke-virtual/range {v15 .. v21}, Lcom/android/server/am/OomAdjusterDebugLogger;->logProcStateChanged(IIIIII)V

    goto :goto_1e

    .line 4263
    .end local v19    # "oldProcState":I
    .end local v21    # "oldOomAdj":I
    .restart local v3    # "oldProcState":I
    .restart local v15    # "oldOomAdj":I
    :cond_3d
    move/from16 v19, v3

    move/from16 v21, v15

    .line 4269
    .end local v3    # "oldProcState":I
    .end local v15    # "oldOomAdj":I
    .restart local v19    # "oldProcState":I
    .restart local v21    # "oldOomAdj":I
    :goto_1e
    return v22

    .line 4151
    .end local v4    # "changes":I
    .end local v10    # "forceUpdatePssTime":Z
    .end local v19    # "oldProcState":I
    .end local v21    # "oldOomAdj":I
    .end local v24    # "curBoundByNonBgRestrictedApp":Z
    .restart local v8    # "forceUpdatePssTime":Z
    .restart local v15    # "oldOomAdj":I
    .restart local v25    # "changes":I
    :catchall_1
    move-exception v0

    move v10, v8

    move/from16 v21, v15

    move/from16 v4, v25

    .end local v8    # "forceUpdatePssTime":Z
    .end local v15    # "oldOomAdj":I
    .end local v25    # "changes":I
    .restart local v4    # "changes":I
    .restart local v10    # "forceUpdatePssTime":Z
    .restart local v21    # "oldOomAdj":I
    goto :goto_1f

    .end local v4    # "changes":I
    .end local v10    # "forceUpdatePssTime":Z
    .end local v21    # "oldOomAdj":I
    .end local v23    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v8    # "forceUpdatePssTime":Z
    .local v12, "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v15    # "oldOomAdj":I
    .local v19, "changes":I
    :catchall_2
    move-exception v0

    move-object/from16 v17, v3

    move v10, v8

    move-object/from16 v23, v12

    move/from16 v21, v15

    move/from16 v4, v19

    .end local v8    # "forceUpdatePssTime":Z
    .end local v12    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v15    # "oldOomAdj":I
    .end local v19    # "changes":I
    .restart local v4    # "changes":I
    .restart local v10    # "forceUpdatePssTime":Z
    .restart local v21    # "oldOomAdj":I
    .restart local v23    # "uidRec":Lcom/android/server/am/UidRecord;
    :goto_1f
    :try_start_d
    monitor-exit v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_1f

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .locals 22
    .param p3, "uids"    # Lcom/android/server/am/ActiveUids;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            ")Z"
        }
    .end annotation

    .line 932
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    .local p2, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 933
    .local v2, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 934
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 935
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    .line 936
    move-object/from16 v6, p1

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 937
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 938
    invoke-virtual {v2, v7}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 935
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    .line 941
    .end local v3    # "i":I
    .end local v4    # "size":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 944
    const/4 v3, 0x0

    .line 946
    .local v3, "containsCycle":Z
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .local v4, "pr":Lcom/android/server/am/ProcessRecord;
    :goto_1
    if-eqz v4, :cond_16

    .line 947
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v8

    .line 949
    .local v8, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v8, :cond_1

    .line 950
    invoke-virtual {v8}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v9

    move-object/from16 v10, p3

    invoke-virtual {v10, v9, v8}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    goto :goto_2

    .line 949
    :cond_1
    move-object/from16 v10, p3

    .line 952
    :goto_2
    iget-object v9, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 953
    .local v9, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v11

    sub-int/2addr v11, v5

    .local v11, "i":I
    :goto_3
    const/16 v12, -0x384

    if-ltz v11, :cond_7

    .line 954
    invoke-virtual {v9, v11}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v13

    .line 955
    .local v13, "cr":Lcom/android/server/am/ConnectionRecord;
    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 956
    iget-object v14, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v14, v14, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v14, v14, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_4

    :cond_2
    iget-object v14, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v14, v14, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v14, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 957
    .local v14, "service":Lcom/android/server/am/ProcessRecord;
    :goto_4
    if-eqz v14, :cond_6

    if-eq v14, v4, :cond_6

    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 958
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v15

    nop

    if-lt v15, v12, :cond_3

    iget-object v12, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 959
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v12

    if-gez v12, :cond_3

    .line 960
    goto :goto_5

    .line 962
    :cond_3
    iget-object v12, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v12

    or-int/2addr v3, v12

    .line 963
    iget-object v12, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 964
    goto :goto_5

    .line 966
    :cond_4
    const/16 v12, 0x20

    invoke-virtual {v13, v12}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v12

    nop

    if-eqz v12, :cond_5

    .line 967
    const v12, 0x8000080

    invoke-virtual {v13, v12}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 969
    goto :goto_5

    .line 971
    :cond_5
    invoke-virtual {v2, v14}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 972
    iget-object v12, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12, v5}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 953
    .end local v13    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v14    # "service":Lcom/android/server/am/ProcessRecord;
    :cond_6
    :goto_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_7
    nop

    .line 974
    .end local v11    # "i":I
    iget-object v11, v4, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 975
    .local v11, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v11}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v13

    sub-int/2addr v13, v5

    .local v13, "i":I
    :goto_6
    if-ltz v13, :cond_b

    .line 976
    invoke-virtual {v11, v13}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v14

    .line 977
    .local v14, "cpc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v15, v14, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v15, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 978
    .local v15, "provider":Lcom/android/server/am/ProcessRecord;
    if-eqz v15, :cond_a

    if-eq v15, v4, :cond_a

    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 979
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v7

    nop

    if-lt v7, v12, :cond_8

    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 980
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v7

    if-gez v7, :cond_8

    .line 981
    goto :goto_7

    .line 983
    :cond_8
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v7

    or-int/2addr v3, v7

    .line 984
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 985
    goto :goto_7

    .line 987
    :cond_9
    invoke-virtual {v2, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 988
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 975
    .end local v14    # "cpc":Lcom/android/server/am/ContentProviderConnection;
    .end local v15    # "provider":Lcom/android/server/am/ProcessRecord;
    :cond_a
    :goto_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    :cond_b
    nop

    .line 992
    .end local v13    # "i":I
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 993
    invoke-virtual {v7, v13}, Lcom/android/server/am/ProcessList;->getSdkSandboxProcessesForAppLocked(I)Ljava/util/List;

    move-result-object v7

    .line 994
    .local v7, "sdkSandboxes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_8

    :cond_c
    const/4 v13, 0x0

    .line 995
    .local v13, "numSdkSandboxes":I
    :goto_8
    add-int/lit8 v14, v13, -0x1

    .local v14, "i":I
    :goto_9
    if-ltz v14, :cond_e

    .line 996
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 997
    .local v15, "sdkSandbox":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v12

    or-int/2addr v3, v12

    .line 998
    iget-object v12, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 999
    goto :goto_a

    .line 1001
    :cond_d
    invoke-virtual {v2, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1002
    iget-object v12, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12, v5}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 995
    .end local v15    # "sdkSandbox":Lcom/android/server/am/ProcessRecord;
    :goto_a
    add-int/lit8 v14, v14, -0x1

    const/16 v12, -0x384

    goto :goto_9

    :cond_e
    nop

    .line 1005
    .end local v14    # "i":I
    iget-boolean v12, v4, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v12, :cond_15

    .line 1006
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v12

    sub-int/2addr v12, v5

    .local v12, "is":I
    :goto_b
    if-ltz v12, :cond_14

    .line 1007
    invoke-virtual {v9, v12}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v14

    .line 1008
    .local v14, "s":Lcom/android/server/am/ServiceRecord;
    nop

    .line 1009
    invoke-virtual {v14}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v15

    .line 1010
    .local v15, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v5

    move/from16 v5, v16

    .local v5, "conni":I
    :goto_c
    if-ltz v5, :cond_13

    .line 1011
    invoke-virtual {v15, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/ArrayList;

    .line 1012
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v18, v3

    move/from16 v3, v16

    .local v3, "i":I
    .local v18, "containsCycle":Z
    :goto_d
    if-ltz v3, :cond_12

    .line 1013
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v0

    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v19, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 1014
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v16, v3

    .end local v3    # "i":I
    .local v16, "i":I
    iget-object v3, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    .line 1015
    .local v3, "attributedApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_11

    if-eq v3, v4, :cond_11

    move-object/from16 v20, v0

    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v20, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1016
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    move-object/from16 v21, v4

    const/16 v4, -0x384

    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    .local v21, "pr":Lcom/android/server/am/ProcessRecord;
    nop

    if-lt v0, v4, :cond_f

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1017
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    if-gez v0, :cond_f

    .line 1018
    move/from16 v4, v17

    goto :goto_e

    .line 1020
    :cond_f
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1021
    move/from16 v4, v17

    goto :goto_e

    .line 1023
    :cond_10
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1024
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move/from16 v4, v17

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    goto :goto_e

    .line 1015
    .end local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_11
    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move/from16 v4, v17

    .line 1012
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "attributedApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_e
    add-int/lit8 v3, v16, -0x1

    move/from16 v17, v4

    move-object/from16 v0, v19

    move-object/from16 v4, v21

    .end local v16    # "i":I
    .local v3, "i":I
    goto :goto_d

    .end local v19    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_12
    move-object/from16 v19, v0

    move/from16 v16, v3

    move-object/from16 v21, v4

    move/from16 v4, v17

    .line 1010
    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v3, v18

    move-object/from16 v4, v21

    goto :goto_c

    .end local v18    # "containsCycle":Z
    .end local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    .local v3, "containsCycle":Z
    .restart local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_13
    move/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v4, v17

    .line 1006
    .end local v3    # "containsCycle":Z
    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "conni":I
    .end local v14    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v15    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v18    # "containsCycle":Z
    .restart local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    move v5, v4

    move-object/from16 v4, v21

    goto/16 :goto_b

    .end local v18    # "containsCycle":Z
    .end local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "containsCycle":Z
    .restart local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_14
    move/from16 v18, v3

    move-object/from16 v21, v4

    move v4, v5

    .end local v3    # "containsCycle":Z
    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "containsCycle":Z
    .restart local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    goto :goto_f

    .line 1005
    .end local v12    # "is":I
    .end local v18    # "containsCycle":Z
    .end local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "containsCycle":Z
    .restart local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_15
    move/from16 v18, v3

    move-object/from16 v21, v4

    move v4, v5

    .line 946
    .end local v3    # "containsCycle":Z
    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "sdkSandboxes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v9    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v11    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v13    # "numSdkSandboxes":I
    .restart local v18    # "containsCycle":Z
    .restart local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_f
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move v5, v4

    move/from16 v3, v18

    move-object v4, v0

    move-object/from16 v0, p0

    .end local v21    # "pr":Lcom/android/server/am/ProcessRecord;
    .local v0, "pr":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_1

    .end local v0    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "containsCycle":Z
    .restart local v3    # "containsCycle":Z
    .restart local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_16
    move-object/from16 v10, p3

    move-object/from16 v21, v4

    .line 1031
    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1032
    .local v0, "size":I
    if-lez v0, :cond_17

    .line 1034
    const/4 v4, 0x0

    .local v4, "l":I
    add-int/lit8 v5, v0, -0x1

    .local v5, "r":I
    :goto_10
    if-ge v4, v5, :cond_17

    .line 1035
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1036
    .local v7, "t":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1037
    .local v8, "u":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 1038
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9, v11}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 1039
    invoke-virtual {v1, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1040
    invoke-virtual {v1, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .end local v7    # "t":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "u":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_10

    .line 1044
    .end local v4    # "l":I
    .end local v5    # "r":I
    :cond_17
    return v3
.end method

.method protected computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z
    .locals 44
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"    # I
    .param p3, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"    # Z
    .param p5, "now"    # J
    .param p7, "cycleReEval"    # Z
    .param p8, "computeClients"    # Z
    .param p9, "oomAdjReason"    # I
    .param p10, "couldRecurse"    # Z

    .line 2186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2187
    .local v7, "state":Lcom/android/server/am/ProcessStateRecord;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p10, :cond_1

    .line 2188
    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 2189
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 2191
    return v3

    .line 2195
    :cond_0
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 2196
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2198
    return v3

    .line 2203
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialAdj(Lcom/android/server/am/ProcessRecord;)I

    move-result v8

    .line 2204
    .local v8, "prevAppAdj":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result v9

    .line 2205
    .local v9, "prevProcState":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialCapability(Lcom/android/server/am/ProcessRecord;)I

    move-result v10

    .line 2209
    .local v10, "prevCapability":I
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const-wide v12, 0x7fffffffffffffffL

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ProcessStateRecord;->setFollowupUpdateUptimeMs(J)V

    .line 2211
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    const/16 v12, 0x13

    if-nez v11, :cond_2

    .line 2212
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 2213
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2214
    invoke-virtual {v7, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2215
    invoke-virtual {v7, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2216
    const/16 v2, 0x3e7

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 2217
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2218
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 2219
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2220
    return v3

    .line 2223
    :cond_2
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2224
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2225
    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2226
    const/4 v11, 0x2

    if-eqz p10, :cond_3

    if-nez p7, :cond_5

    .line 2228
    :cond_3
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setNoKillOnBgRestrictedAndIdle(Z)V

    .line 2230
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v13

    .line 2231
    .local v13, "uidRec":Lcom/android/server/am/UidRecord;
    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v15

    if-eqz v15, :cond_4

    move v15, v2

    goto :goto_0

    :cond_4
    move v15, v3

    :goto_0
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v15, v11, v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZII)V

    .line 2235
    .end local v13    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_5
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2236
    .local v14, "appUid":I
    iget-object v12, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v12, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 2238
    .local v15, "logUid":I
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 2240
    .local v12, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v13

    const-string v2, "ActivityManager"

    if-gtz v13, :cond_f

    .line 2243
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v13, :cond_6

    if-ne v15, v14, :cond_7

    .line 2244
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Making fixed: "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    :cond_7
    const-string v2, "fixed"

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2247
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 2248
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2249
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 2250
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2251
    const/16 v2, 0xff

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2252
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2257
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 2258
    if-ne v1, v6, :cond_8

    .line 2259
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 2260
    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2261
    const-string/jumbo v2, "pers-top-activity"

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1

    .line 2262
    :cond_8
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2264
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 2265
    const-string/jumbo v2, "pers-top-ui"

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1

    .line 2266
    :cond_9
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2267
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 2269
    :cond_a
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2270
    invoke-direct {v0, v7}, Lcom/android/server/am/OomAdjuster;->isScreenOnOrAnimatingLocked(Lcom/android/server/am/ProcessStateRecord;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2272
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2273
    const/4 v11, 0x3

    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_2

    .line 2274
    :cond_b
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/WindowProcessController;->isShowingUiWhileDozing()Z

    move-result v11

    if-nez v11, :cond_c

    .line 2276
    const/4 v11, 0x5

    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2277
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2280
    :cond_c
    :goto_2
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2281
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 2282
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 2284
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-lt v2, v8, :cond_d

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-ge v2, v9, :cond_e

    :cond_d
    goto :goto_3

    :cond_e
    move v2, v3

    goto :goto_4

    :goto_3
    const/4 v2, 0x1

    :goto_4
    return v2

    .line 2287
    :cond_f
    const/4 v11, 0x3

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 2289
    iget v13, v0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 2296
    .local v13, "PROCESS_STATE_CUR_TOP":I
    if-eqz p7, :cond_10

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialCapability(Lcom/android/server/am/ProcessRecord;)I

    move-result v19

    goto :goto_5

    :cond_10
    move/from16 v19, v3

    .line 2298
    .local v19, "capability":I
    :goto_5
    const/16 v21, 0x0

    .line 2299
    .local v21, "hasVisibleActivities":Z
    move/from16 v22, v3

    if-ne v1, v6, :cond_1b

    const/4 v11, 0x2

    if-ne v13, v11, :cond_1b

    .line 2301
    const/16 v20, 0x0

    .line 2302
    .local v20, "adj":I
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerInternal;->useTopSchedGroupForTopProcess()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2303
    const/4 v11, 0x3

    .line 2304
    .local v11, "schedGroup":I
    const-string/jumbo v3, "top-activity"

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_6

    .line 2308
    .end local v11    # "schedGroup":I
    :cond_11
    const/4 v11, 0x2

    .line 2309
    .restart local v11    # "schedGroup":I
    const-string/jumbo v3, "intermediate-top-activity"

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2311
    :goto_6
    const/16 v21, 0x1

    .line 2312
    const/4 v3, 0x2

    .line 2315
    .local v3, "procState":I
    sget-boolean v26, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    if-eqz v26, :cond_15

    .line 2317
    move/from16 v26, v3

    .end local v3    # "procState":I
    .local v26, "procState":I
    sget v3, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    move/from16 v27, v8

    .end local v8    # "prevAppAdj":I
    .local v27, "prevAppAdj":I
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v8

    if-eq v3, v8, :cond_14

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v3

    if-lez v3, :cond_14

    .line 2318
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v3

    sput v3, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    .line 2320
    sget-object v3, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v3, :cond_13

    .line 2322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TOP-APP: pid:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", processName: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", renderThreadTid: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2322
    const-string v8, "OomAdjuster"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    sget v3, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    if-ltz v3, :cond_12

    .line 2326
    sget-object v3, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    move/from16 v28, v9

    .end local v9    # "prevProcState":I
    .local v28, "prevProcState":I
    sget v9, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    invoke-virtual {v3, v9}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 2327
    const/4 v3, -0x1

    sput v3, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    goto :goto_7

    .line 2325
    .end local v28    # "prevProcState":I
    .restart local v9    # "prevProcState":I
    :cond_12
    move/from16 v28, v9

    .line 2329
    .end local v9    # "prevProcState":I
    .restart local v28    # "prevProcState":I
    :goto_7
    sget-object v3, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2331
    move/from16 v29, v10

    .end local v10    # "prevCapability":I
    .local v29, "prevCapability":I
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v10

    .line 2329
    move/from16 v30, v11

    .end local v11    # "schedGroup":I
    .local v30, "schedGroup":I
    const/16 v11, 0x1096

    const/4 v4, 0x1

    invoke-virtual {v3, v11, v9, v10, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v3

    sput v3, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    .line 2333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VENDOR_HINT_BOOST_RENDERTHREAD perfHint was called. mPerfHandle: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2320
    .end local v28    # "prevProcState":I
    .end local v29    # "prevCapability":I
    .end local v30    # "schedGroup":I
    .restart local v9    # "prevProcState":I
    .restart local v10    # "prevCapability":I
    .restart local v11    # "schedGroup":I
    :cond_13
    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v4, 0x1

    .end local v9    # "prevProcState":I
    .end local v10    # "prevCapability":I
    .end local v11    # "schedGroup":I
    .restart local v28    # "prevProcState":I
    .restart local v29    # "prevCapability":I
    .restart local v30    # "schedGroup":I
    goto :goto_8

    .line 2317
    .end local v28    # "prevProcState":I
    .end local v29    # "prevCapability":I
    .end local v30    # "schedGroup":I
    .restart local v9    # "prevProcState":I
    .restart local v10    # "prevCapability":I
    .restart local v11    # "schedGroup":I
    :cond_14
    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v4, 0x1

    .end local v9    # "prevProcState":I
    .end local v10    # "prevCapability":I
    .end local v11    # "schedGroup":I
    .restart local v28    # "prevProcState":I
    .restart local v29    # "prevCapability":I
    .restart local v30    # "schedGroup":I
    goto :goto_8

    .line 2315
    .end local v26    # "procState":I
    .end local v27    # "prevAppAdj":I
    .end local v28    # "prevProcState":I
    .end local v29    # "prevCapability":I
    .end local v30    # "schedGroup":I
    .restart local v3    # "procState":I
    .restart local v8    # "prevAppAdj":I
    .restart local v9    # "prevProcState":I
    .restart local v10    # "prevCapability":I
    .restart local v11    # "schedGroup":I
    :cond_15
    move/from16 v26, v3

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v4, 0x1

    .line 2341
    .end local v3    # "procState":I
    .end local v8    # "prevAppAdj":I
    .end local v9    # "prevProcState":I
    .end local v10    # "prevCapability":I
    .end local v11    # "schedGroup":I
    .restart local v26    # "procState":I
    .restart local v27    # "prevAppAdj":I
    .restart local v28    # "prevProcState":I
    .restart local v29    # "prevCapability":I
    .restart local v30    # "schedGroup":I
    :goto_8
    sget v3, Lcom/android/server/am/OomAdjuster;->mCurAppPid:I

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    const/16 v8, 0x109c

    if-eq v3, v5, :cond_16

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-lez v3, :cond_16

    .line 2342
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    sput v3, Lcom/android/server/am/OomAdjuster;->mCurAppPid:I

    .line 2343
    sget-object v3, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v3, :cond_16

    .line 2344
    sget-object v3, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sget v9, Lcom/android/server/am/OomAdjuster;->mCurAppPid:I

    const/4 v10, 0x4

    invoke-virtual {v3, v8, v5, v9, v10}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2348
    :cond_16
    sget v3, Lcom/android/server/am/OomAdjuster;->mCurRenderTid:I

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v5

    if-eq v3, v5, :cond_18

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v3

    if-lez v3, :cond_18

    .line 2349
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v3

    sput v3, Lcom/android/server/am/OomAdjuster;->mCurRenderTid:I

    .line 2350
    sget-object v3, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v3, :cond_17

    .line 2351
    sget-object v3, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sget v9, Lcom/android/server/am/OomAdjuster;->mCurRenderTid:I

    const/4 v10, 0x5

    invoke-virtual {v3, v8, v5, v9, v10}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    goto :goto_9

    .line 2350
    :cond_17
    const/4 v10, 0x5

    goto :goto_9

    .line 2348
    :cond_18
    const/4 v10, 0x5

    .line 2357
    :goto_9
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_19

    if-ne v15, v14, :cond_1a

    .line 2358
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making top: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    :cond_1a
    move/from16 v9, v20

    move/from16 v3, v26

    move/from16 v11, v30

    goto/16 :goto_c

    .line 2299
    .end local v20    # "adj":I
    .end local v26    # "procState":I
    .end local v27    # "prevAppAdj":I
    .end local v28    # "prevProcState":I
    .end local v29    # "prevCapability":I
    .end local v30    # "schedGroup":I
    .restart local v8    # "prevAppAdj":I
    .restart local v9    # "prevProcState":I
    .restart local v10    # "prevCapability":I
    :cond_1b
    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    const/4 v4, 0x1

    const/4 v10, 0x5

    .line 2360
    .end local v8    # "prevAppAdj":I
    .end local v9    # "prevProcState":I
    .end local v10    # "prevCapability":I
    .restart local v27    # "prevAppAdj":I
    .restart local v28    # "prevProcState":I
    .restart local v29    # "prevCapability":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2361
    const/16 v20, 0x64

    .line 2362
    .restart local v20    # "adj":I
    const/4 v11, 0x3

    .line 2363
    .restart local v11    # "schedGroup":I
    const-string/jumbo v3, "running-remote-anim"

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2364
    move v3, v13

    .line 2365
    .restart local v3    # "procState":I
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_1c

    if-ne v15, v14, :cond_1d

    .line 2366
    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making running remote anim: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    :cond_1d
    :goto_a
    move/from16 v9, v20

    goto/16 :goto_c

    .line 2368
    .end local v3    # "procState":I
    .end local v11    # "schedGroup":I
    .end local v20    # "adj":I
    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 2370
    const/16 v20, 0x0

    .line 2371
    .restart local v20    # "adj":I
    const/4 v11, 0x2

    .line 2372
    .restart local v11    # "schedGroup":I
    const-string/jumbo v3, "instrumentation"

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2373
    const/4 v3, 0x4

    .line 2374
    .restart local v3    # "procState":I
    or-int/lit8 v19, v19, 0x10

    .line 2375
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_1f

    if-ne v15, v14, :cond_1d

    .line 2376
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making instrumentation: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 2378
    .end local v3    # "procState":I
    .end local v11    # "schedGroup":I
    .end local v20    # "adj":I
    :cond_20
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsReceivingBroadcast([I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2383
    const/16 v20, 0x0

    .line 2384
    .restart local v20    # "adj":I
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    aget v11, v3, v22

    .line 2385
    .restart local v11    # "schedGroup":I
    const-string v3, "broadcast"

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2386
    const/16 v3, 0xb

    .line 2387
    .restart local v3    # "procState":I
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_21

    if-ne v15, v14, :cond_1d

    .line 2388
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making broadcast: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 2390
    .end local v3    # "procState":I
    .end local v11    # "schedGroup":I
    .end local v20    # "adj":I
    :cond_22
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v3

    if-lez v3, :cond_25

    .line 2393
    const/16 v20, 0x0

    .line 2394
    .restart local v20    # "adj":I
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2395
    const/4 v3, 0x2

    goto :goto_b

    :cond_23
    move/from16 v3, v22

    :goto_b
    move v11, v3

    .line 2396
    .restart local v11    # "schedGroup":I
    const-string v3, "exec-service"

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2397
    const/16 v3, 0xa

    .line 2398
    .restart local v3    # "procState":I
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_24

    if-ne v15, v14, :cond_1d

    .line 2399
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making exec-service: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2401
    .end local v3    # "procState":I
    .end local v11    # "schedGroup":I
    .end local v20    # "adj":I
    :cond_25
    if-ne v1, v6, :cond_27

    .line 2402
    const/16 v20, 0x0

    .line 2403
    .restart local v20    # "adj":I
    const/4 v11, 0x0

    .line 2404
    .restart local v11    # "schedGroup":I
    const-string/jumbo v3, "top-sleeping"

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2405
    move v3, v13

    .line 2406
    .restart local v3    # "procState":I
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_26

    if-ne v15, v14, :cond_1d

    .line 2407
    :cond_26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making top (sleeping): "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2411
    .end local v3    # "procState":I
    .end local v11    # "schedGroup":I
    .end local v20    # "adj":I
    :cond_27
    const/4 v11, 0x0

    .line 2414
    .restart local v11    # "schedGroup":I
    move/from16 v20, p2

    .line 2415
    .restart local v20    # "adj":I
    const/16 v3, 0x13

    .line 2416
    .restart local v3    # "procState":I
    if-eqz p10, :cond_28

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v5

    if-nez v5, :cond_29

    .line 2417
    :cond_28
    const-string v5, "cch-empty"

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2419
    :cond_29
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_2a

    if-ne v15, v14, :cond_1d

    .line 2420
    :cond_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making empty: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2425
    .end local v20    # "adj":I
    .local v9, "adj":I
    :goto_c
    if-ne v1, v6, :cond_2b

    move v5, v4

    goto :goto_d

    :cond_2b
    move/from16 v5, v22

    .line 2426
    .local v5, "foregroundActivities":Z
    :goto_d
    if-nez v5, :cond_2c

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 2427
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move/from16 v18, v10

    move-object/from16 v17, v12

    move/from16 v16, v13

    const/16 v23, 0x3

    move v12, v3

    move v10, v5

    move v13, v11

    move/from16 v11, v21

    const/16 v3, 0x13

    const/4 v5, 0x2

    .end local v3    # "procState":I
    .end local v5    # "foregroundActivities":Z
    .end local v21    # "hasVisibleActivities":Z
    .local v10, "foregroundActivities":Z
    .local v11, "hasVisibleActivities":Z
    .local v12, "procState":I
    .local v13, "schedGroup":I
    .local v16, "PROCESS_STATE_CUR_TOP":I
    .local v17, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ProcessStateRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V

    .line 2431
    move/from16 v43, v14

    move-object v14, v7

    move v7, v15

    move/from16 v15, v43

    .local v7, "logUid":I
    .local v14, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v15, "appUid":I
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdj()I

    move-result v9

    .line 2432
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedForegroundActivities()Z

    move-result v8

    .line 2433
    .end local v10    # "foregroundActivities":Z
    .local v8, "foregroundActivities":Z
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v21

    .line 2434
    .end local v11    # "hasVisibleActivities":Z
    .restart local v21    # "hasVisibleActivities":Z
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedProcState()I

    move-result v10

    .line 2435
    .end local v12    # "procState":I
    .local v10, "procState":I
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedSchedGroup()I

    move-result v11

    .line 2436
    .end local v13    # "schedGroup":I
    .local v11, "schedGroup":I
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdjType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_e

    .line 2426
    .end local v8    # "foregroundActivities":Z
    .end local v10    # "procState":I
    .end local v16    # "PROCESS_STATE_CUR_TOP":I
    .end local v17    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3    # "procState":I
    .restart local v5    # "foregroundActivities":Z
    .local v7, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v12, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v13, "PROCESS_STATE_CUR_TOP":I
    .local v14, "appUid":I
    .local v15, "logUid":I
    :cond_2c
    move/from16 v16, v14

    move-object v14, v7

    move v7, v15

    move/from16 v15, v16

    move/from16 v18, v10

    move-object/from16 v17, v12

    move/from16 v16, v13

    const/16 v23, 0x3

    move v12, v3

    move v10, v5

    move v13, v11

    move/from16 v11, v21

    const/16 v3, 0x13

    const/4 v5, 0x2

    .line 2439
    .end local v3    # "procState":I
    .end local v5    # "foregroundActivities":Z
    .end local v21    # "hasVisibleActivities":Z
    .local v7, "logUid":I
    .local v10, "foregroundActivities":Z
    .local v11, "hasVisibleActivities":Z
    .local v12, "procState":I
    .local v13, "schedGroup":I
    .local v14, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v15, "appUid":I
    .restart local v16    # "PROCESS_STATE_CUR_TOP":I
    .restart local v17    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    move v8, v10

    move/from16 v21, v11

    move v10, v12

    move v11, v13

    .end local v12    # "procState":I
    .end local v13    # "schedGroup":I
    .restart local v8    # "foregroundActivities":Z
    .local v10, "procState":I
    .local v11, "schedGroup":I
    .restart local v21    # "hasVisibleActivities":Z
    :goto_e
    const/16 v12, 0x12

    if-le v10, v12, :cond_2e

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasRecentTasks()Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 2440
    const/16 v10, 0x12

    .line 2441
    const-string v12, "cch-rec"

    invoke-virtual {v14, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2442
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v12, :cond_2d

    if-ne v7, v15, :cond_2e

    .line 2443
    :cond_2d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raise procstate to cached recent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    :cond_2e
    const/4 v12, 0x0

    .line 2449
    .local v12, "capabilityFromFGS":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v20

    .line 2450
    .local v20, "hasForegroundServices":Z
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v24

    .line 2451
    .local v24, "hasNonShortForegroundServices":Z
    if-eqz v20, :cond_2f

    .line 2452
    move-object/from16 v3, v17

    move/from16 v17, v12

    move-object v12, v3

    move-wide/from16 v3, p5

    .local v12, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v17, "capabilityFromFGS":I
    invoke-virtual {v12, v3, v4}, Lcom/android/server/am/ProcessServiceRecord;->areAllShortForegroundServicesProcstateTimedOut(J)Z

    move-result v30

    if-nez v30, :cond_30

    const/16 v30, 0x1

    goto :goto_f

    .line 2451
    .local v12, "capabilityFromFGS":I
    .local v17, "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_2f
    move-object/from16 v3, v17

    move/from16 v17, v12

    move-object v12, v3

    move-wide/from16 v3, p5

    .line 2452
    .local v12, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v17, "capabilityFromFGS":I
    :cond_30
    move/from16 v30, v22

    :goto_f
    nop

    .line 2455
    .local v30, "hasShortForegroundServices":Z
    const/16 v13, 0xc8

    if-gt v9, v13, :cond_31

    const/4 v13, 0x4

    if-le v10, v13, :cond_36

    goto :goto_10

    :cond_31
    const/4 v13, 0x4

    .line 2457
    :goto_10
    const/16 v25, 0x0

    .line 2458
    .local v25, "adjType":Ljava/lang/String;
    const/16 v33, 0x0

    .line 2459
    .local v33, "newAdj":I
    const/16 v34, 0x0

    .line 2461
    .local v34, "newProcState":I
    if-eqz v20, :cond_32

    if-eqz v24, :cond_32

    .line 2463
    const-string v25, "fg-service"

    .line 2464
    const/16 v33, 0xc8

    .line 2465
    const/16 v34, 0x4

    .line 2466
    or-int/lit8 v17, v17, 0x10

    move-object/from16 v13, v25

    goto :goto_11

    .line 2468
    :cond_32
    if-eqz v30, :cond_33

    .line 2471
    const-string v25, "fg-service-short"

    .line 2478
    const/16 v33, 0xe2

    .line 2482
    const/16 v34, 0x4

    move-object/from16 v13, v25

    goto :goto_11

    .line 2484
    :cond_33
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v35

    if-eqz v35, :cond_34

    .line 2485
    const-string/jumbo v25, "has-overlay-ui"

    .line 2486
    const/16 v33, 0xc8

    .line 2487
    const/16 v34, 0x6

    move-object/from16 v13, v25

    goto :goto_11

    .line 2484
    :cond_34
    move-object/from16 v13, v25

    .line 2490
    .end local v25    # "adjType":Ljava/lang/String;
    .local v13, "adjType":Ljava/lang/String;
    :goto_11
    if-eqz v13, :cond_36

    .line 2491
    move/from16 v9, v33

    .line 2492
    move/from16 v10, v34

    .line 2493
    invoke-virtual {v14, v13}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2494
    const/4 v11, 0x2

    .line 2496
    sget-boolean v35, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v35, :cond_35

    if-ne v7, v15, :cond_36

    .line 2497
    :cond_35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    .end local v13    # "adjType":Ljava/lang/String;
    .end local v33    # "newAdj":I
    .end local v34    # "newProcState":I
    :cond_36
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v3

    if-eqz v3, :cond_3c

    const/16 v3, 0x32

    if-le v9, v3, :cond_3c

    .line 2507
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-wide/from16 v33, v3

    iget-wide v3, v5, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long v3, v33, v3

    cmp-long v3, v3, p5

    if-gtz v3, :cond_38

    .line 2508
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/4 v5, 0x2

    if-gt v3, v5, :cond_37

    goto :goto_12

    :cond_37
    move-object v13, v2

    move v6, v5

    move/from16 v36, v27

    move/from16 v37, v28

    move/from16 v38, v29

    const/16 v25, 0x4

    const/16 v31, 0x1

    goto :goto_14

    .line 2507
    :cond_38
    const/4 v5, 0x2

    .line 2509
    :goto_12
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2510
    const/16 v3, 0x32

    .line 2511
    .end local v9    # "adj":I
    .local v3, "adj":I
    const-string v4, "fg-service-act"

    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move v9, v3

    goto :goto_13

    .line 2515
    .end local v3    # "adj":I
    .restart local v9    # "adj":I
    :cond_39
    const/16 v3, 0x33

    .line 2516
    .end local v9    # "adj":I
    .restart local v3    # "adj":I
    const-string v4, "fg-service-short-act"

    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move v9, v3

    .line 2518
    .end local v3    # "adj":I
    .restart local v9    # "adj":I
    :goto_13
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_3a

    if-ne v7, v15, :cond_3b

    .line 2519
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to recent fg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    :cond_3b
    nop

    .line 2522
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v3

    iget-object v13, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v13, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v3, v5

    .line 2521
    move-object v13, v2

    move-wide v2, v3

    move/from16 v36, v27

    move/from16 v37, v28

    move/from16 v38, v29

    const/4 v6, 0x2

    const/16 v25, 0x4

    const/16 v31, 0x1

    move-wide/from16 v4, p5

    .end local v27    # "prevAppAdj":I
    .end local v28    # "prevProcState":I
    .end local v29    # "prevCapability":I
    .local v36, "prevAppAdj":I
    .local v37, "prevProcState":I
    .local v38, "prevCapability":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    goto :goto_14

    .line 2506
    .end local v36    # "prevAppAdj":I
    .end local v37    # "prevProcState":I
    .end local v38    # "prevCapability":I
    .restart local v27    # "prevAppAdj":I
    .restart local v28    # "prevProcState":I
    .restart local v29    # "prevCapability":I
    :cond_3c
    move-object v13, v2

    move/from16 v36, v27

    move/from16 v37, v28

    move/from16 v38, v29

    const/4 v6, 0x2

    const/16 v25, 0x4

    const/16 v31, 0x1

    .line 2529
    .end local v27    # "prevAppAdj":I
    .end local v28    # "prevProcState":I
    .end local v29    # "prevCapability":I
    .restart local v36    # "prevAppAdj":I
    .restart local v37    # "prevProcState":I
    .restart local v38    # "prevCapability":I
    :goto_14
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->hasTopStartedAlmostPerceptibleServices()Z

    move-result v2

    if-eqz v2, :cond_40

    const/16 v2, 0x34

    if-le v9, v2, :cond_40

    .line 2531
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p5

    if-gtz v2, :cond_3d

    .line 2533
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    if-gt v2, v6, :cond_40

    .line 2536
    :cond_3d
    const/16 v9, 0x34

    .line 2539
    const-string/jumbo v2, "top-ej-act"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2540
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_3e

    if-ne v7, v15, :cond_3f

    .line 2541
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to recent fg for EJ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    :cond_3f
    nop

    .line 2544
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long/2addr v2, v4

    .line 2543
    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    .line 2548
    :cond_40
    const/16 v2, 0x8

    const/16 v3, 0xc8

    if-gt v9, v3, :cond_41

    if-le v10, v2, :cond_43

    .line 2550
    :cond_41
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 2554
    const/16 v9, 0xc8

    .line 2555
    const/16 v10, 0x8

    .line 2556
    const-string v3, "force-imp"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2557
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2558
    const/4 v11, 0x2

    .line 2559
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_42

    if-ne v7, v15, :cond_43

    .line 2560
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to force imp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    :cond_43
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHeavyWeight()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 2566
    const/16 v3, 0x190

    const-string/jumbo v4, "heavy"

    if-le v9, v3, :cond_45

    .line 2568
    const/16 v9, 0x190

    .line 2569
    const/4 v11, 0x0

    .line 2570
    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2571
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_44

    if-ne v7, v15, :cond_45

    .line 2572
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise adj to heavy: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    :cond_45
    const/16 v3, 0xd

    if-le v10, v3, :cond_47

    .line 2576
    const/16 v10, 0xd

    .line 2577
    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2578
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_46

    if-ne v7, v15, :cond_47

    .line 2579
    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to heavy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    :cond_47
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2585
    const/16 v3, 0x258

    const-string/jumbo v4, "home"

    if-le v9, v3, :cond_49

    .line 2588
    const/16 v9, 0x258

    .line 2589
    const/4 v11, 0x0

    .line 2590
    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2591
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_48

    if-ne v7, v15, :cond_49

    .line 2592
    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise adj to home: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    :cond_49
    const/16 v3, 0xe

    if-le v10, v3, :cond_4b

    .line 2596
    const/16 v10, 0xe

    .line 2597
    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2598
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_4a

    if-ne v7, v15, :cond_4b

    .line 2599
    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to home: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    :cond_4b
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsPreviousProcess()Z

    move-result v3

    const/16 v4, 0x2bc

    const/16 v5, 0xf

    if-eqz v3, :cond_54

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2609
    if-lt v10, v5, :cond_4e

    .line 2610
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    if-ne v3, v5, :cond_4e

    .line 2611
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v26

    sget-wide v28, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v26, v26, v28

    cmp-long v3, v26, p5

    if-gtz v3, :cond_4e

    .line 2612
    const/16 v10, 0xf

    .line 2613
    const/4 v11, 0x0

    .line 2614
    const-string/jumbo v3, "previous-expired"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2615
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_4c

    if-ne v7, v15, :cond_4d

    .line 2616
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expire prev adj: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    :cond_4d
    const/16 v6, 0x8

    goto :goto_16

    .line 2619
    :cond_4e
    const-string/jumbo v2, "previous"

    if-le v9, v4, :cond_50

    .line 2620
    const/16 v9, 0x2bc

    .line 2621
    const/4 v11, 0x0

    .line 2622
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2623
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_4f

    if-ne v7, v15, :cond_50

    .line 2624
    :cond_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to prev: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    :cond_50
    if-le v10, v5, :cond_52

    .line 2628
    const/16 v10, 0xf

    .line 2629
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2630
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_51

    if-ne v7, v15, :cond_52

    .line 2631
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to prev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    :cond_52
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    if-ne v2, v5, :cond_53

    .line 2636
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v2

    move-wide/from16 v27, v2

    .local v2, "lastStateTime":J
    goto :goto_15

    .line 2638
    .end local v2    # "lastStateTime":J
    :cond_53
    move-wide/from16 v2, p5

    move-wide/from16 v27, v2

    .line 2640
    .local v27, "lastStateTime":J
    :goto_15
    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v2, v27, v2

    move-wide/from16 v4, p5

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    goto :goto_16

    .line 2603
    .end local v27    # "lastStateTime":J
    :cond_54
    move v6, v2

    .line 2653
    :goto_16
    if-eqz p7, :cond_55

    .line 2654
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2655
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2656
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2658
    :cond_55
    invoke-virtual {v14, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2659
    invoke-virtual {v14, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2661
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    .line 2662
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 2664
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isBackupProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2666
    const/16 v2, 0x12c

    if-le v9, v2, :cond_59

    .line 2667
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    if-eqz v2, :cond_56

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oom BACKUP_APP_ADJ for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    :cond_56
    const/16 v9, 0x12c

    .line 2669
    if-le v10, v6, :cond_57

    .line 2670
    const/16 v10, 0x8

    .line 2672
    :cond_57
    const-string v2, "backup"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2673
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_58

    if-ne v7, v15, :cond_59

    .line 2674
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    :cond_59
    const/16 v2, 0x9

    if-le v10, v2, :cond_5b

    .line 2678
    const/16 v10, 0x9

    .line 2679
    const-string v2, "backup"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2680
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_5a

    if-ne v7, v15, :cond_5b

    .line 2681
    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    :cond_5b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 2688
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Lcom/android/server/am/ProcessStateRecord;->setScheduleLikeTopApp(Z)V

    .line 2690
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v43, v9

    move v9, v2

    move/from16 v2, v43

    .line 2691
    .local v2, "adj":I
    .local v9, "is":I
    :goto_17
    const/16 v3, 0x1f4

    if-ltz v9, :cond_78

    if-gtz v2, :cond_5c

    if-eqz v11, :cond_5c

    const/4 v5, 0x2

    if-le v10, v5, :cond_5d

    :cond_5c
    goto :goto_18

    :cond_5d
    move/from16 v39, v7

    move/from16 v41, v8

    move-object/from16 v18, v12

    move-object/from16 v40, v13

    move/from16 v32, v15

    move/from16 v6, v19

    move/from16 v42, v21

    const/4 v15, 0x2

    move v12, v3

    goto/16 :goto_28

    .line 2695
    :goto_18
    invoke-virtual {v12, v9}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 2698
    .local v4, "s":Lcom/android/server/am/ServiceRecord;
    if-nez v4, :cond_5e

    move/from16 v39, v7

    move/from16 v41, v8

    move-object/from16 v18, v12

    move-object/from16 v40, v13

    move/from16 v32, v15

    move/from16 v6, v19

    move/from16 v42, v21

    const/4 v15, 0x2

    move/from16 v19, v9

    goto/16 :goto_27

    .line 2700
    :cond_5e
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_69

    .line 2701
    move/from16 v5, v31

    invoke-virtual {v14, v5}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    .line 2702
    const/16 v5, 0xa

    if-le v10, v5, :cond_60

    .line 2703
    const/16 v10, 0xa

    .line 2704
    const-string/jumbo v5, "started-services"

    invoke-virtual {v14, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2705
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_5f

    if-ne v7, v15, :cond_60

    .line 2706
    :cond_5f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise procstate to started service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v13, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    :cond_60
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v5, :cond_62

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v5

    if-nez v5, :cond_62

    .line 2715
    if-le v2, v3, :cond_61

    .line 2716
    const-string v3, "cch-started-ui-services"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2746
    :cond_61
    move-object/from16 v18, v12

    move/from16 v6, v19

    move-object/from16 v19, v13

    move-object v13, v4

    goto/16 :goto_1c

    .line 2719
    :cond_62
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v5, :cond_63

    iget-wide v5, v4, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-wide/from16 v26, v5

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long v5, v26, v5

    cmp-long v3, p5, v5

    if-gez v3, :cond_64

    :cond_63
    goto :goto_19

    :cond_64
    move-object/from16 v18, v12

    move/from16 v6, v19

    const/16 v12, 0x1f4

    move-object/from16 v19, v13

    move-object v13, v4

    goto :goto_1b

    .line 2726
    :goto_19
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez v3, :cond_68

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_67

    .line 2727
    const/16 v6, 0x1f4

    .line 2728
    .end local v2    # "adj":I
    .local v6, "adj":I
    const-string/jumbo v2, "started-services"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2729
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_65

    if-ne v7, v15, :cond_66

    .line 2730
    :cond_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise adj to started service: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    :cond_66
    iget-wide v1, v4, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v18, v4

    .end local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .local v18, "s":Lcom/android/server/am/ServiceRecord;
    iget-wide v3, v5, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long v2, v1, v3

    move-object/from16 v1, p1

    move-wide/from16 v4, p5

    move/from16 v27, v6

    move/from16 v6, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v12

    const/16 v12, 0x1f4

    .end local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v19    # "capability":I
    .local v6, "capability":I
    .local v13, "s":Lcom/android/server/am/ServiceRecord;
    .local v18, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v27, "adj":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    move/from16 v2, v27

    goto :goto_1b

    .line 2726
    .end local v6    # "capability":I
    .end local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v18    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v27    # "adj":I
    .restart local v2    # "adj":I
    .restart local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v19    # "capability":I
    :cond_67
    move-object/from16 v18, v12

    move/from16 v6, v19

    move v12, v3

    :goto_1a
    move-object/from16 v19, v13

    move-object v13, v4

    .end local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v19    # "capability":I
    .restart local v6    # "capability":I
    .restart local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v18    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    goto :goto_1b

    .end local v6    # "capability":I
    .end local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v18    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v19    # "capability":I
    :cond_68
    move-object/from16 v18, v12

    move/from16 v6, v19

    const/16 v12, 0x1f4

    goto :goto_1a

    .line 2740
    .end local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v19    # "capability":I
    .restart local v6    # "capability":I
    .restart local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v18    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_1b
    if-le v2, v12, :cond_6a

    .line 2741
    const-string v0, "cch-started-services"

    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1c

    .line 2700
    .end local v6    # "capability":I
    .end local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v18    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v19    # "capability":I
    :cond_69
    move-object/from16 v18, v12

    move/from16 v6, v19

    move-object/from16 v19, v13

    move-object v13, v4

    .line 2746
    .end local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v19    # "capability":I
    .restart local v6    # "capability":I
    .restart local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v18    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_6a
    :goto_1c
    iget-boolean v0, v13, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_6f

    .line 2747
    iget v0, v13, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 2748
    .local v0, "fgsType":I
    invoke-virtual {v13}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 2749
    nop

    .line 2751
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_6b

    const/4 v3, 0x1

    goto :goto_1d

    :cond_6b
    const/4 v3, 0x0

    :goto_1d
    or-int v3, v17, v3

    .line 2753
    .end local v17    # "capabilityFromFGS":I
    .local v3, "capabilityFromFGS":I
    nop

    .line 2756
    or-int/lit8 v3, v3, 0x40

    .line 2759
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v4

    .line 2761
    .local v4, "enabled":Z
    if-eqz v4, :cond_6e

    .line 2762
    nop

    .line 2764
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_6c

    const/4 v5, 0x2

    goto :goto_1e

    :cond_6c
    const/4 v5, 0x0

    :goto_1e
    or-int/2addr v3, v5

    .line 2765
    nop

    .line 2767
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_6d

    move/from16 v5, v25

    goto :goto_1f

    :cond_6d
    const/4 v5, 0x0

    :goto_1f
    or-int v17, v3, v5

    .end local v3    # "capabilityFromFGS":I
    .restart local v17    # "capabilityFromFGS":I
    goto :goto_20

    .line 2769
    .end local v17    # "capabilityFromFGS":I
    .restart local v3    # "capabilityFromFGS":I
    :cond_6e
    or-int/lit8 v17, v3, 0x6

    .line 2775
    .end local v0    # "fgsType":I
    .end local v3    # "capabilityFromFGS":I
    .end local v4    # "enabled":Z
    .restart local v17    # "capabilityFromFGS":I
    :cond_6f
    :goto_20
    if-nez p10, :cond_70

    .line 2778
    move/from16 v39, v7

    move/from16 v41, v8

    move/from16 v32, v15

    move-object/from16 v40, v19

    move/from16 v42, v21

    const/4 v15, 0x2

    const/16 v31, 0x1

    move/from16 v19, v9

    goto/16 :goto_27

    .line 2782
    :cond_70
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2783
    invoke-virtual {v14, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2784
    invoke-virtual {v14, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2785
    invoke-virtual {v14, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2787
    invoke-virtual {v13}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2788
    .local v0, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v31, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 2789
    .local v3, "conni":I
    :goto_21
    if-ltz v3, :cond_77

    if-gtz v2, :cond_71

    if-eqz v11, :cond_71

    const/4 v5, 0x2

    if-le v10, v5, :cond_72

    :cond_71
    goto :goto_22

    :cond_72
    move/from16 v39, v7

    move/from16 v41, v8

    move/from16 v32, v15

    move-object/from16 v40, v19

    move/from16 v42, v21

    const/4 v15, 0x2

    move/from16 v19, v9

    goto/16 :goto_27

    .line 2793
    :goto_22
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2794
    .local v4, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    move/from16 v26, v2

    move v2, v5

    move/from16 v27, v6

    move v5, v10

    move/from16 v28, v11

    .line 2795
    .end local v6    # "capability":I
    .end local v10    # "procState":I
    .end local v11    # "schedGroup":I
    .local v2, "i":I
    .local v5, "procState":I
    .local v26, "adj":I
    .local v27, "capability":I
    .local v28, "schedGroup":I
    :goto_23
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_76

    if-gtz v26, :cond_74

    if-eqz v28, :cond_74

    const/4 v6, 0x2

    if-le v5, v6, :cond_73

    goto :goto_24

    :cond_73
    move/from16 v22, v3

    move/from16 v35, v5

    move/from16 v39, v7

    move/from16 v41, v8

    move-object/from16 v29, v13

    move/from16 v32, v15

    move-object/from16 v40, v19

    move/from16 v42, v21

    move-object/from16 v21, v0

    move v15, v6

    move/from16 v19, v9

    goto/16 :goto_26

    :cond_74
    const/4 v6, 0x2

    .line 2801
    :goto_24
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    .line 2802
    .local v10, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v11, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v11, v1, :cond_75

    .line 2804
    move/from16 v34, v2

    move/from16 v22, v3

    move-object/from16 v33, v4

    move/from16 v39, v7

    move/from16 v41, v8

    move-object/from16 v29, v13

    move/from16 v32, v15

    move-object/from16 v40, v19

    move/from16 v42, v21

    move-object/from16 v21, v0

    move v15, v6

    move/from16 v19, v9

    goto :goto_25

    .line 2807
    :cond_75
    iget-object v11, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x1

    move-object/from16 v29, v13

    .end local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .local v29, "s":Lcom/android/server/am/ServiceRecord;
    const/4 v13, 0x0

    move/from16 v34, v2

    move/from16 v22, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move/from16 v39, v7

    move/from16 v41, v8

    move-object v3, v11

    move/from16 v32, v15

    move-object/from16 v40, v19

    move/from16 v42, v21

    move/from16 v11, p2

    move/from16 v7, p4

    move-wide/from16 v4, p5

    move/from16 v8, p7

    move-object/from16 v21, v0

    move-object v2, v1

    move v15, v6

    move/from16 v19, v9

    move-object v1, v10

    move-object/from16 v0, p0

    move-object/from16 v6, p3

    move/from16 v9, p8

    move/from16 v10, p9

    .end local v0    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v2    # "i":I
    .end local v3    # "conni":I
    .end local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "procState":I
    .end local v7    # "logUid":I
    .end local v8    # "foregroundActivities":Z
    .end local v9    # "is":I
    .end local v10    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v15    # "appUid":I
    .local v1, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v19, "is":I
    .local v21, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v22, "conni":I
    .local v32, "appUid":I
    .local v33, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v34, "i":I
    .local v35, "procState":I
    .local v39, "logUid":I
    .local v41, "foregroundActivities":Z
    .local v42, "hasVisibleActivities":Z
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    .line 2810
    move-object v0, v1

    move-object v1, v2

    .end local v1    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v26

    .line 2811
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v5

    .line 2812
    .end local v35    # "procState":I
    .restart local v5    # "procState":I
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v28

    .line 2813
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v27

    .line 2798
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :goto_25
    add-int/lit8 v2, v34, 0x1

    move/from16 v9, v19

    move-object/from16 v0, v21

    move/from16 v3, v22

    move-object/from16 v13, v29

    move/from16 v15, v32

    move-object/from16 v4, v33

    move/from16 v7, v39

    move-object/from16 v19, v40

    move/from16 v8, v41

    move/from16 v21, v42

    .end local v34    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_23

    .line 2795
    .end local v19    # "is":I
    .end local v22    # "conni":I
    .end local v29    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v32    # "appUid":I
    .end local v33    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v39    # "logUid":I
    .end local v41    # "foregroundActivities":Z
    .end local v42    # "hasVisibleActivities":Z
    .local v0, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v3    # "conni":I
    .restart local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v7    # "logUid":I
    .restart local v8    # "foregroundActivities":Z
    .restart local v9    # "is":I
    .restart local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v15    # "appUid":I
    .local v21, "hasVisibleActivities":Z
    :cond_76
    move/from16 v34, v2

    move/from16 v22, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move/from16 v39, v7

    move/from16 v41, v8

    move-object/from16 v29, v13

    move/from16 v32, v15

    move-object/from16 v40, v19

    move/from16 v42, v21

    const/4 v15, 0x2

    move-object/from16 v21, v0

    move/from16 v19, v9

    .line 2792
    .end local v0    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v2    # "i":I
    .end local v3    # "conni":I
    .end local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "procState":I
    .end local v7    # "logUid":I
    .end local v8    # "foregroundActivities":Z
    .end local v9    # "is":I
    .end local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v15    # "appUid":I
    .restart local v19    # "is":I
    .local v21, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v22    # "conni":I
    .restart local v29    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v32    # "appUid":I
    .restart local v35    # "procState":I
    .restart local v39    # "logUid":I
    .restart local v41    # "foregroundActivities":Z
    .restart local v42    # "hasVisibleActivities":Z
    :goto_26
    add-int/lit8 v3, v22, -0x1

    move/from16 v9, v19

    move-object/from16 v0, v21

    move/from16 v2, v26

    move/from16 v6, v27

    move/from16 v11, v28

    move-object/from16 v13, v29

    move/from16 v15, v32

    move/from16 v10, v35

    move/from16 v7, v39

    move-object/from16 v19, v40

    move/from16 v8, v41

    move/from16 v21, v42

    .end local v22    # "conni":I
    .restart local v3    # "conni":I
    goto/16 :goto_21

    .line 2789
    .end local v19    # "is":I
    .end local v26    # "adj":I
    .end local v27    # "capability":I
    .end local v28    # "schedGroup":I
    .end local v29    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v32    # "appUid":I
    .end local v35    # "procState":I
    .end local v39    # "logUid":I
    .end local v41    # "foregroundActivities":Z
    .end local v42    # "hasVisibleActivities":Z
    .restart local v0    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v2, "adj":I
    .restart local v6    # "capability":I
    .restart local v7    # "logUid":I
    .restart local v8    # "foregroundActivities":Z
    .restart local v9    # "is":I
    .local v10, "procState":I
    .restart local v11    # "schedGroup":I
    .restart local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v15    # "appUid":I
    .local v21, "hasVisibleActivities":Z
    :cond_77
    move/from16 v22, v3

    move/from16 v39, v7

    move/from16 v41, v8

    move-object/from16 v29, v13

    move/from16 v32, v15

    move-object/from16 v40, v19

    move/from16 v42, v21

    const/4 v15, 0x2

    move-object/from16 v21, v0

    move/from16 v19, v9

    .line 2694
    .end local v0    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v3    # "conni":I
    .end local v7    # "logUid":I
    .end local v8    # "foregroundActivities":Z
    .end local v9    # "is":I
    .end local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v15    # "appUid":I
    .end local v21    # "hasVisibleActivities":Z
    .restart local v19    # "is":I
    .restart local v32    # "appUid":I
    .restart local v39    # "logUid":I
    .restart local v41    # "foregroundActivities":Z
    .restart local v42    # "hasVisibleActivities":Z
    :goto_27
    add-int/lit8 v9, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v19, v6

    move-object/from16 v12, v18

    move/from16 v15, v32

    move/from16 v7, v39

    move-object/from16 v13, v40

    move/from16 v8, v41

    move/from16 v21, v42

    const/4 v6, 0x0

    .end local v19    # "is":I
    .restart local v9    # "is":I
    goto/16 :goto_17

    .line 2691
    .end local v6    # "capability":I
    .end local v18    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v32    # "appUid":I
    .end local v39    # "logUid":I
    .end local v41    # "foregroundActivities":Z
    .end local v42    # "hasVisibleActivities":Z
    .restart local v7    # "logUid":I
    .restart local v8    # "foregroundActivities":Z
    .restart local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v15    # "appUid":I
    .local v19, "capability":I
    .restart local v21    # "hasVisibleActivities":Z
    :cond_78
    move/from16 v39, v7

    move/from16 v41, v8

    move-object/from16 v18, v12

    move-object/from16 v40, v13

    move/from16 v32, v15

    move/from16 v6, v19

    move/from16 v42, v21

    const/4 v15, 0x2

    move v12, v3

    move/from16 v19, v9

    .line 2818
    .end local v7    # "logUid":I
    .end local v8    # "foregroundActivities":Z
    .end local v9    # "is":I
    .end local v12    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v15    # "appUid":I
    .end local v19    # "capability":I
    .end local v21    # "hasVisibleActivities":Z
    .restart local v6    # "capability":I
    .restart local v18    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v32    # "appUid":I
    .restart local v39    # "logUid":I
    .restart local v41    # "foregroundActivities":Z
    .restart local v42    # "hasVisibleActivities":Z
    :goto_28
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 2819
    .local v0, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 2820
    .local v3, "provi":I
    :goto_29
    if-ltz v3, :cond_86

    if-gtz v2, :cond_79

    if-eqz v11, :cond_79

    if-le v10, v15, :cond_7a

    :cond_79
    goto :goto_2a

    :cond_7a
    move-object/from16 v25, v0

    move v15, v12

    move/from16 v7, v32

    move/from16 v8, v39

    move-object/from16 v13, v40

    move-object/from16 v0, p0

    goto/16 :goto_32

    .line 2824
    :goto_2a
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v4

    .line 2825
    .local v4, "cpr":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p10, :cond_7e

    .line 2827
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2828
    invoke-virtual {v14, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2829
    invoke-virtual {v14, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2830
    invoke-virtual {v14, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2832
    iget-object v5, v4, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v19, v2

    move v2, v5

    move/from16 v21, v6

    move v5, v10

    move/from16 v22, v11

    .line 2833
    .end local v6    # "capability":I
    .end local v10    # "procState":I
    .end local v11    # "schedGroup":I
    .local v2, "i":I
    .restart local v5    # "procState":I
    .local v19, "adj":I
    .local v21, "capability":I
    .local v22, "schedGroup":I
    :goto_2b
    if-ltz v2, :cond_7d

    if-gtz v19, :cond_7b

    if-eqz v22, :cond_7b

    if-le v5, v15, :cond_7c

    :cond_7b
    goto :goto_2c

    :cond_7c
    move-object/from16 v25, v0

    move/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v29, v5

    move v15, v12

    move-object/from16 v0, p0

    goto/16 :goto_2d

    .line 2837
    :goto_2c
    iget-object v6, v4, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ContentProviderConnection;

    .line 2838
    .local v6, "conn":Lcom/android/server/am/ContentProviderConnection;
    move v7, v3

    .end local v3    # "provi":I
    .local v7, "provi":I
    iget-object v3, v6, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 2839
    .local v3, "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v26, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v11, p2

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v25, v0

    move/from16 v28, v2

    move-object/from16 v27, v4

    move/from16 v29, v5

    move/from16 v15, v26

    move-object/from16 v0, p0

    move-wide/from16 v4, p5

    move-object v2, v1

    move-object v1, v6

    move/from16 v26, v7

    move-object/from16 v6, p3

    move/from16 v7, p4

    .end local v0    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v2    # "i":I
    .end local v4    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v5    # "procState":I
    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v7    # "provi":I
    .local v1, "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v25, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v26, "provi":I
    .local v27, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v28, "i":I
    .local v29, "procState":I
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    .line 2842
    move-object/from16 v43, v2

    move-object v2, v1

    move-object/from16 v1, v43

    .end local v1    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v2, "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v19

    .line 2843
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v5

    .line 2844
    .end local v29    # "procState":I
    .restart local v5    # "procState":I
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v22

    .line 2845
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v21

    .line 2836
    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v3    # "client":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v2, v28, -0x1

    move v12, v15

    move-object/from16 v0, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    const/4 v15, 0x2

    .end local v28    # "i":I
    .local v2, "i":I
    goto :goto_2b

    .line 2833
    .end local v25    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v26    # "provi":I
    .end local v27    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v0    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v3, "provi":I
    .restart local v4    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_7d
    move-object/from16 v25, v0

    move/from16 v28, v2

    move/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v29, v5

    move v15, v12

    move-object/from16 v0, p0

    .line 2851
    .end local v2    # "i":I
    :goto_2d
    move/from16 v2, v19

    move/from16 v6, v21

    move/from16 v11, v22

    move/from16 v10, v29

    .end local v0    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v3    # "provi":I
    .end local v4    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v5    # "procState":I
    .restart local v25    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v26    # "provi":I
    .restart local v27    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v29    # "procState":I
    goto :goto_2e

    .line 2825
    .end local v19    # "adj":I
    .end local v21    # "capability":I
    .end local v22    # "schedGroup":I
    .end local v25    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v26    # "provi":I
    .end local v27    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v29    # "procState":I
    .restart local v0    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v2, "adj":I
    .restart local v3    # "provi":I
    .restart local v4    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v6, "capability":I
    .restart local v10    # "procState":I
    .restart local v11    # "schedGroup":I
    :cond_7e
    move-object/from16 v25, v0

    move/from16 v26, v3

    move-object/from16 v27, v4

    move v15, v12

    move-object/from16 v0, p0

    .line 2851
    .end local v0    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v3    # "provi":I
    .end local v4    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v25    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v26    # "provi":I
    .restart local v27    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_2e
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 2852
    if-lez v2, :cond_81

    .line 2853
    const/4 v2, 0x0

    .line 2854
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2855
    const/4 v11, 0x2

    .line 2856
    const-string v3, "ext-provider"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2857
    move-object/from16 v3, v27

    .end local v27    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2858
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_80

    move/from16 v7, v32

    move/from16 v8, v39

    .end local v32    # "appUid":I
    .end local v39    # "logUid":I
    .local v7, "appUid":I
    .local v8, "logUid":I
    if-ne v8, v7, :cond_7f

    goto :goto_2f

    :cond_7f
    move-object/from16 v13, v40

    goto :goto_30

    .end local v7    # "appUid":I
    .end local v8    # "logUid":I
    .restart local v32    # "appUid":I
    .restart local v39    # "logUid":I
    :cond_80
    move/from16 v7, v32

    move/from16 v8, v39

    .line 2859
    .end local v32    # "appUid":I
    .end local v39    # "logUid":I
    .restart local v7    # "appUid":I
    .restart local v8    # "logUid":I
    :goto_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise adj to external provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v13, v40

    invoke-virtual {v0, v13, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 2852
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "appUid":I
    .end local v8    # "logUid":I
    .restart local v27    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v32    # "appUid":I
    .restart local v39    # "logUid":I
    :cond_81
    move-object/from16 v3, v27

    move/from16 v7, v32

    move/from16 v8, v39

    move-object/from16 v13, v40

    .line 2863
    .end local v27    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v32    # "appUid":I
    .end local v39    # "logUid":I
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v7    # "appUid":I
    .restart local v8    # "logUid":I
    :goto_30
    const/4 v4, 0x6

    if-le v10, v4, :cond_85

    .line 2864
    const/4 v4, 0x6

    .line 2865
    .end local v10    # "procState":I
    .local v4, "procState":I
    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2866
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_82

    if-ne v8, v7, :cond_83

    .line 2867
    :cond_82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Raise procstate to external provider: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v13, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_83
    move v10, v4

    goto :goto_31

    .line 2851
    .end local v4    # "procState":I
    .end local v7    # "appUid":I
    .end local v8    # "logUid":I
    .restart local v10    # "procState":I
    .restart local v27    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v32    # "appUid":I
    .restart local v39    # "logUid":I
    :cond_84
    move-object/from16 v3, v27

    move/from16 v7, v32

    move/from16 v8, v39

    move-object/from16 v13, v40

    .line 2823
    .end local v27    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v32    # "appUid":I
    .end local v39    # "logUid":I
    .restart local v7    # "appUid":I
    .restart local v8    # "logUid":I
    :cond_85
    :goto_31
    add-int/lit8 v3, v26, -0x1

    move/from16 v32, v7

    move/from16 v39, v8

    move-object/from16 v40, v13

    move v12, v15

    move-object/from16 v0, v25

    const/4 v15, 0x2

    .end local v26    # "provi":I
    .local v3, "provi":I
    goto/16 :goto_29

    .line 2820
    .end local v7    # "appUid":I
    .end local v8    # "logUid":I
    .end local v25    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v0    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v32    # "appUid":I
    .restart local v39    # "logUid":I
    :cond_86
    move-object/from16 v25, v0

    move/from16 v26, v3

    move v15, v12

    move/from16 v7, v32

    move/from16 v8, v39

    move-object/from16 v13, v40

    move-object/from16 v0, p0

    .line 2874
    .end local v0    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v3    # "provi":I
    .end local v32    # "appUid":I
    .end local v39    # "logUid":I
    .restart local v7    # "appUid":I
    .restart local v8    # "logUid":I
    .restart local v25    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    :goto_32
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-wide/from16 v21, v3

    iget-wide v3, v5, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long v3, v21, v3

    cmp-long v3, v3, p5

    if-lez v3, :cond_8d

    .line 2875
    const/16 v3, 0x2bc

    if-le v2, v3, :cond_89

    .line 2876
    const/16 v9, 0x2bc

    .line 2877
    .end local v2    # "adj":I
    .local v9, "adj":I
    const/4 v11, 0x0

    .line 2878
    const-string/jumbo v2, "recent-provider"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2879
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_87

    if-ne v8, v7, :cond_88

    .line 2880
    :cond_87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to recent provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2883
    :cond_88
    nop

    .line 2884
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v2, v4

    .line 2883
    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    goto :goto_33

    .line 2875
    .end local v9    # "adj":I
    .restart local v2    # "adj":I
    :cond_89
    move v9, v2

    .line 2886
    .end local v2    # "adj":I
    .restart local v9    # "adj":I
    :goto_33
    const/16 v2, 0xf

    if-le v10, v2, :cond_8c

    .line 2887
    const/16 v10, 0xf

    .line 2888
    const-string/jumbo v2, "recent-provider"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2889
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_8a

    if-ne v8, v7, :cond_8b

    .line 2890
    :cond_8a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to recent provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    :cond_8b
    nop

    .line 2894
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v2, v4

    .line 2893
    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    move v2, v9

    goto :goto_34

    .line 2886
    :cond_8c
    move-wide/from16 v4, p5

    move v2, v9

    goto :goto_34

    .line 2874
    .end local v9    # "adj":I
    .restart local v2    # "adj":I
    :cond_8d
    move-wide/from16 v4, p5

    .line 2898
    :goto_34
    const/16 v3, 0x13

    if-lt v10, v3, :cond_8f

    .line 2899
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 2901
    const/16 v10, 0x11

    .line 2902
    const-string v3, "cch-client-act"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_35

    .line 2903
    :cond_8e
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 2906
    const/16 v10, 0x10

    .line 2907
    const-string v3, "cch-as-act"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2911
    :cond_8f
    :goto_35
    if-ne v2, v15, :cond_97

    .line 2912
    if-eqz p4, :cond_96

    if-nez p7, :cond_96

    .line 2913
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    div-int/lit8 v9, v9, 0x3

    if-le v3, v9, :cond_90

    move/from16 v3, v31

    goto :goto_36

    :cond_90
    const/4 v3, 0x0

    :goto_36
    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    .line 2914
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 2915
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v3

    if-nez v3, :cond_95

    .line 2920
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 2921
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v12

    goto :goto_37

    :cond_91
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v12

    .line 2929
    .local v12, "lastPssOrRss":J
    :goto_37
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 2930
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    move v9, v2

    goto :goto_38

    :cond_92
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    move v9, v2

    .end local v2    # "adj":I
    .restart local v9    # "adj":I
    float-to-double v2, v3

    move-wide/from16 v21, v2

    .line 2931
    .local v21, "thresholdModifier":D
    :goto_38
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2932
    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double v2, v2, v21

    .line 2934
    .local v2, "cachedRestoreThreshold":D
    invoke-direct {v0}, Lcom/android/server/am/OomAdjuster;->isLastMemoryLevelNormal()Z

    move-result v15

    if-nez v15, :cond_94

    move-wide/from16 v26, v2

    .end local v2    # "cachedRestoreThreshold":D
    .local v26, "cachedRestoreThreshold":D
    long-to-double v2, v12

    cmpl-double v2, v2, v26

    if-ltz v2, :cond_93

    .line 2935
    move/from16 v2, v31

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    .line 2936
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    goto :goto_3a

    .line 2934
    :cond_93
    move/from16 v2, v31

    goto :goto_39

    .end local v26    # "cachedRestoreThreshold":D
    .restart local v2    # "cachedRestoreThreshold":D
    :cond_94
    move-wide/from16 v26, v2

    move/from16 v2, v31

    .line 2939
    .end local v2    # "cachedRestoreThreshold":D
    .restart local v26    # "cachedRestoreThreshold":D
    :goto_39
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 2942
    .end local v12    # "lastPssOrRss":J
    .end local v21    # "thresholdModifier":D
    .end local v26    # "cachedRestoreThreshold":D
    :goto_3a
    const/4 v3, 0x0

    goto :goto_3b

    .line 2943
    .end local v9    # "adj":I
    .local v2, "adj":I
    :cond_95
    move v9, v2

    move/from16 v2, v31

    .end local v2    # "adj":I
    .restart local v9    # "adj":I
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    goto :goto_3b

    .line 2912
    .end local v9    # "adj":I
    .restart local v2    # "adj":I
    :cond_96
    move v9, v2

    move/from16 v2, v31

    const/4 v3, 0x0

    .line 2946
    .end local v2    # "adj":I
    .restart local v9    # "adj":I
    :goto_3b
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v12

    if-eqz v12, :cond_98

    .line 2947
    const/16 v9, 0x320

    goto :goto_3c

    .line 2911
    .end local v9    # "adj":I
    .restart local v2    # "adj":I
    :cond_97
    move v9, v2

    move/from16 v2, v31

    const/4 v3, 0x0

    .line 2952
    .end local v2    # "adj":I
    .restart local v9    # "adj":I
    :cond_98
    :goto_3c
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v12

    if-eqz v12, :cond_99

    .line 2953
    or-int v6, v6, v17

    .line 2956
    :cond_99
    invoke-virtual {v0, v1, v10}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I

    move-result v12

    or-int/2addr v6, v12

    .line 2957
    move/from16 v12, v41

    .end local v41    # "foregroundActivities":Z
    .local v12, "foregroundActivities":Z
    invoke-static {v1, v4, v5, v12}, Lcom/android/server/am/OomAdjuster;->getCpuCapability(Lcom/android/server/am/ProcessRecord;JZ)I

    move-result v13

    or-int/2addr v6, v13

    .line 2960
    const/4 v13, 0x5

    if-le v10, v13, :cond_9a

    .line 2961
    and-int/lit8 v6, v6, -0x11

    .line 2964
    :cond_9a
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPendingFinishAttach()Z

    move-result v13

    if-eqz v13, :cond_9b

    .line 2969
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 2970
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 2971
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 2972
    return v3

    .line 2980
    :cond_9b
    invoke-virtual {v14, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2981
    move/from16 v13, v42

    .end local v42    # "hasVisibleActivities":Z
    .local v13, "hasVisibleActivities":Z
    invoke-virtual {v14, v13}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    .line 2982
    invoke-virtual {v14, v12}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 2983
    iget v15, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v15}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 2985
    move/from16 v15, v36

    .end local v36    # "prevAppAdj":I
    .local v15, "prevAppAdj":I
    invoke-virtual {v0, v1, v9, v15, v11}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;III)I

    move-result v11

    .line 2986
    move/from16 v2, v37

    .end local v37    # "prevProcState":I
    .local v2, "prevProcState":I
    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/am/OomAdjuster;->setIntermediateProcStateLSP(Lcom/android/server/am/ProcessRecord;II)V

    .line 2987
    invoke-virtual {v0, v14, v11}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 2991
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isForkedFromHighUsed:Z

    if-eqz v3, :cond_9c

    .line 2992
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_MEMORY_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/INtMemoryManager;

    invoke-interface {v3, v1}, Lcom/android/server/am/INtMemoryManager;->setForkProcAdj(Lcom/android/server/am/ProcessRecord;)V

    .line 2997
    :cond_9c
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    if-lt v3, v15, :cond_9e

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-lt v3, v2, :cond_9e

    .line 2998
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    move/from16 v0, v38

    .end local v38    # "prevCapability":I
    .local v0, "prevCapability":I
    if-eq v3, v0, :cond_9d

    goto :goto_3d

    :cond_9d
    const/16 v22, 0x0

    goto :goto_3e

    .line 2997
    .end local v0    # "prevCapability":I
    .restart local v38    # "prevCapability":I
    :cond_9e
    move/from16 v0, v38

    .line 2998
    .end local v38    # "prevCapability":I
    .restart local v0    # "prevCapability":I
    :goto_3d
    const/16 v22, 0x1

    .line 2997
    :goto_3e
    return v22
.end method

.method public computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z
    .locals 24
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "now"    # J
    .param p6, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p7, "doingAll"    # Z
    .param p8, "cycleReEval"    # Z
    .param p9, "computeClients"    # Z
    .param p10, "oomAdjReason"    # I
    .param p11, "cachedAdj"    # I
    .param p12, "couldRecurse"    # Z
    .param p13, "dryRun"    # Z

    .line 3532
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v1, p3

    move/from16 v13, p13

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isPendingFinishAttach()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    .line 3534
    return v14

    .line 3537
    :cond_0
    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3538
    .local v15, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3540
    .local v0, "cstate":Lcom/android/server/am/ProcessStateRecord;
    if-ne v1, v12, :cond_1

    .line 3542
    return v14

    .line 3544
    :cond_1
    if-eqz p12, :cond_4

    .line 3545
    if-eqz p9, :cond_2

    .line 3546
    const/4 v8, 0x1

    const/4 v10, 0x1

    move-wide/from16 v5, p4

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v7, p8

    move/from16 v9, p10

    move/from16 v2, p11

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    .end local v0    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v16, "cstate":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    move-object v6, v1

    move-object/from16 v2, v16

    goto :goto_0

    .line 3548
    .end local v16    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v0    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    :cond_2
    move-object/from16 v16, v0

    move-object v6, v1

    .end local v0    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v16    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    if-eqz p12, :cond_3

    .line 3549
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move-object/from16 v2, v16

    .end local v16    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v2, "cstate":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 3550
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    goto :goto_0

    .line 3548
    .end local v2    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v16    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    :cond_3
    move-object/from16 v2, v16

    .line 3553
    .end local v16    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v2    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    :goto_0
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v5, p8

    move-object v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3555
    return v14

    .line 3544
    .end local v2    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v0    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    :cond_4
    move-object v2, v0

    move-object v6, v1

    move-object/from16 v0, p0

    .line 3559
    .end local v0    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v2    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v1

    .line 3560
    .local v1, "clientAdj":I
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v3

    .line 3562
    .local v3, "clientProcState":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    .line 3563
    .local v4, "adj":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v5

    .line 3564
    .local v5, "procState":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v7

    .line 3565
    .local v7, "schedGroup":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v8

    .line 3567
    .local v8, "capability":I
    move v9, v4

    .line 3568
    .local v9, "prevRawAdj":I
    move v10, v5

    .line 3569
    .local v10, "prevProcState":I
    move/from16 v16, v7

    .line 3570
    .local v16, "prevSchedGroup":I
    move/from16 v17, v8

    .line 3572
    .local v17, "prevCapability":I
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3573
    .local v14, "appUid":I
    move-object/from16 v19, v2

    .end local v2    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v19, "cstate":Lcom/android/server/am/ProcessStateRecord;
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 3578
    .local v2, "logUid":I
    invoke-virtual {v0, v6}, Lcom/android/server/am/OomAdjuster;->getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I

    move-result v20

    or-int v8, v8, v20

    .line 3580
    invoke-static {v11, v6}, Lcom/android/server/am/OomAdjuster;->getCpuCapabilityFromClient(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)I

    move-result v20

    or-int v8, v8, v20

    .line 3582
    move/from16 v20, v8

    .end local v8    # "capability":I
    .local v20, "capability":I
    const/16 v8, 0x10

    if-lt v3, v8, :cond_6

    .line 3585
    const/16 v3, 0x13

    .line 3587
    :cond_6
    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v8

    move/from16 v21, v8

    if-eqz v21, :cond_7

    .line 3589
    iget-object v8, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move/from16 v22, v10

    .end local v10    # "prevProcState":I
    .local v22, "prevProcState":I
    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3590
    invoke-virtual {v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v10

    move/from16 v23, v10

    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3591
    invoke-virtual {v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v10

    or-int v10, v23, v10

    move/from16 v23, v9

    .end local v9    # "prevRawAdj":I
    .local v23, "prevRawAdj":I
    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 3589
    const/4 v12, 0x1

    invoke-virtual {v8, v12, v13, v10, v9}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3592
    nop

    .line 3596
    return v12

    .line 3587
    .end local v22    # "prevProcState":I
    .end local v23    # "prevRawAdj":I
    .restart local v9    # "prevRawAdj":I
    .restart local v10    # "prevProcState":I
    :cond_7
    move/from16 v23, v9

    move/from16 v22, v10

    .line 3601
    .end local v9    # "prevRawAdj":I
    .end local v10    # "prevProcState":I
    .restart local v22    # "prevProcState":I
    .restart local v23    # "prevRawAdj":I
    :cond_8
    const/4 v8, 0x4

    if-nez v13, :cond_b

    .line 3602
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v9

    if-nez v9, :cond_a

    .line 3603
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x3

    if-le v3, v9, :cond_a

    if-ne v3, v8, :cond_9

    .line 3606
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_1

    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v9, 0x1

    .line 3602
    :goto_2
    invoke-virtual {v15, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 3609
    :cond_b
    const/4 v9, 0x0

    .line 3610
    .local v9, "adjType":Ljava/lang/String;
    if-le v4, v1, :cond_e

    .line 3611
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v10

    if-nez v10, :cond_c

    const/16 v10, 0xc8

    if-le v1, v10, :cond_c

    .line 3613
    const-string v9, "cch-ui-provider"

    goto :goto_3

    .line 3615
    :cond_c
    const/4 v10, 0x0

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3616
    invoke-virtual {v15, v4, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 3618
    const/16 v21, 0x1

    return v21

    .line 3620
    :cond_d
    const-string/jumbo v9, "provider"

    .line 3623
    :goto_3
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v10

    if-nez v10, :cond_e

    if-eqz v13, :cond_e

    .line 3625
    const/16 v21, 0x1

    return v21

    .line 3629
    :cond_e
    if-gt v3, v8, :cond_11

    .line 3630
    if-nez v9, :cond_f

    .line 3631
    const-string/jumbo v9, "provider"

    .line 3633
    :cond_f
    const/4 v8, 0x2

    if-ne v3, v8, :cond_10

    .line 3634
    const/4 v3, 0x3

    goto :goto_4

    .line 3636
    :cond_10
    const/4 v3, 0x5

    .line 3640
    :cond_11
    :goto_4
    if-nez v13, :cond_12

    .line 3641
    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v3, v8}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(II)V

    .line 3643
    :cond_12
    if-le v5, v3, :cond_13

    .line 3644
    move v5, v3

    .line 3645
    invoke-virtual {v15, v5, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(IZ)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 3647
    const/16 v21, 0x1

    return v21

    .line 3650
    :cond_13
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v8

    if-le v8, v7, :cond_14

    .line 3651
    const/4 v7, 0x2

    .line 3653
    :cond_14
    if-eqz v9, :cond_17

    if-nez v13, :cond_17

    .line 3654
    invoke-virtual {v15, v9}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 3655
    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 3657
    invoke-virtual {v15, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 3658
    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 3659
    iget-object v8, v11, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v8, v8, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 3660
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v8, :cond_15

    if-ne v2, v14, :cond_16

    :cond_15
    goto :goto_5

    :cond_16
    move-object/from16 v12, p2

    goto :goto_6

    .line 3661
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raise to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", due to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " adj="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " procState="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3664
    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3661
    const-string v10, "ActivityManager"

    invoke-virtual {v0, v10, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 3653
    :cond_17
    move-object/from16 v12, p2

    .line 3669
    :goto_6
    const/4 v8, 0x5

    if-le v5, v8, :cond_18

    .line 3670
    and-int/lit8 v8, v20, -0x11

    .end local v20    # "capability":I
    .restart local v8    # "capability":I
    goto :goto_7

    .line 3669
    .end local v8    # "capability":I
    .restart local v20    # "capability":I
    :cond_18
    move/from16 v8, v20

    .line 3673
    .end local v20    # "capability":I
    .restart local v8    # "capability":I
    :goto_7
    if-eqz v13, :cond_1d

    .line 3674
    move/from16 v10, v23

    .end local v23    # "prevRawAdj":I
    .local v10, "prevRawAdj":I
    if-lt v4, v10, :cond_1c

    move/from16 v20, v1

    move/from16 v1, v22

    .end local v22    # "prevProcState":I
    .local v1, "prevProcState":I
    .local v20, "clientAdj":I
    if-lt v5, v1, :cond_1b

    move/from16 v22, v2

    move/from16 v2, v16

    .end local v16    # "prevSchedGroup":I
    .local v2, "prevSchedGroup":I
    .local v22, "logUid":I
    if-le v7, v2, :cond_19

    move/from16 v16, v3

    move/from16 v6, v17

    const/16 v21, 0x1

    move-object/from16 v17, v9

    goto :goto_8

    .line 3678
    :cond_19
    nop

    .line 3685
    move/from16 v16, v3

    .end local v3    # "clientProcState":I
    .local v16, "clientProcState":I
    and-int/lit16 v3, v8, -0x81

    .line 3686
    .local v3, "curFiltered":I
    move/from16 v6, v17

    move-object/from16 v17, v9

    .end local v9    # "adjType":Ljava/lang/String;
    .local v6, "prevCapability":I
    .local v17, "adjType":Ljava/lang/String;
    and-int/lit16 v9, v6, -0x81

    .line 3687
    .local v9, "prevFiltered":I
    if-eq v3, v9, :cond_1a

    move/from16 v23, v3

    .end local v3    # "curFiltered":I
    .local v23, "curFiltered":I
    and-int v3, v23, v9

    if-ne v3, v9, :cond_1e

    .line 3689
    const/16 v21, 0x1

    return v21

    .line 3687
    .end local v23    # "curFiltered":I
    .restart local v3    # "curFiltered":I
    :cond_1a
    move/from16 v23, v3

    .end local v3    # "curFiltered":I
    .restart local v23    # "curFiltered":I
    goto :goto_9

    .line 3674
    .end local v6    # "prevCapability":I
    .end local v22    # "logUid":I
    .end local v23    # "curFiltered":I
    .local v2, "logUid":I
    .local v3, "clientProcState":I
    .local v9, "adjType":Ljava/lang/String;
    .local v16, "prevSchedGroup":I
    .local v17, "prevCapability":I
    :cond_1b
    move/from16 v22, v2

    move/from16 v2, v16

    move/from16 v6, v17

    const/16 v21, 0x1

    move/from16 v16, v3

    move-object/from16 v17, v9

    .end local v3    # "clientProcState":I
    .end local v9    # "adjType":Ljava/lang/String;
    .local v2, "prevSchedGroup":I
    .restart local v6    # "prevCapability":I
    .local v16, "clientProcState":I
    .local v17, "adjType":Ljava/lang/String;
    .restart local v22    # "logUid":I
    goto :goto_8

    .end local v6    # "prevCapability":I
    .end local v20    # "clientAdj":I
    .local v1, "clientAdj":I
    .local v2, "logUid":I
    .restart local v3    # "clientProcState":I
    .restart local v9    # "adjType":Ljava/lang/String;
    .local v16, "prevSchedGroup":I
    .local v17, "prevCapability":I
    .local v22, "prevProcState":I
    :cond_1c
    move/from16 v20, v1

    move/from16 v6, v17

    move/from16 v1, v22

    const/16 v21, 0x1

    move/from16 v22, v2

    move-object/from16 v17, v9

    move/from16 v2, v16

    move/from16 v16, v3

    .line 3675
    .end local v3    # "clientProcState":I
    .end local v9    # "adjType":Ljava/lang/String;
    .local v1, "prevProcState":I
    .local v2, "prevSchedGroup":I
    .restart local v6    # "prevCapability":I
    .local v16, "clientProcState":I
    .local v17, "adjType":Ljava/lang/String;
    .restart local v20    # "clientAdj":I
    .local v22, "logUid":I
    :goto_8
    return v21

    .line 3673
    .end local v6    # "prevCapability":I
    .end local v10    # "prevRawAdj":I
    .end local v20    # "clientAdj":I
    .local v1, "clientAdj":I
    .local v2, "logUid":I
    .restart local v3    # "clientProcState":I
    .restart local v9    # "adjType":Ljava/lang/String;
    .local v16, "prevSchedGroup":I
    .local v17, "prevCapability":I
    .local v22, "prevProcState":I
    .local v23, "prevRawAdj":I
    :cond_1d
    move/from16 v20, v1

    move/from16 v6, v17

    move/from16 v1, v22

    move/from16 v10, v23

    move/from16 v22, v2

    move-object/from16 v17, v9

    move/from16 v2, v16

    move/from16 v16, v3

    .line 3694
    .end local v3    # "clientProcState":I
    .end local v9    # "adjType":Ljava/lang/String;
    .end local v23    # "prevRawAdj":I
    .local v1, "prevProcState":I
    .local v2, "prevSchedGroup":I
    .restart local v6    # "prevCapability":I
    .restart local v10    # "prevRawAdj":I
    .local v16, "clientProcState":I
    .local v17, "adjType":Ljava/lang/String;
    .restart local v20    # "clientAdj":I
    .local v22, "logUid":I
    :cond_1e
    :goto_9
    if-ge v4, v10, :cond_1f

    .line 3695
    invoke-virtual {v0, v12, v4, v10, v7}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;III)I

    move-result v7

    .line 3697
    :cond_1f
    if-ge v5, v1, :cond_20

    .line 3698
    invoke-virtual {v0, v12, v5, v1}, Lcom/android/server/am/OomAdjuster;->setIntermediateProcStateLSP(Lcom/android/server/am/ProcessRecord;II)V

    .line 3700
    :cond_20
    if-le v7, v2, :cond_21

    .line 3701
    invoke-virtual {v0, v15, v7}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 3703
    :cond_21
    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 3705
    const/16 v18, 0x0

    return v18
.end method

.method public computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z
    .locals 37
    .param p1, "cr"    # Lcom/android/server/am/ConnectionRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "now"    # J
    .param p6, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p7, "doingAll"    # Z
    .param p8, "cycleReEval"    # Z
    .param p9, "computeClients"    # Z
    .param p10, "oomAdjReason"    # I
    .param p11, "cachedAdj"    # I
    .param p12, "couldRecurse"    # Z
    .param p13, "dryRun"    # Z

    .line 3051
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p13

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isPendingFinishAttach()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    .line 3053
    return v14

    .line 3056
    :cond_0
    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3057
    .local v15, "state":Lcom/android/server/am/ProcessStateRecord;
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3058
    .local v1, "cstate":Lcom/android/server/am/ProcessStateRecord;
    const/16 v16, 0x0

    .line 3060
    .local v16, "updated":Z
    if-eqz p12, :cond_3

    .line 3061
    iget-boolean v2, v12, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v2, :cond_1

    iget-object v2, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    .line 3064
    iget-object v2, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v2, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    .line 3065
    .end local p3    # "client":Lcom/android/server/am/ProcessRecord;
    .local v0, "client":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move-object/from16 v36, v1

    move-object v1, v0

    move-object/from16 v0, v36

    goto :goto_0

    .line 3067
    .end local v0    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local p3    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_1
    move-object/from16 v36, v1

    move-object v1, v0

    move-object/from16 v0, v36

    .end local p3    # "client":Lcom/android/server/am/ProcessRecord;
    .local v0, "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    :goto_0
    if-eqz p9, :cond_2

    .line 3068
    const/4 v8, 0x1

    const/4 v10, 0x1

    move-wide/from16 v5, p4

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v7, p8

    move/from16 v9, p10

    move/from16 v2, p11

    move-object/from16 p3, v0

    move-object/from16 v0, p0

    .end local v0    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local p3, "cstate":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    move-object v2, v0

    move-object/from16 v3, p3

    goto :goto_1

    .line 3071
    .end local p3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v0    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    :cond_2
    move-object/from16 v2, p0

    move-object/from16 p3, v0

    .end local v0    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local p3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move-object/from16 v3, p3

    .end local p3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v3, "cstate":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 3072
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 3076
    .end local v3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local p3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    :goto_1
    move-object v6, v1

    move-object v1, v3

    .end local p3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    goto :goto_2

    .line 3060
    .end local v3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v1, "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local p3, "client":Lcom/android/server/am/ProcessRecord;
    :cond_3
    move-object/from16 v2, p0

    move-object v6, v0

    .line 3076
    .end local p3    # "client":Lcom/android/server/am/ProcessRecord;
    .local v6, "client":Lcom/android/server/am/ProcessRecord;
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    .line 3077
    .local v7, "clientAdj":I
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v8

    .line 3079
    .local v8, "clientProcState":I
    const/4 v9, 0x2

    if-ge v8, v9, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v14

    :goto_3
    move/from16 v17, v0

    .line 3081
    .local v17, "clientIsSystem":Z
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    .line 3082
    .local v4, "adj":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v3

    .line 3083
    .local v3, "procState":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v18

    .line 3084
    .local v18, "schedGroup":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    .line 3086
    .local v0, "capability":I
    move v5, v4

    .line 3087
    .local v5, "prevRawAdj":I
    move/from16 p3, v3

    .line 3088
    .local p3, "prevProcState":I
    move/from16 v19, v18

    .line 3089
    .local v19, "prevSchedGroup":I
    move/from16 v20, v0

    .line 3091
    .local v20, "prevCapability":I
    move/from16 v21, v14

    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3092
    .local v14, "appUid":I
    iget-object v9, v2, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v9, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 3094
    .local v9, "logUid":I
    if-nez v13, :cond_7

    .line 3095
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v24

    if-nez v24, :cond_6

    .line 3096
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v24

    if-nez v24, :cond_6

    const/4 v10, 0x3

    if-le v8, v10, :cond_6

    const/4 v10, 0x4

    if-ne v8, v10, :cond_5

    .line 3099
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v10, v21

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v10, 0x1

    .line 3095
    :goto_5
    invoke-virtual {v15, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 3102
    :cond_7
    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 3104
    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move/from16 v25, v0

    .end local v0    # "capability":I
    .local v25, "capability":I
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3105
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v0

    move/from16 v26, v0

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3106
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v0

    or-int v0, v26, v0

    move-object/from16 v26, v1

    .end local v1    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v26, "cstate":Lcom/android/server/am/ProcessStateRecord;
    iget v1, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 3104
    move/from16 v27, v3

    const/4 v3, 0x1

    .end local v3    # "procState":I
    .local v27, "procState":I
    invoke-virtual {v10, v3, v13, v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3107
    nop

    .line 3111
    return v3

    .line 3102
    .end local v25    # "capability":I
    .end local v26    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v27    # "procState":I
    .restart local v0    # "capability":I
    .restart local v1    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v3    # "procState":I
    :cond_8
    move/from16 v25, v0

    move-object/from16 v26, v1

    move/from16 v27, v3

    .line 3116
    .end local v0    # "capability":I
    .end local v1    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v3    # "procState":I
    .restart local v25    # "capability":I
    .restart local v26    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v27    # "procState":I
    :cond_9
    const/4 v10, 0x0

    .line 3121
    .local v10, "trackedProcState":Z
    invoke-virtual {v2, v6}, Lcom/android/server/am/OomAdjuster;->getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    or-int v0, v25, v0

    .line 3123
    .end local v25    # "capability":I
    .restart local v0    # "capability":I
    invoke-static {v11, v6}, Lcom/android/server/am/OomAdjuster;->getCpuCapabilityFromClient(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    or-int/2addr v0, v1

    .line 3125
    const/16 v1, 0x20

    invoke-virtual {v11, v1}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v3

    move/from16 v25, v10

    .end local v10    # "trackedProcState":Z
    .local v25, "trackedProcState":Z
    const-string v10, "ActivityManager"

    move-object/from16 v28, v10

    const/16 v29, 0x40

    const/16 v10, 0x8

    if-eqz v3, :cond_44

    .line 3126
    const/16 v3, 0x1000

    invoke-virtual {v11, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 3127
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v30

    or-int v0, v0, v30

    .line 3135
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v30

    and-int/lit8 v30, v30, 0x8

    if-eqz v30, :cond_c

    .line 3137
    move/from16 v30, v1

    const/4 v1, 0x5

    if-gt v8, v1, :cond_b

    .line 3139
    const/high16 v1, 0x20000

    invoke-virtual {v11, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3140
    or-int/lit8 v0, v0, 0x8

    goto :goto_6

    .line 3143
    :cond_b
    or-int/lit8 v0, v0, 0x8

    goto :goto_6

    .line 3135
    :cond_c
    move/from16 v30, v1

    .line 3146
    :cond_d
    :goto_6
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_f

    .line 3148
    const/4 v1, 0x6

    if-gt v8, v1, :cond_e

    .line 3150
    move v1, v4

    .end local v4    # "adj":I
    .local v1, "adj":I
    const-wide v3, 0x100000000L

    invoke-virtual {v11, v3, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3151
    or-int/lit8 v0, v0, 0x20

    goto :goto_7

    .line 3148
    .end local v1    # "adj":I
    .restart local v4    # "adj":I
    :cond_e
    move v1, v4

    .end local v4    # "adj":I
    .restart local v1    # "adj":I
    goto :goto_7

    .line 3146
    .end local v1    # "adj":I
    .restart local v4    # "adj":I
    :cond_f
    move v1, v4

    .line 3158
    .end local v4    # "adj":I
    .restart local v1    # "adj":I
    :cond_10
    :goto_7
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_11

    .line 3160
    iget-boolean v3, v12, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v3, :cond_11

    .line 3161
    or-int/lit8 v0, v0, 0x40

    move/from16 v31, v0

    goto :goto_8

    .line 3165
    :cond_11
    move/from16 v31, v0

    .end local v0    # "capability":I
    .local v31, "capability":I
    :goto_8
    if-eqz p12, :cond_12

    move v4, v1

    move-object v0, v2

    move-object v1, v12

    move-object/from16 v2, v26

    move/from16 v3, v27

    const/16 v10, 0x1000

    move v12, v5

    move/from16 v5, p8

    .end local v1    # "adj":I
    .end local v5    # "prevRawAdj":I
    .end local v26    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v27    # "procState":I
    .local v2, "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v3    # "procState":I
    .restart local v4    # "adj":I
    .local v12, "prevRawAdj":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v27

    move-object v5, v2

    move-object v2, v0

    .end local v2    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v5, "cstate":Lcom/android/server/am/ProcessStateRecord;
    if-eqz v27, :cond_13

    .line 3166
    return v21

    .line 3165
    .end local v3    # "procState":I
    .end local v4    # "adj":I
    .end local v12    # "prevRawAdj":I
    .restart local v1    # "adj":I
    .local v5, "prevRawAdj":I
    .restart local v26    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v27    # "procState":I
    :cond_12
    move v4, v1

    move-object v1, v12

    move/from16 v3, v27

    const/16 v10, 0x1000

    move v12, v5

    move-object/from16 v5, v26

    .line 3169
    .end local v1    # "adj":I
    .end local v26    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v27    # "procState":I
    .restart local v3    # "procState":I
    .restart local v4    # "adj":I
    .local v5, "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v12    # "prevRawAdj":I
    :cond_13
    const/16 v0, 0x10

    if-lt v8, v0, :cond_14

    .line 3173
    const/16 v8, 0x13

    .line 3175
    :cond_14
    const/16 v27, 0x0

    .line 3176
    .local v27, "adjType":Ljava/lang/String;
    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 3178
    const/16 v0, 0x384

    if-ge v7, v0, :cond_15

    .line 3179
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3180
    invoke-virtual {v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v10

    const/16 v24, 0x4

    or-int/lit8 v10, v10, 0x4

    move/from16 v32, v3

    .end local v3    # "procState":I
    .local v32, "procState":I
    iget v3, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 3179
    move/from16 v33, v8

    const/4 v8, 0x1

    .end local v8    # "clientProcState":I
    .local v33, "clientProcState":I
    invoke-virtual {v0, v8, v13, v10, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3183
    nop

    .line 3187
    return v8

    .line 3178
    .end local v32    # "procState":I
    .end local v33    # "clientProcState":I
    .restart local v3    # "procState":I
    .restart local v8    # "clientProcState":I
    :cond_15
    move/from16 v32, v3

    move/from16 v33, v8

    .line 3193
    .end local v3    # "procState":I
    .end local v8    # "clientProcState":I
    .restart local v32    # "procState":I
    .restart local v33    # "clientProcState":I
    :cond_16
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3198
    if-le v4, v7, :cond_17

    .line 3199
    const-string v27, "cch-bound-ui-services"

    .line 3202
    :cond_17
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz v13, :cond_18

    .line 3204
    const/16 v23, 0x1

    return v23

    .line 3207
    :cond_18
    move v7, v4

    .line 3208
    move/from16 v8, v32

    move v3, v9

    .end local v33    # "clientProcState":I
    .restart local v8    # "clientProcState":I
    goto :goto_9

    .line 3210
    .end local v8    # "clientProcState":I
    .restart local v33    # "clientProcState":I
    :cond_19
    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move v3, v9

    .end local v9    # "logUid":I
    .local v3, "logUid":I
    iget-wide v8, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v0, v2, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-wide/from16 v34, v8

    iget-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long v8, v34, v8

    cmp-long v0, p4, v8

    if-ltz v0, :cond_1c

    .line 3217
    if-le v4, v7, :cond_1a

    .line 3218
    const-string v27, "cch-bound-services"

    .line 3220
    :cond_1a
    move v7, v4

    move/from16 v8, v33

    goto :goto_9

    .line 3176
    .end local v32    # "procState":I
    .end local v33    # "clientProcState":I
    .local v3, "procState":I
    .restart local v8    # "clientProcState":I
    .restart local v9    # "logUid":I
    :cond_1b
    move/from16 v32, v3

    move/from16 v33, v8

    move v3, v9

    .line 3224
    .end local v8    # "clientProcState":I
    .end local v9    # "logUid":I
    .local v3, "logUid":I
    .restart local v32    # "procState":I
    .restart local v33    # "clientProcState":I
    :cond_1c
    move/from16 v8, v33

    .end local v33    # "clientProcState":I
    .restart local v8    # "clientProcState":I
    :goto_9
    if-le v4, v7, :cond_2c

    .line 3229
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v9

    if-nez v9, :cond_1e

    sget v9, Lcom/android/server/am/OomAdjuster;->CACHING_UI_SERVICE_CLIENT_ADJ_THRESHOLD:I

    if-le v7, v9, :cond_1e

    .line 3231
    const/16 v9, 0x384

    if-lt v4, v9, :cond_1d

    .line 3232
    const-string v27, "cch-bound-ui-services"

    move/from16 v33, v3

    move/from16 v0, v18

    move/from16 v10, v25

    move/from16 v3, v32

    goto/16 :goto_d

    .line 3231
    :cond_1d
    move/from16 v33, v3

    goto/16 :goto_c

    .line 3236
    :cond_1e
    const/16 v9, 0x64

    .line 3237
    .local v9, "lbAdj":I
    const/16 v10, 0x48

    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 3239
    const/16 v10, -0x2bc

    if-lt v7, v10, :cond_1f

    .line 3240
    move v10, v7

    move/from16 v33, v3

    move/from16 v3, v32

    .local v10, "newAdj":I
    goto/16 :goto_b

    .line 3243
    .end local v10    # "newAdj":I
    :cond_1f
    const/16 v10, -0x2bc

    .line 3244
    .restart local v10    # "newAdj":I
    const/16 v18, 0x2

    .line 3245
    const/4 v0, 0x0

    .line 3246
    .end local v32    # "procState":I
    .local v0, "procState":I
    if-nez v13, :cond_20

    .line 3247
    move/from16 v33, v3

    .end local v3    # "logUid":I
    .local v33, "logUid":I
    iget v3, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v0, v3}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    goto :goto_a

    .line 3246
    .end local v33    # "logUid":I
    .restart local v3    # "logUid":I
    :cond_20
    move/from16 v33, v3

    .line 3249
    .end local v3    # "logUid":I
    .restart local v33    # "logUid":I
    :goto_a
    const/4 v3, 0x1

    move/from16 v25, v3

    move v3, v0

    .end local v25    # "trackedProcState":Z
    .local v3, "trackedProcState":Z
    goto/16 :goto_b

    .line 3251
    .end local v0    # "procState":I
    .end local v10    # "newAdj":I
    .end local v33    # "logUid":I
    .local v3, "logUid":I
    .restart local v25    # "trackedProcState":Z
    .restart local v32    # "procState":I
    :cond_21
    move/from16 v33, v3

    .end local v3    # "logUid":I
    .restart local v33    # "logUid":I
    const/16 v0, 0x100

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    const/16 v3, 0xc8

    if-eqz v0, :cond_22

    if-gt v7, v3, :cond_22

    const/16 v0, 0xfa

    move v9, v0

    if-lt v4, v0, :cond_22

    .line 3254
    const/16 v10, 0xfa

    move/from16 v3, v32

    .restart local v10    # "newAdj":I
    goto/16 :goto_b

    .line 3255
    .end local v10    # "newAdj":I
    :cond_22
    const/high16 v0, 0x10000

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v10

    nop

    if-eqz v10, :cond_23

    .line 3256
    const/4 v10, 0x4

    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v34

    if-eqz v34, :cond_23

    if-ge v7, v3, :cond_23

    move v9, v3

    if-lt v4, v3, :cond_23

    .line 3261
    const/16 v10, 0xc9

    move/from16 v3, v32

    .restart local v10    # "newAdj":I
    goto :goto_b

    .line 3262
    .end local v10    # "newAdj":I
    :cond_23
    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    nop

    if-eqz v0, :cond_24

    .line 3263
    const/4 v10, 0x4

    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_24

    if-ge v7, v3, :cond_24

    const/16 v0, 0xe3

    move v9, v0

    if-lt v4, v0, :cond_24

    .line 3269
    const/16 v10, 0xe3

    move/from16 v3, v32

    .restart local v10    # "newAdj":I
    goto :goto_b

    .line 3270
    .end local v10    # "newAdj":I
    :cond_24
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_25

    if-ge v7, v3, :cond_25

    move v9, v3

    if-lt v4, v3, :cond_25

    .line 3273
    const/16 v10, 0xc8

    move/from16 v3, v32

    .restart local v10    # "newAdj":I
    goto :goto_b

    .line 3274
    .end local v10    # "newAdj":I
    :cond_25
    if-lt v7, v3, :cond_26

    .line 3275
    move v10, v7

    move/from16 v3, v32

    .restart local v10    # "newAdj":I
    goto :goto_b

    .line 3276
    .end local v10    # "newAdj":I
    :cond_26
    const/high16 v0, 0x10000000

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v3

    const/16 v0, 0x64

    if-eqz v3, :cond_27

    if-gt v7, v0, :cond_27

    if-le v4, v0, :cond_27

    .line 3279
    const/16 v10, 0x64

    move/from16 v3, v32

    .restart local v10    # "newAdj":I
    goto :goto_b

    .line 3281
    .end local v10    # "newAdj":I
    :cond_27
    if-le v4, v0, :cond_28

    .line 3283
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v3, v32

    .restart local v10    # "newAdj":I
    goto :goto_b

    .line 3285
    .end local v10    # "newAdj":I
    :cond_28
    move v10, v4

    move/from16 v3, v32

    .line 3289
    .end local v32    # "procState":I
    .local v3, "procState":I
    .restart local v10    # "newAdj":I
    :goto_b
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    if-nez v0, :cond_29

    .line 3290
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz v13, :cond_29

    .line 3292
    const/16 v23, 0x1

    return v23

    .line 3296
    :cond_29
    if-ne v10, v7, :cond_2a

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_2a

    .line 3298
    add-int/lit8 v10, v7, 0x1

    .line 3301
    :cond_2a
    if-le v4, v10, :cond_2b

    .line 3302
    move v4, v10

    .line 3303
    invoke-virtual {v15, v4, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 3306
    const-string/jumbo v27, "service"

    move/from16 v0, v18

    move/from16 v10, v25

    goto :goto_d

    .line 3301
    :cond_2b
    move/from16 v0, v18

    move/from16 v10, v25

    goto :goto_d

    .line 3224
    .end local v9    # "lbAdj":I
    .end local v10    # "newAdj":I
    .end local v33    # "logUid":I
    .local v3, "logUid":I
    .restart local v32    # "procState":I
    :cond_2c
    move/from16 v33, v3

    .line 3310
    :goto_c
    move/from16 v0, v18

    move/from16 v10, v25

    move/from16 v3, v32

    .end local v18    # "schedGroup":I
    .end local v25    # "trackedProcState":Z
    .end local v32    # "procState":I
    .local v0, "schedGroup":I
    .local v3, "procState":I
    .local v10, "trackedProcState":Z
    .restart local v33    # "logUid":I
    :goto_d
    const v9, 0x800004

    invoke-virtual {v11, v9}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v9

    move/from16 v34, v7

    .end local v7    # "clientAdj":I
    .local v34, "clientAdj":I
    if-eqz v9, :cond_36

    .line 3315
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v9

    .line 3316
    .local v9, "curSchedGroup":I
    if-le v9, v0, :cond_2e

    .line 3317
    move/from16 v7, v29

    invoke-virtual {v11, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v25

    if-eqz v25, :cond_2d

    .line 3318
    move v0, v9

    goto :goto_e

    .line 3320
    :cond_2d
    const/4 v0, 0x2

    .line 3323
    :cond_2e
    :goto_e
    const/4 v7, 0x2

    if-ge v8, v7, :cond_32

    .line 3328
    const/high16 v7, 0x10000000

    invoke-virtual {v11, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 3329
    const/4 v8, 0x4

    move/from16 v21, v0

    goto :goto_f

    .line 3330
    :cond_2f
    const/high16 v7, 0x4000000

    invoke-virtual {v11, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 3331
    const/4 v8, 0x5

    move/from16 v21, v0

    goto :goto_f

    .line 3332
    :cond_30
    invoke-direct {v2}, Lcom/android/server/am/OomAdjuster;->isDeviceFullyAwake()Z

    move-result v7

    nop

    if-eqz v7, :cond_31

    .line 3333
    const/high16 v7, 0x2000000

    invoke-virtual {v11, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 3334
    const/4 v8, 0x5

    move/from16 v21, v0

    goto :goto_f

    .line 3336
    :cond_31
    const/4 v8, 0x6

    move/from16 v21, v0

    goto :goto_f

    .line 3339
    :cond_32
    const/4 v7, 0x2

    if-ne v8, v7, :cond_34

    .line 3342
    const/4 v8, 0x3

    .line 3343
    move/from16 v7, v21

    invoke-virtual {v5, v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v7

    .line 3345
    .local v7, "enabled":Z
    if-eqz v7, :cond_33

    .line 3346
    move/from16 v21, v0

    const/16 v0, 0x1000

    .end local v0    # "schedGroup":I
    .local v21, "schedGroup":I
    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3348
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int v31, v31, v0

    goto :goto_f

    .line 3354
    .end local v21    # "schedGroup":I
    .restart local v0    # "schedGroup":I
    :cond_33
    move/from16 v21, v0

    .end local v0    # "schedGroup":I
    .restart local v21    # "schedGroup":I
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int v31, v31, v0

    goto :goto_f

    .line 3339
    .end local v7    # "enabled":Z
    .end local v21    # "schedGroup":I
    .restart local v0    # "schedGroup":I
    :cond_34
    move/from16 v21, v0

    .line 3357
    .end local v0    # "schedGroup":I
    .end local v9    # "curSchedGroup":I
    .restart local v21    # "schedGroup":I
    :cond_35
    :goto_f
    move/from16 v0, v21

    goto :goto_10

    .end local v21    # "schedGroup":I
    .restart local v0    # "schedGroup":I
    :cond_36
    const/high16 v7, 0x800000

    invoke-virtual {v11, v7}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 3358
    const/16 v7, 0x8

    if-ge v8, v7, :cond_38

    .line 3359
    const/16 v7, 0x8

    move v8, v7

    .end local v8    # "clientProcState":I
    .local v7, "clientProcState":I
    goto :goto_10

    .line 3363
    .end local v7    # "clientProcState":I
    .restart local v8    # "clientProcState":I
    :cond_37
    const/4 v7, 0x7

    if-ge v8, v7, :cond_38

    .line 3364
    const/4 v7, 0x7

    move v8, v7

    .line 3369
    :cond_38
    :goto_10
    const/high16 v7, 0x80000

    invoke-virtual {v11, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_3b

    if-eqz v17, :cond_3b

    .line 3370
    const/4 v0, 0x3

    .line 3371
    if-eqz v13, :cond_3a

    .line 3372
    move/from16 v9, v19

    .end local v19    # "prevSchedGroup":I
    .local v9, "prevSchedGroup":I
    if-ge v9, v0, :cond_39

    .line 3374
    const/4 v7, 0x1

    return v7

    .line 3372
    :cond_39
    const/4 v7, 0x1

    goto :goto_11

    .line 3377
    .end local v9    # "prevSchedGroup":I
    .restart local v19    # "prevSchedGroup":I
    :cond_3a
    move/from16 v9, v19

    const/4 v7, 0x1

    .end local v19    # "prevSchedGroup":I
    .restart local v9    # "prevSchedGroup":I
    invoke-virtual {v15, v7}, Lcom/android/server/am/ProcessStateRecord;->setScheduleLikeTopApp(Z)V

    goto :goto_11

    .line 3369
    .end local v9    # "prevSchedGroup":I
    .restart local v19    # "prevSchedGroup":I
    :cond_3b
    move/from16 v9, v19

    .line 3381
    .end local v19    # "prevSchedGroup":I
    .restart local v9    # "prevSchedGroup":I
    :goto_11
    if-nez v10, :cond_3c

    if-nez v13, :cond_3c

    .line 3382
    iget v7, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v8, v7}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    .line 3385
    :cond_3c
    if-le v3, v8, :cond_3f

    .line 3386
    move v3, v8

    .line 3387
    invoke-virtual {v15, v3, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(IZ)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 3389
    const/16 v23, 0x1

    return v23

    .line 3391
    :cond_3d
    if-nez v27, :cond_3e

    .line 3392
    const-string/jumbo v27, "service"

    move-object/from16 v7, v27

    goto :goto_12

    .line 3391
    :cond_3e
    move-object/from16 v7, v27

    goto :goto_12

    .line 3385
    :cond_3f
    move-object/from16 v7, v27

    .line 3395
    .end local v27    # "adjType":Ljava/lang/String;
    .local v7, "adjType":Ljava/lang/String;
    :goto_12
    move/from16 v19, v0

    const/4 v0, 0x7

    .end local v0    # "schedGroup":I
    .local v19, "schedGroup":I
    nop

    if-ge v3, v0, :cond_40

    .line 3396
    const/high16 v0, 0x20000000

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_40

    if-nez v13, :cond_40

    .line 3397
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 3399
    :cond_40
    if-eqz v7, :cond_43

    if-nez v13, :cond_43

    .line 3400
    invoke-virtual {v15, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 3401
    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 3403
    invoke-virtual {v15, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 3404
    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 3405
    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 3406
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_42

    move/from16 v0, v33

    .end local v33    # "logUid":I
    .local v0, "logUid":I
    if-ne v0, v14, :cond_41

    goto :goto_13

    :cond_41
    move/from16 v33, v0

    move/from16 v18, v3

    move-object/from16 v3, v28

    goto :goto_14

    .end local v0    # "logUid":I
    .restart local v33    # "logUid":I
    :cond_42
    move/from16 v0, v33

    .line 3407
    .end local v33    # "logUid":I
    .restart local v0    # "logUid":I
    :goto_13
    move/from16 v33, v0

    .end local v0    # "logUid":I
    .restart local v33    # "logUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    .end local v3    # "procState":I
    .local v18, "procState":I
    const-string v3, "Raise to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", due to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " adj="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " procState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3410
    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3407
    move-object/from16 v3, v28

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 3399
    .end local v18    # "procState":I
    .restart local v3    # "procState":I
    :cond_43
    move/from16 v18, v3

    move-object/from16 v3, v28

    .line 3413
    .end local v3    # "procState":I
    .end local v7    # "adjType":Ljava/lang/String;
    .restart local v18    # "procState":I
    :goto_14
    move/from16 v21, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v25, v10

    move/from16 v4, v18

    move/from16 v18, v19

    move/from16 v0, v31

    move/from16 v10, v33

    move/from16 v7, v34

    goto :goto_15

    .line 3423
    .end local v10    # "trackedProcState":Z
    .end local v12    # "prevRawAdj":I
    .end local v31    # "capability":I
    .end local v33    # "logUid":I
    .end local v34    # "clientAdj":I
    .local v0, "capability":I
    .local v5, "prevRawAdj":I
    .local v7, "clientAdj":I
    .local v9, "logUid":I
    .local v18, "schedGroup":I
    .local v19, "prevSchedGroup":I
    .restart local v25    # "trackedProcState":Z
    .restart local v26    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v27, "procState":I
    :cond_44
    move v10, v9

    move-object v1, v12

    move/from16 v9, v19

    move/from16 v32, v27

    move-object/from16 v3, v28

    move v12, v5

    move-object/from16 v5, v26

    .end local v19    # "prevSchedGroup":I
    .end local v26    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v27    # "procState":I
    .local v5, "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v9, "prevSchedGroup":I
    .local v10, "logUid":I
    .restart local v12    # "prevRawAdj":I
    .restart local v32    # "procState":I
    move/from16 v19, v0

    const/16 v0, 0x384

    .end local v0    # "capability":I
    .local v19, "capability":I
    if-ge v7, v0, :cond_45

    .line 3424
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move/from16 v21, v4

    .end local v4    # "adj":I
    .local v21, "adj":I
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3425
    invoke-virtual {v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v4

    const/16 v26, 0x8

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v26, v5

    .end local v5    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v26    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    iget v5, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 3424
    move-object/from16 v27, v6

    const/4 v6, 0x1

    .end local v6    # "client":Lcom/android/server/am/ProcessRecord;
    .local v27, "client":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v0, v6, v13, v4, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3428
    nop

    .line 3432
    return v6

    .line 3423
    .end local v21    # "adj":I
    .end local v26    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v27    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "adj":I
    .restart local v5    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v6    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_45
    move/from16 v21, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    .line 3437
    .end local v4    # "adj":I
    .end local v5    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v6    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "adj":I
    .restart local v26    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v27    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_46
    move/from16 v0, v19

    move/from16 v4, v32

    .end local v19    # "capability":I
    .end local v32    # "procState":I
    .restart local v0    # "capability":I
    .local v4, "procState":I
    :goto_15
    const/high16 v5, 0x8000000

    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 3438
    if-nez v13, :cond_47

    .line 3439
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    .line 3441
    :cond_47
    const/16 v5, 0x10

    if-gt v8, v5, :cond_48

    if-le v4, v5, :cond_48

    .line 3445
    const/16 v4, 0x10

    .line 3446
    const-string v5, "cch-as-act"

    invoke-virtual {v15, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 3449
    :cond_48
    iget-object v5, v11, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3450
    .local v5, "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    const/16 v6, 0x80

    invoke-virtual {v11, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 3451
    if-eqz v5, :cond_50

    if-lez v21, :cond_50

    .line 3452
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 3453
    const/4 v6, 0x0

    .line 3454
    .end local v21    # "adj":I
    .local v6, "adj":I
    invoke-virtual {v15, v6, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    move-result v19

    if-eqz v19, :cond_49

    .line 3455
    const/16 v23, 0x1

    return v23

    .line 3457
    :cond_49
    move/from16 v19, v0

    const/4 v0, 0x4

    .end local v0    # "capability":I
    .restart local v19    # "capability":I
    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3458
    const/16 v0, 0x40

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3459
    const/16 v18, 0x4

    goto :goto_16

    .line 3461
    :cond_4a
    const/16 v18, 0x2

    .line 3465
    :cond_4b
    :goto_16
    if-nez v13, :cond_4e

    .line 3466
    const-string/jumbo v0, "service"

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 3467
    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 3469
    invoke-virtual {v15, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 3470
    invoke-virtual {v15, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 3471
    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 3472
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_4c

    if-ne v10, v14, :cond_4d

    :cond_4c
    goto :goto_17

    :cond_4d
    move-object/from16 v22, v5

    goto :goto_18

    .line 3473
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v5

    .end local v5    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .local v22, "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    const-string v5, "Raise to service w/activity: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 3465
    .end local v22    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local v5    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    :cond_4e
    move-object/from16 v22, v5

    .line 3480
    :goto_18
    move/from16 v0, v18

    .end local v5    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local v22    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    goto :goto_1a

    .line 3452
    .end local v6    # "adj":I
    .end local v19    # "capability":I
    .end local v22    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local v0    # "capability":I
    .restart local v5    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local v21    # "adj":I
    :cond_4f
    move/from16 v19, v0

    move-object/from16 v22, v5

    .end local v0    # "capability":I
    .end local v5    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local v19    # "capability":I
    .restart local v22    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    goto :goto_19

    .line 3451
    .end local v19    # "capability":I
    .end local v22    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local v0    # "capability":I
    .restart local v5    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    :cond_50
    move/from16 v19, v0

    move-object/from16 v22, v5

    .end local v0    # "capability":I
    .end local v5    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local v19    # "capability":I
    .restart local v22    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    goto :goto_19

    .line 3450
    .end local v19    # "capability":I
    .end local v22    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local v0    # "capability":I
    .restart local v5    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    :cond_51
    move/from16 v19, v0

    move-object/from16 v22, v5

    .line 3480
    .end local v0    # "capability":I
    .end local v5    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local v19    # "capability":I
    .restart local v22    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    :goto_19
    move/from16 v6, v21

    move/from16 v0, v18

    .end local v18    # "schedGroup":I
    .end local v21    # "adj":I
    .local v0, "schedGroup":I
    .restart local v6    # "adj":I
    :goto_1a
    invoke-virtual {v2, v1, v4}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I

    move-result v3

    or-int v3, v19, v3

    .line 3483
    .end local v19    # "capability":I
    .local v3, "capability":I
    const/4 v5, 0x5

    if-le v4, v5, :cond_52

    .line 3484
    and-int/lit8 v3, v3, -0x11

    .line 3486
    :cond_52
    if-nez v16, :cond_57

    .line 3487
    if-lt v6, v12, :cond_54

    move/from16 v5, p3

    .end local p3    # "prevProcState":I
    .local v5, "prevProcState":I
    if-lt v4, v5, :cond_53

    if-le v0, v9, :cond_55

    :cond_53
    :goto_1b
    goto :goto_1c

    .end local v5    # "prevProcState":I
    .restart local p3    # "prevProcState":I
    :cond_54
    move/from16 v5, p3

    .end local p3    # "prevProcState":I
    .restart local v5    # "prevProcState":I
    goto :goto_1b

    .line 3488
    :goto_1c
    const/16 v16, 0x1

    .line 3491
    :cond_55
    nop

    .line 3498
    move/from16 p3, v7

    .end local v7    # "clientAdj":I
    .local p3, "clientAdj":I
    and-int/lit16 v7, v3, -0x81

    .line 3499
    .local v7, "curFiltered":I
    move/from16 v18, v8

    move/from16 v33, v10

    move/from16 v8, v20

    .end local v10    # "logUid":I
    .end local v20    # "prevCapability":I
    .local v8, "prevCapability":I
    .local v18, "clientProcState":I
    .restart local v33    # "logUid":I
    and-int/lit16 v10, v8, -0x81

    .line 3500
    .local v10, "prevFiltered":I
    if-eq v7, v10, :cond_56

    move/from16 v19, v7

    .end local v7    # "curFiltered":I
    .local v19, "curFiltered":I
    and-int v7, v19, v10

    if-ne v7, v10, :cond_58

    .line 3502
    const/16 v16, 0x1

    goto :goto_1d

    .line 3500
    .end local v19    # "curFiltered":I
    .restart local v7    # "curFiltered":I
    :cond_56
    move/from16 v19, v7

    .end local v7    # "curFiltered":I
    .restart local v19    # "curFiltered":I
    goto :goto_1d

    .line 3486
    .end local v5    # "prevProcState":I
    .end local v18    # "clientProcState":I
    .end local v19    # "curFiltered":I
    .end local v33    # "logUid":I
    .local v7, "clientAdj":I
    .local v8, "clientProcState":I
    .local v10, "logUid":I
    .restart local v20    # "prevCapability":I
    .local p3, "prevProcState":I
    :cond_57
    move/from16 v5, p3

    move/from16 p3, v7

    move/from16 v18, v8

    move/from16 v33, v10

    move/from16 v8, v20

    .line 3507
    .end local v7    # "clientAdj":I
    .end local v10    # "logUid":I
    .end local v20    # "prevCapability":I
    .restart local v5    # "prevProcState":I
    .local v8, "prevCapability":I
    .restart local v18    # "clientProcState":I
    .restart local v33    # "logUid":I
    .local p3, "clientAdj":I
    :cond_58
    :goto_1d
    if-eqz v13, :cond_59

    .line 3508
    return v16

    .line 3510
    :cond_59
    if-ge v6, v12, :cond_5a

    .line 3511
    invoke-virtual {v2, v1, v6, v12, v0}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;III)I

    move-result v0

    .line 3513
    :cond_5a
    if-ge v4, v5, :cond_5b

    .line 3514
    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/am/OomAdjuster;->setIntermediateProcStateLSP(Lcom/android/server/am/ProcessRecord;II)V

    .line 3516
    :cond_5b
    if-le v0, v9, :cond_5c

    .line 3517
    invoke-virtual {v2, v15, v0}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 3519
    :cond_5c
    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 3521
    return v16
.end method

.method dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4571
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CacheOomRanker;->dump(Ljava/io/PrintWriter;)V

    .line 4572
    return-void
.end method

.method dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4566
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    .line 4567
    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 4559
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4558
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4563
    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 4541
    const-wide v0, 0x10500000031L

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4542
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v0

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4543
    const-wide v0, 0x10500000033L

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4545
    const-wide v0, 0x10500000035L

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4546
    const-wide v0, 0x10500000036L

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4549
    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4554
    return-void
.end method

.method enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1052
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    if-lez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1055
    :cond_0
    return-void
.end method

.method protected enqueuePendingTopAppIfNecessaryLSP()I
    .locals 3

    .line 913
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v0

    .line 914
    .local v0, "prevTopProcessState":I
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    .line 915
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v1

    .line 916
    .local v1, "topProcessState":I
    if-eq v0, v1, :cond_0

    .line 919
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    .line 921
    :cond_0
    return v1
.end method

.method evaluateProviderConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 15
    .param p1, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4837
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4838
    const/4 v0, 0x1

    return v0

    .line 4841
    :cond_0
    const/4 v0, 0x0

    .line 4842
    .local v0, "needDryRun":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 4843
    const/4 v0, 0x1

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    goto :goto_0

    .line 4844
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 4845
    const/4 v0, 0x1

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    goto :goto_0

    .line 4846
    :cond_2
    move-object/from16 v4, p1

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4847
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v3, p2

    iget-object v1, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4848
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4849
    const/4 v0, 0x1

    goto :goto_0

    .line 4847
    :cond_3
    move-object/from16 v3, p2

    .line 4850
    :cond_4
    nop

    .line 4857
    :goto_0
    if-eqz v0, :cond_5

    .line 4858
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4859
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 4858
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x384

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-result v2

    return v2

    .line 4863
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method evaluateProviderConnectionRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4868
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4869
    return v1

    .line 4872
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 4873
    return v1

    .line 4874
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 4875
    return v1

    .line 4876
    :cond_2
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4877
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4878
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4880
    return v1

    .line 4881
    :cond_3
    nop

    .line 4887
    const/4 v0, 0x0

    return v0
.end method

.method evaluateServiceConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)Z
    .locals 17
    .param p1, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "cr"    # Lcom/android/server/am/ConnectionRecord;

    .line 4758
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4759
    const/4 v2, 0x1

    return v2

    .line 4762
    :cond_0
    const/4 v2, 0x0

    .line 4763
    .local v2, "needDryRun":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 4765
    const/4 v2, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v14, v2

    goto/16 :goto_0

    .line 4766
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 4768
    const/4 v2, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v14, v2

    goto :goto_0

    .line 4769
    :cond_2
    const-wide v3, 0x100001000L

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4771
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getSetCapability()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSetCapability()I

    move-result v4

    and-int/2addr v3, v4

    .line 4772
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSetCapability()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 4774
    const/4 v2, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v14, v2

    goto :goto_0

    .line 4775
    :cond_3
    nop

    .line 4780
    nop

    .line 4781
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4784
    const/4 v2, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v14, v2

    goto :goto_0

    .line 4785
    :cond_4
    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4786
    invoke-virtual {v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v4, p2

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4787
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v5

    if-nez v5, :cond_6

    .line 4789
    const/4 v2, 0x1

    move v14, v2

    goto :goto_0

    .line 4786
    :cond_5
    move-object/from16 v4, p2

    .line 4792
    :cond_6
    move v14, v2

    .end local v2    # "needDryRun":Z
    .local v14, "needDryRun":Z
    :goto_0
    if-eqz v14, :cond_7

    .line 4795
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v5

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4796
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 4795
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x384

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-wide v15, v5

    move-object v6, v2

    move-object v2, v4

    move-wide v4, v15

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-result v4

    return v4

    .line 4799
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method evaluateServiceConnectionRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)Z
    .locals 4
    .param p1, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "cr"    # Lcom/android/server/am/ConnectionRecord;

    .line 4805
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4806
    return v1

    .line 4809
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 4810
    return v1

    .line 4811
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 4812
    return v1

    .line 4813
    :cond_2
    const-wide v2, 0x100001000L

    invoke-virtual {p3, v2, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4815
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getSetCapability()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetCapability()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 4817
    return v1

    .line 4818
    :cond_3
    nop

    .line 4819
    const/16 v0, 0x30

    invoke-virtual {p3, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4821
    return v1

    .line 4822
    :cond_4
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4823
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    nop

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4824
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4826
    return v1

    .line 4827
    :cond_5
    nop

    .line 4832
    const/4 v0, 0x0

    return v0
.end method

.method protected getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I
    .locals 3
    .param p1, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 3782
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x10

    if-ge v0, v1, :cond_0

    .line 3783
    return v2

    .line 3820
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    and-int/2addr v0, v2

    return v0
.end method

.method protected getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "procState"    # I

    .line 3709
    nop

    .line 3710
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    move-result v0

    .line 3712
    .local v0, "networkCapabilities":I
    packed-switch p2, :pswitch_data_0

    .line 3737
    const/4 v1, 0x0

    .local v1, "baseCapabilities":I
    goto :goto_0

    .line 3727
    .end local v1    # "baseCapabilities":I
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3728
    const/4 v1, 0x6

    .restart local v1    # "baseCapabilities":I
    goto :goto_0

    .line 3733
    .end local v1    # "baseCapabilities":I
    :cond_0
    const/4 v1, 0x0

    .line 3735
    .restart local v1    # "baseCapabilities":I
    goto :goto_0

    .line 3719
    .end local v1    # "baseCapabilities":I
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3720
    const/16 v1, 0x16

    .restart local v1    # "baseCapabilities":I
    goto :goto_0

    .line 3723
    .end local v1    # "baseCapabilities":I
    :cond_1
    const/16 v1, 0x10

    .line 3725
    .restart local v1    # "baseCapabilities":I
    goto :goto_0

    .line 3716
    .end local v1    # "baseCapabilities":I
    :pswitch_2
    const/16 v1, 0xff

    .line 3717
    .restart local v1    # "baseCapabilities":I
    nop

    .line 3740
    :goto_0
    or-int v2, v1, v0

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getFreezePolicy(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 4579
    nop

    .line 4588
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4589
    return v1

    .line 4593
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4594
    return v1

    .line 4598
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    if-lt v0, v2, :cond_2

    .line 4600
    const/4 v0, 0x1

    return v0

    .line 4604
    :cond_2
    return v1
.end method

.method protected getInitialAdj(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4731
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    return v0
.end method

.method protected getInitialCapability(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4741
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    return v0
.end method

.method protected getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4747
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v0

    return v0
.end method

.method protected getInitialProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4736
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    return v0
.end method

.method handleUserSwitchedLocked()V
    .locals 3

    .line 775
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 777
    return-void
.end method

.method idleUidsLocked()V
    .locals 21

    .line 4462
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v2

    .line 4463
    .local v2, "N":I
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4464
    if-gtz v2, :cond_0

    .line 4465
    return-void

    .line 4467
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v4

    .line 4468
    .local v4, "nowElapsed":J
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v6, v4, v6

    .line 4469
    .local v6, "maxBgTime":J
    const-wide/16 v8, 0x0

    .line 4470
    .local v8, "nextTime":J
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_1

    .line 4471
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 4473
    :cond_1
    const/4 v0, 0x0

    .line 4474
    .local v0, "shouldLogMisc":Z
    add-int/lit8 v10, v2, -0x1

    move v11, v10

    move-wide v9, v8

    move v8, v0

    .end local v0    # "shouldLogMisc":Z
    .local v8, "shouldLogMisc":Z
    .local v9, "nextTime":J
    .local v11, "i":I
    :goto_0
    const-wide/16 v12, 0x0

    if-ltz v11, :cond_7

    .line 4475
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v14

    .line 4476
    .local v14, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v15

    .line 4477
    .local v15, "bgTime":J
    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getLastIdleTimeIfStillIdle()J

    move-result-wide v17

    .line 4478
    .local v17, "idleTime":J
    cmp-long v0, v15, v12

    if-lez v0, :cond_6

    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    cmp-long v0, v17, v12

    if-nez v0, :cond_6

    .line 4479
    :cond_2
    cmp-long v0, v15, v6

    if-gtz v0, :cond_3

    .line 4480
    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 4481
    iget-object v12, v1, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v12

    .line 4482
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v14, v0}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 4483
    invoke-virtual {v14, v0}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 4484
    invoke-virtual {v14, v4, v5}, Lcom/android/server/am/UidRecord;->setLastIdleTime(J)V

    .line 4485
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 4486
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v12

    invoke-virtual {v0, v12, v14}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    .line 4485
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 4488
    :cond_3
    cmp-long v0, v9, v12

    if-eqz v0, :cond_4

    cmp-long v0, v9, v15

    if-lez v0, :cond_5

    .line 4489
    :cond_4
    move-wide v9, v15

    .line 4491
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4492
    const/4 v0, 0x1

    move v8, v0

    .line 4474
    .end local v14    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v15    # "bgTime":J
    .end local v17    # "idleTime":J
    :cond_6
    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_7
    nop

    .line 4497
    .end local v11    # "i":I
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_8

    .line 4498
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 4503
    :cond_8
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    if-eqz v0, :cond_c

    .line 4504
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 4505
    .local v0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v14

    .local v14, "size":I
    :goto_2
    if-ge v11, v14, :cond_b

    .line 4507
    iget-object v15, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 4508
    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v17, v12

    move-object/from16 v12, v16

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 4507
    invoke-virtual {v15, v12, v4, v5}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v12

    iget-object v15, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-wide/from16 v19, v4

    .end local v4    # "nowElapsed":J
    .local v19, "nowElapsed":J
    iget-wide v3, v15, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long/2addr v12, v3

    .line 4509
    .local v12, "bgTime":J
    cmp-long v3, v12, v17

    if-lez v3, :cond_a

    cmp-long v3, v9, v17

    if-eqz v3, :cond_9

    cmp-long v3, v9, v12

    if-lez v3, :cond_a

    .line 4510
    :cond_9
    move-wide v3, v12

    move-wide v9, v3

    .line 4505
    .end local v12    # "bgTime":J
    :cond_a
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v12, v17

    move-wide/from16 v4, v19

    const/16 v3, 0x3a

    goto :goto_2

    .end local v19    # "nowElapsed":J
    .restart local v4    # "nowElapsed":J
    :cond_b
    move-wide/from16 v19, v4

    move-wide/from16 v17, v12

    .end local v4    # "nowElapsed":J
    .restart local v19    # "nowElapsed":J
    goto :goto_3

    .line 4503
    .end local v0    # "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    .end local v11    # "i":I
    .end local v14    # "size":I
    .end local v19    # "nowElapsed":J
    .restart local v4    # "nowElapsed":J
    :cond_c
    move-wide/from16 v19, v4

    move-wide/from16 v17, v12

    .line 4514
    .end local v4    # "nowElapsed":J
    .restart local v19    # "nowElapsed":J
    :goto_3
    cmp-long v0, v9, v17

    if-lez v0, :cond_e

    .line 4515
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v3, v9

    sub-long v3, v3, v19

    .line 4516
    .local v3, "delay":J
    if-eqz v8, :cond_d

    .line 4517
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/OomAdjusterDebugLogger;->logScheduleUidIdle3(J)V

    .line 4519
    :cond_d
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x3a

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4521
    .end local v3    # "delay":J
    :cond_e
    return-void
.end method

.method initSettings()V
    .locals 5

    .line 754
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    .line 755
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/CacheOomRanker;->init(Ljava/util/concurrent/Executor;)V

    .line 756
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 757
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 758
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OomAdjuster$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 767
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .locals 1
    .param p1, "cachedCompatChangeId"    # I
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "defaultValue"    # Z

    .line 578
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster$Injector;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result v0

    return v0
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J

    .line 4386
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 4387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4388
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 4389
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 4390
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4391
    return-void

    .line 4390
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 4389
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/OomAdjuster;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "nowElapsed":J
    throw v2

    .line 4390
    .restart local p0    # "this":Lcom/android/server/am/OomAdjuster;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "nowElapsed":J
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4706
    return-void
.end method

.method onProcessOomAdjChanged(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "prevAdj"    # I

    .line 4722
    return-void
.end method

.method onProcessStateChanged(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "prevProcState"    # I

    .line 4714
    return-void
.end method

.method onWakefulnessChanged(I)V
    .locals 1
    .param p1, "wakefulness"    # I

    .line 3889
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->onWakefulnessChanged(I)V

    .line 3890
    return-void
.end method

.method protected performUpdateOomAdjLSP(I)V
    .locals 8
    .param p1, "oomAdjReason"    # I

    .line 827
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 828
    .local v3, "topApp":Lcom/android/server/am/ProcessRecord;
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 830
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 831
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    iput-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    .line 832
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    .end local p1    # "oomAdjReason":I
    .local v2, "oomAdjReason":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 833
    return-void
.end method

.method protected performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # I

    .line 874
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 876
    .local v2, "topApp":Lcom/android/server/am/ProcessRecord;
    move/from16 v1, p2

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 877
    invoke-static {v1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 879
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 882
    .local v10, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 883
    .local v3, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 884
    .local v4, "uids":Lcom/android/server/am/ActiveUids;
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v5

    iput v5, v0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 887
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v5

    .line 891
    .local v5, "containsCycle":Z
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    .line 893
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 894
    .local v11, "size":I
    if-lez v11, :cond_0

    .line 896
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    .end local v2    # "topApp":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "uids":Lcom/android/server/am/ActiveUids;
    .end local v5    # "containsCycle":Z
    .local v12, "topApp":Lcom/android/server/am/ProcessRecord;
    .local v13, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v14, "uids":Lcom/android/server/am/ActiveUids;
    .local v15, "containsCycle":Z
    goto :goto_0

    .line 897
    .end local v12    # "topApp":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v14    # "uids":Lcom/android/server/am/ActiveUids;
    .end local v15    # "containsCycle":Z
    .restart local v2    # "topApp":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v4    # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v5    # "containsCycle":Z
    :cond_0
    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    .end local v2    # "topApp":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "uids":Lcom/android/server/am/ActiveUids;
    .end local v5    # "containsCycle":Z
    .restart local v12    # "topApp":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v14    # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v15    # "containsCycle":Z
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_1

    .line 900
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-virtual {v0, v13}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    .line 902
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v3

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 903
    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v5

    .line 902
    const/4 v2, 0x0

    move-object v1, v7

    move/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJI)Z

    .line 905
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 906
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->clearPendingTopAppLocked()V

    .line 907
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 908
    const/4 v1, 0x1

    return v1
.end method

.method protected performUpdateOomAdjPendingTargetsLocked(I)V
    .locals 11
    .param p1, "oomAdjReason"    # I

    .line 1155
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 1157
    .local v3, "topApp":Lcom/android/server/am/ProcessRecord;
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 1158
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 1161
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 1162
    .local v4, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 1163
    .local v5, "uids":Lcom/android/server/am/ActiveUids;
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 1164
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1165
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v10

    .line 1166
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    .end local p1    # "oomAdjReason":I
    .local v2, "oomAdjReason":I
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 1167
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1168
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1169
    iget-object p1, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->clearPendingTopAppLocked()V

    .line 1171
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1172
    return-void

    .line 1167
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1
.end method

.method protected postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V
    .locals 11
    .param p1, "oomAdjReason"    # I
    .param p2, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p3, "now"    # J
    .param p5, "nowElapsed"    # J
    .param p7, "oldTime"    # J
    .param p9, "doingAll"    # Z

    .line 1315
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 1316
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 1318
    move-object v1, p0

    move v9, p1

    move-object v8, p2

    move-wide v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;IZ)V

    .line 1320
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 1322
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v2, "always-finish"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 1328
    :cond_0
    move-wide/from16 v4, p5

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 1330
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1331
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v6

    .line 1332
    .local v6, "nowUptime":J
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v3, v9, v10}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1339
    .end local v6    # "nowUptime":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1338
    .restart local v6    # "nowUptime":J
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v3, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 1339
    .end local v6    # "nowUptime":J
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_2

    .line 1342
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p3

    .line 1347
    .local v2, "duration":J
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Did OOM ADJ in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    .end local v2    # "duration":J
    :cond_2
    return-void

    .line 1339
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "procDied"    # Z

    .line 1059
    if-eqz p1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1061
    if-eqz p2, :cond_0

    .line 1062
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/PlatformCompatCache;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    .line 1065
    :cond_0
    return-void
.end method

.method protected reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 3879
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3881
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v1, :cond_0

    .line 3882
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3883
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3885
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 3886
    return-void

    .line 3885
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetInternal()V
    .locals 0

    .line 4727
    return-void
.end method

.method setAppAndChildProcessGroup(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "group"    # I

    .line 749
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 751
    return-void
.end method

.method setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4338
    const/4 v0, 0x2

    .line 4339
    .local v0, "initialSchedGroup":I
    const/16 v1, 0x13

    .line 4340
    .local v1, "initialProcState":I
    const/4 v2, 0x0

    .line 4341
    .local v2, "initialCapability":I
    const/4 v3, 0x1

    .line 4342
    .local v3, "initialCached":Z
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4343
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    .line 4344
    .local v5, "prevProcState":I
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v6

    .line 4347
    .local v6, "prevAdj":I
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4352
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 4353
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4354
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    goto :goto_0

    .line 4364
    :catch_0
    move-exception v7

    goto :goto_1

    .line 4356
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    const/16 v9, -0xa

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V

    .line 4358
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/server/am/OomAdjuster;->isScreenOnOrAnimatingLocked(Lcom/android/server/am/ProcessStateRecord;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    .line 4359
    const/4 v0, 0x3

    .line 4360
    const/4 v1, 0x2

    .line 4362
    :cond_1
    const/16 v2, 0xff

    .line 4363
    const/4 v3, 0x0

    .line 4366
    goto :goto_2

    .line 4364
    :goto_1
    nop

    .line 4365
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to pre-set top priority to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OomAdjuster"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 4370
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 4371
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 4372
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 4374
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 4375
    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 4376
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/server/am/ProcessStateRecord;->setForcingToImportant(Ljava/lang/Object;)V

    .line 4377
    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessStateRecord;->setHasShownUi(Z)V

    .line 4379
    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/OomAdjuster;->onProcessStateChanged(Lcom/android/server/am/ProcessRecord;I)V

    .line 4380
    invoke-virtual {p0, p1, v6}, Lcom/android/server/am/OomAdjuster;->onProcessOomAdjChanged(Lcom/android/server/am/ProcessRecord;I)V

    .line 4381
    return-void
.end method

.method protected setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;III)I
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "adj"    # I
    .param p3, "prevRawAppAdj"    # I
    .param p4, "schedGroup"    # I

    .line 3007
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3008
    .local v0, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 3010
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result p2

    .line 3011
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v1

    if-le p2, v1, :cond_0

    .line 3012
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result p2

    .line 3013
    const/16 v1, 0xfa

    if-gt p2, v1, :cond_0

    .line 3014
    const/4 p4, 0x2

    .line 3018
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 3020
    return p4
.end method

.method protected setIntermediateProcStateLSP(Lcom/android/server/am/ProcessRecord;II)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "procState"    # I
    .param p3, "prevProcState"    # I

    .line 3026
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3027
    .local v0, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 3028
    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 3029
    return-void
.end method

.method protected setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/am/ProcessStateRecord;
    .param p2, "schedGroup"    # I

    .line 3035
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 3036
    invoke-direct {p0}, Lcom/android/server/am/OomAdjuster;->isDeviceFullyAwake()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3037
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->shouldScheduleLikeTopApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3038
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 3039
    const/4 p2, 0x1

    .line 3043
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3044
    return-void
.end method

.method setProcessGroup(IILjava/lang/String;)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "group"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 726
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p1, v0, :cond_0

    .line 728
    return-void

    .line 730
    :cond_0
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    .line 731
    .local v2, "traceEnabled":Z
    if-eqz v2, :cond_1

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setProcessGroup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 736
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    if-eqz v2, :cond_3

    .line 743
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .line 742
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 743
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 745
    :cond_2
    throw v3

    .line 737
    :catch_0
    move-exception v3

    .line 742
    if-eqz v2, :cond_3

    .line 743
    goto :goto_0

    .line 746
    :cond_3
    :goto_1
    return-void
.end method

.method setUidTempAllowlistStateLSP(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "onAllowlist"    # Z

    .line 4525
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 4526
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v1

    if-eq v1, p2, :cond_1

    .line 4527
    invoke-virtual {v0, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 4528
    nop

    .line 4529
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4530
    invoke-virtual {v0, v1}, Lcom/android/server/am/UidRecord;->getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/OomAdjuster;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4529
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 4532
    .end local v1    # "i":I
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 4537
    :cond_1
    return-void
.end method

.method unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # I

    .line 4679
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4680
    return-void

    .line 4683
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4684
    .local v0, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4685
    return-void

    .line 4688
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 4689
    .local v1, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 4690
    .local v2, "uids":Lcom/android/server/am/ActiveUids;
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4691
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 4692
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 4694
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4695
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 4696
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 4697
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 4698
    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result v7

    .line 4697
    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 4695
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 4700
    .end local v4    # "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4701
    return-void
.end method

.method updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZI)V
    .locals 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # I
    .param p3, "immediate"    # Z
    .param p4, "oldOomAdj"    # I

    .line 4610
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v4}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4611
    return-void

    .line 4614
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getFreezePolicy(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    .line 4615
    .local v4, "freezePolicy":Z
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4616
    .local v5, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4617
    .local v6, "state":Lcom/android/server/am/ProcessStateRecord;
    nop

    .line 4618
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lt v7, v8, :cond_1

    move v7, v10

    goto :goto_0

    :cond_1
    move v7, v9

    :goto_0
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    if-lt v3, v8, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    move v8, v9

    :goto_1
    xor-int/2addr v7, v8

    if-nez v7, :cond_3

    const/16 v7, 0x3e9

    if-ne v3, v7, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move v7, v9

    goto :goto_3

    :goto_2
    move v7, v10

    .line 4620
    .local v7, "oomAdjChanged":Z
    :goto_3
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeAdjSeq()I

    move-result v8

    iget v11, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v8, v11, :cond_5

    move v8, v10

    goto :goto_4

    :cond_5
    move v8, v9

    .line 4621
    .local v8, "shouldNotFreezeChanged":Z
    :goto_4
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4622
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v11

    const/16 v12, 0x80

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_6

    move v11, v10

    goto :goto_5

    :cond_6
    move v11, v9

    .line 4624
    .local v11, "hasCpuCapability":Z
    :goto_5
    iget-object v13, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4625
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v13

    and-int/2addr v13, v12

    if-ne v13, v12, :cond_7

    move v12, v10

    goto :goto_6

    :cond_7
    move v12, v9

    .line 4627
    .local v12, "usedToHaveCpuCapability":Z
    :goto_6
    if-eq v11, v12, :cond_8

    move v9, v10

    .line 4628
    .local v9, "cpuCapabilityChanged":Z
    :cond_8
    if-nez v7, :cond_9

    if-nez v8, :cond_9

    if-eqz v9, :cond_11

    .line 4629
    :cond_9
    const-wide/16 v13, 0x40

    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4630
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 4632
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v15

    const-string v13, "-"

    if-eqz v15, :cond_a

    const-string v14, "F"

    goto :goto_7

    :cond_a
    move-object v14, v13

    :goto_7
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4633
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "P"

    goto :goto_8

    :cond_b
    move-object v14, v13

    :goto_8
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4634
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "E"

    goto :goto_9

    :cond_c
    move-object v14, v13

    :goto_9
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4635
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "N"

    goto :goto_a

    :cond_d
    move-object v14, v13

    :goto_a
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4636
    if-eqz v11, :cond_e

    const-string v14, "T"

    goto :goto_b

    :cond_e
    move-object v14, v13

    :goto_b
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4637
    if-eqz v2, :cond_f

    const-string v14, "I"

    goto :goto_c

    :cond_f
    move-object v14, v13

    :goto_c
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4638
    if-eqz v4, :cond_10

    const-string v14, "Z"

    goto :goto_d

    :cond_10
    move-object v14, v13

    :goto_d
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4639
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4640
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4641
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4642
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4644
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4630
    const-string v13, "FreezeLite"

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v13, v10}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 4645
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateAppFreezeStateLSP "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " pid: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4648
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " isFreezeExempt: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4649
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " isFrozen: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4650
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " shouldNotFreeze: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4651
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " shouldNotFreezeReason: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4652
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " curAdj: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4653
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " oldOomAdj: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " immediate: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " cpuCapability: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4645
    const-string v13, "Freezer"

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v13, v10}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 4660
    .end local v7    # "oomAdjChanged":Z
    .end local v8    # "shouldNotFreezeChanged":Z
    .end local v9    # "cpuCapabilityChanged":Z
    .end local v11    # "hasCpuCapability":Z
    .end local v12    # "usedToHaveCpuCapability":Z
    :cond_11
    if-eqz v4, :cond_14

    .line 4662
    if-eqz v2, :cond_12

    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v7

    if-nez v7, :cond_12

    .line 4664
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v7, v1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncAtEarliestLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_e

    .line 4665
    :cond_12
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v7

    if-nez v7, :cond_16

    .line 4666
    :cond_13
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v7, v1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_e

    .line 4670
    :cond_14
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v7

    if-nez v7, :cond_15

    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 4671
    :cond_15
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 4672
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result v8

    .line 4671
    invoke-virtual {v7, v1, v8}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 4675
    :cond_16
    :goto_e
    return-void
.end method

.method protected updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1789
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1790
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1791
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1795
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1798
    :cond_1
    :goto_0
    return-void
.end method

.method updateOomAdjFollowUpTargetsLocked()V
    .locals 11

    .line 1121
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v0

    .line 1122
    .local v0, "now":J
    const-wide v2, 0x7fffffffffffffffL

    .line 1123
    .local v2, "nextFollowUpUptimeMs":J
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 1124
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_4

    .line 1125
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1126
    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getFollowupUpdateUptimeMs()J

    move-result-wide v8

    .line 1128
    .local v8, "followUpUptimeMs":J
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1130
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    .line 1131
    :cond_0
    cmp-long v10, v8, v0

    if-gtz v10, :cond_1

    .line 1133
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1134
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10, v4, v5}, Lcom/android/server/am/ProcessStateRecord;->setFollowupUpdateUptimeMs(J)V

    .line 1135
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    .line 1136
    :cond_1
    cmp-long v10, v8, v2

    if-gez v10, :cond_2

    .line 1138
    move-wide v2, v8

    goto :goto_1

    .line 1139
    :cond_2
    cmp-long v10, v8, v4

    if-nez v10, :cond_3

    .line 1141
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1124
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "followUpUptimeMs":J
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 1145
    .end local v6    # "i":I
    cmp-long v4, v2, v4

    if-eqz v4, :cond_5

    .line 1147
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/am/OomAdjuster;->scheduleFollowUpOomAdjusterUpdateLocked(JJ)V

    .line 1150
    :cond_5
    const/16 v4, 0x17

    invoke-virtual {p0, v4}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 1151
    return-void
.end method

.method updateOomAdjLocked(I)V
    .locals 2
    .param p1, "oomAdjReason"    # I

    .line 804
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 805
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    .line 806
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # I

    .line 845
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 846
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v1

    .line 847
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method updateOomAdjPendingTargetsLocked(I)V
    .locals 2
    .param p1, "oomAdjReason"    # I

    .line 1094
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1095
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 1096
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1097
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(I)V

    .line 1098
    return-void

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    return-void

    .line 1104
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-eqz v0, :cond_2

    .line 1107
    return-void

    .line 1110
    :cond_2
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 1111
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 1116
    nop

    .line 1117
    return-void

    .line 1114
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 1116
    throw v0
.end method

.method protected updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .locals 24
    .param p1, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p2, "nowElapsed"    # J

    .line 1821
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    .line 1823
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 1824
    .local v4, "becameIdle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UidRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1827
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_0

    .line 1828
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 1830
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_24

    .line 1831
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v7

    .line 1832
    .local v7, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v8

    const/16 v9, 0x14

    if-eq v8, v9, :cond_22

    .line 1833
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v10

    if-ne v8, v10, :cond_2

    .line 1834
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v10

    if-ne v8, v10, :cond_2

    .line 1835
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v10

    if-ne v8, v10, :cond_2

    .line 1836
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v7

    goto/16 :goto_d

    .line 1837
    :cond_2
    :goto_1
    const/4 v8, 0x0

    .line 1838
    .local v8, "uidChange":I
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v10

    .line 1839
    .local v10, "shouldLog":Z
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v11, :cond_3

    .line 1840
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Changes in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": proc state from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", capability from "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", allowlist from "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", procAdjChanged: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1840
    const-string v12, "ActivityManager"

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v11

    invoke-static {v11}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v11

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    if-eqz v11, :cond_d

    .line 1849
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v11

    if-nez v11, :cond_c

    .line 1855
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v11

    invoke-static {v11}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1856
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1857
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v15

    cmp-long v11, v15, v13

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v17, v7

    goto :goto_5

    .line 1858
    :cond_5
    :goto_2
    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1859
    if-eqz v10, :cond_6

    .line 1860
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v13

    invoke-virtual {v11, v13, v2, v3}, Lcom/android/server/am/OomAdjusterDebugLogger;->logSetLastBackgroundTime(IJ)V

    .line 1862
    :cond_6
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v13, 0x3a

    nop

    if-nez v11, :cond_8

    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 1863
    invoke-virtual {v11, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v17, v7

    goto :goto_5

    .line 1868
    :cond_8
    :goto_3
    if-eqz v10, :cond_9

    .line 1869
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v14

    iget-object v15, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v17, v7

    .end local v7    # "uidRec":Lcom/android/server/am/UidRecord;
    .local v17, "uidRec":Lcom/android/server/am/UidRecord;
    iget-wide v6, v15, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v11, v14, v6, v7}, Lcom/android/server/am/OomAdjusterDebugLogger;->logScheduleUidIdle1(IJ)V

    goto :goto_4

    .line 1868
    .end local v17    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v7    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_9
    move-object/from16 v17, v7

    .line 1872
    .end local v7    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v17    # "uidRec":Lcom/android/server/am/UidRecord;
    :goto_4
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v7, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v6, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1876
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/UidRecord;->isSetIdle()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1877
    or-int/lit8 v8, v8, 0x2

    .line 1878
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v6

    if-eq v6, v9, :cond_a

    .line 1880
    move-object/from16 v6, v17

    .end local v17    # "uidRec":Lcom/android/server/am/UidRecord;
    .local v6, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1878
    .end local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v17    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_a
    move-object/from16 v6, v17

    .end local v17    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    goto :goto_7

    .line 1876
    .end local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v17    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_b
    move-object/from16 v6, v17

    .end local v17    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    goto :goto_7

    .line 1849
    .end local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v7    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_c
    move-object v6, v7

    .end local v7    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    goto :goto_6

    .line 1848
    .end local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v7    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_d
    move-object v6, v7

    .line 1884
    .end local v7    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    :goto_6
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1885
    or-int/lit8 v8, v8, 0x4

    .line 1886
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 1887
    invoke-virtual {v6, v12}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 1889
    :cond_e
    invoke-virtual {v6, v13, v14}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1890
    invoke-virtual {v6, v13, v14}, Lcom/android/server/am/UidRecord;->setLastIdleTime(J)V

    .line 1891
    if-eqz v10, :cond_f

    .line 1892
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/android/server/am/OomAdjusterDebugLogger;->logClearLastBackgroundTime(I)V

    .line 1895
    :cond_f
    :goto_7
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v7

    const/16 v11, 0xb

    if-le v7, v11, :cond_10

    const/4 v7, 0x1

    goto :goto_8

    :cond_10
    move v7, v12

    .line 1897
    .local v7, "wasCached":Z
    :goto_8
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v13

    if-le v13, v11, :cond_11

    const/4 v12, 0x1

    .line 1899
    .local v12, "isCached":Z
    :cond_11
    if-ne v7, v12, :cond_12

    .line 1900
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v11

    if-ne v11, v9, :cond_14

    .line 1901
    :cond_12
    if-eqz v12, :cond_13

    const/16 v9, 0x8

    goto :goto_9

    .line 1902
    :cond_13
    const/16 v9, 0x10

    :goto_9
    or-int/2addr v8, v9

    .line 1904
    :cond_14
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v9

    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v11

    if-eq v9, v11, :cond_15

    .line 1905
    or-int/lit8 v8, v8, 0x20

    .line 1907
    :cond_15
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v9

    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v11

    const/high16 v13, -0x80000000

    if-eq v9, v11, :cond_16

    .line 1908
    or-int/2addr v8, v13

    .line 1910
    :cond_16
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1911
    or-int/lit8 v8, v8, 0x40

    .line 1913
    :cond_17
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v9

    .line 1914
    .local v9, "oldProcState":I
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v11

    .line 1915
    .local v11, "oldCapability":I
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v14

    invoke-virtual {v6, v14}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 1916
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v14

    invoke-virtual {v6, v14}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 1917
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v14

    invoke-virtual {v6, v14}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 1918
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v14

    invoke-virtual {v6, v14}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 1919
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->clearProcAdjChanged()V

    .line 1920
    if-eqz v10, :cond_1b

    .line 1921
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v14

    if-ne v14, v9, :cond_19

    .line 1922
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v14

    if-eq v14, v11, :cond_18

    goto :goto_a

    :cond_18
    move/from16 v20, v9

    move/from16 v22, v11

    goto :goto_c

    .line 1923
    :cond_19
    :goto_a
    const/4 v14, 0x0

    .line 1924
    .local v14, "flags":I
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 1925
    or-int/lit8 v14, v14, 0x1

    move/from16 v23, v14

    goto :goto_b

    .line 1924
    :cond_1a
    move/from16 v23, v14

    .line 1927
    .end local v14    # "flags":I
    .local v23, "flags":I
    :goto_b
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v18

    .line 1928
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v19

    .line 1929
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v21

    .line 1927
    move/from16 v20, v9

    move/from16 v22, v11

    move-object/from16 v17, v14

    .end local v9    # "oldProcState":I
    .end local v11    # "oldCapability":I
    .local v20, "oldProcState":I
    .local v22, "oldCapability":I
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/am/OomAdjusterDebugLogger;->logUidStateChanged(IIIIII)V

    goto :goto_c

    .line 1920
    .end local v20    # "oldProcState":I
    .end local v22    # "oldCapability":I
    .end local v23    # "flags":I
    .restart local v9    # "oldProcState":I
    .restart local v11    # "oldCapability":I
    :cond_1b
    move/from16 v20, v9

    move/from16 v22, v11

    .line 1932
    .end local v9    # "oldProcState":I
    .end local v11    # "oldCapability":I
    .restart local v20    # "oldProcState":I
    .restart local v22    # "oldCapability":I
    :goto_c
    and-int v9, v8, v13

    if-nez v9, :cond_1c

    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_1d

    .line 1934
    :cond_1c
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1935
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v14

    .line 1934
    invoke-virtual {v9, v11, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    .line 1937
    :cond_1d
    if-eqz v8, :cond_1e

    .line 1938
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, -0x1

    invoke-virtual {v9, v6, v11, v8}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 1940
    :cond_1e
    and-int v9, v8, v13

    if-nez v9, :cond_1f

    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_20

    .line 1942
    :cond_1f
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    .line 1943
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v14

    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v15

    .line 1942
    invoke-virtual {v9, v11, v14, v15}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    .line 1945
    :cond_20
    and-int v9, v8, v13

    if-eqz v9, :cond_21

    .line 1946
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v13

    invoke-virtual {v9, v11, v13}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 1948
    :cond_21
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->hasForegroundServices()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1949
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v9, v6}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    goto :goto_d

    .line 1832
    .end local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v8    # "uidChange":I
    .end local v10    # "shouldLog":Z
    .end local v12    # "isCached":Z
    .end local v20    # "oldProcState":I
    .end local v22    # "oldCapability":I
    .local v7, "uidRec":Lcom/android/server/am/UidRecord;
    :cond_22
    move-object v6, v7

    .line 1953
    .end local v7    # "uidRec":Lcom/android/server/am/UidRecord;
    .restart local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_23
    :goto_d
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-virtual {v7, v8, v2, v3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    .line 1830
    .end local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_24
    nop

    .line 1955
    .end local v5    # "i":I
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_25

    .line 1956
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 1959
    :cond_25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1960
    .local v5, "size":I
    if-lez v5, :cond_26

    .line 1963
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_e
    if-ltz v6, :cond_26

    .line 1964
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/UidRecord;

    invoke-virtual {v8}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    .line 1963
    add-int/lit8 v6, v6, -0x1

    goto :goto_e

    .line 1967
    .end local v6    # "i":I
    :cond_26
    return-void
.end method
