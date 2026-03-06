.class public final Lcom/android/server/power/hint/HintManagerService;
.super Lcom/android/server/SystemService;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/hint/HintManagerService$Injector;,
        Lcom/android/server/power/hint/HintManagerService$BinderService;,
        Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;,
        Lcom/android/server/power/hint/HintManagerService$NativeWrapper;,
        Lcom/android/server/power/hint/HintManagerService$MyUidObserver;,
        Lcom/android/server/power/hint/HintManagerService$HeadroomCache;,
        Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;,
        Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;,
        Lcom/android/server/power/hint/HintManagerService$AppHintSession;,
        Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    }
.end annotation


# static fields
.field static final CLEAN_UP_UID_DELAY_MILLIS:I = 0x3e8

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_HEADROOM_PROC_STAT_MIN_MILLIS:I = 0x32

.field private static final DEFAULT_MAX_CPU_HEADROOM_THREADS_COUNT:I = 0x5

.field private static final EVENT_CLEAN_UP_UID:I = 0x3

.field static final MAX_GRAPHICS_PIPELINE_THREADS_COUNT:I = 0x5

.field private static final PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;

.field private static final PROPERTY_CHECK_HEADROOM_AFFINITY:Ljava/lang/String; = "persist.hms.check_headroom_affinity"

.field private static final PROPERTY_CHECK_HEADROOM_PROC_STAT_MIN_MILLIS:Ljava/lang/String; = "persist.hms.check_headroom_proc_stat_min_millis"

.field private static final PROPERTY_CHECK_HEADROOM_TID:Ljava/lang/String; = "persist.hms.check_headroom_tid"

.field private static final PROPERTY_CPU_HEADROOM_TID_MAX_CNT:Ljava/lang/String; = "persist.hms.cpu_headroom_tid_max_cnt"

.field private static final PROPERTY_HWUI_ENABLE_HINT_MANAGER:Ljava/lang/String; = "debug.hwui.use_hint_manager"

.field private static final PROPERTY_SF_ENABLE_CPU_HINT:Ljava/lang/String; = "debug.sf.enable_adpf_cpu_hint"

.field private static final PROPERTY_USE_HAL_HEADROOMS:Ljava/lang/String; = "persist.hms.use_hal_headrooms"

.field private static final TAG:Ljava/lang/String; = "HintManagerService"


# instance fields
.field private final mActiveSessions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/power/hint/HintManagerService$AppHintSession;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private mChannelMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/hint/HintManagerService$ChannelItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mChannelMapLock:Ljava/lang/Object;

.field private final mCheckHeadroomAffinity:Z

.field private final mCheckHeadroomProcStatMinMillis:I

.field private final mCheckHeadroomTid:Z

.field private final mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

.field private mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<",
            "Landroid/hardware/power/CpuHeadroomParams;",
            "Landroid/hardware/power/CpuHeadroomResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mCpuHeadroomLock:Ljava/lang/Object;

.field private final mCpuHeadroomMaxTidCnt:I

.field private final mDefaultCpuHeadroomCalculationWindowMillis:I

.field private final mDefaultGpuHeadroomCalculationWindowMillis:I

.field private mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

.field private mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

.field private final mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<",
            "Landroid/hardware/power/GpuHeadroomParams;",
            "Landroid/hardware/power/GpuHeadroomResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mGpuHeadroomLock:Ljava/lang/Object;

.field final mHintSessionPreferredRate:J

.field final mJiffyMillis:F

.field private mLastCpuUserModeJiffies:J

.field private mLastCpuUserModeTimeCheckedMillis:J

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

.field private final mNonIsolatedTids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNonIsolatedTidsLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPowerHal:Landroid/hardware/power/IPower;

.field private mPowerHalVersion:I

.field private mProcStatFilePathOverride:Ljava/lang/String;

.field final mService:Landroid/os/IHintManager$Stub;

.field private mSessionManager:Landroid/adpf/ISessionManager;

.field private mSessionSnapshotMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSessionSnapshotMapLock:Ljava/lang/Object;

.field private mSupportInfo:Landroid/hardware/power/SupportInfo;

.field private mThreadsUsageMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThreadsUsageObject:Ljava/lang/Object;

.field final mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

.field private final mUidToLastUserModeJiffies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUsesFmq:Z


# direct methods
.method public static synthetic $r8$lambda$ekPydgvI2SqQJb7XQ9M2EthMnAQ(Lcom/android/server/power/hint/HintManagerService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService;->onPullAtom(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckHeadroomAffinity(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckHeadroomProcStatMinMillis(Lcom/android/server/power/hint/HintManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckHeadroomTid(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCleanUpHandler(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigCreationSupport(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCpuHeadroomMaxTidCnt(Lcom/android/server/power/hint/HintManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultGpuHeadroomCalculationWindowMillis(Lcom/android/server/power/hint/HintManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mDefaultGpuHeadroomCalculationWindowMillis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnforceCpuHeadroomUserModeCpuTimeCheck(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFMQUsesIntegratedEventFlag(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCpuUserModeTimeCheckedMillis(Lcom/android/server/power/hint/HintManagerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNonIsolatedTidsLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerHal(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/IPower;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerHalVersion(Lcom/android/server/power/hint/HintManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcStatFilePathOverride(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/adpf/ISessionManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionSnapshotMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionSnapshotMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThreadsUsageMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThreadsUsageObject(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsesFmq(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFMQUsesIntegratedEventFlag(Lcom/android/server/power/hint/HintManagerService;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCpuUserModeTimeCheckedMillis(Lcom/android/server/power/hint/HintManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSessionManager(Lcom/android/server/power/hint/HintManagerService;Landroid/adpf/ISessionManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsesFmq(Lcom/android/server/power/hint/HintManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService;->checkTidValid(II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcontains(Lcom/android/server/power/hint/HintManagerService;[II)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService;->contains([II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService;->formatTidCheckErrMsg(I[ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misHintSessionSupported(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtooManyPipelineThreads(Lcom/android/server/power/hint/HintManagerService;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/hint/HintManagerService;->tooManyPipelineThreads(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetPROC_STAT_CPU_TIME_TOTAL_PATTERN()Ljava/util/regex/Pattern;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/hint/HintManagerService;->PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 117
    nop

    .line 118
    const-string v0, "cpu\\s+(?<user>[0-9]+)\\s(?<nice>[0-9]+).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/hint/HintManagerService;->PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 300
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/hint/HintManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/hint/HintManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V

    .line 301
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/power/hint/HintManagerService$Injector;

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    .line 212
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    .line 214
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    .line 221
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    .line 223
    iput-wide v3, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    .line 227
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    .line 229
    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    .line 287
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomLock:Ljava/lang/Object;

    .line 296
    new-instance v3, Lcom/android/server/power/hint/HintManagerService$BinderService;

    invoke-direct {v3, p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    .line 306
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    .line 307
    nop

    .line 308
    new-instance v3, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->createCleanUpThread()Lcom/android/server/ServiceThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;-><init>(Lcom/android/server/power/hint/HintManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    .line 309
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 314
    nop

    .line 315
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 319
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 320
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 321
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    .line 322
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    .line 323
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 324
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halInit()V

    .line 325
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halGetHintSessionPreferredRate()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    .line 326
    new-instance v3, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    invoke-direct {v3, p0}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 327
    const-class v3, Landroid/app/ActivityManagerInternal;

    .line 328
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 327
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 329
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$Injector;->createIPower()Landroid/hardware/power/IPower;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    .line 330
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    .line 331
    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    .line 332
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    if-eqz v3, :cond_0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->getSupportInfo()Landroid/hardware/power/SupportInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not contact PowerHAL!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 339
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    new-instance v3, Landroid/os/CpuHeadroomParamsInternal;

    invoke-direct {v3}, Landroid/os/CpuHeadroomParamsInternal;-><init>()V

    iget v3, v3, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput v3, p0, Lcom/android/server/power/hint/HintManagerService;->mDefaultCpuHeadroomCalculationWindowMillis:I

    .line 341
    new-instance v3, Landroid/os/GpuHeadroomParamsInternal;

    invoke-direct {v3}, Landroid/os/GpuHeadroomParamsInternal;-><init>()V

    iget v3, v3, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput v3, p0, Lcom/android/server/power/hint/HintManagerService;->mDefaultGpuHeadroomCalculationWindowMillis:I

    .line 343
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v3, v3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v3, v3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 344
    new-instance v2, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v3, v3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v3, v3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-long v5, v3

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;-><init>(IJ)V

    iput-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    .line 345
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    .line 346
    sget v2, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v2}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v2

    .line 347
    .local v2, "jiffyHz":J
    const/high16 v5, 0x447a0000    # 1000.0f

    long-to-float v6, v2

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    .line 348
    const-string/jumbo v5, "persist.hms.check_headroom_tid"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    .line 349
    const-string/jumbo v5, "persist.hms.check_headroom_affinity"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    .line 351
    const-string/jumbo v1, "persist.hms.check_headroom_proc_stat_min_millis"

    const/16 v5, 0x32

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    .line 354
    const-string/jumbo v1, "persist.hms.cpu_headroom_tid_max_cnt"

    const/4 v5, 0x5

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v5, v5, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v5, v5, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxTidCount:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    .line 357
    .end local v2    # "jiffyHz":J
    goto :goto_1

    .line 358
    :cond_1
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    .line 359
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    .line 360
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    .line 361
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    .line 362
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    .line 363
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    .line 364
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    .line 366
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v1, :cond_2

    .line 367
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    int-to-long v1, v1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;-><init>(IJ)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    goto :goto_2

    .line 369
    :cond_2
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    .line 371
    :goto_2
    return-void
.end method

.method private checkTidValid(II[ILandroid/util/IntArray;)Ljava/lang/Integer;
    .locals 9
    .param p1, "uid"    # I
    .param p2, "tgid"    # I
    .param p3, "tids"    # [I
    .param p4, "nonIsolated"    # Landroid/util/IntArray;

    .line 1293
    const/4 v0, 0x0

    .line 1294
    .local v0, "isolatedPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_5

    .line 1295
    aget v2, p3, v1

    .line 1296
    .local v2, "tid":I
    const-string v3, "Uid:"

    const-string v4, "Tgid:"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, "procStatusKeys":[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [J

    .line 1301
    .local v4, "output":[J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1302
    const/4 v5, 0x0

    aget-wide v5, v4, v5

    long-to-int v5, v5

    .line 1303
    .local v5, "uidOfThreadId":I
    const/4 v6, 0x1

    aget-wide v6, v4, v6

    long-to-int v6, v6

    .line 1306
    .local v6, "pidOfThreadId":I
    if-eqz p4, :cond_0

    if-ne v6, p2, :cond_0

    .line 1307
    invoke-virtual {p4, v2}, Landroid/util/IntArray;->add(I)V

    .line 1308
    goto :goto_1

    .line 1311
    :cond_0
    if-ne v5, p1, :cond_1

    .line 1312
    goto :goto_1

    .line 1315
    :cond_1
    if-nez v0, :cond_3

    .line 1317
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_2

    .line 1318
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 1320
    :cond_2
    iget-object v7, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v7, p1}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object v0

    .line 1321
    if-nez v0, :cond_3

    .line 1322
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 1325
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1326
    nop

    .line 1294
    .end local v2    # "tid":I
    .end local v3    # "procStatusKeys":[Ljava/lang/String;
    .end local v4    # "output":[J
    .end local v5    # "uidOfThreadId":I
    .end local v6    # "pidOfThreadId":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1328
    .restart local v2    # "tid":I
    .restart local v3    # "procStatusKeys":[Ljava/lang/String;
    .restart local v4    # "output":[J
    .restart local v5    # "uidOfThreadId":I
    .restart local v6    # "pidOfThreadId":I
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 1294
    .end local v2    # "tid":I
    .end local v3    # "procStatusKeys":[Ljava/lang/String;
    .end local v4    # "output":[J
    .end local v5    # "uidOfThreadId":I
    .end local v6    # "pidOfThreadId":I
    :cond_5
    nop

    .line 1330
    .end local v1    # "i":I
    const/4 v1, 0x0

    return-object v1
.end method

.method private contains([II)Z
    .locals 4
    .param p1, "array"    # [I
    .param p2, "target"    # I

    .line 1339
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 1340
    .local v3, "element":I
    if-ne v3, p2, :cond_0

    .line 1341
    const/4 v0, 0x1

    return v0

    .line 1340
    :cond_0
    nop

    .line 1339
    .end local v3    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1344
    :cond_1
    return v1
.end method

.method private createCleanUpThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 453
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0x13

    const/4 v2, 0x1

    const-string v3, "HintManagerService"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 455
    .local v0, "handlerThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 456
    return-object v0
.end method

.method private formatTidCheckErrMsg(I[ILjava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "tids"    # [I
    .param p3, "invalidTid"    # Ljava/lang/Integer;

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t belong to the calling application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFmqUsage()I
    .locals 2

    .line 723
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    if-eqz v0, :cond_0

    .line 724
    const/4 v0, 0x1

    return v0

    .line 725
    :cond_0
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 726
    const/4 v0, 0x3

    return v0

    .line 728
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method private isHintSessionSupported()Z
    .locals 4

    .line 639
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onPullAtom(ILjava/util/List;)I
    .locals 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 684
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const/4 v0, 0x0

    const/16 v1, 0x27bd

    if-ne p1, v1, :cond_0

    .line 685
    const-string v2, "debug.sf.enable_adpf_cpu_hint"

    .line 686
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 687
    .local v2, "isSurfaceFlingerUsingCpuHint":Z
    const-string v3, "debug.hwui.use_hint_manager"

    .line 688
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 690
    .local v3, "isHwuiHintManagerEnabled":Z
    nop

    .line 694
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->getFmqUsage()I

    move-result v4

    .line 690
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZI)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    .end local v2    # "isSurfaceFlingerUsingCpuHint":Z
    .end local v3    # "isHwuiHintManagerEnabled":Z
    :cond_0
    const/16 v1, 0x27ea

    if-ne p1, v1, :cond_3

    .line 697
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 698
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 699
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v5, v3

    .line 700
    .local v5, "uid":I
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    .line 701
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 702
    .local v3, "sessionSnapshots":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;>;"
    const/4 v4, 0x0

    move v11, v4

    .local v11, "j":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v11, v4, :cond_1

    .line 703
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 704
    .local v6, "sessionTag":I
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    move-object v12, v4

    .line 705
    .local v12, "sessionSnapshot":Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
    nop

    .line 709
    invoke-virtual {v12}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->getMaxConcurrentSession()I

    move-result v7

    .line 710
    invoke-virtual {v12}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->getMaxThreadCount()I

    move-result v8

    .line 711
    invoke-virtual {v12}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->getPowerEfficientSessionCount()I

    move-result v9

    .line 712
    invoke-virtual {v12}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->targetDurationNsList()[J

    move-result-object v10

    .line 705
    const/16 v4, 0x27ea

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII[J)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    nop

    .end local v6    # "sessionTag":I
    .end local v12    # "sessionSnapshot":Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 716
    .end local v2    # "i":I
    .end local v3    # "sessionSnapshots":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;>;"
    .end local v5    # "uid":I
    .end local v11    # "j":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 702
    .restart local v2    # "i":I
    .restart local v3    # "sessionSnapshots":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;>;"
    .restart local v5    # "uid":I
    .restart local v11    # "j":I
    :cond_1
    nop

    .line 698
    .end local v3    # "sessionSnapshots":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;>;"
    .end local v5    # "uid":I
    .end local v11    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 716
    .end local v2    # "i":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->restoreSessionSnapshot()V

    goto :goto_3

    .line 716
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 719
    :cond_3
    :goto_3
    return v0
.end method

.method private registerStatsCallbacks()V
    .locals 5

    .line 670
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 671
    .local v0, "statsManager":Landroid/app/StatsManager;
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    const/16 v3, 0x27bd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 676
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    const/16 v3, 0x27ea

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 681
    return-void
.end method

.method private restoreSessionSnapshot()V
    .locals 17

    .line 734
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 735
    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 736
    iget-object v3, v1, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 737
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v4, v1, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 738
    iget-object v4, v1, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 739
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 740
    .local v4, "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 741
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 742
    .local v6, "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 743
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 744
    .local v8, "appHintSession":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTag()I

    move-result v9

    .line 745
    .local v9, "tag":I
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getUid()I

    move-result v10

    .line 746
    .local v10, "uid":I
    nop

    .line 747
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTargetDurationNs()J

    move-result-wide v11

    .line 748
    .local v11, "targetDuationNs":J
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getThreadIds()[I

    move-result-object v13

    array-length v13, v13

    .line 749
    .local v13, "threadCount":I
    iget-object v14, v1, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    .line 750
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArrayMap;

    .line 751
    .local v14, "snapshots":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;>;"
    if-nez v14, :cond_0

    .line 752
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v15

    .line 753
    iget-object v15, v1, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 765
    .end local v4    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .end local v5    # "j":I
    .end local v6    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v7    # "k":I
    .end local v8    # "appHintSession":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    .end local v9    # "tag":I
    .end local v10    # "uid":I
    .end local v11    # "targetDuationNs":J
    .end local v13    # "threadCount":I
    .end local v14    # "snapshots":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;>;"
    .end local v16    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 751
    .restart local v0    # "i":I
    .restart local v4    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .restart local v5    # "j":I
    .restart local v6    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .restart local v7    # "k":I
    .restart local v8    # "appHintSession":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    .restart local v9    # "tag":I
    .restart local v10    # "uid":I
    .restart local v11    # "targetDuationNs":J
    .restart local v13    # "threadCount":I
    .restart local v14    # "snapshots":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;>;"
    :cond_0
    move/from16 v16, v0

    .line 755
    .end local v0    # "i":I
    .restart local v16    # "i":I
    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    .line 756
    .local v0, "snapshot":Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
    if-nez v0, :cond_1

    .line 757
    new-instance v15, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    invoke-direct {v15, v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    move-object v0, v15

    .line 758
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_1
    invoke-virtual {v0, v13, v11, v12}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateUponSessionCreation(IJ)V

    .line 742
    .end local v0    # "snapshot":Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
    .end local v8    # "appHintSession":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    .end local v9    # "tag":I
    .end local v10    # "uid":I
    .end local v11    # "targetDuationNs":J
    .end local v13    # "threadCount":I
    .end local v14    # "snapshots":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;>;"
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    goto :goto_2

    .end local v16    # "i":I
    .local v0, "i":I
    :cond_2
    move/from16 v16, v0

    .line 740
    .end local v0    # "i":I
    .end local v6    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v7    # "k":I
    .restart local v16    # "i":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v16    # "i":I
    .restart local v0    # "i":I
    :cond_3
    move/from16 v16, v0

    .line 737
    .end local v0    # "i":I
    .end local v4    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .end local v5    # "j":I
    .restart local v16    # "i":I
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_0

    :cond_4
    move/from16 v16, v0

    .line 765
    .end local v0    # "i":I
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 767
    return-void

    .line 766
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 765
    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService;
    :try_start_4
    throw v0

    .line 766
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService;
    :goto_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private systemReady()V
    .locals 5

    .line 658
    const-string v0, "HintManagerService"

    const-string v1, "Initializing HintManager service..."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 667
    :goto_0
    return-void
.end method

.method private tooManyPipelineThreads(I)Z
    .locals 6
    .param p1, "uid"    # I

    .line 430
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 432
    .local v1, "threadsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;>;"
    const/4 v2, 0x0

    .line 433
    .local v2, "graphicsPipelineThreadCount":I
    if-eqz v1, :cond_2

    .line 439
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    .line 440
    .local v4, "t":Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;
    invoke-virtual {v4}, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->isGraphicsPipeline()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 441
    add-int/lit8 v2, v2, 0x1

    .line 443
    .end local v4    # "t":Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;
    :cond_0
    goto :goto_0

    .line 449
    .end local v1    # "threadsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;>;"
    .end local v2    # "graphicsPipelineThreadCount":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 444
    .restart local v1    # "threadsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;>;"
    .restart local v2    # "graphicsPipelineThreadCount":I
    :cond_1
    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    .line 445
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 448
    :cond_2
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 449
    .end local v1    # "threadsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;>;"
    .end local v2    # "graphicsPipelineThreadCount":I
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getBinderServiceInstance()Landroid/os/IHintManager$Stub;
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    return-object v0
.end method

.method public getOrCreateMappedChannelItem(IILandroid/os/IBinder;)Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    .locals 4
    .param p1, "tgid"    # I
    .param p2, "uid"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 986
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 990
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 991
    .local v1, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$ChannelItem;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 992
    new-instance v2, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;-><init>(Lcom/android/server/power/hint/HintManagerService;IILandroid/os/IBinder;)V

    .line 993
    .local v2, "item":Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    invoke-virtual {v2}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->openChannel()V

    .line 994
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    .end local v2    # "item":Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    monitor-exit v0

    return-object v2

    .line 997
    .end local v1    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$ChannelItem;>;"
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSupportInfo()Landroid/hardware/power/SupportInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    invoke-interface {v0}, Landroid/hardware/power/IPower;->getInterfaceVersion()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    .line 376
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    invoke-interface {v0}, Landroid/hardware/power/IPower;->getSupportInfo()Landroid/hardware/power/SupportInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0

    .line 381
    :cond_0
    nop

    .line 383
    new-instance v0, Landroid/hardware/power/SupportInfo;

    invoke-direct {v0}, Landroid/hardware/power/SupportInfo;-><init>()V

    .line 384
    .local v0, "supportInfo":Landroid/hardware/power/SupportInfo;
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/power/SupportInfo;->usesSessions:Z

    .line 386
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->boosts:J

    .line 387
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->modes:J

    .line 388
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    .line 389
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    .line 390
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    .line 392
    new-instance v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    invoke-direct {v1}, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;-><init>()V

    iput-object v1, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    .line 393
    iget-object v1, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    .line 394
    iget-object v1, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iput-boolean v2, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    .line 396
    new-instance v1, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    invoke-direct {v1}, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;-><init>()V

    iput-object v1, v0, Landroid/hardware/power/SupportInfo;->compositionData:Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    .line 397
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v2, 0x4

    const-wide/16 v3, 0x1f

    if-ne v1, v2, :cond_1

    .line 402
    iput-wide v3, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    .line 404
    :cond_1
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 411
    const-wide/16 v1, 0xff

    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    .line 414
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    .line 417
    iput-wide v3, v0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    .line 420
    :cond_2
    return-object v0

    .line 379
    .end local v0    # "supportInfo":Landroid/hardware/power/SupportInfo;
    :goto_0
    nop

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not contact PowerHAL!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method hasChannel(II)Ljava/lang/Boolean;
    .locals 4
    .param p1, "tgid"    # I
    .param p2, "uid"    # I

    .line 1279
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1280
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 1281
    .local v1, "uidMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$ChannelItem;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    .line 1283
    .local v3, "item":Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1286
    .end local v1    # "uidMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$ChannelItem;>;"
    .end local v3    # "item":Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1285
    .restart local v1    # "uidMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$ChannelItem;>;"
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1286
    .end local v1    # "uidMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$ChannelItem;>;"
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 649
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->systemReady()V

    .line 652
    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->registerStatsCallbacks()V

    .line 655
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 644
    const-string/jumbo v0, "performance_hint"

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 645
    return-void
.end method

.method public removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "tgid"    # Ljava/lang/Integer;
    .param p2, "uid"    # Ljava/lang/Integer;

    .line 1005
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 1007
    .local v1, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$ChannelItem;>;"
    if-eqz v1, :cond_1

    .line 1008
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    .line 1009
    .local v2, "item":Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    if-eqz v2, :cond_0

    .line 1010
    invoke-virtual {v2}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->closeChannel()V

    .line 1011
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1017
    .end local v1    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$ChannelItem;>;"
    .end local v2    # "item":Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1013
    .restart local v1    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$ChannelItem;>;"
    .restart local v2    # "item":Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1014
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    .end local v1    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/server/power/hint/HintManagerService$ChannelItem;>;"
    .end local v2    # "item":Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    :cond_1
    monitor-exit v0

    .line 1018
    return-void

    .line 1017
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setProcStatPathOverride(Ljava/lang/String;)V
    .locals 1
    .param p1, "override"    # Ljava/lang/String;

    .line 425
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    .line 427
    return-void
.end method
