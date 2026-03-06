.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$Constants;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$ConstantsObserver;,
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$StandbyTracker;,
        Lcom/android/server/job/JobSchedulerService$LocalService;,
        Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;,
        Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;,
        Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;,
        Lcom/android/server/job/JobSchedulerService$MySimpleClock;
    }
.end annotation


# static fields
.field public static final ACTIVE_INDEX:I = 0x0

.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final EXEMPTED_INDEX:I = 0x6

.field public static final FREQUENT_INDEX:I = 0x2

.field public static final MAX_ALLOWED_PERIOD_MS:J = 0x757b12c00L

.field private static final MAX_JOBS_PER_APP:I = 0x96

.field static final MSG_CHECK_CHANGED_JOB_LIST:I = 0x8

.field static final MSG_CHECK_INDIVIDUAL_JOB:I = 0x0

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_CHECK_JOB_GREEDY:I = 0x3

.field static final MSG_CHECK_MEDIA_EXEMPTION:I = 0x9

.field static final MSG_INFORM_OBSERVERS_OF_USER_VISIBLE_JOB_CHANGE:I = 0xb

.field static final MSG_INFORM_OBSERVER_OF_ALL_USER_VISIBLE_JOBS:I = 0xa

.field static final MSG_STOP_JOB:I = 0x2

.field static final MSG_UID_ACTIVE:I = 0x6

.field static final MSG_UID_GONE:I = 0x5

.field static final MSG_UID_IDLE:I = 0x7

.field static final MSG_UID_STATE_CHANGED:I = 0x4

.field public static final NEVER_INDEX:I = 0x4

.field private static final NUM_COMPLETED_JOB_HISTORY:I = 0x14

.field private static final PERIODIC_JOB_WINDOW_BUFFER:J = 0x1b7740L

.field private static final QUOTA_TRACKER_ANR_TAG:Ljava/lang/String; = "anr"

.field private static final QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_SCHEDULE_LOGGED:Ljava/lang/String; = ".schedulePersisted out-of-quota logged"

.field private static final QUOTA_TRACKER_SCHEDULE_PERSISTED_TAG:Ljava/lang/String; = ".schedulePersisted()"

.field private static final QUOTA_TRACKER_TIMEOUT_EJ_TAG:Ljava/lang/String; = "timeout-ej"

.field private static final QUOTA_TRACKER_TIMEOUT_REG_TAG:Ljava/lang/String; = "timeout-reg"

.field private static final QUOTA_TRACKER_TIMEOUT_TOTAL_TAG:Ljava/lang/String; = "timeout-total"

.field private static final QUOTA_TRACKER_TIMEOUT_UIJ_TAG:Ljava/lang/String; = "timeout-uij"

.field public static final RARE_INDEX:I = 0x3

.field private static final REQUIRE_NETWORK_CONSTRAINT_FOR_NETWORK_JOB_WORK_ITEMS:J = 0xe5ef4d2L

.field static final REQUIRE_NETWORK_PERMISSIONS_FOR_CONNECTIVITY_JOBS:J = 0x10341a19L

.field public static final RESTRICTED_INDEX:I = 0x5

.field public static final TAG:Ljava/lang/String; = "JobScheduler"

.field public static final THROW_ON_UNSUPPORTED_BIAS_USAGE:J = 0x11e8ebd1L

.field public static final TRACE_TRACK_NAME:Ljava/lang/String; = "JobScheduler"

.field public static final WORKING_INDEX:I = 0x1

.field public static sElapsedRealtimeClock:Ljava/time/Clock;

.field private static final sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field private static final sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field private static final sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field private static final sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field private static final sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field private static final sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

.field private static final sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static sSystemClock:Ljava/time/Clock;

.field public static sUptimeMillisClock:Ljava/time/Clock;

.field public static sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# instance fields
.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field private final mBackingUpUids:Landroid/util/SparseBooleanArray;

.field final mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

.field private final mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCancelJobDueToUserRemovalConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangedJobList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloudMediaProviderPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field private final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field final mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

.field final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field final mDebuggableApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field private final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field private final mIsUidActivePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field final mJobRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/restrictions/JobRestriction;",
            ">;"
        }
    .end annotation
.end field

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field private final mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mJobTimeUpdater:Ljava/lang/Runnable;

.field final mJobs:Lcom/android/server/job/JobStore;

.field private mLastCancelledJobIndex:I

.field private final mLastCancelledJobTimeElapsed:[J

.field private final mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

.field private mLastCompletedJobIndex:I

.field private final mLastCompletedJobTimeElapsed:[J

.field private final mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field final mLock:Ljava/lang/Object;

.field private final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field private final mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

.field private final mPendingJobReasonsCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;>;"
        }
    .end annotation
.end field

.field private final mPermissionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

.field private final mQuotaController:Lcom/android/server/job/controllers/QuotaController;

.field private final mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field private final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field mReadyToRock:Z

.field mReportedActive:Z

.field private final mRestrictiveControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/RestrictingController;",
            ">;"
        }
    .end annotation
.end field

.field final mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

.field private final mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

.field mStartedUsers:[I

.field private final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field private final mTimeSetReceiver:Landroid/content/BroadcastReceiver;

.field final mUidBiasOverride:Landroid/util/SparseIntArray;

.field private final mUidCapabilities:Landroid/util/SparseIntArray;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidProcStates:Landroid/util/SparseIntArray;

.field private final mUidToPackageCache:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/job/IUserVisibleJobObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2PWLLojenEoUVtVczAkQEiEcXT4(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;J)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->lambda$checkConstraintRunnableForTesting$8(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$3U3vQgA2VmCzhfx3x77hvFjIh-g(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$dumpInternalProto$10(ILcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EoOP1iqUWtKpr-nlVcT2lpIByWE(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$cancelJobsForUserLocked$1(ILcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JaDLrweKec7z55BBNRKa011oxl4(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$dumpInternal$9(ILcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JjXiqpzW7ZRIZrywIAdtF0btMiE(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$updateMediaBackupExemptionLocked$7(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q16HuucOPC3Nu2dDmrkdR058M08(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->lambda$new$2(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TkIFiBnkkUUxdHLTB9ncTCF06WQ(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$new$0(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ulq0lH6hWnerIiBupp3Llq6NoQA(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$onBootPhase$4(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_qsiROTbT1bHvhwbOpkod1sMBXE(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->lambda$startControllerTrackingAsync$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$kFq7qP-VcLL1Ltl-JO7FUKK_Zis(Lcom/android/server/job/JobSchedulerService;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isUidActive(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sgF_JvJm-bvZP1qO91Stw_yEhBo(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$wLeviKUONkz7j6ey7Yx2IYF6OPU(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->lambda$updateMediaBackupExemptionLocked$6(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryStatsInternal(Lcom/android/server/job/JobSchedulerService;)Landroid/os/BatteryStatsInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChangedJobList(Lcom/android/server/job/JobSchedulerService;)Landroid/util/ArraySet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloudMediaProviderPackages(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJobTimeUpdater(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingJobReasonsCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefetchController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/PrefetchController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuotaTracker(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/utils/quota/CountQuotaTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidCapabilities(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidProcStates(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserVisibleJobObservers(Lcom/android/server/job/JobSchedulerService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcancelJob(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;III)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJob(ILjava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcancelJobImplLocked(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZZIILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUidLocked(Ljava/lang/String;IZZIILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelJobsForUid(Lcom/android/server/job/JobSchedulerService;IZZLjava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZZLjava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcancelJobsForUserLocked(Lcom/android/server/job/JobSchedulerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUserLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckChangedJobListLocked(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->checkChangedJobListLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckRunUserInitiatedJobsPermission(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->checkRunUserInitiatedJobsPermission(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPendingJob(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;I)Landroid/app/job/JobInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getPendingJob(ILjava/lang/String;I)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPendingJobReasons(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;I)[I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasons(ILjava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPendingJobReasonsHistory(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasonsHistory(ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPendingJobs(Lcom/android/server/job/JobSchedulerService;I)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobs(I)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPendingJobsInNamespace(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->getPendingJobsInNamespace(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRunUserInitiatedJobsPermissionState(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->getRunUserInitiatedJobsPermissionState(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasPermission(Lcom/android/server/job/JobSchedulerService;IILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->hasPermission(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnoteJobNonPending(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMediaBackupExemptionLocked(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->updateMediaBackupExemptionLocked(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 182
    const-string v0, "JobScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 183
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    .line 218
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 252
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v2}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 259
    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v2}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 348
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v2, ".schedulePersisted()"

    invoke-direct {v0, v2}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 350
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v2, ".schedulePersisted out-of-quota logged"

    invoke-direct {v0, v2}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    .line 352
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v2, "timeout-uij"

    invoke-direct {v0, v2}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    .line 354
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v2, "timeout-ej"

    invoke-direct {v0, v2}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    .line 356
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v2, "timeout-reg"

    invoke-direct {v0, v2}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    .line 358
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v2, "timeout-total"

    invoke-direct {v0, v2}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    .line 360
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v2, "anr"

    invoke-direct {v0, v2}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    .line 361
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v2, "disabled"

    invoke-direct {v0, v2}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 410
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v2, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const v3, 0x3fb33333    # 1.4f

    const/16 v4, 0x19

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {v2, v4, v1, v5, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v3, "job_scheduler.value_hist_w_uid_enqueued_work_items_high_water_mark"

    invoke-direct {v0, v3, v2}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 413
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v2, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/16 v3, 0x32

    const/high16 v6, 0x42000000    # 32.0f

    const v7, 0x3fa7ae14    # 1.31f

    invoke-direct {v2, v3, v1, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v8, "job_scheduler.value_hist_initial_job_estimated_network_download_kilobytes"

    invoke-direct {v0, v8, v2}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 416
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v2, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v2, v3, v1, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v8, "job_scheduler.value_hist_initial_jwi_estimated_network_download_kilobytes"

    invoke-direct {v0, v8, v2}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 419
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v2, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v2, v3, v1, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v8, "job_scheduler.value_hist_initial_job_estimated_network_upload_kilobytes"

    invoke-direct {v0, v8, v2}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 422
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v2, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v2, v3, v1, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v3, "job_scheduler.value_hist_initial_jwi_estimated_network_upload_kilobytes"

    invoke-direct {v0, v3, v2}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 425
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v2, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const v3, 0x3fe147ae    # 1.76f

    invoke-direct {v2, v4, v1, v5, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v6, "job_scheduler.value_hist_w_uid_job_minimum_chunk_kilobytes"

    invoke-direct {v0, v6, v2}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 428
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v2, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v2, v4, v1, v5, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v1, "job_scheduler.value_hist_w_uid_jwi_minimum_chunk_kilobytes"

    invoke-direct {v0, v1, v2}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 2625
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 278
    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 325
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    .line 328
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    .line 335
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 367
    new-instance v0, Lcom/android/server/job/PendingJobQueue;

    invoke-direct {v0}, Lcom/android/server/job/PendingJobQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 369
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    .line 397
    const/16 v1, 0x14

    new-array v2, v1, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    .line 398
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    .line 404
    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    .line 405
    nop

    .line 406
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    new-array v2, v2, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    .line 407
    nop

    .line 408
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    .line 435
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 439
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 444
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 450
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 455
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    .line 458
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 461
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 467
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    .line 1396
    new-instance v0, Lcom/android/server/job/JobSchedulerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1591
    new-instance v0, Lcom/android/server/job/JobSchedulerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1716
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    .line 2240
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mCancelJobDueToUserRemovalConsumer:Ljava/util/function/Consumer;

    .line 2752
    new-instance v0, Lcom/android/server/job/JobSchedulerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$5;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    .line 2772
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    .line 3673
    new-instance v0, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 4001
    new-instance v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 2627
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 2628
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2629
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2628
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2631
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 2632
    new-instance v0, Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 2633
    new-instance v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService-IA;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 2634
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 2636
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 2639
    new-instance v0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    .line 2640
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2642
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 2681
    .local v0, "quotaCategorizer":Lcom/android/server/utils/quota/Categorizer;
    new-instance v1, Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-direct {v1, p1, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 2682
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    .line 2685
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    const/4 v3, 0x1

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 2686
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    const v6, 0x7fffffff

    invoke-virtual {v1, v2, v6, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 2688
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 2689
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-interface {v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 2691
    const-class v1, Landroid/os/BatteryStatsInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStatsInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 2694
    const-class v1, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2697
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2698
    invoke-static {p0}, Lcom/android/server/job/JobStore;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 2699
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore;->initAsync(Ljava/util/concurrent/CountDownLatch;)V

    .line 2701
    new-instance v1, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 2702
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->startTracking()V

    .line 2705
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2706
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 2707
    new-instance v1, Lcom/android/server/job/controllers/PrefetchController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/PrefetchController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 2708
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2709
    new-instance v1, Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/FlexibilityController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 2710
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2711
    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 2713
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2714
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v2, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2715
    new-instance v1, Lcom/android/server/job/controllers/IdleController;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 2716
    .local v1, "idleController":Lcom/android/server/job/controllers/IdleController;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2717
    new-instance v2, Lcom/android/server/job/controllers/BatteryController;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {v2, p0, v3}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 2719
    .local v2, "batteryController":Lcom/android/server/job/controllers/BatteryController;
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2720
    new-instance v3, Lcom/android/server/job/controllers/StorageController;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 2721
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2722
    new-instance v3, Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 2724
    .local v3, "backgroundJobsController":Lcom/android/server/job/controllers/BackgroundJobsController;
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2725
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v5, Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2726
    new-instance v4, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 2727
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2728
    new-instance v4, Lcom/android/server/job/controllers/QuotaController;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {v4, p0, v3, v5}, Lcom/android/server/job/controllers/QuotaController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 2730
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2731
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v5, Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/ComponentController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2733
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->startControllerTrackingAsync()V

    .line 2735
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 2736
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2737
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2738
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2741
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 2742
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    new-instance v5, Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {v5, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2746
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4}, Lcom/android/server/job/JobStore;->jobTimesInflatedValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2747
    const-string v4, "JobScheduler"

    const-string v5, "!!! RTC not yet good; tracking time updates for job scheduling"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.TIME_SET"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2750
    :cond_2
    return-void
.end method

.method private adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I
    .locals 2
    .param p1, "curBias"    # I
    .param p2, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4297
    const/16 v0, 0x28

    if-ge p1, v0, :cond_1

    .line 4298
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    move-result v0

    .line 4299
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 4300
    add-int/lit8 p1, p1, -0x50

    goto :goto_0

    .line 4301
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 4302
    add-int/lit8 p1, p1, -0x28

    .line 4305
    .end local v0    # "factor":F
    :cond_1
    :goto_0
    return p1
.end method

.method private cancelJob(ILjava/lang/String;III)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "jobId"    # I
    .param p4, "callingUid"    # I
    .param p5, "reason"    # I

    .line 2352
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2353
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    move-object v3, v0

    .line 2354
    .local v3, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v3, :cond_0

    .line 2355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel() called by app, callingUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " jobId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v5, p5

    .end local p5    # "reason":I
    .local v5, "reason":I
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_0

    .line 2361
    .end local v3    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v0

    move-object p5, v0

    goto :goto_2

    .end local v5    # "reason":I
    .restart local p5    # "reason":I
    :catchall_1
    move-exception v0

    move v5, p5

    move-object p5, v0

    .end local p5    # "reason":I
    .restart local v5    # "reason":I
    goto :goto_2

    .line 2354
    .end local v5    # "reason":I
    .restart local v3    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .restart local p5    # "reason":I
    :cond_0
    move v5, p5

    .line 2360
    .end local p5    # "reason":I
    .restart local v5    # "reason":I
    :goto_0
    if-eqz v3, :cond_1

    const/4 p5, 0x1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    :goto_1
    monitor-exit v1

    return p5

    .line 2361
    .end local v3    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p5
.end method

.method private cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .locals 76
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "reason"    # I
    .param p4, "internalReasonCode"    # I
    .param p5, "debugReason"    # Ljava/lang/String;

    .line 2373
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v8, p4

    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v4, "JobScheduler"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CANCEL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 2375
    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 2377
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v5, v1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2378
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v5, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2380
    :cond_1
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2382
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual {v5, v1, v6, v8, v7}, Lcom/android/server/job/JobConcurrencyManager;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    move-result v73

    .line 2385
    .local v73, "wasRunning":Z
    if-nez v73, :cond_4

    .line 2386
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v74

    .line 2387
    .local v74, "sourceUid":I
    nop

    .line 2388
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v5

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v5, :cond_2

    .line 2389
    new-array v5, v9, [I

    aput v74, v5, v10

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    aput v11, v5, v3

    goto :goto_0

    :cond_2
    new-array v5, v3, [I

    aput v74, v5, v10

    .line 2392
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2393
    new-array v11, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v11, v10

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v3

    goto :goto_1

    .line 2394
    :cond_3
    new-array v11, v3, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    .line 2395
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v6

    .line 2397
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v10

    .line 2398
    move-object v12, v4

    move-object v4, v5

    move v13, v10

    move-object v5, v11

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getLoggingJobId()J

    move-result-wide v10

    .line 2399
    move-object v14, v12

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v12

    .line 2400
    move v15, v13

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v13

    .line 2401
    move-object/from16 v16, v14

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v14

    .line 2402
    move/from16 v17, v15

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v15

    .line 2403
    move-object/from16 v18, v16

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v16

    .line 2404
    move/from16 v19, v17

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v17

    .line 2405
    move-object/from16 v20, v18

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v18

    .line 2406
    move/from16 v21, v19

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v19

    .line 2407
    move-object/from16 v22, v20

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v20

    .line 2410
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v23

    .line 2411
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v24

    .line 2412
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v25

    .line 2413
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v26

    .line 2414
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v27

    .line 2415
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v9

    .line 2416
    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v30

    .line 2417
    move/from16 v31, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    .line 2418
    move/from16 v29, v3

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v32

    .line 2419
    const/high16 v3, -0x80000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v33

    .line 2420
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v34

    .line 2421
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v35

    .line 2422
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v36

    .line 2424
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v39

    .line 2426
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v41

    .line 2427
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v42

    .line 2428
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v44

    .line 2429
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v46

    .line 2430
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v48

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 2431
    move-object/from16 v37, v4

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v49

    .line 2432
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNamespaceHash()Ljava/lang/String;

    move-result-object v50

    .line 2437
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v59

    .line 2438
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v61

    .line 2439
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v63

    .line 2440
    const/high16 v3, 0x200000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v64

    .line 2441
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->canApplyTransportAffinities()Z

    move-result v65

    .line 2442
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result v66

    .line 2443
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v67

    .line 2444
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v68

    .line 2445
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v69

    .line 2446
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v70

    .line 2448
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v3

    add-int/lit8 v71, v3, 0x1

    .line 2450
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    .line 2449
    invoke-virtual {v0, v3, v4}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v72

    .line 2387
    const/16 v3, 0x8

    const/4 v7, 0x3

    move/from16 v4, v31

    move/from16 v31, v29

    move/from16 v29, v9

    move/from16 v9, v21

    const/16 v21, 0x0

    move/from16 v40, v4

    move-object/from16 v4, v37

    const-wide/16 v37, 0x0

    move/from16 v51, v40

    const/16 v40, 0x0

    move/from16 v53, v51

    const-wide/16 v51, 0x0

    move/from16 v55, v53

    const-wide/16 v53, 0x0

    move/from16 v57, v55

    const-wide/16 v55, 0x0

    move/from16 v75, v57

    const-wide/16 v57, 0x0

    move-object/from16 v0, v22

    move/from16 v22, p3

    invoke-static/range {v3 .. v72}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    goto :goto_2

    .line 2385
    .end local v74    # "sourceUid":I
    :cond_4
    move/from16 v75, v3

    move-object v0, v4

    .line 2453
    :goto_2
    if-eqz v2, :cond_6

    .line 2454
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracking replacement job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_3

    .line 2453
    :cond_6
    move-object/from16 v0, p0

    .line 2457
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 2458
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    array-length v3, v3

    if-lez v3, :cond_7

    if-nez p4, :cond_7

    .line 2460
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    iget v4, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    aput-object v1, v3, v4

    .line 2461
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    iget v4, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 2462
    iget v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    .line 2464
    :cond_7
    return-void
.end method

.method private cancelJobsForNonExistentUsers()V
    .locals 4

    .line 2255
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 2256
    .local v0, "umi":Lcom/android/server/pm/UserManagerInternal;
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2257
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->removeJobsOfUnlistedUsers([I)V

    .line 2258
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2259
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v2

    .line 2260
    :try_start_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    .line 2261
    monitor-exit v2

    .line 2262
    return-void

    .line 2261
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2258
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private cancelJobsForPackageAndUidLocked(Ljava/lang/String;IZZIILjava/lang/String;)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeSchedulingApp"    # Z
    .param p4, "includeSourceApp"    # Z
    .param p5, "reason"    # I
    .param p6, "internalReasonCode"    # I
    .param p7, "debugReason"    # Ljava/lang/String;

    .line 2267
    const-string v0, "JobScheduler"

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 2268
    const-string v1, "Didn\'t indicate whether to cancel jobs for scheduling and/or source app"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    const/4 p4, 0x1

    .line 2272
    :cond_0
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2273
    const-string v1, "Can\'t cancel all jobs for system package"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    return-void

    .line 2276
    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2277
    .local v0, "jobsForUid":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz p3, :cond_2

    .line 2278
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/job/JobStore;->getJobsByUid(ILjava/util/Set;)V

    .line 2280
    :cond_2
    if-eqz p4, :cond_3

    .line 2281
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/job/JobStore;->getJobsBySourceUid(ILjava/util/Set;)V

    .line 2283
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_8

    .line 2284
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 2285
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz p3, :cond_4

    .line 2287
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    if-eqz p4, :cond_6

    .line 2288
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    nop

    .line 2289
    .local v3, "shouldCancel":Z
    if-eqz v3, :cond_7

    .line 2290
    const/4 v6, 0x0

    move-object v4, p0

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 2283
    .end local v3    # "shouldCancel":Z
    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_8
    nop

    .line 2293
    .end local v1    # "i":I
    return-void
.end method

.method private cancelJobsForUid(IZZLjava/lang/String;IILjava/lang/String;)Z
    .locals 11
    .param p1, "uid"    # I
    .param p2, "includeSourceApp"    # Z
    .param p3, "namespaceOnly"    # Z
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "internalReasonCode"    # I
    .param p7, "debugReason"    # Ljava/lang/String;

    .line 2316
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 2317
    :cond_0
    const-string v0, "JobScheduler"

    const-string v1, "Can\'t cancel all jobs for system uid"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    const/4 v0, 0x0

    return v0

    .line 2321
    :cond_1
    const/4 v1, 0x0

    .line 2322
    .local v1, "jobsCanceled":Z
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2323
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2325
    .local v0, "jobsForUid":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/job/JobStore;->getJobsByUid(ILjava/util/Set;)V

    .line 2326
    if-eqz p2, :cond_2

    .line 2328
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/job/JobStore;->getJobsBySourceUid(ILjava/util/Set;)V

    goto :goto_0

    .line 2337
    .end local v0    # "jobsForUid":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2330
    .restart local v0    # "jobsForUid":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 2331
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    move-object v6, v4

    .line 2332
    .local v6, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    if-eqz p3, :cond_3

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2333
    :cond_3
    const/4 v7, 0x0

    move-object v5, p0

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 2334
    const/4 v1, 0x1

    .line 2330
    .end local v6    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 2337
    .end local v0    # "jobsForUid":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "i":I
    monitor-exit v2

    .line 2338
    return v1

    .line 2337
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cancelJobsForUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 2249
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mCancelJobDueToUserRemovalConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 2252
    return-void
.end method

.method private checkChangedJobListLocked()V
    .locals 2

    .line 4020
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4021
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4022
    const-string v0, "JobScheduler"

    const-string v1, "Check changed jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4025
    return-void

    .line 4028
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 4029
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    .line 4030
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4031
    return-void
.end method

.method private static checkConstraintRunnableForTesting(Landroid/os/Handler;Lcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;IJ)Ljava/lang/Runnable;
    .locals 7
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "remainingAttempts"    # I
    .param p4, "delayMs"    # J

    .line 5521
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    move v1, p3

    move-wide v5, p4

    .end local p0    # "handler":Landroid/os/Handler;
    .end local p1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local p2    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local p3    # "remainingAttempts":I
    .end local p4    # "delayMs":J
    .local v1, "remainingAttempts":I
    .local v2, "js":Lcom/android/server/job/controllers/JobStatus;
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    .local v4, "handler":Landroid/os/Handler;
    .local v5, "delayMs":J
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;-><init>(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;J)V

    return-object v0
.end method

.method private checkRunUserInitiatedJobsPermission(ILjava/lang/String;)Z
    .locals 1
    .param p1, "packageUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5755
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->getRunUserInitiatedJobsPermissionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clearPendingJobQueue()V
    .locals 2

    .line 3001
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 3002
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    move-object v1, v0

    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_0

    .line 3003
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_0

    .line 3005
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->clear()V

    .line 3006
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 5933
    const-string v0, "Job Scheduler (jobscheduler) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5934
    const-string v0, "  [-h] [package] [--proto] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5935
    const-string v0, "    -h: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5936
    const-string v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5937
    const-string v0, "    --proto: output dump in protocol buffer format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5938
    return-void
.end method

.method public static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1586
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1587
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1588
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private getPendingJob(ILjava/lang/String;I)Landroid/app/job/JobInfo;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "jobId"    # I

    .line 2186
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 2188
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2189
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 2190
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    if-ne v4, p3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2191
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 2195
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "i":I
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2188
    .restart local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 2194
    .end local v2    # "i":I
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 2195
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPendingJobReasons(ILjava/lang/String;I)[I
    .locals 5
    .param p1, "uid"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "jobId"    # I

    .line 2065
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 2066
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2067
    .local v1, "jobIdToReasons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-eqz v1, :cond_0

    .line 2068
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 2069
    .local v2, "reasons":[I
    if-eqz v2, :cond_0

    .line 2070
    monitor-exit v0

    return-object v2

    .line 2073
    .end local v1    # "jobIdToReasons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v2    # "reasons":[I
    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2074
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2075
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasonsLocked(ILjava/lang/String;I)[I

    move-result-object v0

    .line 2076
    .local v0, "reasons":[I
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2077
    const-string v2, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPendingJobReasons("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2077
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2080
    .end local v0    # "reasons":[I
    :catchall_1
    move-exception v0

    goto :goto_3

    .restart local v0    # "reasons":[I
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2081
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v2

    .line 2082
    :try_start_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2083
    .restart local v1    # "jobIdToReasons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-nez v1, :cond_2

    .line 2084
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v3

    .line 2085
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2088
    .end local v1    # "jobIdToReasons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :catchall_2
    move-exception v1

    goto :goto_2

    .line 2087
    .restart local v1    # "jobIdToReasons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :cond_2
    :goto_1
    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2088
    .end local v1    # "jobIdToReasons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    monitor-exit v2

    .line 2089
    return-object v0

    .line 2088
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 2080
    .end local v0    # "reasons":[I
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2073
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private getPendingJobReasonsHistory(ILjava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "jobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/job/PendingJobReasonsInfo;",
            ">;"
        }
    .end annotation

    .line 2174
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2175
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 2176
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_0

    .line 2181
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getPendingJobReasonsHistory()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2182
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2178
    .restart local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid job id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "uid":I
    .end local p2    # "namespace":Ljava/lang/String;
    .end local p3    # "jobId":I
    throw v2

    .line 2182
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "uid":I
    .restart local p2    # "namespace":Ljava/lang/String;
    .restart local p3    # "jobId":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPendingJobReasonsLocked(ILjava/lang/String;I)[I
    .locals 12
    .param p1, "uid"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "jobId"    # I

    .line 2109
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 2110
    .local v0, "job":Lcom/android/server/job/controllers/JobStatus;
    if-nez v0, :cond_0

    .line 2112
    const/4 v1, -0x2

    filled-new-array {v1}, [I

    move-result-object v1

    return-object v1

    .line 2114
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2115
    const/4 v1, -0x1

    filled-new-array {v1}, [I

    move-result-object v1

    return-object v1

    .line 2118
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPendingJobReasonsLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2119
    .local v1, "debugPrefix":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    .line 2120
    .local v2, "jobReady":Z
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v4, "JobScheduler"

    if-eqz v3, :cond_2

    .line 2121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ready="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v3

    .line 2124
    .local v3, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    sget-boolean v5, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 2125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " restriction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    goto/16 :goto_0

    .line 2131
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 2132
    .local v5, "userStarted":Z
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 2133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " userStarted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_6
    if-nez v5, :cond_7

    .line 2136
    const/16 v4, 0xf

    filled-new-array {v4}, [I

    move-result-object v4

    return-object v4

    .line 2139
    :cond_7
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 2140
    .local v6, "backingUp":Z
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 2141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " backingUp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :cond_8
    const/4 v7, 0x1

    if-eqz v6, :cond_9

    .line 2145
    filled-new-array {v7}, [I

    move-result-object v4

    return-object v4

    .line 2150
    :cond_9
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v8, v0}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    .line 2151
    .local v8, "jobPending":Z
    sget-boolean v9, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v9, :cond_a

    .line 2152
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " pending="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_a
    if-eqz v8, :cond_b

    .line 2156
    const/16 v4, 0xc

    filled-new-array {v4}, [I

    move-result-object v4

    return-object v4

    .line 2160
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    .line 2161
    .local v9, "componentUsable":Z
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_c

    .line 2162
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " componentUsable="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_c
    if-nez v9, :cond_d

    .line 2165
    filled-new-array {v7}, [I

    move-result-object v4

    return-object v4

    .line 2168
    :cond_d
    const/4 v4, 0x0

    filled-new-array {v4}, [I

    move-result-object v4

    return-object v4

    .line 2128
    .end local v5    # "userStarted":Z
    .end local v6    # "backingUp":Z
    .end local v8    # "jobPending":Z
    .end local v9    # "componentUsable":Z
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/JobStatus;->getPendingJobReasons(Lcom/android/server/job/restrictions/JobRestriction;)[I

    move-result-object v4

    return-object v4
.end method

.method private getPendingJobs(I)Landroid/util/ArrayMap;
    .locals 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;>;"
        }
    .end annotation

    .line 2027
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2028
    .local v0, "outMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/app/job/JobInfo;>;>;"
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2029
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 2031
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 2032
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 2033
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2034
    .local v5, "outList":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    if-nez v5, :cond_0

    .line 2035
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 2036
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2042
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "i":I
    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "outList":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 2039
    .restart local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "i":I
    .restart local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v5    # "outList":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :cond_0
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2031
    nop

    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "outList":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 2041
    .end local v3    # "i":I
    monitor-exit v1

    return-object v0

    .line 2042
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPendingJobsInNamespace(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 2046
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2047
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 2048
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2050
    .local v2, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 2051
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 2052
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2053
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2057
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2050
    .restart local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v2    # "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    .restart local v3    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 2056
    .end local v3    # "i":I
    monitor-exit v0

    return-object v2

    .line 2057
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRunUserInitiatedJobsPermissionState(ILjava/lang/String;)I
    .locals 3
    .param p1, "packageUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5760
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RUN_USER_INITIATED_JOBS"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private hasPermission(IILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "permission"    # Ljava/lang/String;

    .line 4795
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4796
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArrayMap;

    .line 4797
    .local v1, "pidPermissions":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v1, :cond_0

    .line 4798
    new-instance v2, Landroid/util/SparseArrayMap;

    invoke-direct {v2}, Landroid/util/SparseArrayMap;-><init>()V

    move-object v1, v2

    .line 4799
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 4810
    .end local v1    # "pidPermissions":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 4801
    .restart local v1    # "pidPermissions":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 4802
    .local v2, "cached":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    .line 4803
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v0

    return v3

    .line 4806
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p3, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    .line 4807
    .local v3, "result":I
    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 4808
    .local v4, "permissionGranted":Z
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, p2, p3, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4809
    monitor-exit v0

    return v4

    .line 4810
    .end local v1    # "pidPermissions":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "cached":Ljava/lang/Boolean;
    .end local v3    # "result":I
    .end local v4    # "permissionGranted":Z
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4133
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 4135
    .local v0, "processName":Ljava/lang/String;
    const-string v1, "JobScheduler"

    if-nez v0, :cond_1

    .line 4136
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 4137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isComponentUsable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " component not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 4144
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/app/ActivityManagerInternal;->isAppBad(Ljava/lang/String;I)Z

    move-result v2

    .line 4145
    .local v2, "appIsBad":Z
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 4146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App is bad for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " so not runnable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    :cond_2
    xor-int/lit8 v1, v2, 0x1

    return v1
.end method

.method private isUidActive(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 1713
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActiveSynced(I)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$cancelJobsForUserLocked$1(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "userHandle"    # I
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2250
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    if-ne v0, p0, :cond_1

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

.method private static synthetic lambda$checkConstraintRunnableForTesting$8(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;J)V
    .locals 7
    .param p0, "remainingAttempts"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "delayMs"    # J

    .line 5522
    if-lez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v1, p3

    move-wide v5, p4

    goto :goto_0

    .line 5526
    :cond_0
    add-int/lit8 v4, p0, -0x1

    .line 5527
    move-object v2, p1

    move-object v3, p2

    move-object v1, p3

    move-wide v5, p4

    .end local p1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local p2    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "delayMs":J
    .local v1, "handler":Landroid/os/Handler;
    .local v2, "js":Lcom/android/server/job/controllers/JobStatus;
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    .local v5, "delayMs":J
    invoke-static/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->checkConstraintRunnableForTesting(Landroid/os/Handler;Lcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;IJ)Ljava/lang/Runnable;

    move-result-object p1

    .line 5526
    invoke-virtual {v1, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5530
    return-void

    .line 5522
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v5    # "delayMs":J
    .restart local p1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local p2    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local p3    # "handler":Landroid/os/Handler;
    .restart local p4    # "delayMs":J
    :cond_1
    move-object v2, p1

    move-object v3, p2

    move-object v1, p3

    move-wide v5, p4

    .line 5523
    .end local p1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local p2    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "delayMs":J
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v5    # "delayMs":J
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5524
    return-void
.end method

.method private static synthetic lambda$dumpInternal$9(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "filterAppId"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 5965
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    .line 5966
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5965
    :goto_1
    return v0
.end method

.method private static synthetic lambda$dumpInternalProto$10(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "filterAppId"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 6332
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    .line 6333
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6332
    :goto_1
    return v0
.end method

.method private synthetic lambda$new$0(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6
    .param p1, "toRemove"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2244
    const/4 v4, 0x7

    const-string/jumbo v5, "user removed"

    const/4 v2, 0x0

    const/16 v3, 0xd

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    .local v1, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 2246
    return-void
.end method

.method private synthetic lambda$new$2(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 2643
    const-string/jumbo v0, "timeout-uij"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2644
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz v0, :cond_0

    .line 2645
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    goto :goto_0

    .line 2646
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 2644
    :goto_0
    return-object v0

    .line 2648
    :cond_1
    const-string/jumbo v0, "timeout-ej"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2649
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz v0, :cond_2

    .line 2650
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    goto :goto_1

    .line 2651
    :cond_2
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 2649
    :goto_1
    return-object v0

    .line 2653
    :cond_3
    const-string/jumbo v0, "timeout-reg"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2654
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz v0, :cond_4

    .line 2655
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    goto :goto_2

    .line 2656
    :cond_4
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 2654
    :goto_2
    return-object v0

    .line 2658
    :cond_5
    const-string/jumbo v0, "timeout-total"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2659
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz v0, :cond_6

    .line 2660
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    goto :goto_3

    .line 2661
    :cond_6
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 2659
    :goto_3
    return-object v0

    .line 2663
    :cond_7
    const-string v0, "anr"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2664
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz v0, :cond_8

    .line 2665
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    goto :goto_4

    .line 2666
    :cond_8
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 2664
    :goto_4
    return-object v0

    .line 2668
    :cond_9
    const-string v0, ".schedulePersisted()"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2669
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    if-eqz v0, :cond_a

    .line 2670
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    goto :goto_5

    .line 2671
    :cond_a
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 2669
    :goto_5
    return-object v0

    .line 2673
    :cond_b
    const-string v0, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2674
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    if-eqz v0, :cond_c

    .line 2675
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    goto :goto_6

    .line 2676
    :cond_c
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 2674
    :goto_6
    return-object v0

    .line 2678
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected category tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    return-object v0
.end method

.method private synthetic lambda$new$3()V
    .locals 12

    .line 2773
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 2776
    .local v1, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 2777
    .local v2, "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2780
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/job/JobStore;->getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2784
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2785
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 2786
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    move-object v7, v5

    .line 2787
    .local v7, "oldJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 2788
    .local v8, "newJob":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v5, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 2789
    const-string v5, "JobScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  replacing "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2794
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v7    # "oldJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v8    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2791
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v7    # "oldJob":Lcom/android/server/job/controllers/JobStatus;
    .restart local v8    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    :goto_1
    const-string v11, "deferred rtc calculation"

    const/16 v9, 0xe

    const/16 v10, 0x9

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 2785
    .end local v7    # "oldJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v8    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2794
    .end local v0    # "N":I
    .end local v4    # "i":I
    monitor-exit v3

    .line 2795
    return-void

    .line 2794
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$onBootPhase$4(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2873
    const/4 v0, 0x0

    .local v0, "controller":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2874
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 2875
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 2873
    .end local v1    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2877
    .end local v0    # "controller":I
    return-void
.end method

.method private synthetic lambda$startControllerTrackingAsync$5()V
    .locals 3

    .line 2888
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2890
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->startTrackingLocked()V

    .line 2889
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2892
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2889
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 2892
    .end local v1    # "i":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2893
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2894
    return-void

    .line 2892
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$updateMediaBackupExemptionLocked$6(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "oldPkg"    # Ljava/lang/String;
    .param p2, "newPkg"    # Ljava/lang/String;
    .param p3, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4037
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 4038
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4039
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4037
    :goto_0
    return v0
.end method

.method private synthetic lambda$updateMediaBackupExemptionLocked$7(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4042
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4043
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4045
    :cond_0
    return-void
.end method

.method private maybeQueueReadyJobsForExecutionLocked()V
    .locals 2

    .line 4005
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4008
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4009
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4010
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler"

    const-string v1, "Maybe queuing ready jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    :cond_0
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    .line 4013
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 4014
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 4015
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    .line 4016
    return-void
.end method

.method private noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2996
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2997
    return-void
.end method

.method private noteJobPending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2986
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2987
    return-void
.end method

.method private queueReadyJobsForExecutionLocked()V
    .locals 4

    .line 3623
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3624
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3627
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3631
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3632
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 3633
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_0

    .line 3634
    const-string/jumbo v0, "queuing all ready jobs for execution:"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    :cond_0
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    .line 3637
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 3638
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 3639
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->-$$Nest$mpostProcessLocked(Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;)V

    .line 3641
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 3642
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v0

    .line 3643
    .local v0, "queuedJobs":I
    if-nez v0, :cond_1

    .line 3644
    const-string v2, "No jobs pending."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3646
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobs queued."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    .end local v0    # "queuedJobs":I
    :cond_2
    :goto_0
    return-void
.end method

.method static safelyScaleBytesToKBForHistogram(J)I
    .locals 4
    .param p0, "bytes"    # J

    .line 4748
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 4751
    .local v0, "kilobytes":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 4752
    const v2, 0x7fffffff

    return v2

    .line 4753
    :cond_0
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 4754
    const/high16 v2, -0x80000000

    return v2

    .line 4756
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method private static sortJobs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 5942
    .local p0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Lcom/android/server/job/JobSchedulerService$6;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$6;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5955
    return-void
.end method

.method public static standbyBucketForPackage(Ljava/lang/String;IJ)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "elapsedNow"    # J

    .line 4735
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_0

    .line 4736
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v0

    goto :goto_0

    .line 4737
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 4739
    .local v0, "bucket":I
    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v0

    .line 4741
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v1, :cond_1

    .line 4742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " standby bucket index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4744
    :cond_1
    return v0
.end method

.method public static standbyBucketToBucketIndex(I)I
    .locals 2
    .param p0, "bucket"    # I

    .line 4716
    const/16 v0, 0x32

    if-ne p0, v0, :cond_0

    .line 4717
    const/4 v0, 0x4

    return v0

    .line 4718
    :cond_0
    const/16 v0, 0x28

    const/4 v1, 0x5

    if-le p0, v0, :cond_1

    .line 4719
    return v1

    .line 4720
    :cond_1
    const/16 v0, 0x1e

    if-le p0, v0, :cond_2

    .line 4721
    const/4 v0, 0x3

    return v0

    .line 4722
    :cond_2
    const/16 v0, 0x14

    if-le p0, v0, :cond_3

    .line 4723
    const/4 v0, 0x2

    return v0

    .line 4724
    :cond_3
    const/16 v0, 0xa

    if-le p0, v0, :cond_4

    .line 4725
    const/4 v0, 0x1

    return v0

    .line 4726
    :cond_4
    if-le p0, v1, :cond_5

    .line 4727
    const/4 v0, 0x0

    return v0

    .line 4729
    :cond_5
    const/4 v0, 0x6

    return v0
.end method

.method private startControllerTrackingAsync()V
    .locals 2

    .line 2887
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2895
    return-void
.end method

.method private startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2903
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPreparedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not yet prepared when started tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 2907
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2908
    .local v0, "update":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2910
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2911
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_3

    .line 2912
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2913
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 2914
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v0, :cond_2

    .line 2915
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 2917
    :cond_2
    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 2912
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2920
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private stopNonReadyActiveJobsLocked()V
    .locals 1

    .line 3612
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->stopNonReadyActiveJobsLocked()V

    .line 3613
    return-void
.end method

.method private stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "removeFromPersisted"    # Z

    .line 2930
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2932
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 2933
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    .line 2934
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2935
    .local v1, "reasonCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-eqz v1, :cond_0

    .line 2936
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    .line 2938
    .end local v1    # "reasonCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    .line 2942
    .local v0, "removed":Z
    if-nez v0, :cond_1

    .line 2951
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job didn\'t exist in JobStore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_2

    .line 2954
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2955
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 2956
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 2954
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2959
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 2938
    .end local v0    # "removed":Z
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateMediaBackupExemptionLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "oldPkg"    # Ljava/lang/String;
    .param p3, "newPkg"    # Ljava/lang/String;

    .line 4036
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4040
    .local v0, "shouldProcessJob":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 4046
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4047
    return-void
.end method


# virtual methods
.method public areComponentsInPlaceLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4172
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 4173
    .local v0, "jobExists":Z
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 4174
    .local v1, "userStarted":Z
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 4176
    .local v2, "backingUp":Z
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v4, "areComponentsInPlaceLocked: "

    const-string v5, "JobScheduler"

    if-eqz v3, :cond_0

    .line 4177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " exists="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " userStarted="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " backingUp="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    :cond_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    goto :goto_0

    .line 4188
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v6

    .line 4189
    .local v6, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    if-eqz v6, :cond_4

    .line 4190
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 4191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " restricted due to "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4192
    invoke-virtual {v6}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4191
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4194
    :cond_3
    return v3

    .line 4201
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    return v3

    .line 4185
    .end local v6    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    :goto_0
    return v3
.end method

.method public areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4052
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v0

    .line 4053
    .local v0, "sourceStarted":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4054
    return v0

    .line 4056
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public cancelJobsForUid(IZIILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "includeSourceApp"    # Z
    .param p3, "reason"    # I
    .param p4, "internalReasonCode"    # I
    .param p5, "debugReason"    # Ljava/lang/String;

    .line 2306
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .end local p1    # "uid":I
    .end local p2    # "includeSourceApp":Z
    .end local p3    # "reason":I
    .end local p4    # "internalReasonCode":I
    .end local p5    # "debugReason":Ljava/lang/String;
    .local v1, "uid":I
    .local v2, "includeSourceApp":Z
    .local v5, "reason":I
    .local v6, "internalReasonCode":I
    .local v7, "debugReason":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZZLjava/lang/String;IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3601
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3602
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/restrictions/JobRestriction;

    .line 3603
    .local v1, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3604
    return-object v1

    .line 3603
    :cond_0
    nop

    .line 3601
    .end local v1    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 3607
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 4
    .param p1, "sourceUid"    # I
    .param p2, "sourcePackageName"    # Ljava/lang/String;

    .line 1637
    nop

    .line 1639
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 1640
    .local v0, "ws":Landroid/os/WorkSource;
    invoke-virtual {v0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    .line 1641
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    .line 1642
    const/16 v2, 0x3e8

    const-string v3, "JobScheduler"

    invoke-virtual {v1, v2, v3}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 1643
    return-object v0
.end method

.method dumpInternal(Landroid/util/IndentingPrintWriter;I)V
    .locals 31
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "filterUid"    # I
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 5959
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v9, p2

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    .line 5960
    .local v10, "filterAppId":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 5961
    .local v11, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 5962
    .local v5, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 5964
    .local v7, "nowUptime":J
    new-instance v4, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda11;

    invoke-direct {v4, v10}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda11;-><init>(I)V

    .line 5968
    .local v4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v13, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 5969
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 5970
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 5971
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 5972
    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    .line 5973
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5974
    nop

    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_0

    .line 6321
    :catchall_0
    move-exception v0

    move-wide/from16 v20, v7

    move/from16 v28, v10

    move-wide/from16 v29, v11

    move-object v8, v4

    goto/16 :goto_19

    .line 5975
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5977
    const-string v0, "Aconfig flags:"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5978
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 5979
    const-string v0, "com.android.server.job.batch_active_bucket_jobs"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v3, v0, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5980
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5981
    const-string v0, "com.android.server.job.batch_connectivity_jobs_per_network"

    .line 5982
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 5981
    invoke-virtual {v3, v0, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5983
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5984
    const-string v0, "com.android.server.job.do_not_force_rush_execution_at_boot"

    .line 5985
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 5984
    invoke-virtual {v3, v0, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5986
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5987
    const-string v0, "android.app.job.ignore_important_while_foreground"

    .line 5988
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 5987
    invoke-virtual {v3, v0, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5989
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5990
    const-string v0, "android.app.job.get_pending_job_reasons_api"

    .line 5991
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 5990
    invoke-virtual {v3, v0, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5992
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5993
    const-string v0, "android.app.job.get_pending_job_reasons_history_api"

    .line 5994
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 5993
    invoke-virtual {v3, v0, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5995
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5996
    const-string v0, "android.app.job.add_type_info_to_wakelock_tag"

    .line 5997
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 5996
    invoke-virtual {v3, v0, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5998
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5999
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6000
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6002
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    sub-int/2addr v0, v14

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 6003
    :try_start_3
    iget-object v15, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v15, v3}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/IndentingPrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6002
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    nop

    .line 6005
    .end local v0    # "i":I
    :try_start_4
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6007
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 6008
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6010
    const-string v0, "Power connected: "

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6011
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isPowerConnected()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6012
    const-string v0, "Battery charging: "

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6013
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$fgetmCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6014
    const-string v0, "Considered charging: "

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6015
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$misConsideredCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6016
    const-string v0, "Battery level: "

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6017
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$fgetmBatteryLevel(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 6018
    const-string v0, "Battery not low: "

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6019
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isBatteryNotLow()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6020
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isMonitoring()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-eqz v0, :cond_2

    .line 6021
    :try_start_5
    const-string v0, "MONITORING: seq="

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6022
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->getSeq()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6024
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Started users: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6027
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6029
    const-string v0, "Media Cloud Providers: "

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6030
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 6031
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6033
    const-string v0, "Registered "

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6034
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 6035
    const-string v0, " jobs:"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6036
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6037
    const/4 v0, 0x0

    .line 6038
    .local v0, "jobPrinted":Z
    iget-object v15, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v15}, Lcom/android/server/job/JobStore;->size()I

    move-result v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-lez v15, :cond_d

    .line 6039
    :try_start_7
    iget-object v15, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v15, v15, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v15}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v15

    .line 6040
    .local v15, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static {v15}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 6041
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v18, v17

    .line 6043
    .local v18, "job":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v2, v18

    .end local v18    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {v4, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 6044
    const/4 v2, 0x0

    goto :goto_2

    .line 6046
    :cond_3
    const/4 v0, 0x1

    .line 6048
    const-string v14, "JOB "

    invoke-virtual {v3, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6049
    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 6050
    const-string v14, ": "

    invoke-virtual {v3, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6051
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6053
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6054
    const/4 v14, 0x1

    invoke-virtual {v2, v3, v14, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 6056
    const-string v14, "Restricted due to:"

    invoke-virtual {v3, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6057
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    .line 6058
    .local v14, "isRestricted":Z
    :goto_3
    if-eqz v14, :cond_7

    .line 6059
    move/from16 v19, v0

    .end local v0    # "jobPrinted":Z
    .local v19, "jobPrinted":Z
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_6

    .line 6060
    move-wide/from16 v20, v7

    .end local v7    # "nowUptime":J
    .local v20, "nowUptime":J
    :try_start_8
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/restrictions/JobRestriction;

    .line 6061
    .local v7, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 6062
    invoke-virtual {v7}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v8

    .line 6063
    .local v8, "reason":I
    move/from16 v22, v0

    .end local v0    # "i":I
    .local v22, "i":I
    const-string v0, " "

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6064
    invoke-static {v8}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 6321
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v7    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .end local v8    # "reason":I
    .end local v14    # "isRestricted":Z
    .end local v15    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v19    # "jobPrinted":Z
    .end local v22    # "i":I
    :catchall_1
    move-exception v0

    move-object v8, v4

    move/from16 v28, v10

    move-wide/from16 v29, v11

    goto/16 :goto_19

    .line 6061
    .restart local v0    # "i":I
    .restart local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v7    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .restart local v14    # "isRestricted":Z
    .restart local v15    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v19    # "jobPrinted":Z
    :cond_5
    move/from16 v22, v0

    .line 6059
    .end local v0    # "i":I
    .end local v7    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .restart local v22    # "i":I
    :goto_5
    add-int/lit8 v0, v22, -0x1

    move-wide/from16 v7, v20

    .end local v22    # "i":I
    .restart local v0    # "i":I
    goto :goto_4

    .end local v20    # "nowUptime":J
    .local v7, "nowUptime":J
    :cond_6
    move/from16 v22, v0

    move-wide/from16 v20, v7

    .end local v0    # "i":I
    .end local v7    # "nowUptime":J
    .restart local v20    # "nowUptime":J
    goto :goto_6

    .line 6321
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v14    # "isRestricted":Z
    .end local v15    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v19    # "jobPrinted":Z
    .end local v20    # "nowUptime":J
    .restart local v7    # "nowUptime":J
    :catchall_2
    move-exception v0

    move-wide/from16 v20, v7

    move-object v8, v4

    move/from16 v28, v10

    move-wide/from16 v29, v11

    .end local v7    # "nowUptime":J
    .restart local v20    # "nowUptime":J
    goto/16 :goto_19

    .line 6068
    .end local v20    # "nowUptime":J
    .local v0, "jobPrinted":Z
    .restart local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v7    # "nowUptime":J
    .restart local v14    # "isRestricted":Z
    .restart local v15    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_7
    move/from16 v19, v0

    move-wide/from16 v20, v7

    .end local v0    # "jobPrinted":Z
    .end local v7    # "nowUptime":J
    .restart local v19    # "jobPrinted":Z
    .restart local v20    # "nowUptime":J
    const-string v0, " none"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6070
    :goto_6
    const-string v0, "."

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6072
    const-string v0, "Ready: "

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6073
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6074
    const-string v0, " (job="

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6075
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6076
    const-string v0, " user="

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6077
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6078
    const-string v0, " !restricted="

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6079
    if-nez v14, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6080
    const-string v0, " !pending="

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6081
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0, v2}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6082
    const-string v0, " !active="

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6083
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6084
    const-string v0, " !backingup="

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6085
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6086
    const-string v0, " comp="

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6087
    invoke-direct {v1, v2}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6088
    const-string v0, ")"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6090
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6091
    move/from16 v0, v19

    move-wide/from16 v7, v20

    const/4 v2, 0x0

    const/4 v14, 0x1

    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v14    # "isRestricted":Z
    goto/16 :goto_2

    .line 6041
    .end local v19    # "jobPrinted":Z
    .end local v20    # "nowUptime":J
    .restart local v0    # "jobPrinted":Z
    .restart local v7    # "nowUptime":J
    :cond_c
    move-wide/from16 v20, v7

    .end local v7    # "nowUptime":J
    .restart local v20    # "nowUptime":J
    goto :goto_b

    .line 6038
    .end local v15    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20    # "nowUptime":J
    .restart local v7    # "nowUptime":J
    :cond_d
    move-wide/from16 v20, v7

    .line 6093
    .end local v7    # "nowUptime":J
    .restart local v20    # "nowUptime":J
    :goto_b
    if-nez v0, :cond_e

    .line 6094
    const-string v2, "None."

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 6096
    :cond_e
    :try_start_9
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6098
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-ge v2, v7, :cond_f

    .line 6099
    :try_start_a
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6101
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6102
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 6103
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 6098
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_f
    nop

    .line 6106
    .end local v2    # "i":I
    const/4 v2, 0x0

    .line 6107
    .local v2, "procStatePrinted":Z
    const/4 v7, 0x0

    move v14, v2

    .end local v2    # "procStatePrinted":Z
    .local v7, "i":I
    .local v14, "procStatePrinted":Z
    :goto_d
    :try_start_b
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    const/4 v15, -0x1

    if-ge v7, v2, :cond_13

    .line 6108
    :try_start_c
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 6109
    .local v2, "uid":I
    if-eq v10, v15, :cond_10

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-ne v10, v8, :cond_12

    .line 6110
    :cond_10
    if-nez v14, :cond_11

    .line 6111
    const/4 v14, 0x1

    .line 6112
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6113
    const-string v8, "Uid proc states:"

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6114
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6116
    :cond_11
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6117
    const-string v8, ": "

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6118
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6107
    .end local v2    # "uid":I
    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_13
    nop

    .line 6121
    .end local v7    # "i":I
    if-eqz v14, :cond_14

    .line 6122
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 6125
    :cond_14
    const/4 v2, 0x0

    .line 6126
    .local v2, "overridePrinted":Z
    const/4 v7, 0x0

    move/from16 v16, v2

    .end local v2    # "overridePrinted":Z
    .restart local v7    # "i":I
    .local v16, "overridePrinted":Z
    :goto_e
    :try_start_d
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-ge v7, v2, :cond_18

    .line 6127
    :try_start_e
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 6128
    .local v2, "uid":I
    if-eq v10, v15, :cond_15

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-ne v10, v8, :cond_17

    .line 6129
    :cond_15
    if-nez v16, :cond_16

    .line 6130
    const/16 v16, 0x1

    .line 6131
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6132
    const-string v8, "Uid bias overrides:"

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6133
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6135
    :cond_16
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6136
    const-string v8, ": "

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 6126
    .end local v2    # "uid":I
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_18
    nop

    .line 6139
    .end local v7    # "i":I
    if-eqz v16, :cond_19

    .line 6140
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 6143
    :cond_19
    const/4 v2, 0x0

    .line 6144
    .local v2, "capabilitiesPrinted":Z
    const/4 v7, 0x0

    move/from16 v19, v2

    .end local v2    # "capabilitiesPrinted":Z
    .restart local v7    # "i":I
    .local v19, "capabilitiesPrinted":Z
    :goto_f
    :try_start_f
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-ge v7, v2, :cond_1d

    .line 6145
    :try_start_10
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 6146
    .local v2, "uid":I
    if-eq v10, v15, :cond_1a

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-ne v10, v8, :cond_1c

    .line 6147
    :cond_1a
    if-nez v19, :cond_1b

    .line 6148
    const/16 v19, 0x1

    .line 6149
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6150
    const-string v8, "Uid capabilities:"

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6151
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6153
    :cond_1b
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6154
    const-string v8, ": "

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6155
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6144
    .end local v2    # "uid":I
    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_1d
    nop

    .line 6158
    .end local v7    # "i":I
    if-eqz v19, :cond_1e

    .line 6159
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 6162
    :cond_1e
    const/4 v2, 0x0

    .line 6163
    .local v2, "uidMapPrinted":Z
    const/4 v7, 0x0

    move/from16 v22, v2

    .end local v2    # "uidMapPrinted":Z
    .restart local v7    # "i":I
    .local v22, "uidMapPrinted":Z
    :goto_10
    :try_start_11
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    if-ge v7, v2, :cond_21

    .line 6164
    :try_start_12
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    .line 6165
    .local v2, "uid":I
    if-eq v9, v15, :cond_1f

    if-eq v9, v2, :cond_1f

    .line 6166
    goto :goto_11

    .line 6168
    :cond_1f
    if-nez v22, :cond_20

    .line 6169
    const/16 v22, 0x1

    .line 6170
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6171
    const-string v8, "Cached UID->package map:"

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6172
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6174
    :cond_20
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 6175
    const-string v8, ": "

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6176
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 6163
    .end local v2    # "uid":I
    :goto_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_21
    nop

    .line 6178
    .end local v7    # "i":I
    if-eqz v22, :cond_22

    .line 6179
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 6182
    :cond_22
    const/4 v2, 0x0

    .line 6183
    .local v2, "backingPrinted":Z
    const/4 v7, 0x0

    move/from16 v23, v2

    .end local v2    # "backingPrinted":Z
    .restart local v7    # "i":I
    .local v23, "backingPrinted":Z
    :goto_12
    :try_start_13
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    if-ge v7, v2, :cond_26

    .line 6184
    :try_start_14
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 6185
    .local v2, "uid":I
    if-eq v10, v15, :cond_23

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-ne v10, v8, :cond_25

    .line 6186
    :cond_23
    if-nez v23, :cond_24

    .line 6187
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6188
    const-string v8, "Backing up uids:"

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6189
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6190
    const/16 v23, 0x1

    goto :goto_13

    .line 6192
    :cond_24
    const-string v8, ", "

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6194
    :goto_13
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6183
    .end local v2    # "uid":I
    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_26
    nop

    .line 6197
    .end local v7    # "i":I
    if-eqz v23, :cond_27

    .line 6198
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6199
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 6202
    :cond_27
    :try_start_15
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6203
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v3, v10}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/IndentingPrintWriter;I)V

    .line 6204
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6205
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v3, v10}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/IndentingPrintWriter;I)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    if-eqz v2, :cond_28

    .line 6206
    :try_start_16
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 6209
    :cond_28
    const/4 v2, 0x0

    .line 6210
    .local v2, "pendingPrinted":Z
    :try_start_17
    const-string v7, "Pending queue:"

    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6211
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6213
    const/4 v7, 0x0

    .line 6214
    .local v7, "pendingIdx":I
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v8}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    move/from16 v24, v2

    move/from16 v25, v7

    .line 6215
    .end local v2    # "pendingPrinted":Z
    .end local v7    # "pendingIdx":I
    .local v24, "pendingPrinted":Z
    .local v25, "pendingIdx":I
    :goto_14
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    move-object v7, v2

    .local v7, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_2b

    .line 6216
    add-int/lit8 v2, v25, 0x1

    .line 6217
    .end local v25    # "pendingIdx":I
    .local v2, "pendingIdx":I
    :try_start_18
    invoke-interface {v4, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    .line 6218
    move/from16 v25, v2

    goto :goto_14

    .line 6220
    :cond_29
    if-nez v24, :cond_2a

    .line 6221
    const/4 v8, 0x1

    move/from16 v24, v8

    .line 6224
    :cond_2a
    const-string v8, "Pending #"

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6225
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6227
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6228
    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 6229
    invoke-virtual {v1, v7}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v17

    .line 6230
    .local v17, "bias":I
    const-string v8, "Evaluated bias: "

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6231
    invoke-static/range {v17 .. v17}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6233
    const-string v8, "Enq: "

    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 6234
    move-wide/from16 v26, v5

    move-object v6, v4

    .end local v4    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v5    # "nowElapsed":J
    .local v6, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v26, "nowElapsed":J
    :try_start_19
    iget-wide v4, v7, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v4, v4, v20

    invoke-static {v4, v5, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6235
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6236
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6237
    .end local v17    # "bias":I
    move/from16 v25, v2

    move-object v4, v6

    move-wide/from16 v5, v26

    goto :goto_14

    .line 6321
    .end local v0    # "jobPrinted":Z
    .end local v2    # "pendingIdx":I
    .end local v7    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v14    # "procStatePrinted":Z
    .end local v16    # "overridePrinted":Z
    .end local v19    # "capabilitiesPrinted":Z
    .end local v22    # "uidMapPrinted":Z
    .end local v23    # "backingPrinted":Z
    .end local v24    # "pendingPrinted":Z
    :catchall_3
    move-exception v0

    move-object v8, v6

    move/from16 v28, v10

    move-wide/from16 v29, v11

    move-wide/from16 v5, v26

    goto/16 :goto_19

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v26    # "nowElapsed":J
    .restart local v4    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v5    # "nowElapsed":J
    :catchall_4
    move-exception v0

    move-wide/from16 v26, v5

    move-object v6, v4

    move-object v8, v6

    move/from16 v28, v10

    move-wide/from16 v29, v11

    move-wide/from16 v5, v26

    .end local v4    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v5    # "nowElapsed":J
    .restart local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v26    # "nowElapsed":J
    goto/16 :goto_19

    .line 6238
    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v26    # "nowElapsed":J
    .restart local v0    # "jobPrinted":Z
    .restart local v4    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v5    # "nowElapsed":J
    .restart local v7    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v14    # "procStatePrinted":Z
    .restart local v16    # "overridePrinted":Z
    .restart local v19    # "capabilitiesPrinted":Z
    .restart local v22    # "uidMapPrinted":Z
    .restart local v23    # "backingPrinted":Z
    .restart local v24    # "pendingPrinted":Z
    .restart local v25    # "pendingIdx":I
    :cond_2b
    move-wide/from16 v26, v5

    move-object v6, v4

    .end local v4    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v5    # "nowElapsed":J
    .restart local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v26    # "nowElapsed":J
    if-nez v24, :cond_2c

    .line 6239
    const-string v2, "None"

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 6241
    :cond_2c
    :try_start_1a
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6243
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6244
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    move-object v4, v6

    move-object/from16 v17, v7

    move-wide/from16 v7, v20

    move-wide/from16 v5, v26

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20    # "nowUptime":J
    .end local v26    # "nowElapsed":J
    .restart local v4    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v5    # "nowElapsed":J
    .local v7, "nowUptime":J
    .local v17, "job":Lcom/android/server/job/controllers/JobStatus;
    :try_start_1b
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobConcurrencyManager;->dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;JJ)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move-object v8, v4

    .line 6246
    .end local v4    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v7    # "nowUptime":J
    .local v8, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20    # "nowUptime":J
    :try_start_1c
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6247
    const/4 v2, 0x0

    .line 6248
    .local v2, "recentPrinted":Z
    const-string v4, "Recently completed jobs:"

    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6249
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6250
    const/4 v4, 0x1

    move-object/from16 v7, v17

    move/from16 v17, v2

    .end local v2    # "recentPrinted":Z
    .local v4, "r":I
    .local v7, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v17, "recentPrinted":Z
    :goto_15
    const/16 v2, 0x14

    if-gt v4, v2, :cond_2f

    .line 6252
    move/from16 v26, v2

    iget v2, v1, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    add-int/lit8 v2, v2, 0x14

    sub-int/2addr v2, v4

    rem-int/lit8 v2, v2, 0x14

    .line 6254
    .local v2, "idx":I
    iget-object v15, v1, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    aget-object v15, v15, v2

    move-object v7, v15

    .line 6255
    if-eqz v7, :cond_2e

    .line 6256
    invoke-interface {v8, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2d

    .line 6257
    move/from16 v27, v0

    move/from16 v28, v10

    move-wide/from16 v29, v11

    goto :goto_16

    .line 6259
    :cond_2d
    const/4 v15, 0x1

    .line 6260
    .end local v17    # "recentPrinted":Z
    .local v15, "recentPrinted":Z
    move/from16 v27, v0

    .end local v0    # "jobPrinted":Z
    .local v27, "jobPrinted":Z
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    move/from16 v28, v10

    move-wide/from16 v29, v11

    .end local v10    # "filterAppId":I
    .end local v11    # "now":J
    .local v28, "filterAppId":I
    .local v29, "now":J
    :try_start_1d
    aget-wide v10, v0, v2

    invoke-static {v10, v11, v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6261
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6263
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6264
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6265
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6266
    const/4 v0, 0x1

    invoke-virtual {v7, v3, v0, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 6267
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6268
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v17, v15

    goto :goto_16

    .line 6321
    .end local v2    # "idx":I
    .end local v4    # "r":I
    .end local v7    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v14    # "procStatePrinted":Z
    .end local v15    # "recentPrinted":Z
    .end local v16    # "overridePrinted":Z
    .end local v19    # "capabilitiesPrinted":Z
    .end local v22    # "uidMapPrinted":Z
    .end local v23    # "backingPrinted":Z
    .end local v24    # "pendingPrinted":Z
    .end local v25    # "pendingIdx":I
    .end local v27    # "jobPrinted":Z
    :catchall_5
    move-exception v0

    goto/16 :goto_19

    .end local v28    # "filterAppId":I
    .end local v29    # "now":J
    .restart local v10    # "filterAppId":I
    .restart local v11    # "now":J
    :catchall_6
    move-exception v0

    move/from16 v28, v10

    move-wide/from16 v29, v11

    .end local v10    # "filterAppId":I
    .end local v11    # "now":J
    .restart local v28    # "filterAppId":I
    .restart local v29    # "now":J
    goto/16 :goto_19

    .line 6255
    .end local v28    # "filterAppId":I
    .end local v29    # "now":J
    .restart local v0    # "jobPrinted":Z
    .restart local v2    # "idx":I
    .restart local v4    # "r":I
    .restart local v7    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v10    # "filterAppId":I
    .restart local v11    # "now":J
    .restart local v14    # "procStatePrinted":Z
    .restart local v16    # "overridePrinted":Z
    .restart local v17    # "recentPrinted":Z
    .restart local v19    # "capabilitiesPrinted":Z
    .restart local v22    # "uidMapPrinted":Z
    .restart local v23    # "backingPrinted":Z
    .restart local v24    # "pendingPrinted":Z
    .restart local v25    # "pendingIdx":I
    :cond_2e
    move/from16 v27, v0

    move/from16 v28, v10

    move-wide/from16 v29, v11

    .line 6250
    .end local v0    # "jobPrinted":Z
    .end local v2    # "idx":I
    .end local v10    # "filterAppId":I
    .end local v11    # "now":J
    .restart local v27    # "jobPrinted":Z
    .restart local v28    # "filterAppId":I
    .restart local v29    # "now":J
    :goto_16
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v27

    move/from16 v10, v28

    move-wide/from16 v11, v29

    const/4 v15, -0x1

    goto :goto_15

    .end local v27    # "jobPrinted":Z
    .end local v28    # "filterAppId":I
    .end local v29    # "now":J
    .restart local v0    # "jobPrinted":Z
    .restart local v10    # "filterAppId":I
    .restart local v11    # "now":J
    :cond_2f
    move/from16 v27, v0

    move/from16 v28, v10

    move-wide/from16 v29, v11

    .line 6271
    .end local v0    # "jobPrinted":Z
    .end local v4    # "r":I
    .end local v10    # "filterAppId":I
    .end local v11    # "now":J
    .restart local v27    # "jobPrinted":Z
    .restart local v28    # "filterAppId":I
    .restart local v29    # "now":J
    if-nez v17, :cond_30

    .line 6272
    const-string v0, "None"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6274
    :cond_30
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6275
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6277
    const/4 v0, 0x0

    .line 6278
    .local v0, "recentCancellationsPrinted":Z
    const/4 v2, 0x1

    move-object v10, v7

    .end local v7    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v2, "r":I
    .local v10, "job":Lcom/android/server/job/controllers/JobStatus;
    :goto_17
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    array-length v4, v4

    if-gt v2, v4, :cond_34

    .line 6280
    iget v4, v1, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    array-length v7, v7

    add-int/2addr v4, v7

    sub-int/2addr v4, v2

    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    array-length v7, v7

    rem-int/2addr v4, v7

    .line 6282
    .local v4, "idx":I
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    aget-object v7, v7, v4

    move-object v10, v7

    .line 6283
    if-eqz v10, :cond_33

    .line 6284
    invoke-interface {v8, v10}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31

    .line 6285
    const/4 v7, 0x1

    goto :goto_18

    .line 6287
    :cond_31
    if-nez v0, :cond_32

    .line 6288
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6289
    const-string v7, "Recently cancelled jobs:"

    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6290
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6291
    const/4 v0, 0x1

    .line 6293
    :cond_32
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    aget-wide v11, v7, v4

    invoke-static {v11, v12, v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6294
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6296
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6297
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6298
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6299
    const/4 v7, 0x1

    invoke-virtual {v10, v3, v7, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 6300
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6301
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_18

    .line 6283
    :cond_33
    const/4 v7, 0x1

    .line 6278
    .end local v4    # "idx":I
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_34
    nop

    .line 6304
    .end local v2    # "r":I
    if-nez v0, :cond_35

    .line 6305
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6306
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6309
    :cond_35
    const/4 v2, -0x1

    if-ne v9, v2, :cond_36

    .line 6310
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6311
    const-string/jumbo v2, "mReadyToRock="

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6312
    const-string/jumbo v2, "mReportedActive="

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6314
    :cond_36
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6316
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    move-wide v6, v5

    move-wide/from16 v4, v29

    .end local v5    # "nowElapsed":J
    .end local v29    # "now":J
    .local v4, "now":J
    .local v6, "nowElapsed":J
    :try_start_1e
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobConcurrencyManager;->dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    move-wide v5, v6

    .line 6318
    .end local v4    # "now":J
    .end local v6    # "nowElapsed":J
    .restart local v5    # "nowElapsed":J
    .restart local v29    # "now":J
    :try_start_1f
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6319
    const-string v2, "PersistStats: "

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6320
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 6321
    .end local v0    # "recentCancellationsPrinted":Z
    .end local v10    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v14    # "procStatePrinted":Z
    .end local v16    # "overridePrinted":Z
    .end local v17    # "recentPrinted":Z
    .end local v19    # "capabilitiesPrinted":Z
    .end local v22    # "uidMapPrinted":Z
    .end local v23    # "backingPrinted":Z
    .end local v24    # "pendingPrinted":Z
    .end local v25    # "pendingIdx":I
    .end local v27    # "jobPrinted":Z
    monitor-exit v13
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 6322
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6323
    return-void

    .line 6321
    .end local v5    # "nowElapsed":J
    .end local v29    # "now":J
    .restart local v4    # "now":J
    .restart local v6    # "nowElapsed":J
    :catchall_7
    move-exception v0

    move-wide/from16 v29, v4

    move-wide v5, v6

    .end local v4    # "now":J
    .end local v6    # "nowElapsed":J
    .restart local v5    # "nowElapsed":J
    .restart local v29    # "now":J
    goto :goto_19

    .end local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20    # "nowUptime":J
    .end local v28    # "filterAppId":I
    .end local v29    # "now":J
    .local v4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v7, "nowUptime":J
    .local v10, "filterAppId":I
    .restart local v11    # "now":J
    :catchall_8
    move-exception v0

    move-wide/from16 v20, v7

    move/from16 v28, v10

    move-wide/from16 v29, v11

    move-object v8, v4

    .end local v4    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v7    # "nowUptime":J
    .end local v10    # "filterAppId":I
    .end local v11    # "now":J
    .restart local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20    # "nowUptime":J
    .restart local v28    # "filterAppId":I
    .restart local v29    # "now":J
    goto :goto_19

    .end local v5    # "nowElapsed":J
    .end local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v28    # "filterAppId":I
    .end local v29    # "now":J
    .local v6, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "filterAppId":I
    .restart local v11    # "now":J
    .restart local v26    # "nowElapsed":J
    :catchall_9
    move-exception v0

    move-object v8, v6

    move/from16 v28, v10

    move-wide/from16 v29, v11

    move-wide/from16 v5, v26

    .end local v6    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v10    # "filterAppId":I
    .end local v11    # "now":J
    .end local v26    # "nowElapsed":J
    .restart local v5    # "nowElapsed":J
    .restart local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v28    # "filterAppId":I
    .restart local v29    # "now":J
    goto :goto_19

    .end local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v28    # "filterAppId":I
    .end local v29    # "now":J
    .restart local v4    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "filterAppId":I
    .restart local v11    # "now":J
    :catchall_a
    move-exception v0

    move-object v8, v4

    move/from16 v28, v10

    move-wide/from16 v29, v11

    .end local v4    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v10    # "filterAppId":I
    .end local v11    # "now":J
    .restart local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v28    # "filterAppId":I
    .restart local v29    # "now":J
    :goto_19
    :try_start_20
    monitor-exit v13
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    throw v0
.end method

.method dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .locals 32
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "filterUid"    # I

    .line 6326
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v0

    .line 6327
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 6328
    .local v11, "filterAppId":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 6329
    .local v12, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 6330
    .local v8, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v14

    .line 6331
    .local v14, "nowUptime":J
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, v11}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda8;-><init>(I)V

    move-object v10, v0

    .line 6336
    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6337
    const-wide v5, 0x10b00000001L

    :try_start_0
    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 6338
    .local v18, "settingsToken":J
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v4}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 6339
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    .line 6340
    .local v7, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v7, v4}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6341
    .end local v7    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_0

    .line 6447
    .end local v18    # "settingsToken":J
    :catchall_0
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v16, v12

    move-object v12, v1

    move-object v13, v10

    move/from16 v1, p2

    goto/16 :goto_e

    .line 6342
    .restart local v18    # "settingsToken":J
    :cond_0
    move-wide/from16 v16, v8

    move-wide/from16 v7, v18

    .end local v8    # "nowElapsed":J
    .end local v18    # "settingsToken":J
    .local v7, "settingsToken":J
    .local v16, "nowElapsed":J
    :try_start_2
    invoke-virtual {v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6344
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 6345
    :try_start_3
    iget-object v9, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v9, v4}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6344
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6447
    .end local v0    # "i":I
    .end local v7    # "settingsToken":J
    :catchall_1
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v8, v16

    move-wide/from16 v16, v12

    move-object v12, v1

    move-object v13, v10

    move/from16 v1, p2

    goto/16 :goto_e

    .line 6344
    .restart local v0    # "i":I
    .restart local v7    # "settingsToken":J
    :cond_1
    nop

    .line 6348
    .end local v0    # "i":I
    :try_start_4
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    array-length v9, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    const/16 v19, 0x0

    move/from16 v5, v19

    :goto_2
    if-ge v5, v9, :cond_2

    :try_start_5
    aget v6, v0, v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6349
    .local v6, "u":I
    move-object/from16 v22, v3

    const-wide v2, 0x20500000002L

    :try_start_6
    invoke-virtual {v4, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 6348
    .end local v6    # "u":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    goto :goto_2

    .line 6447
    .end local v7    # "settingsToken":J
    :catchall_2
    move-exception v0

    move-wide/from16 v8, v16

    move-wide/from16 v16, v12

    move-object v12, v1

    move-object v13, v10

    move/from16 v1, p2

    goto/16 :goto_e

    .line 6352
    .restart local v7    # "settingsToken":J
    :cond_2
    move-object/from16 v22, v3

    :try_start_7
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-wide v2, 0x10b00000016L

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6354
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    if-lez v0, :cond_7

    .line 6355
    :try_start_8
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    .line 6356
    .local v0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 6357
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 6358
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v2, 0x20b00000003L

    invoke-virtual {v4, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 6359
    .local v2, "rjToken":J
    move-wide/from16 v26, v2

    const-wide v2, 0x10b00000001L

    .end local v2    # "rjToken":J
    .local v26, "rjToken":J
    invoke-virtual {v5, v4, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6362
    invoke-interface {v10, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-nez v6, :cond_3

    .line 6363
    goto :goto_3

    .line 6366
    :cond_3
    move-wide/from16 v20, v2

    move-object v3, v5

    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v5, 0x10b00000002L

    move-wide v8, v7

    .end local v7    # "settingsToken":J
    .local v8, "settingsToken":J
    const/4 v7, 0x1

    move-wide/from16 v20, v8

    move-wide/from16 v8, v16

    move-wide/from16 v28, v26

    move-wide/from16 v16, v12

    const-wide v12, 0x1080000000bL

    .end local v12    # "now":J
    .end local v26    # "rjToken":J
    .local v8, "nowElapsed":J
    .local v16, "now":J
    .local v20, "settingsToken":J
    .local v28, "rjToken":J
    :try_start_9
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 6369
    nop

    .line 6371
    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 6369
    const-wide v5, 0x1080000000aL

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6372
    nop

    .line 6373
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    .line 6372
    const-wide v5, 0x10800000003L

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6374
    nop

    .line 6375
    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 6374
    const-wide v5, 0x10800000004L

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6376
    nop

    .line 6378
    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v2

    if-eqz v2, :cond_4

    move/from16 v2, v18

    goto :goto_4

    :cond_4
    move/from16 v2, v19

    .line 6376
    :goto_4
    invoke-virtual {v4, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6379
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 6380
    invoke-virtual {v2, v3}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 6379
    const-wide v5, 0x10800000005L

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6381
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 6382
    invoke-virtual {v2, v3}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 6381
    const-wide v5, 0x10800000006L

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6383
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 6384
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 6383
    const-wide v5, 0x10800000007L

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6385
    nop

    .line 6386
    invoke-direct {v1, v3}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 6385
    const-wide v5, 0x10800000008L

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6388
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/restrictions/JobRestriction;

    .line 6389
    .local v5, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    const-wide v6, 0x20b0000000cL

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 6391
    .local v6, "restrictionsToken":J
    nop

    .line 6392
    invoke-virtual {v5}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 6391
    move-wide/from16 v30, v8

    .end local v8    # "nowElapsed":J
    .local v30, "nowElapsed":J
    const-wide v8, 0x10e00000001L

    :try_start_a
    invoke-virtual {v4, v8, v9, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6393
    nop

    .line 6394
    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v8

    invoke-virtual {v5, v3, v8}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v8

    .line 6393
    const-wide v12, 0x10800000002L

    invoke-virtual {v4, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6395
    invoke-virtual {v4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6396
    .end local v5    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .end local v6    # "restrictionsToken":J
    move-wide/from16 v8, v30

    const-wide v12, 0x1080000000bL

    goto :goto_5

    .line 6447
    .end local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v20    # "settingsToken":J
    .end local v28    # "rjToken":J
    :catchall_3
    move-exception v0

    move-object v12, v1

    move-object v13, v10

    move-wide/from16 v8, v30

    move/from16 v1, p2

    goto/16 :goto_e

    .end local v30    # "nowElapsed":J
    .restart local v8    # "nowElapsed":J
    :catchall_4
    move-exception v0

    move-wide/from16 v30, v8

    move-object v12, v1

    move-object v13, v10

    move/from16 v1, p2

    .end local v8    # "nowElapsed":J
    .restart local v30    # "nowElapsed":J
    goto/16 :goto_e

    .line 6398
    .end local v30    # "nowElapsed":J
    .restart local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v8    # "nowElapsed":J
    .restart local v20    # "settingsToken":J
    .restart local v28    # "rjToken":J
    :cond_5
    move-wide/from16 v30, v8

    .end local v8    # "nowElapsed":J
    .restart local v30    # "nowElapsed":J
    move-wide/from16 v5, v28

    .end local v28    # "rjToken":J
    .local v5, "rjToken":J
    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 6399
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "rjToken":J
    move-wide/from16 v12, v16

    move-wide/from16 v7, v20

    move-wide/from16 v16, v30

    goto/16 :goto_3

    .line 6447
    .end local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20    # "settingsToken":J
    .end local v30    # "nowElapsed":J
    .restart local v12    # "now":J
    .local v16, "nowElapsed":J
    :catchall_5
    move-exception v0

    move-wide/from16 v30, v16

    move-wide/from16 v16, v12

    move-object v12, v1

    move-object v13, v10

    move-wide/from16 v8, v30

    move/from16 v1, p2

    .end local v12    # "now":J
    .local v16, "now":J
    .restart local v30    # "nowElapsed":J
    goto/16 :goto_e

    .line 6357
    .end local v30    # "nowElapsed":J
    .restart local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v7    # "settingsToken":J
    .restart local v12    # "now":J
    .local v16, "nowElapsed":J
    :cond_6
    move-wide/from16 v20, v7

    move-wide/from16 v30, v16

    move-wide/from16 v16, v12

    .end local v7    # "settingsToken":J
    .end local v12    # "now":J
    .local v16, "now":J
    .restart local v20    # "settingsToken":J
    .restart local v30    # "nowElapsed":J
    goto :goto_6

    .line 6354
    .end local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20    # "settingsToken":J
    .end local v30    # "nowElapsed":J
    .restart local v7    # "settingsToken":J
    .restart local v12    # "now":J
    .local v16, "nowElapsed":J
    :cond_7
    move-wide/from16 v20, v7

    move-wide/from16 v30, v16

    move-wide/from16 v16, v12

    .line 6401
    .end local v7    # "settingsToken":J
    .end local v12    # "now":J
    .local v16, "now":J
    .restart local v20    # "settingsToken":J
    .restart local v30    # "nowElapsed":J
    :goto_6
    :try_start_b
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    if-eqz v2, :cond_8

    :try_start_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 6402
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    const-wide v5, 0x20b00000004L

    invoke-virtual {v2, v4, v5, v6, v10}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 6404
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_7

    .line 6405
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    :try_start_d
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    const/4 v12, -0x1

    if-ge v0, v2, :cond_b

    .line 6406
    :try_start_e
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 6407
    .local v2, "uid":I
    if-eq v11, v12, :cond_9

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v11, v3, :cond_a

    .line 6408
    :cond_9
    const-wide v5, 0x20b00000005L

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 6409
    .local v5, "pToken":J
    const-wide v7, 0x10500000001L

    invoke-virtual {v4, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6410
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 6411
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 6410
    const-wide v7, 0x11100000002L

    invoke-virtual {v4, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6412
    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 6405
    .end local v2    # "uid":I
    .end local v5    # "pToken":J
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    nop

    .line 6415
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    :try_start_f
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    if-ge v0, v2, :cond_e

    .line 6416
    :try_start_10
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 6417
    .restart local v2    # "uid":I
    if-eq v11, v12, :cond_c

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v11, v3, :cond_d

    .line 6418
    :cond_c
    const-wide v5, 0x20500000006L

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 6415
    .end local v2    # "uid":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    nop

    .line 6422
    .end local v0    # "i":I
    :try_start_11
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v2, 0x10b00000008L

    invoke-virtual {v0, v4, v2, v3, v11}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 6424
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v2, 0x10b00000007L

    invoke-virtual {v0, v4, v2, v3, v11}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 6428
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 6429
    :goto_a
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    move-object v0, v3

    .restart local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_f

    .line 6430
    const-wide v5, 0x20b00000009L

    :try_start_12
    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 6432
    .local v5, "pjToken":J
    const-wide v7, 0x10b00000001L

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 6433
    move-wide/from16 v18, v5

    .end local v5    # "pjToken":J
    .local v18, "pjToken":J
    const-wide v5, 0x10b00000002L

    move-wide/from16 v24, v7

    const/4 v7, 0x0

    move-wide/from16 v12, v18

    move-wide/from16 v8, v30

    .end local v18    # "pjToken":J
    .end local v30    # "nowElapsed":J
    .restart local v8    # "nowElapsed":J
    .local v12, "pjToken":J
    :try_start_13
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    move-object v2, v3

    .line 6434
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    const-wide v5, 0x11100000003L

    invoke-virtual {v4, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6435
    iget-wide v5, v2, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v5, v14, v5

    const-wide v0, 0x10300000004L

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 6437
    invoke-virtual {v4, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 6438
    .end local v12    # "pjToken":J
    const/4 v12, -0x1

    move-object/from16 v1, p0

    move-wide/from16 v30, v8

    goto :goto_a

    .line 6447
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v20    # "settingsToken":J
    :catchall_6
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v1, p2

    :goto_b
    move-object v13, v10

    goto/16 :goto_e

    .end local v8    # "nowElapsed":J
    .restart local v30    # "nowElapsed":J
    :catchall_7
    move-exception v0

    move-wide/from16 v8, v30

    move-object/from16 v12, p0

    move/from16 v1, p2

    move-object v13, v10

    .end local v30    # "nowElapsed":J
    .restart local v8    # "nowElapsed":J
    goto/16 :goto_e

    .line 6439
    .end local v8    # "nowElapsed":J
    .restart local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v20    # "settingsToken":J
    .restart local v30    # "nowElapsed":J
    :cond_f
    move-object v2, v3

    move-wide/from16 v8, v30

    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v30    # "nowElapsed":J
    .restart local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v8    # "nowElapsed":J
    move/from16 v1, p2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_10

    .line 6440
    move-object/from16 v12, p0

    :try_start_14
    iget-boolean v0, v12, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    const-wide v5, 0x1080000000bL

    invoke-virtual {v4, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6441
    iget-boolean v0, v12, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    const-wide v5, 0x1080000000cL

    invoke-virtual {v4, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    goto :goto_c

    .line 6447
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v20    # "settingsToken":J
    :catchall_8
    move-exception v0

    goto :goto_b

    .line 6439
    .restart local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v20    # "settingsToken":J
    :cond_10
    move-object/from16 v12, p0

    .line 6443
    :goto_c
    :try_start_15
    iget-object v3, v12, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    const-wide v5, 0x10b00000014L

    move-object v13, v10

    move-wide v9, v8

    move-wide/from16 v7, v16

    .end local v8    # "nowElapsed":J
    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v16    # "now":J
    .local v7, "now":J
    .local v9, "nowElapsed":J
    .local v13, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_16
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/job/JobConcurrencyManager;->dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    move-wide v8, v9

    .line 6446
    .end local v7    # "now":J
    .end local v9    # "nowElapsed":J
    .restart local v8    # "nowElapsed":J
    .restart local v16    # "now":J
    :try_start_17
    iget-object v0, v12, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    const-wide v5, 0x10b00000015L

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6447
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v20    # "settingsToken":J
    monitor-exit v22
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 6449
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 6450
    return-void

    .line 6447
    :catchall_9
    move-exception v0

    goto :goto_e

    .end local v8    # "nowElapsed":J
    .end local v16    # "now":J
    .restart local v7    # "now":J
    .restart local v9    # "nowElapsed":J
    :catchall_a
    move-exception v0

    move-wide/from16 v16, v7

    move-wide v8, v9

    .end local v7    # "now":J
    .end local v9    # "nowElapsed":J
    .restart local v8    # "nowElapsed":J
    .restart local v16    # "now":J
    goto :goto_e

    .end local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_b
    move-exception v0

    move-object v13, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    goto :goto_e

    .end local v8    # "nowElapsed":J
    .end local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v30    # "nowElapsed":J
    :catchall_c
    move-exception v0

    move-object v12, v1

    move-object v13, v10

    move-wide/from16 v8, v30

    move/from16 v1, p2

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v30    # "nowElapsed":J
    .restart local v8    # "nowElapsed":J
    .restart local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    goto :goto_e

    .end local v8    # "nowElapsed":J
    .end local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "now":J
    .local v16, "nowElapsed":J
    :catchall_d
    move-exception v0

    :goto_d
    move-wide/from16 v8, v16

    move-wide/from16 v16, v12

    move-object v12, v1

    move-object v13, v10

    move/from16 v1, p2

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v12    # "now":J
    .restart local v8    # "nowElapsed":J
    .restart local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v16, "now":J
    goto :goto_e

    .end local v8    # "nowElapsed":J
    .end local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v12    # "now":J
    .local v16, "nowElapsed":J
    :catchall_e
    move-exception v0

    move-object/from16 v22, v3

    goto :goto_d

    .end local v16    # "nowElapsed":J
    .restart local v8    # "nowElapsed":J
    :catchall_f
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v16, v12

    move-object v12, v1

    move-object v13, v10

    move/from16 v1, p2

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v12    # "now":J
    .restart local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v16, "now":J
    :goto_e
    :try_start_18
    monitor-exit v22
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw v0
.end method

.method evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4157
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "c":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4158
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 4159
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 4157
    .end local v1    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 4161
    .end local v0    # "c":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    return v0
.end method

.method evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4310
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBias()I

    move-result v0

    .line 4311
    .local v0, "bias":I
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 4312
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    return v1

    .line 4314
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 4315
    .local v1, "override":I
    if-eqz v1, :cond_1

    .line 4316
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2

    .line 4318
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2
.end method

.method executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZI)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "hasJobId"    # Z
    .param p6, "jobId"    # I

    .line 5556
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeCancelCommand(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5560
    :cond_0
    const/4 v1, -0x1

    .line 5562
    .local v1, "pkgUid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 5563
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const-wide/16 v2, 0x0

    invoke-interface {v0, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 5564
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    move v3, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 5566
    .end local v1    # "pkgUid":I
    .local v3, "pkgUid":I
    :goto_1
    if-gez v3, :cond_1

    .line 5567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5568
    const/16 v0, -0x3e8

    return v0

    .line 5571
    :cond_1
    const-string v0, " in user "

    if-nez p5, :cond_3

    .line 5572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling all jobs for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5573
    const/4 v6, 0x0

    const-string v7, "cancel shell command for package"

    const/4 v4, 0x0

    const/16 v5, 0xd

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5578
    const-string v0, "No matching jobs found."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v4, p4

    move v5, p6

    goto :goto_2

    .line 5573
    :cond_2
    move-object v4, p4

    move v5, p6

    goto :goto_2

    .line 5581
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5582
    const/16 v6, 0x7d0

    const/16 v7, 0xd

    move-object v2, p0

    move-object v4, p4

    move v5, p6

    .end local p4    # "namespace":Ljava/lang/String;
    .end local p6    # "jobId":I
    .local v4, "namespace":Ljava/lang/String;
    .local v5, "jobId":I
    invoke-direct/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJob(ILjava/lang/String;III)Z

    move-result p4

    if-nez p4, :cond_4

    .line 5584
    const-string p4, "No matching job found."

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5588
    :cond_4
    :goto_2
    const/4 p4, 0x0

    return p4
.end method

.method executeRunCommand(Ljava/lang/String;ILjava/lang/String;IZZ)I
    .locals 18
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "jobId"    # I
    .param p5, "satisfied"    # Z
    .param p6, "force"    # Z

    .line 5444
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    const-string v0, "JobScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "executeRunCommand(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " s="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " f="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v11, v0

    .line 5450
    .local v11, "delayLatch":Ljava/util/concurrent/CountDownLatch;
    const/4 v15, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 5451
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v15

    .line 5450
    :goto_0
    const-wide/16 v12, 0x0

    invoke-interface {v0, v2, v12, v13, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    move v9, v0

    .line 5452
    .local v9, "uid":I
    if-gez v9, :cond_1

    .line 5453
    const/16 v0, -0x3e8

    return v0

    .line 5456
    :cond_1
    iget-object v10, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5457
    :try_start_1
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, v9, v4, v5}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v12, v0

    .line 5458
    .local v12, "js":Lcom/android/server/job/controllers/JobStatus;
    if-nez v12, :cond_2

    .line 5459
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, -0x3e9

    return v0

    .line 5492
    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v0

    move/from16 v16, v9

    move-object/from16 v17, v10

    goto/16 :goto_7

    .line 5462
    .restart local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    if-eqz v7, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    .line 5463
    :cond_3
    if-eqz v6, :cond_4

    move v0, v8

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    :goto_1
    :try_start_3
    iput v0, v12, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 5467
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    sub-int/2addr v0, v8

    .local v0, "c":I
    :goto_2
    if-ltz v0, :cond_5

    .line 5468
    :try_start_4
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v8, v12}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5467
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    nop

    .line 5471
    .end local v0    # "c":I
    :try_start_5
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v0

    const/16 v8, -0x3ea

    if-nez v0, :cond_9

    .line 5472
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5473
    const/high16 v0, 0x10000000

    invoke-virtual {v12, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v13

    if-nez v13, :cond_7

    .line 5474
    invoke-virtual {v12, v0}, Lcom/android/server/job/controllers/JobStatus;->wouldBeReadyWithConstraint(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5479
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v13, v9

    .end local v9    # "uid":I
    .local v13, "uid":I
    :try_start_6
    iget-object v9, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 5480
    move-object v14, v10

    move-object v10, v12

    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    .local v10, "js":Lcom/android/server/job/controllers/JobStatus;
    const/4 v12, 0x5

    move/from16 v16, v13

    move-object/from16 v17, v14

    .end local v13    # "uid":I
    .local v16, "uid":I
    const-wide/16 v13, 0x3e8

    :try_start_7
    invoke-static/range {v9 .. v14}, Lcom/android/server/job/JobSchedulerService;->checkConstraintRunnableForTesting(Landroid/os/Handler;Lcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;IJ)Ljava/lang/Runnable;

    move-result-object v9

    .line 5479
    const-wide/16 v12, 0x3e8

    invoke-virtual {v0, v9, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 5492
    .end local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    :catchall_1
    move-exception v0

    goto :goto_7

    .end local v16    # "uid":I
    .restart local v13    # "uid":I
    :catchall_2
    move-exception v0

    move-object/from16 v17, v10

    move/from16 v16, v13

    .end local v13    # "uid":I
    .restart local v16    # "uid":I
    goto :goto_7

    .end local v16    # "uid":I
    .restart local v9    # "uid":I
    :catchall_3
    move-exception v0

    move/from16 v16, v9

    move-object/from16 v17, v10

    .end local v9    # "uid":I
    .restart local v16    # "uid":I
    goto :goto_7

    .line 5474
    .end local v16    # "uid":I
    .restart local v9    # "uid":I
    .restart local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_6
    move/from16 v16, v9

    move-object/from16 v17, v10

    move-object v10, v12

    .end local v9    # "uid":I
    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v16    # "uid":I
    goto :goto_3

    .line 5473
    .end local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v16    # "uid":I
    .restart local v9    # "uid":I
    .restart local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    move/from16 v16, v9

    move-object/from16 v17, v10

    move-object v10, v12

    .end local v9    # "uid":I
    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v16    # "uid":I
    goto :goto_3

    .line 5472
    .end local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v16    # "uid":I
    .restart local v9    # "uid":I
    .restart local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_8
    move/from16 v16, v9

    move-object/from16 v17, v10

    move-object v10, v12

    .line 5486
    .end local v9    # "uid":I
    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v16    # "uid":I
    :goto_3
    iput v15, v10, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 5487
    monitor-exit v17

    return v8

    .line 5490
    .end local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v16    # "uid":I
    .restart local v9    # "uid":I
    .restart local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_9
    move/from16 v16, v9

    move-object/from16 v17, v10

    move-object v10, v12

    .end local v9    # "uid":I
    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v16    # "uid":I
    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5492
    :goto_4
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5496
    .end local v16    # "uid":I
    nop

    .line 5501
    :try_start_8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x7

    invoke-virtual {v11, v12, v13, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5504
    goto :goto_5

    .line 5502
    :catch_0
    move-exception v0

    .line 5503
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v9, "JobScheduler"

    const-string v12, "Couldn\'t wait for asynchronous constraint change"

    invoke-static {v9, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5506
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_5
    iget-object v9, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 5507
    :try_start_9
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5508
    iput v15, v10, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 5509
    monitor-exit v9

    return v8

    .line 5514
    :catchall_4
    move-exception v0

    goto :goto_6

    .line 5512
    :cond_a
    invoke-direct {v1}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 5513
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 5514
    monitor-exit v9

    .line 5515
    return v15

    .line 5514
    :goto_6
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 5492
    .end local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v16    # "uid":I
    :goto_7
    :try_start_a
    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .end local v11    # "delayLatch":Ljava/util/concurrent/CountDownLatch;
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "namespace":Ljava/lang/String;
    .end local p4    # "jobId":I
    .end local p5    # "satisfied":Z
    .end local p6    # "force":Z
    :try_start_b
    throw v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    .line 5493
    .end local v16    # "uid":I
    .restart local v11    # "delayLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "namespace":Ljava/lang/String;
    .restart local p4    # "jobId":I
    .restart local p5    # "satisfied":Z
    .restart local p6    # "force":Z
    :catch_1
    move-exception v0

    nop

    .line 5495
    .local v0, "e":Landroid/os/RemoteException;
    return v15
.end method

.method executeStopCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)I
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "hasJobId"    # Z
    .param p6, "jobId"    # I
    .param p7, "stopReason"    # I
    .param p8, "internalStopReason"    # I

    .line 5537
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5538
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeStopJobCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5540
    invoke-static/range {p8 .. p8}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5538
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5537
    :cond_0
    move/from16 v9, p6

    move/from16 v10, p7

    .line 5543
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5544
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/job/JobConcurrencyManager;->executeStopCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)Z

    move-result v0

    .line 5546
    .local v0, "foundSome":Z
    if-nez v0, :cond_1

    .line 5547
    const-string v2, "No matching executing jobs found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5549
    .end local v0    # "foundSome":Z
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    .line 5550
    const/4 v0, 0x0

    return v0

    .line 5549
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getBatterySeq()I
    .locals 2

    .line 5607
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5608
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->getSeq()I

    move-result v1

    monitor-exit v0

    return v1

    .line 5609
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 5640
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5641
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->getValueLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5642
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getConnectivityController()Lcom/android/server/job/controllers/ConnectivityController;
    .locals 1

    .line 5767
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    return-object v0
.end method

.method public getConstants()Lcom/android/server/job/JobSchedulerService$Constants;
    .locals 1

    .line 1627
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    return-object v0
.end method

.method getEstimatedNetworkBytes(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;II)I
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "jobId"    # I
    .param p6, "byteOption"    # I

    .line 5660
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 5661
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 5660
    :goto_0
    const-wide/16 v3, 0x0

    invoke-interface {v1, p2, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 5662
    .local v1, "uid":I
    if-gez v1, :cond_1

    .line 5663
    const-string/jumbo v2, "unknown("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5664
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5665
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5666
    const/16 v0, -0x3e8

    return v0

    .line 5699
    .end local v1    # "uid":I
    :catch_0
    move-exception v1

    goto/16 :goto_5

    .line 5669
    .restart local v1    # "uid":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5670
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p4, p5}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 5671
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 5672
    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get-estimated-network-bytes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5698
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 5675
    .restart local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 5676
    const-string/jumbo v4, "unknown("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5677
    const-string v4, "/jid"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5678
    monitor-exit v2

    const/16 v0, -0x3e9

    return v0

    .line 5683
    :cond_3
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v4, p2, v1, p4, p5}, Lcom/android/server/job/JobConcurrencyManager;->getEstimatedNetworkBytesLocked(Ljava/lang/String;ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object v4

    .line 5685
    .local v4, "bytes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-nez v4, :cond_4

    .line 5686
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v5

    .line 5687
    .local v5, "downloadBytes":J
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v7

    .local v7, "uploadBytes":J
    goto :goto_2

    .line 5689
    .end local v5    # "downloadBytes":J
    .end local v7    # "uploadBytes":J
    :cond_4
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 5690
    .restart local v5    # "downloadBytes":J
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 5692
    .restart local v7    # "uploadBytes":J
    :goto_2
    if-nez p6, :cond_5

    .line 5693
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_3

    .line 5695
    :cond_5
    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 5697
    :goto_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5698
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "bytes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v5    # "downloadBytes":J
    .end local v7    # "uploadBytes":J
    monitor-exit v2

    .line 5701
    .end local v1    # "uid":I
    goto :goto_5

    .line 5698
    .restart local v1    # "uid":I
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "pkgName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "namespace":Ljava/lang/String;
    .end local p5    # "jobId":I
    .end local p6    # "byteOption":I
    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5702
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "pkgName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "namespace":Ljava/lang/String;
    .restart local p5    # "jobId":I
    .restart local p6    # "byteOption":I
    :goto_5
    return v0
.end method

.method getJobState(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "jobId"    # I

    .line 5820
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 5821
    const/4 v6, -0x1

    move/from16 v7, p3

    if-eq v7, v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 5820
    :goto_0
    const-wide/16 v8, 0x0

    move-object/from16 v10, p2

    :try_start_1
    invoke-interface {v0, v10, v8, v9, v6}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    move v6, v0

    .line 5822
    .local v6, "uid":I
    if-gez v6, :cond_1

    .line 5823
    const-string/jumbo v0, "unknown("

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5824
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5825
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5826
    const/16 v0, -0x3e8

    return v0

    .line 5904
    .end local v6    # "uid":I
    :catch_0
    move-exception v0

    :goto_1
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 5829
    .restart local v6    # "uid":I
    :cond_1
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5830
    :try_start_2
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, v6, v3, v4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    move-object v9, v0

    .line 5831
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    .line 5832
    :try_start_3
    const-string v0, "JobScheduler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get-job-state "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5903
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v0

    move v15, v6

    const/16 v16, 0x0

    goto/16 :goto_6

    .line 5835
    .restart local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    :goto_2
    if-nez v9, :cond_3

    .line 5836
    const-string/jumbo v0, "unknown("

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5837
    invoke-static {v2, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5838
    const-string v0, "/jid"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5839
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5840
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5841
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v0, -0x3e9

    return v0

    .line 5844
    :cond_3
    const/4 v0, 0x0

    .line 5845
    .local v0, "printed":Z
    :try_start_4
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v11, v9}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v11, :cond_4

    .line 5846
    :try_start_5
    const-string/jumbo v11, "pending"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5847
    const/4 v0, 0x1

    .line 5849
    :cond_4
    :try_start_6
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v11, v9}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v11, :cond_6

    .line 5850
    if-eqz v0, :cond_5

    .line 5851
    :try_start_7
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5853
    :cond_5
    const/4 v0, 0x1

    .line 5854
    const-string v11, "active"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5856
    :cond_6
    :try_start_8
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v11, :cond_8

    .line 5857
    if-eqz v0, :cond_7

    .line 5858
    :try_start_9
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5860
    :cond_7
    const/4 v0, 0x1

    .line 5861
    const-string/jumbo v11, "user-stopped"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 5863
    :cond_8
    :try_start_a
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v11, :cond_a

    .line 5864
    if-eqz v0, :cond_9

    .line 5865
    :try_start_b
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5867
    :cond_9
    const/4 v0, 0x1

    .line 5868
    const-string/jumbo v11, "source-user-stopped"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 5870
    :cond_a
    :try_start_c
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v11, :cond_c

    .line 5871
    if-eqz v0, :cond_b

    .line 5872
    :try_start_d
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5874
    :cond_b
    const/4 v0, 0x1

    .line 5875
    const-string v11, "backing-up"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move v11, v0

    goto :goto_3

    .line 5870
    :cond_c
    move v11, v0

    .line 5877
    .end local v0    # "printed":Z
    .local v11, "printed":Z
    :goto_3
    const/4 v12, 0x0

    .line 5879
    .local v12, "componentPresent":Z
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 5880
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 5882
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v14
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 5879
    move v15, v6

    const/16 v16, 0x0

    .end local v6    # "uid":I
    .local v15, "uid":I
    const-wide/32 v5, 0x10000000

    :try_start_f
    invoke-interface {v0, v13, v5, v6, v14}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    move/from16 v0, v16

    :goto_4
    move v12, v0

    .line 5884
    goto :goto_5

    .line 5903
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v11    # "printed":Z
    .end local v12    # "componentPresent":Z
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 5883
    .restart local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v11    # "printed":Z
    .restart local v12    # "componentPresent":Z
    :catch_1
    move-exception v0

    goto :goto_5

    .line 5903
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v11    # "printed":Z
    .end local v12    # "componentPresent":Z
    .end local v15    # "uid":I
    .restart local v6    # "uid":I
    :catchall_2
    move-exception v0

    move v15, v6

    const/16 v16, 0x0

    .end local v6    # "uid":I
    .restart local v15    # "uid":I
    goto :goto_6

    .line 5883
    .end local v15    # "uid":I
    .restart local v6    # "uid":I
    .restart local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v11    # "printed":Z
    .restart local v12    # "componentPresent":Z
    :catch_2
    move-exception v0

    move v15, v6

    const/16 v16, 0x0

    .line 5885
    .end local v6    # "uid":I
    .restart local v15    # "uid":I
    :goto_5
    if-nez v12, :cond_f

    .line 5886
    if-eqz v11, :cond_e

    .line 5887
    :try_start_10
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5889
    :cond_e
    const/4 v11, 0x1

    .line 5890
    const-string/jumbo v0, "no-component"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5892
    :cond_f
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5893
    if-eqz v11, :cond_10

    .line 5894
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5896
    :cond_10
    const/4 v11, 0x1

    .line 5897
    const-string/jumbo v0, "ready"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5899
    :cond_11
    if-nez v11, :cond_12

    .line 5900
    const-string/jumbo v0, "waiting"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5902
    :cond_12
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 5903
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v11    # "printed":Z
    .end local v12    # "componentPresent":Z
    monitor-exit v8

    .line 5906
    .end local v15    # "uid":I
    goto :goto_7

    .line 5903
    .restart local v15    # "uid":I
    :goto_6
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "pkgName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "namespace":Ljava/lang/String;
    .end local p5    # "jobId":I
    :try_start_11
    throw v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_3

    .line 5904
    .end local v15    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "pkgName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "namespace":Ljava/lang/String;
    .restart local p5    # "jobId":I
    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v10, p2

    move/from16 v7, p3

    goto/16 :goto_1

    .line 5907
    :goto_7
    return v16
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .locals 1

    .line 1623
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    return-object v0
.end method

.method getJobWakelockTag(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "jobId"    # I

    .line 5785
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 5786
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 5785
    :goto_0
    const-wide/16 v3, 0x0

    invoke-interface {v1, p2, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 5787
    .local v1, "uid":I
    if-gez v1, :cond_1

    .line 5788
    const-string/jumbo v2, "unknown("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5789
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5790
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5791
    const/16 v0, -0x3e8

    return v0

    .line 5811
    .end local v1    # "uid":I
    :catch_0
    move-exception v1

    goto :goto_3

    .line 5794
    .restart local v1    # "uid":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5795
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p4, p5}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 5796
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 5797
    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get-job-wakelock-tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5810
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 5800
    .restart local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 5801
    const-string/jumbo v4, "unknown("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5802
    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5803
    const-string v4, "/jid"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5804
    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    .line 5805
    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5806
    monitor-exit v2

    const/16 v0, -0x3e9

    return v0

    .line 5809
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5810
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    .line 5813
    .end local v1    # "uid":I
    goto :goto_3

    .line 5810
    .restart local v1    # "uid":I
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "pkgName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "namespace":Ljava/lang/String;
    .end local p5    # "jobId":I
    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5814
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "pkgName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "namespace":Ljava/lang/String;
    .restart local p5    # "jobId":I
    :goto_3
    return v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4253
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4254
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4256
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 4255
    invoke-direct {p0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->checkRunUserInitiatedJobsPermission(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 4257
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v2

    .line 4258
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timeout-uij"

    .line 4257
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4260
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    monitor-exit v0

    return-wide v1

    .line 4280
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 4262
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4263
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    monitor-exit v0

    return-wide v1

    .line 4266
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4267
    const-string/jumbo v1, "timeout-ej"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "timeout-reg"

    :goto_0
    nop

    .line 4271
    .local v1, "timeoutTag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4272
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    goto :goto_1

    .line 4273
    :cond_3
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    :goto_1
    nop

    .line 4275
    .local v2, "normalUpperLimitMs":J
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v5

    .line 4276
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v6

    .line 4275
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4277
    move-wide v4, v2

    goto :goto_2

    .line 4278
    :cond_4
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    :goto_2
    nop

    .line 4279
    .local v4, "upperLimitMs":J
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v6, p1}, Lcom/android/server/job/controllers/QuotaController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    monitor-exit v0

    return-wide v6

    .line 4280
    .end local v1    # "timeoutTag":Ljava/lang/String;
    .end local v2    # "normalUpperLimitMs":J
    .end local v4    # "upperLimitMs":J
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4206
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4207
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4209
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 4208
    invoke-direct {p0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->checkRunUserInitiatedJobsPermission(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4212
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 4213
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timeout-uij"

    .line 4212
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 4215
    .local v1, "isWithinTimeoutQuota":Z
    if-eqz v1, :cond_0

    .line 4216
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    goto :goto_0

    .line 4248
    .end local v1    # "isWithinTimeoutQuota":Z
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 4217
    .restart local v1    # "isWithinTimeoutQuota":Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    :goto_0
    nop

    .line 4218
    .local v2, "upperLimitMs":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4220
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    if-eqz v4, :cond_2

    .line 4221
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 4222
    invoke-virtual {v4, p1}, Lcom/android/server/job/controllers/ConnectivityController;->getEstimatedTransferTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v4

    .line 4223
    .local v4, "estimatedTransferTimeMs":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 4224
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    monitor-exit v0

    return-wide v6

    .line 4229
    :cond_1
    long-to-float v6, v4

    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v7, v7, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    .line 4231
    .local v6, "factoredTransferTimeMs":J
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v8, v8, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 4232
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 4231
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    monitor-exit v0

    return-wide v8

    .line 4235
    .end local v4    # "estimatedTransferTimeMs":J
    .end local v6    # "factoredTransferTimeMs":J
    :cond_2
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 4236
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 4235
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    monitor-exit v0

    return-wide v4

    .line 4239
    :cond_3
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    monitor-exit v0

    return-wide v4

    .line 4240
    .end local v1    # "isWithinTimeoutQuota":Z
    .end local v2    # "upperLimitMs":J
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4242
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 4243
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    goto :goto_1

    .line 4244
    :cond_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    const-wide/32 v3, 0x493e0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_1
    monitor-exit v0

    .line 4242
    return-wide v1

    .line 4246
    :cond_6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    monitor-exit v0

    return-wide v1

    .line 4248
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackagesForUidLocked(I)Landroid/util/ArraySet;
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1653
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1654
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 1656
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1657
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1658
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1659
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1660
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 1659
    nop

    .end local v4    # "pkg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1664
    .end local v1    # "pkgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1662
    .restart local v1    # "pkgs":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1666
    .end local v1    # "pkgs":[Ljava/lang/String;
    :cond_1
    nop

    .line 1668
    :cond_2
    :goto_1
    return-object v0
.end method

.method getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;
    .locals 1

    .line 1632
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    return-object v0
.end method

.method getPendingJobReason(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2096
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasons(ILjava/lang/String;I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method getPendingJobReasons(Lcom/android/server/job/controllers/JobStatus;)[I
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2102
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasons(ILjava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method protected getQuotaController()Lcom/android/server/job/controllers/QuotaController;
    .locals 1

    .line 5772
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    return-object v0
.end method

.method getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;II)Lcom/android/server/job/controllers/JobStatus;
    .locals 29
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "stopReason"    # I
    .param p3, "internalStopReason"    # I

    .line 3024
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/16 v3, 0xb

    const-string v4, "JobScheduler"

    if-ne v2, v3, :cond_0

    .line 3025
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because of user stop"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3030
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    const/4 v3, 0x0

    return-object v3

    .line 3035
    :cond_0
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 3036
    .local v5, "elapsedNowMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 3038
    .local v3, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v7

    .line 3039
    .local v7, "initialBackoffMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v9

    .line 3040
    .local v9, "numFailures":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v10

    .line 3041
    .local v10, "numAbandonedFailures":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumSystemStops()I

    move-result v11

    .line 3042
    .local v11, "numSystemStops":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v12

    .line 3046
    .local v12, "uid":I
    const/16 v13, 0xa

    const/16 v14, 0xd

    if-eq v2, v13, :cond_1

    const/4 v13, 0x3

    if-eq v2, v13, :cond_1

    const/16 v13, 0xc

    if-eq v2, v13, :cond_1

    if-ne v1, v14, :cond_2

    :cond_1
    goto :goto_0

    .line 3051
    :cond_2
    nop

    .line 3052
    const-wide/32 v14, 0x163457ac

    invoke-static {v14, v15, v12}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v14

    if-nez v14, :cond_3

    const/16 v13, 0xd

    if-ne v2, v13, :cond_3

    .line 3054
    add-int/lit8 v10, v10, 0x1

    .line 3055
    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v9

    move/from16 v22, v11

    goto :goto_1

    .line 3057
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v9

    move/from16 v22, v11

    goto :goto_1

    .line 3050
    :goto_0
    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v9

    move/from16 v22, v11

    .line 3060
    .end local v9    # "numFailures":I
    .end local v11    # "numSystemStops":I
    .local v20, "numFailures":I
    .local v22, "numSystemStops":I
    :goto_1
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v9

    .line 3061
    .local v9, "backoffPolicy":I
    invoke-virtual {v0, v10, v12}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3062
    const/4 v9, 0x1

    .line 3065
    :cond_4
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v11, v11, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    div-int v11, v22, v11

    add-int v11, v20, v11

    .line 3069
    .local v11, "backoffAttempts":I
    if-nez v11, :cond_5

    .line 3070
    const-wide/16 v14, 0x0

    move-object v13, v3

    move-wide/from16 v16, v14

    .local v14, "earliestRuntimeMs":J
    goto :goto_4

    .line 3073
    .end local v14    # "earliestRuntimeMs":J
    :cond_5
    packed-switch v9, :pswitch_data_0

    .line 3083
    sget-boolean v14, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v14, :cond_6

    .line 3084
    const-string v14, "Unrecognised back-off policy, defaulting to exponential."

    invoke-static {v4, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    :cond_6
    :pswitch_0
    move-wide v14, v7

    .line 3089
    .local v14, "backoff":J
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    move-wide/from16 v16, v14

    .end local v14    # "backoff":J
    .local v16, "backoff":J
    iget-wide v13, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    cmp-long v4, v16, v13

    if-gez v4, :cond_7

    .line 3090
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v14, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    .end local v16    # "backoff":J
    .restart local v14    # "backoff":J
    goto :goto_2

    .line 3089
    .end local v14    # "backoff":J
    .restart local v16    # "backoff":J
    :cond_7
    move-wide/from16 v14, v16

    .line 3092
    .end local v16    # "backoff":J
    .restart local v14    # "backoff":J
    :goto_2
    long-to-float v4, v14

    add-int/lit8 v13, v11, -0x1

    invoke-static {v4, v13}, Ljava/lang/Math;->scalb(FI)F

    move-result v4

    move-object v13, v3

    .end local v3    # "job":Landroid/app/job/JobInfo;
    .local v13, "job":Landroid/app/job/JobInfo;
    float-to-long v2, v4

    .local v2, "delayMillis":J
    goto :goto_3

    .line 3075
    .end local v2    # "delayMillis":J
    .end local v13    # "job":Landroid/app/job/JobInfo;
    .end local v14    # "backoff":J
    .restart local v3    # "job":Landroid/app/job/JobInfo;
    :pswitch_1
    move-object v13, v3

    .end local v3    # "job":Landroid/app/job/JobInfo;
    .restart local v13    # "job":Landroid/app/job/JobInfo;
    move-wide v2, v7

    .line 3076
    .local v2, "backoff":J
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v14, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    cmp-long v4, v2, v14

    if-gez v4, :cond_8

    .line 3077
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    .line 3079
    :cond_8
    int-to-long v14, v11

    mul-long/2addr v2, v14

    .line 3081
    .local v2, "delayMillis":J
    nop

    .line 3096
    :goto_3
    nop

    .line 3097
    const-wide/32 v14, 0x112a880

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 3098
    add-long v14, v5, v2

    move-wide/from16 v16, v14

    .line 3100
    .end local v2    # "delayMillis":J
    .local v16, "earliestRuntimeMs":J
    :goto_4
    new-instance v14, Lcom/android/server/job/controllers/JobStatus;

    .line 3103
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v23

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v25

    .line 3104
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getCumulativeExecutionTimeMs()J

    move-result-wide v27

    const-wide v18, 0x7fffffffffffffffL

    move-object/from16 v15, p1

    move/from16 v21, v10

    .end local v10    # "numAbandonedFailures":I
    .local v21, "numAbandonedFailures":I
    invoke-direct/range {v14 .. v28}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    .line 3105
    .local v14, "newJob":Lcom/android/server/job/controllers/JobStatus;
    const/16 v2, 0xd

    if-ne v1, v2, :cond_9

    .line 3107
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    .line 3109
    :cond_9
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getCumulativeExecutionTimeMs()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    move-wide/from16 v18, v2

    iget-wide v1, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    cmp-long v1, v18, v1

    if-ltz v1, :cond_a

    .line 3110
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3111
    const/4 v1, 0x4

    invoke-virtual {v14, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    .line 3113
    :cond_a
    invoke-virtual {v13}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3114
    nop

    .line 3115
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v1

    .line 3114
    invoke-virtual {v14, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setOriginalLatestRunTimeElapsed(J)V

    .line 3117
    :cond_b
    const/4 v1, 0x0

    .local v1, "ic":I
    :goto_5
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 3118
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 3119
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    move-object/from16 v15, p1

    invoke-virtual {v2, v14, v15}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 3117
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    move-object/from16 v15, p1

    .line 3121
    .end local v1    # "ic":I
    return-object v14

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 39
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3165
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 3168
    .local v0, "elapsedNow":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    .line 3169
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    const-wide v6, 0x757b12c00L

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 3168
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3171
    .local v2, "period":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v4

    .line 3172
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3171
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3173
    .local v4, "flex":J
    const-wide/16 v6, 0x0

    .line 3175
    .local v6, "rescheduleBuffer":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v8

    .line 3176
    .local v8, "olrte":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    const-string v11, "JobScheduler"

    if-ltz v10, :cond_0

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v8, v12

    if-nez v10, :cond_1

    .line 3177
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid periodic job original latest run time: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    move-wide v8, v0

    .line 3180
    :cond_1
    move-wide v12, v8

    .line 3182
    .local v12, "latestRunTimeElapsed":J
    sub-long v14, v0, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 3183
    .local v14, "diffMs":J
    cmp-long v10, v0, v12

    const-wide/16 v16, 0x6

    if-lez v10, :cond_5

    .line 3186
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 3187
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v0

    .end local v0    # "elapsedNow":J
    .local v18, "elapsedNow":J
    const-string v0, "Periodic job ran after its intended window by "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3186
    .end local v18    # "elapsedNow":J
    .restart local v0    # "elapsedNow":J
    :cond_2
    move-wide/from16 v18, v0

    .line 3189
    .end local v0    # "elapsedNow":J
    .restart local v18    # "elapsedNow":J
    :goto_0
    div-long v0, v14, v2

    const-wide/16 v20, 0x1

    add-long v0, v0, v20

    .line 3194
    .local v0, "numSkippedWindows":J
    cmp-long v10, v2, v4

    if-eqz v10, :cond_4

    sub-long v22, v2, v4

    rem-long v24, v14, v2

    sub-long v22, v22, v24

    div-long v16, v4, v16

    cmp-long v10, v22, v16

    if-gtz v10, :cond_4

    .line 3195
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 3196
    const-string v10, "Custom flex job ran too close to next window."

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    :cond_3
    add-long v0, v0, v20

    .line 3202
    :cond_4
    mul-long v16, v2, v0

    add-long v16, v12, v16

    .line 3203
    .end local v0    # "numSkippedWindows":J
    .local v16, "newLatestRuntimeElapsed":J
    move-wide/from16 v22, v2

    move-wide/from16 v0, v16

    goto :goto_1

    .line 3204
    .end local v16    # "newLatestRuntimeElapsed":J
    .end local v18    # "elapsedNow":J
    .local v0, "elapsedNow":J
    :cond_5
    move-wide/from16 v18, v0

    .end local v0    # "elapsedNow":J
    .restart local v18    # "elapsedNow":J
    add-long v0, v12, v2

    .line 3205
    .local v0, "newLatestRuntimeElapsed":J
    move-wide/from16 v20, v0

    .end local v0    # "newLatestRuntimeElapsed":J
    .local v20, "newLatestRuntimeElapsed":J
    const-wide/32 v0, 0x1b7740

    cmp-long v10, v14, v0

    if-gez v10, :cond_6

    div-long v22, v2, v16

    cmp-long v10, v14, v22

    if-gez v10, :cond_6

    .line 3208
    div-long v16, v2, v16

    move-wide/from16 v22, v2

    .end local v2    # "period":J
    .local v22, "period":J
    sub-long v2, v16, v14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide/from16 v0, v20

    goto :goto_1

    .line 3205
    .end local v22    # "period":J
    .restart local v2    # "period":J
    :cond_6
    move-wide/from16 v22, v2

    .line 3212
    .end local v2    # "period":J
    .restart local v22    # "period":J
    move-wide/from16 v0, v20

    .end local v20    # "newLatestRuntimeElapsed":J
    .restart local v0    # "newLatestRuntimeElapsed":J
    :goto_1
    cmp-long v2, v0, v18

    if-gez v2, :cond_7

    .line 3213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rescheduling calculated latest runtime in the past: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    new-instance v24, Lcom/android/server/job/controllers/JobStatus;

    add-long v2, v18, v22

    sub-long v26, v2, v4

    add-long v28, v18, v22

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 3219
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v33

    .line 3220
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v25, p1

    invoke-direct/range {v24 .. v38}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    .line 3215
    return-object v24

    .line 3224
    :cond_7
    sub-long v2, v22, v6

    .line 3225
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long v26, v0, v2

    .line 3227
    .local v26, "newEarliestRunTimeElapsed":J
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 3228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rescheduling executed periodic. New execution window ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x3e8

    move-wide/from16 v28, v0

    .end local v0    # "newLatestRuntimeElapsed":J
    .local v28, "newLatestRuntimeElapsed":J
    div-long v0, v26, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v28, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3227
    .end local v28    # "newLatestRuntimeElapsed":J
    .restart local v0    # "newLatestRuntimeElapsed":J
    :cond_8
    move-wide/from16 v28, v0

    .line 3232
    .end local v0    # "newLatestRuntimeElapsed":J
    .restart local v28    # "newLatestRuntimeElapsed":J
    :goto_2
    new-instance v24, Lcom/android/server/job/controllers/JobStatus;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 3236
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v33

    .line 3237
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v25, p1

    invoke-direct/range {v24 .. v38}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    .line 3232
    return-object v24
.end method

.method getStorageNotLow()Z
    .locals 2

    .line 5652
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5653
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStorageSeq()I
    .locals 2

    .line 5646
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5647
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v1

    monitor-exit v0

    return v1

    .line 5648
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTestableContext()Landroid/content/Context;
    .locals 1

    .line 1615
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getTransferredNetworkBytes(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;II)I
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "jobId"    # I
    .param p6, "byteOption"    # I

    .line 5708
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 5709
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 5708
    :goto_0
    const-wide/16 v3, 0x0

    invoke-interface {v1, p2, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 5710
    .local v1, "uid":I
    if-gez v1, :cond_1

    .line 5711
    const-string/jumbo v2, "unknown("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5712
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5713
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5714
    const/16 v0, -0x3e8

    return v0

    .line 5747
    .end local v1    # "uid":I
    :catch_0
    move-exception v1

    goto/16 :goto_5

    .line 5717
    .restart local v1    # "uid":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5718
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p4, p5}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 5719
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 5720
    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get-transferred-network-bytes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5746
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 5723
    .restart local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 5724
    const-string/jumbo v4, "unknown("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5725
    const-string v4, "/jid"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5726
    monitor-exit v2

    const/16 v0, -0x3e9

    return v0

    .line 5731
    :cond_3
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v4, p2, v1, p4, p5}, Lcom/android/server/job/JobConcurrencyManager;->getTransferredNetworkBytesLocked(Ljava/lang/String;ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object v4

    .line 5733
    .local v4, "bytes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-nez v4, :cond_4

    .line 5734
    const-wide/16 v5, 0x0

    .line 5735
    .local v5, "downloadBytes":J
    const-wide/16 v7, 0x0

    .local v7, "uploadBytes":J
    goto :goto_2

    .line 5737
    .end local v5    # "downloadBytes":J
    .end local v7    # "uploadBytes":J
    :cond_4
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 5738
    .restart local v5    # "downloadBytes":J
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 5740
    .restart local v7    # "uploadBytes":J
    :goto_2
    if-nez p6, :cond_5

    .line 5741
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_3

    .line 5743
    :cond_5
    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 5745
    :goto_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5746
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "bytes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v5    # "downloadBytes":J
    .end local v7    # "uploadBytes":J
    monitor-exit v2

    .line 5749
    .end local v1    # "uid":I
    goto :goto_5

    .line 5746
    .restart local v1    # "uid":I
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "pkgName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "namespace":Ljava/lang/String;
    .end local p5    # "jobId":I
    .end local p6    # "byteOption":I
    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5750
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "pkgName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "namespace":Ljava/lang/String;
    .restart local p5    # "jobId":I
    .restart local p6    # "byteOption":I
    :goto_5
    return v0
.end method

.method public getUidBias(I)I
    .locals 3
    .param p1, "uid"    # I

    .line 2508
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2509
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUidCapabilities(I)I
    .locals 3
    .param p1, "uid"    # I

    .line 2518
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2519
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2520
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUidProcState(I)I
    .locals 3
    .param p1, "uid"    # I

    .line 2525
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2526
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2527
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method informObserversOfUserVisibleJobChange(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 3
    .param p1, "context"    # Lcom/android/server/job/JobServiceContext;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "isRunning"    # Z

    .line 4323
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4324
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4325
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4326
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 4327
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4328
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4329
    return-void
.end method

.method public isBatteryCharging()Z
    .locals 2

    .line 5614
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5615
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isCharging()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5616
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBatteryNotLow()Z
    .locals 2

    .line 5621
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5622
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isBatteryNotLow()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2976
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method public isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2982
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method public isPowerConnected()Z
    .locals 2

    .line 5628
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5629
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isPowerConnected()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 4071
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    return v0
.end method

.method isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "rejectActive"    # Z

    .line 4076
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :goto_0
    move v0, v1

    .line 4078
    .local v0, "jobReady":Z
    :goto_1
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string/jumbo v4, "isReadyToBeExecutedLocked: "

    const-string v5, "JobScheduler"

    if-eqz v3, :cond_2

    .line 4079
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ready="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    :cond_2
    if-nez v0, :cond_4

    .line 4087
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.jobscheduler.cts.jobtestapp"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    NOT READY: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    :cond_3
    return v2

    .line 4093
    :cond_4
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 4094
    .local v3, "jobExists":Z
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    .line 4095
    .local v6, "userStarted":Z
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 4097
    .local v7, "backingUp":Z
    sget-boolean v8, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 4098
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " exists="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " userStarted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " backingUp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    if-eqz v7, :cond_7

    :cond_6
    goto :goto_4

    .line 4109
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 4110
    return v2

    .line 4113
    :cond_8
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v8, p1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    .line 4114
    .local v8, "jobPending":Z
    if-eqz p2, :cond_9

    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v9, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_2

    :cond_9
    move v1, v2

    .line 4116
    .local v1, "jobActive":Z
    :goto_2
    sget-boolean v9, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v9, :cond_a

    .line 4117
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pending="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " active="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    :cond_a
    if-nez v8, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    goto :goto_3

    .line 4129
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    return v2

    .line 4125
    :goto_3
    return v2

    .line 4106
    .end local v1    # "jobActive":Z
    .end local v8    # "jobPending":Z
    :goto_4
    return v2
.end method

.method maybeProcessBuggyJob(Lcom/android/server/job/controllers/JobStatus;I)V
    .locals 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "debugStopReason"    # I

    .line 3243
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3244
    .local v0, "jobTimedOut":Z
    :goto_0
    nop

    .line 3246
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 3245
    const-wide/32 v4, 0x163457ac

    invoke-static {v4, v5, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3247
    const/16 v3, 0xd

    if-ne p2, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    .line 3251
    :cond_2
    if-nez v0, :cond_8

    iget-wide v3, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_8

    .line 3252
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v3, v5

    .line 3255
    .local v3, "executionDurationMs":J
    iget-boolean v5, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v5, :cond_4

    .line 3257
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    move v1, v2

    :cond_3
    move v0, v1

    goto :goto_2

    .line 3258
    :cond_4
    iget-boolean v5, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v5, :cond_6

    .line 3259
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_5

    move v1, v2

    :cond_5
    move v0, v1

    goto :goto_2

    .line 3261
    :cond_6
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_7

    move v1, v2

    :cond_7
    move v0, v1

    .line 3264
    .end local v3    # "executionDurationMs":J
    :cond_8
    :goto_2
    const/4 v1, 0x4

    if-eqz v0, :cond_b

    .line 3265
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v2

    .line 3266
    .local v2, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v3

    .line 3267
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 3268
    iget-boolean v5, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v5, :cond_9

    .line 3269
    const-string/jumbo v5, "timeout-uij"

    goto :goto_3

    .line 3270
    :cond_9
    iget-boolean v5, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v5, :cond_a

    .line 3271
    const-string/jumbo v5, "timeout-ej"

    goto :goto_3

    .line 3272
    :cond_a
    const-string/jumbo v5, "timeout-reg"

    .line 3267
    :goto_3
    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3273
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string/jumbo v5, "timeout-total"

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3274
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 3279
    .end local v2    # "userId":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_b
    const/16 v2, 0xc

    if-ne p2, v2, :cond_c

    .line 3280
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    .line 3281
    .local v2, "callingUserId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3282
    .local v3, "callingPkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v5, "anr"

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3283
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 3287
    .end local v2    # "callingUserId":I
    .end local v3    # "callingPkg":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method maybeRunPendingJobsLocked()V
    .locals 2

    .line 4289
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " jobs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    .line 4293
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 4294
    return-void
.end method

.method noteJobsPending(Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 2990
    .local p1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2991
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobPending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2990
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 2993
    .end local v0    # "i":I
    return-void
.end method

.method notePendingUserRequestedAppStopInternal(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "debugReason"    # Ljava/lang/String;

    .line 2201
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 2202
    .local v0, "packageUid":I
    if-gez v0, :cond_0

    .line 2203
    const-string v1, "JobScheduler"

    const-string v2, "Asked to stop jobs of an unknown package"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    return-void

    .line 2206
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2207
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/job/JobConcurrencyManager;->markJobsForUserStopLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 2208
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 2209
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 2210
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 2219
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    .line 2223
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v5, v4}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2224
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2225
    :try_start_1
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    .line 2226
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v8

    .line 2225
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 2227
    .local v6, "jobIdToReason":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-nez v6, :cond_1

    .line 2228
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v7

    .line 2229
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2234
    .end local v6    # "jobIdToReason":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :catchall_0
    move-exception v6

    goto :goto_2

    .line 2232
    .restart local v6    # "jobIdToReason":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v7

    const/16 v8, 0xf

    filled-new-array {v8}, [I

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2234
    .end local v6    # "jobIdToReason":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    monitor-exit v5

    goto :goto_3

    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "packageUid":I
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "debugReason":Ljava/lang/String;
    :try_start_2
    throw v6

    .line 2237
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "i":I
    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v0    # "packageUid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "debugReason":Ljava/lang/String;
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 2209
    .restart local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "i":I
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 2237
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "i":I
    monitor-exit v1

    .line 2238
    return-void

    .line 2237
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public onBootPhase(I)V
    .locals 20
    .param p1, "phase"    # I

    .line 2804
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/16 v0, 0x1e0

    if-ne v0, v2, :cond_0

    .line 2809
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2812
    goto :goto_0

    .line 2810
    :catch_0
    move-exception v0

    .line 2811
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "JobScheduler"

    const-string v4, "Couldn\'t wait on controller tracking start latch"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2817
    :goto_1
    goto/16 :goto_5

    .line 2815
    :catch_1
    move-exception v0

    .line 2816
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v3, "JobScheduler"

    const-string v4, "Couldn\'t wait on job store loading latch"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 2818
    :cond_0
    const/16 v0, 0x1f4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 2819
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->start()V

    .line 2820
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_1

    .line 2821
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4}, Lcom/android/server/job/controllers/StateController;->onSystemServicesReady()V

    .line 2820
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1
    nop

    .line 2824
    .end local v0    # "i":I
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 2825
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 2824
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/android/server/AppStateTrackerImpl;

    iput-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 2827
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    new-instance v4, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService-IA;)V

    .line 2828
    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManagerInternal;->registerCloudProviderChangeListener(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V

    .line 2831
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v9, v0

    .line 2832
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2833
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2834
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2835
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2836
    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2837
    const-string/jumbo v0, "package"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2840
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.UID_REMOVED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 2841
    .local v13, "uidFilter":Landroid/content/IntentFilter;
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2843
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2844
    .local v4, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v4

    .end local v4    # "userFilter":Landroid/content/IntentFilter;
    .local v17, "userFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2848
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v6, 0xf

    const/4 v7, -0x1

    invoke-interface {v0, v4, v6, v7, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2854
    goto :goto_3

    .line 2852
    :catch_2
    move-exception v0

    .line 2856
    :goto_3
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->onSystemReady()V

    .line 2859
    invoke-direct {v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForNonExistentUsers()V

    .line 2861
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .restart local v0    # "i":I
    :goto_4
    if-ltz v0, :cond_2

    .line 2862
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v3}, Lcom/android/server/job/restrictions/JobRestriction;->onSystemServicesReady()V

    .line 2861
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_2
    nop

    .line 2864
    .end local v0    # "i":I
    .end local v9    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "uidFilter":Landroid/content/IntentFilter;
    .end local v17    # "userFilter":Landroid/content/IntentFilter;
    :cond_3
    goto :goto_5

    :cond_4
    const/16 v0, 0x258

    if-ne v2, v0, :cond_3

    .line 2865
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2867
    :try_start_3
    iput-boolean v3, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 2868
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 2869
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 2870
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->onThirdPartyAppsCanStart()V

    .line 2872
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v5, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v0, v5}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2878
    nop

    .line 2880
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2882
    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2884
    :goto_5
    return-void
.end method

.method public onControllerStateChanged(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 3387
    .local p1, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3388
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3389
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    .line 3390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 3391
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3392
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3393
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3394
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 3395
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3396
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3397
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v2

    .line 3398
    :try_start_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3399
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 3400
    .local v0, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V

    .line 3398
    .end local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3402
    .end local v1    # "i":I
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 3398
    .restart local v1    # "i":I
    :cond_1
    nop

    .line 3402
    .end local v1    # "i":I
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 3395
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 3404
    :cond_2
    :goto_2
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .locals 4
    .param p1, "deviceIdle"    # Z

    .line 2532
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2533
    :try_start_0
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2534
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doze state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2548
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2536
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 2538
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_2

    .line 2539
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2540
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-nez v1, :cond_1

    .line 2541
    iput-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 2542
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {v1, v2}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 2545
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2548
    :cond_2
    monitor-exit v0

    .line 2549
    return-void

    .line 2548
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;IIZ)V
    .locals 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "stopReason"    # I
    .param p3, "debugStopReason"    # I
    .param p4, "needsReschedule"    # Z

    .line 3302
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_0

    .line 3303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reschedule="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    iget v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    aput-object p1, v0, v2

    .line 3308
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    iget v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 3309
    iget v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    .line 3311
    invoke-virtual {p0, p1, p3}, Lcom/android/server/job/JobSchedulerService;->maybeProcessBuggyJob(Lcom/android/server/job/controllers/JobStatus;I)V

    .line 3313
    const/4 v0, 0x7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-ne p3, v0, :cond_2

    :cond_1
    goto/16 :goto_5

    .line 3329
    :cond_2
    if-eqz p4, :cond_3

    .line 3330
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 3331
    .local v0, "rescheduledJob":Lcom/android/server/job/controllers/JobStatus;
    :goto_0
    nop

    .line 3333
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 3332
    const-wide/32 v4, 0x163457ac

    invoke-static {v4, v5, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    const/16 v3, 0xd

    if-ne p3, v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v4

    .line 3335
    .local v3, "isStopReasonAbandoned":Z
    :goto_1
    if-eqz v0, :cond_6

    .line 3336
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x3

    if-eq p3, v5, :cond_5

    if-nez v3, :cond_5

    const/4 v5, 0x2

    if-ne p3, v5, :cond_6

    .line 3340
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->disallowRunInBatterySaverAndDoze()V

    .line 3345
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v5

    xor-int/2addr v2, v5

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v2

    if-nez v2, :cond_9

    .line 3346
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 3347
    const-string v2, "Could not find job to remove. Was job removed while executing?"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    :cond_7
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 3350
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v6

    .line 3349
    invoke-virtual {v1, v2, v5, v6}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 3351
    .local v1, "newJs":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_8

    .line 3354
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3356
    :cond_8
    return-void

    .line 3359
    .end local v1    # "newJs":Lcom/android/server/job/controllers/JobStatus;
    :cond_9
    const-string v2, "Unable to regrant job permissions for "

    if-eqz v0, :cond_a

    .line 3361
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3364
    goto :goto_2

    .line 3362
    :catch_0
    move-exception v4

    .line 3363
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_4

    .line 3366
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3367
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 3369
    .local v4, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3372
    goto :goto_3

    .line 3370
    :catch_1
    move-exception v5

    .line 3371
    .local v5, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    .end local v5    # "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-direct {p0, v4, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 3375
    .end local v4    # "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 3376
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 3377
    return-void

    .line 3317
    .end local v0    # "rescheduledJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "isStopReasonAbandoned":Z
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 3318
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 3319
    return-void
.end method

.method public onNetworkChanged(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "newNetwork"    # Landroid/net/Network;

    .line 2553
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2554
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 2555
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager;->getRunningJobServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/JobServiceContext;

    move-result-object v1

    .line 2556
    .local v1, "jsc":Lcom/android/server/job/JobServiceContext;
    if-eqz v1, :cond_0

    .line 2557
    invoke-virtual {v1, p2}, Lcom/android/server/job/JobServiceContext;->informOfNetworkChangeLocked(Landroid/net/Network;)V

    goto :goto_0

    .line 2559
    .end local v1    # "jsc":Lcom/android/server/job/JobServiceContext;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 2560
    return-void

    .line 2559
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRestrictedBucketChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 2564
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2565
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 2566
    const-string v1, "JobScheduler"

    const-string/jumbo v2, "onRestrictedBucketChanged called with no jobs"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    return-void

    .line 2569
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2570
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 2571
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 2572
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_2

    .line 2575
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_1

    .line 2576
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_2

    .line 2582
    .end local v2    # "i":I
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "j":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 2578
    .restart local v2    # "i":I
    .restart local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v5    # "j":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2572
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    nop

    .line 2570
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 2582
    .end local v2    # "i":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2583
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2584
    return-void

    .line 2582
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V
    .locals 2
    .param p1, "restriction"    # Lcom/android/server/job/restrictions/JobRestriction;
    .param p2, "stopOvertimeJobs"    # Z

    .line 3409
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3410
    if-eqz p2, :cond_0

    .line 3411
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3412
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager;->maybeStopOvertimeJobsLocked(Lcom/android/server/job/restrictions/JobRestriction;)V

    .line 3413
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3415
    :cond_0
    :goto_0
    return-void
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3419
    if-nez p1, :cond_0

    .line 3420
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3422
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3424
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 2799
    const-string/jumbo v0, "jobscheduler"

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2800
    return-void
.end method

.method public onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "eventType"    # Lcom/android/server/SystemService$UserCompletedEventType;

    .line 1681
    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserStarting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1686
    :cond_1
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1673
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1674
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1675
    monitor-exit v0

    .line 1676
    return-void

    .line 1675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1704
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1705
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1706
    monitor-exit v0

    .line 1707
    return-void

    .line 1706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 3
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 1690
    nop

    nop

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1693
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    .line 1694
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    .line 1692
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->isEarlyPackageKillEnabledForUserSwitch(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1698
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1699
    monitor-exit v0

    .line 1700
    return-void

    .line 1699
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1695
    :cond_1
    :goto_0
    return-void
.end method

.method reportActiveLocked()V
    .locals 5

    .line 2588
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2589
    .local v0, "active":Z
    :goto_0
    if-nez v0, :cond_2

    .line 2590
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager;->getRunningJobsLocked()Landroid/util/ArraySet;

    move-result-object v2

    .line 2591
    .local v2, "runningJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 2592
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2593
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2596
    const/4 v0, 0x1

    .line 2597
    goto :goto_2

    .line 2593
    :cond_1
    nop

    .line 2591
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2602
    .end local v2    # "runningJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "i":I
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v1, v0, :cond_3

    .line 2603
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 2604
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz v1, :cond_3

    .line 2605
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {v1, v0}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 2608
    :cond_3
    return-void
.end method

.method reportAppUsage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2613
    return-void
.end method

.method resetExecutionQuota(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5911
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5912
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 5913
    monitor-exit v0

    .line 5914
    return-void

    .line 5913
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2964
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 2965
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    .line 2966
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2967
    .local v1, "reasons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-eqz v1, :cond_0

    .line 2968
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    .line 2970
    .end local v1    # "reasons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 2971
    return-void

    .line 2970
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetScheduleQuota()V
    .locals 1

    .line 5917
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->clear()V

    .line 5918
    return-void
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 86
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "work"    # Landroid/app/job/JobWorkItem;
    .param p3, "callingUid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "namespace"    # Ljava/lang/String;
    .param p7, "tag"    # Ljava/lang/String;

    .line 1721
    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1722
    .local v14, "servicePkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v15, 0x1

    nop

    if-eqz v0, :cond_8

    .line 1725
    if-nez v10, :cond_0

    move-object v0, v14

    goto :goto_0

    :cond_0
    move-object v0, v10

    :goto_0
    move-object v3, v0

    .line 1726
    .local v3, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v4, ".schedulePersisted()"

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1727
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v4, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1729
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has called schedule() too many times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v4, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1732
    :cond_1
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v4, 0x4

    invoke-interface {v0, v3, v11, v4}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 1734
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    if-eqz v0, :cond_6

    .line 1736
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1737
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 1739
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1740
    const-wide/16 v5, 0x0

    invoke-interface {v0, v3, v5, v6, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1741
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    .line 1742
    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    move v6, v15

    goto :goto_1

    :cond_2
    move v6, v2

    .line 1743
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1742
    invoke-virtual {v5, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1749
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_3

    .line 1752
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1747
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1745
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :try_start_2
    monitor-exit v4

    return v2

    .line 1747
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    nop

    .line 1748
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v14    # "servicePkg":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "job":Landroid/app/job/JobInfo;
    .end local p2    # "work":Landroid/app/job/JobWorkItem;
    .end local p3    # "callingUid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "userId":I
    .end local p6    # "namespace":Ljava/lang/String;
    .end local p7    # "tag":Ljava/lang/String;
    throw v2

    .line 1751
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v14    # "servicePkg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    .restart local p2    # "work":Landroid/app/job/JobWorkItem;
    .restart local p3    # "callingUid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "userId":I
    .restart local p6    # "namespace":Ljava/lang/String;
    .restart local p7    # "tag":Ljava/lang/String;
    :cond_4
    :goto_3
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1752
    .local v0, "isDebuggable":Z
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1753
    if-nez v0, :cond_5

    goto :goto_5

    .line 1755
    :cond_5
    new-instance v2, Landroid/os/LimitExceededException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "schedule()/enqueue() called more than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 1757
    invoke-virtual {v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->getLimit(Lcom/android/server/utils/quota/Category;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " times in the past "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 1760
    invoke-virtual {v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->getWindowSizeMs(Lcom/android/server/utils/quota/Category;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms. See the documentation for more information."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1752
    .end local v0    # "isDebuggable":Z
    :goto_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1765
    :cond_6
    :goto_5
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    if-eqz v0, :cond_7

    .line 1766
    return v2

    .line 1769
    :cond_7
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v4, ".schedulePersisted()"

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1772
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_8
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v9, v14}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1773
    const-string v0, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not scheduling job for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -- package not allowed to start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    const-string/jumbo v0, "job_scheduler.value_cntr_w_uid_schedule_failure_app_start_mode_disabled"

    invoke-static {v0, v9}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1778
    return v2

    .line 1781
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1782
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1784
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v3

    .line 1783
    invoke-static {v3, v4}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v3

    int-to-float v3, v3

    .line 1782
    invoke-virtual {v0, v3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1785
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1786
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v3

    int-to-float v3, v3

    .line 1785
    invoke-virtual {v0, v3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1787
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1788
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v3

    int-to-float v3, v3

    .line 1787
    invoke-virtual {v0, v9, v3}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 1789
    if-eqz v7, :cond_a

    .line 1790
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1792
    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v3

    .line 1791
    invoke-static {v3, v4}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v3

    int-to-float v3, v3

    .line 1790
    invoke-virtual {v0, v3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1793
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1795
    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v3

    .line 1794
    invoke-static {v3, v4}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v3

    int-to-float v3, v3

    .line 1793
    invoke-virtual {v0, v3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1796
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1798
    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v3

    .line 1797
    invoke-static {v3, v4}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v3

    int-to-float v3, v3

    .line 1796
    invoke-virtual {v0, v9, v3}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 1802
    :cond_a
    if-eqz v7, :cond_b

    .line 1803
    const-string/jumbo v0, "job_scheduler.value_cntr_w_uid_job_work_items_enqueued"

    invoke-static {v0, v9}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1807
    :cond_b
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1808
    :try_start_4
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 1809
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    move-object/from16 v12, p6

    invoke-virtual {v0, v9, v12, v4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1811
    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v7, :cond_f

    if-eqz v0, :cond_f

    .line 1814
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v8, p1

    :try_start_6
    invoke-virtual {v4, v8}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1827
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v2

    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    if-lt v2, v4, :cond_d

    .line 1828
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_7

    .line 1829
    :cond_c
    const-string v2, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many JWIs for uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Apps may not persist more than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " JobWorkItems per job"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v14    # "servicePkg":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "job":Landroid/app/job/JobInfo;
    .end local p2    # "work":Landroid/app/job/JobWorkItem;
    .end local p3    # "callingUid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "userId":I
    .end local p6    # "namespace":Ljava/lang/String;
    .end local p7    # "tag":Ljava/lang/String;
    throw v2

    .line 2022
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .restart local v14    # "servicePkg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    .restart local p2    # "work":Landroid/app/job/JobWorkItem;
    .restart local p3    # "callingUid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "userId":I
    .restart local p6    # "namespace":Ljava/lang/String;
    .restart local p7    # "tag":Ljava/lang/String;
    :catchall_1
    move-exception v0

    :goto_6
    move-object v10, v3

    goto/16 :goto_e

    .line 1835
    .restart local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :cond_d
    :goto_7
    invoke-virtual {v0, v7}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 1836
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1842
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/job/controllers/JobStatus;->removeInternalFlags(I)V

    .line 1846
    :cond_e
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1847
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1848
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v9, v4}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 1852
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v0, v2}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1854
    monitor-exit v3

    return v15

    .line 2022
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_2
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_6

    .line 1811
    .restart local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :cond_f
    move-object/from16 v8, p1

    .line 1858
    :cond_10
    move-object/from16 v13, p7

    invoke-static/range {v8 .. v13}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1862
    .local v4, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1863
    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v5, v4}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1864
    const-string/jumbo v5, "job_scheduler.value_cntr_w_uid_schedule_failure_ej_out_of_quota"

    invoke-static {v5, v9}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1867
    monitor-exit v3

    return v2

    .line 1875
    :cond_11
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v4, v2}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1877
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string v2, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCHEDULE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_12
    if-nez p4, :cond_15

    .line 1880
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, v9}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v2

    const/16 v5, 0x96

    if-le v2, v5, :cond_15

    .line 1881
    const-string v2, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many jobs for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, v9}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 1885
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1886
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v15

    .local v6, "i":I
    :goto_8
    if-ltz v6, :cond_14

    .line 1887
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 1888
    .local v8, "mJobStatus":Lcom/android/server/job/controllers/JobStatus;
    const-string v10, "SourcePackageName:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",Service:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 1890
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    :cond_13
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    nop

    .end local v8    # "mJobStatus":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    :cond_14
    nop

    .line 1893
    .end local v6    # "i":I
    const-string v6, "JobScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "print all jobs:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const-string/jumbo v6, "job_scheduler.value_cntr_w_uid_max_scheduling_limit_hit"

    invoke-static {v6, v9}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1897
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v8, "Apps may not schedule more than 150 distinct jobs"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v14    # "servicePkg":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "job":Landroid/app/job/JobInfo;
    .end local p2    # "work":Landroid/app/job/JobWorkItem;
    .end local p3    # "callingUid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "userId":I
    .end local p6    # "namespace":Ljava/lang/String;
    .end local p7    # "tag":Ljava/lang/String;
    throw v6

    .line 1903
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "servicePkg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    .restart local p2    # "work":Landroid/app/job/JobWorkItem;
    .restart local p3    # "callingUid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "userId":I
    .restart local p6    # "namespace":Ljava/lang/String;
    .restart local p7    # "tag":Ljava/lang/String;
    :cond_15
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 1905
    const/4 v8, 0x0

    if-eqz v0, :cond_18

    .line 1918
    if-eqz v7, :cond_17

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1919
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v2

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    if-ge v2, v5, :cond_16

    goto :goto_9

    .line 1920
    :cond_16
    const-string v2, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many JWIs for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Apps may not persist more than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " JobWorkItems per job"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v14    # "servicePkg":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "job":Landroid/app/job/JobInfo;
    .end local p2    # "work":Landroid/app/job/JobWorkItem;
    .end local p3    # "callingUid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "userId":I
    .end local p6    # "namespace":Ljava/lang/String;
    .end local p7    # "tag":Ljava/lang/String;
    throw v2

    .line 1927
    .restart local v14    # "servicePkg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    .restart local p2    # "work":Landroid/app/job/JobWorkItem;
    .restart local p3    # "callingUid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "userId":I
    .restart local p6    # "namespace":Ljava/lang/String;
    .restart local p7    # "tag":Ljava/lang/String;
    :cond_17
    :goto_9
    const-string/jumbo v6, "job rescheduled by app"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v3

    move-object v3, v4

    .end local v4    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .local v3, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v10, v2

    move-object v2, v0

    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .local v2, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_a

    .line 2022
    .end local v2    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :catchall_3
    move-exception v0

    goto/16 :goto_e

    .line 1930
    .restart local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .restart local v4    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_18
    move-object v2, v0

    move-object v10, v3

    move-object v3, v4

    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .restart local v2    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .restart local v3    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {v1, v3, v8}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1933
    :goto_a
    if-eqz v7, :cond_19

    .line 1935
    invoke-virtual {v3, v7}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 1936
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1937
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v9, v4}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 1940
    :cond_19
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 1941
    .local v0, "sourceUid":I
    nop

    .line 1942
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1943
    filled-new-array {v0, v9}, [I

    move-result-object v4

    :goto_b
    move-object/from16 v17, v4

    goto :goto_c

    :cond_1a
    filled-new-array {v0}, [I

    move-result-object v4

    goto :goto_b

    .line 1946
    :goto_c
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1947
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v8, v4}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    goto :goto_d

    .line 1948
    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    .line 1949
    :goto_d
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v19

    .line 1951
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v22

    .line 1952
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getLoggingJobId()J

    move-result-wide v23

    .line 1953
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v25

    .line 1954
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v26

    .line 1955
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v27

    .line 1956
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v28

    .line 1957
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v29

    .line 1958
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v30

    .line 1959
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v31

    .line 1960
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v32

    .line 1961
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v33

    .line 1964
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v36

    .line 1965
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v37

    .line 1966
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v38

    .line 1967
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v39

    .line 1968
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v40

    .line 1978
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v52

    .line 1980
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v54

    .line 1981
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v55

    .line 1982
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v57

    .line 1983
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v59

    .line 1984
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v61

    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 1985
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v62

    .line 1986
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNamespaceHash()Ljava/lang/String;

    move-result-object v63

    .line 1991
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v72

    .line 1992
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v74

    .line 1993
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v76

    .line 1995
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->canApplyTransportAffinities()Z

    move-result v78

    .line 1996
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result v79

    .line 1997
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v80

    .line 1998
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v81

    .line 1999
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v82

    .line 2000
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v83

    .line 2002
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v4

    add-int/lit8 v84, v4, 0x1

    .line 2004
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    .line 2003
    invoke-virtual {v1, v4, v5}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v85

    .line 1941
    const/16 v16, 0x8

    const/16 v20, 0x2

    const/16 v21, -0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v53, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const/16 v77, 0x0

    invoke-static/range {v16 .. v85}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    .line 2015
    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2018
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v4, v3}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2019
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v4, v3}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2020
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 2022
    .end local v0    # "sourceUid":I
    .end local v2    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_1c
    monitor-exit v10

    .line 2023
    return v15

    .line 2022
    :goto_e
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method setCacheConfigChanges(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 5634
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->setCacheConfigChangesLocked(Z)V

    .line 5636
    monitor-exit v0

    .line 5637
    return-void

    .line 5636
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setFlexPolicy(ZI)V
    .locals 2
    .param p1, "override"    # Z
    .param p2, "appliedConstraints"    # I

    .line 5593
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFlexPolicy(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5597
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController;->setLocalPolicyForTesting(ZI)V

    .line 5598
    return-void
.end method

.method setMonitorBattery(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 5601
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5602
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->setMonitorBatteryLocked(Z)V

    .line 5603
    monitor-exit v0

    .line 5604
    return-void

    .line 5603
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldUseAggressiveBackoff(II)Z
    .locals 2
    .param p1, "numAbandonedFailures"    # I
    .param p2, "uid"    # I

    .line 3133
    nop

    .line 3134
    const-wide/32 v0, 0x163457ac

    invoke-static {v0, v1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->ABANDONED_JOB_TIMEOUTS_BEFORE_AGGRESSIVE_BACKOFF:I

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3133
    :goto_0
    return v0
.end method

.method triggerDockState(Z)V
    .locals 3
    .param p1, "idleState"    # Z

    .line 5922
    if-eqz p1, :cond_0

    .line 5923
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "dockIntent":Landroid/content/Intent;
    goto :goto_0

    .line 5925
    .end local v0    # "dockIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5927
    .restart local v0    # "dockIntent":Landroid/content/Intent;
    :goto_0
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5928
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5929
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5930
    return-void
.end method

.method updateQuotaTracker()V
    .locals 5

    .line 641
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->setEnabled(Z)V

    .line 643
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 646
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 649
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 652
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 655
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 658
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 661
    return-void
.end method

.method updateUidState(III)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "capabilities"    # I

    .line 2467
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2468
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " proc state changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    invoke-static {p2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    invoke-static {p3}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2468
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2473
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2474
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2475
    .local v1, "prevBias":I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2479
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v4, 0x28

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2503
    .end local v1    # "prevBias":I
    :catchall_0
    move-exception v1

    goto/16 :goto_4

    .line 2480
    .restart local v1    # "prevBias":I
    :cond_1
    const/4 v3, 0x4

    if-gt p2, v3, :cond_2

    .line 2481
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v4, 0x23

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2482
    :cond_2
    const/4 v3, 0x5

    if-gt p2, v3, :cond_3

    .line 2483
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v4, 0x1e

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2485
    :cond_3
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2487
    :goto_0
    if-eqz p3, :cond_4

    const/16 v3, 0x14

    if-ne p2, v3, :cond_5

    :cond_4
    goto :goto_1

    .line 2491
    :cond_5
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 2489
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2493
    :goto_2
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2494
    .local v2, "newBias":I
    if-eq v1, v2, :cond_8

    .line 2495
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 2496
    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bias changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_6
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 2499
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, p1, v1, v2}, Lcom/android/server/job/controllers/StateController;->onUidBiasChangedLocked(III)V

    .line 2498
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    nop

    .line 2501
    .end local v3    # "c":I
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/JobConcurrencyManager;->onUidBiasChangedLocked(II)V

    .line 2503
    .end local v1    # "prevBias":I
    .end local v2    # "newBias":I
    :cond_8
    monitor-exit v0

    .line 2504
    return-void

    .line 2503
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected waitOnAsyncLoadingForTesting()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5777
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 5779
    return-void
.end method
