.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ProcessListSettingsListener;,
        Lcom/android/server/am/ProcessList$IsolatedUidRange;,
        Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;,
        Lcom/android/server/am/ProcessList$MyProcessMap;,
        Lcom/android/server/am/ProcessList$KillHandler;,
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;,
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;,
        Lcom/android/server/am/ProcessList$ProcStartHandler;
    }
.end annotation


# static fields
.field static final ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.zygote.app_data_isolation"

.field static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field private static final APPLY_SDK_SANDBOX_AUDIT_RESTRICTIONS:Ljava/lang/String; = ":isSdkSandboxAudit"

.field private static final APPLY_SDK_SANDBOX_NEXT_RESTRICTIONS:Ljava/lang/String; = ":isSdkSandboxNext"

.field private static final APP_DATA_DIRECTORY_ISOLATION:J = 0x89450c5L

.field public static final BACKUP_APP_ADJ:I = 0x12c

.field public static final CACHED_APP_IMPORTANCE_LEVELS:I = 0x5

.field public static final CACHED_APP_LMK_FIRST_ADJ:I = 0x3b6

.field public static final CACHED_APP_MAX_ADJ:I = 0x3e7

.field public static final CACHED_APP_MIN_ADJ:I = 0x384

.field private static final DEFAULT_APPLY_SDK_SANDBOX_AUDIT_RESTRICTIONS:Z = false

.field private static final DEFAULT_APPLY_SDK_SANDBOX_NEXT_RESTRICTIONS:Z = false

.field public static final FOREGROUND_APP_ADJ:I = 0x0

.field public static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field public static final HOME_APP_ADJ:I = 0x258

.field public static final INVALID_ADJ:I = -0x2710

.field private static final LMKD_RECONNECT_DELAY_MS:J = 0x3e8L

.field static final LMK_ASYNC_EVENT_KILL:I = 0x0

.field static final LMK_ASYNC_EVENT_STAT:I = 0x1

.field static final LMK_BOOT_COMPLETED:B = 0xat

.field static final LMK_CHECK_KILL_OPTI_PROC:B = 0xct

.field static final LMK_GETKILLCNT:B = 0x4t

.field static final LMK_KILL_OCCURRED:B = 0x8t

.field static final LMK_PROCKILL:B = 0x6t

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPURGE:B = 0x3t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_PROCS_PRIO:B = 0xbt

.field static final LMK_START_MONITORING:B = 0x9t

.field static final LMK_SUBSCRIBE:B = 0x5t

.field static final LMK_TARGET:B = 0x0t

.field static final LMK_UPDATE_PROPS:B = 0x7t

.field private static final MAX_OOM_ADJ_BATCH_LENGTH:I = 0x34

.field private static final MAX_PROCS_PRIO_PACKET_SIZE:I = 0x3

.field private static final MAX_ZYGOTE_UNSOLICITED_MESSAGE_SIZE:I = 0x10

.field static final MIN_CACHED_APPS:I = 0x2

.field public static final NATIVE_ADJ:I = -0x3e8

.field static final NETWORK_STATE_BLOCK:I = 0x1

.field static final NETWORK_STATE_NO_CHANGE:I = 0x0

.field static final NETWORK_STATE_UNBLOCK:I = 0x2

.field private static final NOTHING_PREFIX:Ljava/lang/String; = "com.nothing"

.field static final PAGE_SIZE:I

.field public static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field public static final PERCEPTIBLE_LOW_APP_ADJ:I = 0xfa

.field public static final PERCEPTIBLE_MEDIUM_APP_ADJ:I = 0xe1

.field public static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field public static final PERSISTENT_PROC_ADJ:I = -0x320

.field public static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field public static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PREVIOUS_APP_MAX_ADJ:I

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field private static final PROPERTY_APPLY_SDK_SANDBOX_AUDIT_RESTRICTIONS:Ljava/lang/String; = "apply_sdk_sandbox_audit_restrictions"

.field private static final PROPERTY_APPLY_SDK_SANDBOX_NEXT_RESTRICTIONS:Ljava/lang/String; = "apply_sdk_sandbox_next_restrictions"

.field private static final PROPERTY_USE_APP_IMAGE_STARTUP_CACHE:Ljava/lang/String; = "persist.device_config.runtime_native.use_app_image_startup_cache"

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_FOREGROUND_WINDOW:I = 0x5

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field public static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field static final SCHED_GROUP_UNDEFINED:I = -0x80000000

.field public static final SERVICE_ADJ:I = 0x1f4

.field public static final SERVICE_B_ADJ:I = 0x320

.field public static final SYSTEM_ADJ:I = -0x384

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_PROCESS_OBSERVERS:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field public static final UNKNOWN_ADJ:I = 0x3e9

.field private static final UNSOL_ZYGOTE_MSG_SOCKET_PATH:Ljava/lang/String; = "/data/system/unsolzygotesocket"

.field public static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field public static mPerfServiceStartHint:Landroid/util/BoostFramework;

.field private static sAppWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field static sHandler:Landroid/os/Handler;

.field static sHandlerThread:Landroid/os/HandlerThread;

.field static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field static sKillThread:Lcom/android/server/ServiceThread;

.field private static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field private static sOomConnection:Lcom/android/server/am/OomConnection;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J


# instance fields
.field private mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field private mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppDataIsolationEnabled:Z

.field final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

.field private final mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

.field final mAppZygoteProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/AppZygote;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAppZygotes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/os/AppZygote;",
            ">;"
        }
    .end annotation
.end field

.field final mAppsInBackgroundRestricted:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailProcessChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedRestoreLevel:J

.field final mDyingProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

.field private mHaveDisplaySize:Z

.field mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field final mIsolatedProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLruProcessActivityStart:I

.field private mLruProcessServiceStart:I

.field private final mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLruSeq:I

.field private final mOomAdj:[I

.field private mOomLevelsSet:Z

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mPendingProcessChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingStarts:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mProcStartSeqCounter:J

.field volatile mProcStateSeqCounter:J

.field private final mProcessChangeLock:Ljava/lang/Object;

.field private mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

.field private final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field private final mProcessObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IProcessObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mRemovedProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mSdkSandboxes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mStringBuilder:Ljava/lang/StringBuilder;

.field private mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field private final mTotalMemMb:J

.field private mVoldAppDataIsolationEnabled:Z

.field private final mZygoteSigChldMessage:[I

.field private final mZygoteUnsolicitedMessage:[B


# direct methods
.method public static synthetic $r8$lambda$2XBtZ9egx9zXIMDRiVKFIv7scNQ(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ProcessList;->lambda$updateBackgroundRestrictedForUidPackageLocked$4(Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Aeowc7Aa0A47bbOcoIMPuNZ44Y(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->lambda$startProcessLocked$0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$3aT8AjDesFyouy4iqaLN2hUmayA(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->lambda$handleProcessStart$1(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$CC7yn4e5nUPqzC8siIAeG5XlMLQ(Lcom/android/server/am/ProcessList;JLcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessList;->lambda$killAppIfBgRestrictedAndCachedIdleLocked$5(JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JNHuPiwSzts8mouEo9gde_DuUw8(ZLjava/util/List;Landroid/util/ArrayMap;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/am/ProcessList;->lambda$updateApplicationInfoLOSP$3(ZLjava/util/List;Landroid/util/ArrayMap;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYt6n6XX38j0SShKv2A3vlz2hk4(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/ProcessList;->lambda$killPackageProcessesLSP$2(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_2hhy3f6tCYNbqfLdggq9vFVtX4(Lcom/android/server/am/ProcessList;Ljava/io/FileDescriptor;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessList;->handleZygoteMessages(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandlePredecessorProcDied(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList;->handlePredecessorProcDied(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misInWhiteList(Lcom/android/server/am/ProcessList;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList;->isInWhiteList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNothingApp(Lcom/android/server/am/ProcessList;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList;->isNothingApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetsLmkdConnection()Lcom/android/server/am/LmkdConnection;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 242
    const/4 v0, 0x5

    const/16 v1, 0x2bc

    sput v1, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    .line 306
    sget v1, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v1}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 410
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 411
    sput-object v1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 415
    sput-object v1, Lcom/android/server/am/ProcessList;->sHandler:Landroid/os/Handler;

    .line 416
    sput-object v1, Lcom/android/server/am/ProcessList;->sHandlerThread:Landroid/os/HandlerThread;

    .line 447
    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 449
    sput-object v1, Lcom/android/server/am/ProcessList;->sOomConnection:Lcom/android/server/am/OomConnection;

    .line 589
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    sput-object v1, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    .line 1384
    const/16 v1, 0x14

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 1407
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 1415
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1423
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 1431
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 1439
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 1447
    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    .line 6206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->sAppWhiteList:Ljava/util/ArrayList;

    .line 6208
    sget-object v0, Lcom/android/server/am/ProcessList;->sAppWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.providers.media.module"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6209
    sget-object v0, Lcom/android/server/am/ProcessList;->sAppWhiteList:Ljava/util/ArrayList;

    const-string v1, "android.process.media"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6210
    sget-object v0, Lcom/android/server/am/ProcessList;->sAppWhiteList:Ljava/util/ArrayList;

    const-string v1, "android.os.cts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6211
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 6

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 422
    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x6

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 428
    new-array v4, v3, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 434
    new-array v3, v3, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 439
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 451
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 453
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 455
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 472
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 478
    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 486
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 493
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 499
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 506
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 512
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 521
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 527
    new-instance v3, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v3}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 531
    new-instance v3, Lcom/android/server/am/AppStartInfoTracker;

    invoke-direct {v3}, Lcom/android/server/am/AppStartInfoTracker;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 537
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    .line 543
    new-instance v3, Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {v3}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 549
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 556
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 559
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 576
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    .line 581
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    .line 794
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v3, 0x182b8

    const v4, 0x1869f

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 802
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v3, 0x182b7

    const v4, 0x15f90

    invoke-direct {v0, p0, v4, v3, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 817
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    .line 821
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 826
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 837
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 843
    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 901
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 902
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 903
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 904
    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 905
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .line 1302
    const/4 v0, 0x0

    .local v0, "j":I
    const/16 v1, 0xa

    .local v1, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 1303
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 1304
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_1
    nop

    .line 1307
    .end local v0    # "j":I
    .end local v1    # "fact":I
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1308
    return-void
.end method

.method public static batchSetOomAdj(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 1653
    .local p0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1654
    .local v0, "totalApps":I
    if-nez v0, :cond_0

    .line 1655
    return-void

    .line 1658
    :cond_0
    const/16 v1, 0x34

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1659
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 1660
    .local v3, "total_procs_in_buf":I
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1661
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x0

    if-ge v5, v0, :cond_4

    .line 1662
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    .line 1663
    .local v7, "pid":I
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    .line 1664
    .local v8, "amt":I
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1665
    .local v9, "uid":I
    if-lez v7, :cond_1

    const/16 v10, 0x3e9

    if-ne v8, v10, :cond_2

    :cond_1
    goto :goto_1

    .line 1666
    :cond_2
    const/4 v10, 0x3

    if-lt v3, v10, :cond_3

    .line 1667
    invoke-static {v2, v6}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1668
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1669
    const/4 v3, 0x0

    .line 1670
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1671
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1673
    :cond_3
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1674
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1675
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1676
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1677
    add-int/lit8 v3, v3, 0x1

    .line 1661
    .end local v7    # "pid":I
    .end local v8    # "amt":I
    .end local v9    # "uid":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 1679
    .end local v5    # "i":I
    invoke-static {v2, v6}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1680
    return-void
.end method

.method public static batchSetOomAdjExt(Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 1690
    .local p0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1691
    .local v0, "totalApps":I
    if-nez v0, :cond_0

    .line 1692
    return-void

    .line 1695
    :cond_0
    const/16 v1, 0x4c

    .line 1696
    .local v1, "MAX_OOM_ADJ_BATCH_LENGTH":I
    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1697
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 1698
    .local v4, "total_procs_in_buf":I
    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1699
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x0

    if-ge v6, v0, :cond_6

    .line 1700
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    .line 1701
    .local v8, "pid":I
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v9

    .line 1702
    .local v9, "amt":I
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1703
    .local v10, "uid":I
    if-lez v8, :cond_1

    const/16 v11, 0x3e9

    if-ne v9, v11, :cond_2

    :cond_1
    goto :goto_1

    .line 1704
    :cond_2
    const/4 v11, 0x3

    if-lt v4, v11, :cond_3

    .line 1705
    invoke-static {v3, v7}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1706
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1707
    const/4 v4, 0x0

    .line 1708
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1709
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1711
    :cond_3
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1712
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1713
    .local v11, "processName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1714
    .local v12, "isMainProc":I
    const/4 v13, 0x0

    .line 1715
    .local v13, "isSystemApp":I
    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1716
    const/4 v12, 0x1

    .line 1718
    :cond_4
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1719
    const/4 v13, 0x1

    .line 1721
    :cond_5
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1722
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1723
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1724
    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1725
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1726
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1727
    add-int/lit8 v4, v4, 0x1

    .line 1699
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "pid":I
    .end local v9    # "amt":I
    .end local v10    # "uid":I
    .end local v11    # "processName":Ljava/lang/String;
    .end local v12    # "isMainProc":I
    .end local v13    # "isSystemApp":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    nop

    .line 1729
    .end local v6    # "i":I
    invoke-static {v3, v7}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1730
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "compactPrefix"    # Ljava/lang/String;
    .param p2, "space"    # Ljava/lang/String;
    .param p3, "val"    # I
    .param p4, "base"    # I
    .param p5, "compact"    # Z

    .line 1178
    sub-int v0, p3, p4

    .line 1179
    .local v0, "diff":I
    if-nez v0, :cond_2

    .line 1180
    if-eqz p5, :cond_0

    .line 1181
    return-object p1

    .line 1183
    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 1184
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1186
    :cond_2
    const/16 v1, 0xa

    const-string v2, "+"

    if-ge v0, v1, :cond_4

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "+ "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1189
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final checkLmkdKillOptiProc(I)Ljava/lang/Integer;
    .locals 4
    .param p0, "pid"    # I

    .line 1780
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1781
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1782
    .local v0, "repl":Ljava/nio/ByteBuffer;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1783
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1785
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1786
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1787
    invoke-static {v1, v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1788
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 1790
    :cond_0
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2
.end method

.method private checkSlow(JLjava/lang/String;)V
    .locals 6
    .param p1, "startTime"    # J
    .param p3, "where"    # Ljava/lang/String;

    .line 1920
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1921
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_0
    return-void
.end method

.method private completeLruProcessInternalLSP(Landroid/util/SparseBooleanArray;II)V
    .locals 7
    .param p1, "indices"    # Landroid/util/SparseBooleanArray;
    .param p2, "nextActivityIndex"    # I
    .param p3, "nextIndex"    # I

    .line 3875
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 3876
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 3877
    .local v1, "lrui":I
    if-gez v1, :cond_0

    .line 3879
    return-void

    .line 3881
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 3882
    .local v2, "isActivity":Z
    if-eqz v2, :cond_1

    move v3, p2

    goto :goto_1

    :cond_1
    move v3, p3

    .line 3884
    .local v3, "index":I
    :goto_1
    if-lt v1, v3, :cond_2

    .line 3887
    goto :goto_2

    .line 3890
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 3891
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v3, v3, -0x1

    .line 3892
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving dep from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in LRU list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3895
    iget v5, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    .line 3897
    if-eqz v2, :cond_4

    .line 3898
    move p2, v3

    goto :goto_2

    .line 3900
    :cond_4
    move p3, v3

    .line 3875
    .end local v1    # "lrui":I
    .end local v2    # "isActivity":Z
    .end local v3    # "index":I
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    nop

    .line 3903
    .end local v0    # "i":I
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .line 1173
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private computeGidsForProcess(II[IZ)[I
    .locals 8
    .param p1, "mountExternal"    # I
    .param p2, "uid"    # I
    .param p3, "permGids"    # [I
    .param p4, "externalStorageAccess"    # Z

    .line 1929
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1931
    .local v0, "gidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    .line 1932
    .local v1, "sharedAppGid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v2

    .line 1933
    .local v2, "cacheAppGid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v3

    .line 1937
    .local v3, "userGid":I
    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, p3, v5

    .line 1938
    .local v6, "permGid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    .end local v6    # "permGid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1940
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 1941
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    :cond_1
    if-eq v2, v4, :cond_2

    .line 1944
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1946
    :cond_2
    if-eq v3, v4, :cond_3

    .line 1947
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1949
    :cond_3
    const/4 v4, 0x4

    const/16 v5, 0x437

    const/4 v6, 0x3

    if-eq p1, v4, :cond_4

    if-ne p1, v6, :cond_5

    .line 1956
    :cond_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v7, 0x3f7

    invoke-static {v4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    const/16 v4, 0x436

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1964
    :cond_5
    const/4 v4, 0x2

    if-ne p1, v4, :cond_6

    .line 1966
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    :cond_6
    if-ne p1, v6, :cond_7

    .line 1972
    const/16 v4, 0x3ff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    :cond_7
    if-eqz p4, :cond_8

    .line 1977
    const/16 v4, 0x435

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 1981
    .local v4, "gidArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_9

    .line 1982
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 1981
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    nop

    .line 1984
    .end local v5    # "i":I
    return-object v4
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJJ)J
    .locals 11
    .param p0, "procState"    # I
    .param p1, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J
    .param p6, "earliest"    # J

    .line 1518
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    .line 1519
    .local v0, "memState":I
    if-eqz p1, :cond_3

    .line 1520
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v1, :cond_0

    .line 1521
    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1522
    .local v1, "highestMemState":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1523
    .local v2, "first":Z
    :goto_1
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1524
    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 1525
    if-eqz v2, :cond_2

    .line 1526
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    .local v4, "scalingFactor":F
    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2

    .line 1528
    .end local v4    # "scalingFactor":F
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v4, v3, v0

    .line 1529
    .restart local v4    # "scalingFactor":F
    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 1531
    .end local v1    # "highestMemState":I
    :goto_2
    goto :goto_3

    .line 1532
    .end local v2    # "first":Z
    .end local v4    # "scalingFactor":F
    :cond_3
    const/4 v2, 0x1

    .line 1533
    .restart local v2    # "first":Z
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1535
    .restart local v4    # "scalingFactor":F
    :goto_3
    if-eqz p2, :cond_5

    .line 1536
    if-eqz v2, :cond_4

    .line 1537
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    .line 1538
    :cond_4
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    .line 1539
    :cond_5
    if-eqz v2, :cond_7

    .line 1540
    if-eqz p3, :cond_6

    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    .line 1541
    :cond_7
    if-eqz p3, :cond_8

    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4
    nop

    .line 1542
    .local v1, "table":[J
    aget-wide v5, v1, v0

    long-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-long v5, v3

    .line 1543
    .local v5, "delay":J
    const-wide/32 v7, 0x36ee80

    cmp-long v3, v5, v7

    if-lez v3, :cond_9

    .line 1544
    const-wide/32 v5, 0x36ee80

    .line 1546
    :cond_9
    add-long v7, p4, v5

    move-wide/from16 v9, p6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    return-wide v7
.end method

.method private createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2494
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 2497
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v0

    move v5, v0

    .line 2498
    .local v5, "uid":I
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AppZygote;

    .line 2500
    .local v0, "appZygote":Landroid/os/AppZygote;
    if-nez v0, :cond_1

    .line 2501
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_0

    .line 2502
    const-string v2, "ActivityManager"

    const-string v3, "Creating new app zygote."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2539
    .end local v0    # "appZygote":Landroid/os/AppZygote;
    .end local v5    # "uid":I
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 2504
    .restart local v0    # "appZygote":Landroid/os/AppZygote;
    .restart local v5    # "uid":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2506
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v4

    .line 2505
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v2

    move-object v8, v2

    .line 2507
    .local v8, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move v9, v2

    .line 2510
    .local v9, "userId":I
    iget v2, v8, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v9, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 2511
    .local v6, "firstUid":I
    iget v2, v8, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v9, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 2512
    .local v7, "lastUid":I
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2519
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2520
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2521
    new-instance v2, Landroid/os/AppZygote;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    invoke-direct/range {v2 .. v7}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;III)V

    move-object v0, v2

    .line 2522
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2523
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2524
    .local v2, "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2525
    nop

    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "firstUid":I
    .end local v7    # "lastUid":I
    .end local v8    # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .end local v9    # "userId":I
    goto :goto_1

    .line 2526
    .end local v2    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_1
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_2

    .line 2527
    const-string v2, "ActivityManager"

    const-string v3, "Reusing existing app zygote."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x47

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2530
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2536
    .restart local v2    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2538
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 2539
    .end local v0    # "appZygote":Landroid/os/AppZygote;
    .end local v2    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v5    # "uid":I
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private createSystemServerSocketForZygote()Landroid/net/LocalSocket;
    .locals 5

    .line 5655
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/unsolzygotesocket"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5656
    .local v0, "socketFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5657
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5660
    :cond_0
    const/4 v2, 0x0

    .line 5662
    .local v2, "serverSocket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/net/LocalSocket;-><init>(I)V

    move-object v2, v3

    .line 5663
    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v1, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 5665
    const/16 v3, 0x1b6

    invoke-static {v1, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5674
    goto :goto_1

    .line 5666
    :catch_0
    move-exception v1

    .line 5667
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 5669
    :try_start_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5671
    goto :goto_0

    .line 5670
    :catch_1
    move-exception v3

    .line 5672
    :goto_0
    const/4 v2, 0x0

    .line 5675
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v2
.end method

.method private dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "index"    # I
    .param p3, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "prefix"    # Ljava/lang/String;

    .line 4577
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4578
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4579
    const/16 v0, 0xa

    const/16 v1, 0x20

    if-ge p2, v0, :cond_0

    .line 4580
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 4582
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 4583
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4584
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4585
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 4586
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4587
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 4588
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 4589
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 4590
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4591
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4592
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4593
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4594
    :cond_1
    const-string v1, " act:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4595
    const/4 v1, 0x0

    .line 4596
    .local v1, "printed":Z
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4597
    const-string v2, "activities"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4598
    const/4 v1, 0x1

    .line 4600
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result v2

    const-string/jumbo v3, "|"

    if-eqz v2, :cond_4

    .line 4601
    if-eqz v1, :cond_3

    .line 4602
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4604
    :cond_3
    const-string/jumbo v2, "recents"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4605
    const/4 v1, 0x1

    .line 4607
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4608
    if-eqz v1, :cond_5

    .line 4609
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4611
    :cond_5
    const-string v2, "client"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4612
    const/4 v1, 0x1

    .line 4614
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4615
    if-eqz v1, :cond_7

    .line 4616
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4618
    :cond_7
    const-string/jumbo v2, "treated"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4621
    .end local v1    # "printed":Z
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4622
    return-void
.end method

.method private static dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 27
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "normalLabel"    # Ljava/lang/String;
    .param p5, "persistentLabel"    # Ljava/lang/String;
    .param p6, "inclDetails"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 4978
    .local p2, "origList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4979
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    return v7

    .line 4981
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 4982
    .local v8, "curUptime":J
    iget-wide v10, v1, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v10, v8, v10

    .line 4984
    .local v10, "uptimeSince":J
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v12, 0x1

    sub-int/2addr v6, v12

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_10

    .line 4985
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 4986
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4987
    .local v14, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v15, v13, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4988
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    move/from16 v16, v12

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v12

    invoke-static {v12, v7}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v12

    .line 4990
    .local v12, "oomAdj":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 5007
    const/16 v17, 0x3f

    move/from16 v7, v17

    .local v17, "schedGroup":C
    goto :goto_1

    .line 5004
    .end local v17    # "schedGroup":C
    :pswitch_0
    const/16 v17, 0x42

    .line 5005
    .restart local v17    # "schedGroup":C
    move/from16 v7, v17

    goto :goto_1

    .line 4998
    .end local v17    # "schedGroup":C
    :pswitch_1
    const/16 v17, 0x54

    .line 4999
    .restart local v17    # "schedGroup":C
    move/from16 v7, v17

    goto :goto_1

    .line 4995
    .end local v17    # "schedGroup":C
    :pswitch_2
    const/16 v17, 0x46

    .line 4996
    .restart local v17    # "schedGroup":C
    move/from16 v7, v17

    goto :goto_1

    .line 5001
    .end local v17    # "schedGroup":C
    :pswitch_3
    const/16 v17, 0x52

    .line 5002
    .restart local v17    # "schedGroup":C
    move/from16 v7, v17

    goto :goto_1

    .line 4992
    .end local v17    # "schedGroup":C
    :pswitch_4
    const/16 v17, 0x62

    .line 4993
    .restart local v17    # "schedGroup":C
    move/from16 v7, v17

    .line 5011
    .end local v17    # "schedGroup":C
    .local v7, "schedGroup":C
    :goto_1
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 5012
    const/16 v17, 0x41

    move/from16 v3, v17

    .local v17, "foreground":C
    goto :goto_2

    .line 5013
    .end local v17    # "foreground":C
    :cond_1
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5014
    const/16 v17, 0x53

    move/from16 v3, v17

    .restart local v17    # "foreground":C
    goto :goto_2

    .line 5016
    .end local v17    # "foreground":C
    :cond_2
    const/16 v17, 0x20

    move/from16 v3, v17

    .line 5018
    .local v3, "foreground":C
    :goto_2
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    .line 5019
    .local v4, "procState":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5020
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v17

    move-wide/from16 v18, v8

    if-eqz v17, :cond_3

    move-object/from16 v8, p5

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    .end local v8    # "curUptime":J
    .local v18, "curUptime":J
    :goto_3
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5021
    const-string v8, " #"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5022
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v8, v9

    .line 5023
    .local v8, "num":I
    const/16 v9, 0xa

    move-object/from16 v17, v5

    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    const/16 v5, 0x20

    if-ge v8, v9, :cond_4

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 5024
    :cond_4
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 5025
    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5026
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5027
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 5028
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 5029
    const/16 v9, 0x2f

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 5030
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 5031
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 5032
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5033
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 5034
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v9

    invoke-static {v0, v9}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 5035
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 5036
    const-string v9, " t:"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5037
    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v9

    const/16 v5, 0xa

    if-ge v9, v5, :cond_5

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_4

    :cond_5
    const/16 v5, 0x20

    .line 5038
    :goto_4
    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 5039
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 5040
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5041
    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5042
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5043
    const/16 v9, 0x29

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(C)V

    .line 5044
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v9

    move/from16 v21, v3

    .end local v3    # "foreground":C
    .local v21, "foreground":C
    const-string v3, "    "

    if-nez v9, :cond_6

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    :cond_6
    goto :goto_5

    :cond_7
    move-object/from16 v22, v4

    goto :goto_7

    .line 5045
    :goto_5
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5046
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5047
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroid/content/ComponentName;

    move-object/from16 v22, v4

    .end local v4    # "procState":Ljava/lang/String;
    .local v22, "procState":Ljava/lang/String;
    const-string/jumbo v4, "{null}"

    if-eqz v9, :cond_8

    .line 5048
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 5049
    :cond_8
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 5050
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 5052
    :cond_9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5054
    :goto_6
    const-string v9, "<="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5055
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_a

    .line 5056
    const-string v4, "Proc{"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5057
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5058
    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 5059
    :cond_a
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 5060
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 5062
    :cond_b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5065
    :goto_7
    if-eqz p6, :cond_e

    .line 5066
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5067
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5068
    const-string/jumbo v4, "oom: max="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5069
    const-string v4, " curRaw="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5070
    const-string v4, " setRaw="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5071
    const-string v4, " cur="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5072
    const-string v4, " set="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 5073
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5074
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5075
    const-string/jumbo v9, "state: cur="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5076
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5078
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v4

    const-wide/16 v23, 0x400

    if-eqz v4, :cond_c

    .line 5079
    const-string v4, " lastPss="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5080
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v25

    move v4, v6

    move v9, v7

    .end local v6    # "i":I
    .end local v7    # "schedGroup":C
    .local v4, "i":I
    .local v9, "schedGroup":C
    mul-long v6, v25, v23

    invoke-static {v0, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 5081
    const-string v6, " lastSwapPss="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5082
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v6

    mul-long v6, v6, v23

    invoke-static {v0, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 5083
    const-string v6, " lastCachedPss="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5084
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v6

    mul-long v6, v6, v23

    invoke-static {v0, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    goto :goto_8

    .line 5086
    .end local v4    # "i":I
    .end local v9    # "schedGroup":C
    .restart local v6    # "i":I
    .restart local v7    # "schedGroup":C
    :cond_c
    move v4, v6

    move v9, v7

    .end local v6    # "i":I
    .end local v7    # "schedGroup":C
    .restart local v4    # "i":I
    .restart local v9    # "schedGroup":C
    const-string v6, " lastRss="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5087
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v6

    mul-long v6, v6, v23

    invoke-static {v0, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 5088
    const-string v6, " lastCachedRss="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5089
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedRss()J

    move-result-wide v6

    mul-long v6, v6, v23

    invoke-static {v0, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 5091
    :goto_8
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 5092
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5093
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5094
    const-string v6, "cached="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 5095
    const-string v6, " empty="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 5096
    const-string v6, " hasAboveClient="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 5098
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_f

    .line 5099
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 5100
    .local v6, "lastCpuTime":J
    const-wide/16 v23, 0x0

    cmp-long v20, v6, v23

    if-eqz v20, :cond_d

    cmp-long v20, v10, v23

    if-lez v20, :cond_d

    .line 5101
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v23

    move-wide/from16 v25, v6

    .end local v6    # "lastCpuTime":J
    .local v25, "lastCpuTime":J
    sub-long v6, v23, v25

    .line 5102
    .local v6, "timeUsed":J
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5103
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5104
    const-string/jumbo v1, "run cpu over "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5105
    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5106
    const-string v1, " used "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5107
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5108
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5109
    const-wide/16 v23, 0x64

    mul-long v23, v23, v6

    div-long v1, v23, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 5110
    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 5100
    .end local v25    # "lastCpuTime":J
    .local v6, "lastCpuTime":J
    :cond_d
    move-wide/from16 v25, v6

    .end local v6    # "lastCpuTime":J
    .restart local v25    # "lastCpuTime":J
    goto :goto_9

    .line 5065
    .end local v4    # "i":I
    .end local v9    # "schedGroup":C
    .end local v25    # "lastCpuTime":J
    .local v6, "i":I
    .restart local v7    # "schedGroup":C
    :cond_e
    move v4, v6

    move v9, v7

    .line 4984
    .end local v6    # "i":I
    .end local v7    # "schedGroup":C
    .end local v8    # "num":I
    .end local v12    # "oomAdj":Ljava/lang/String;
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v21    # "foreground":C
    .end local v22    # "procState":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_f
    :goto_9
    add-int/lit8 v6, v4, -0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p7

    move/from16 v12, v16

    move-object/from16 v5, v17

    move-wide/from16 v8, v18

    const/4 v7, 0x0

    .end local v4    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_0

    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .end local v18    # "curUptime":J
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v8, "curUptime":J
    :cond_10
    move/from16 v16, v12

    .line 5115
    .end local v6    # "i":I
    return v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 5271
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5272
    .local v0, "i":I
    const/4 v1, 0x0

    .line 5273
    .local v1, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :goto_0
    const-string v2, "ActivityManager"

    if-ltz v0, :cond_1

    .line 5274
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 5275
    iget v3, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_0

    .line 5276
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v3, :cond_1

    .line 5277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-using existing item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5281
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5284
    :cond_1
    :goto_1
    if-gez v0, :cond_7

    .line 5286
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5287
    .local v3, "num":I
    if-lez v3, :cond_2

    .line 5288
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 5289
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v4, :cond_4

    .line 5290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving available item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5293
    :cond_2
    new-instance v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;-><init>()V

    .line 5294
    .end local v1    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .local v4, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v1, :cond_3

    .line 5295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocating new item: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5298
    :cond_3
    move-object v1, v4

    .end local v4    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .restart local v1    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_4
    :goto_2
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 5299
    iput p1, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 5300
    iput p2, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    .line 5301
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 5302
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v4, :cond_5

    .line 5303
    const-string v4, "*** Enqueueing dispatch processes changed!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5305
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v4, 0x1f

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5306
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5308
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5311
    .end local v3    # "num":I
    :cond_7
    return-object v1
.end method

.method private freezeBinderAndPackageCgroup(Ljava/util/List;I)V
    .locals 10
    .param p2, "packageUID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Boolean;",
            ">;>;I)V"
        }
    .end annotation

    .line 3217
    .local p1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    const-string v0, ": "

    const-string v1, "Unable to freeze binder for "

    const-string v2, "ActivityManager"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 3218
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_4

    .line 3219
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    .line 3220
    .local v6, "pid":I
    const/4 v7, 0x0

    .line 3221
    .local v7, "nRetries":I
    nop

    nop

    if-lez v6, :cond_3

    .line 3225
    :goto_1
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getFreezer()Lcom/android/server/am/Freezer;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v6, v5, v9}, Lcom/android/server/am/Freezer;->freezeBinder(IZI)I

    move-result v8

    .line 3226
    .local v8, "rc":I
    sget v9, Landroid/system/OsConstants;->EAGAIN:I

    neg-int v9, v9

    if-ne v8, v9, :cond_1

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "nRetries":I
    .local v9, "nRetries":I
    if-lt v7, v5, :cond_0

    move v7, v9

    goto :goto_2

    :cond_0
    move v7, v9

    goto :goto_1

    .line 3227
    .end local v9    # "nRetries":I
    .restart local v7    # "nRetries":I
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3228
    .end local v8    # "rc":I
    :catch_0
    move-exception v5

    goto :goto_4

    .line 3230
    :cond_2
    :goto_3
    goto :goto_5

    .line 3228
    :goto_4
    nop

    .line 3229
    .local v5, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "pid":I
    .end local v7    # "nRetries":I
    :cond_3
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 3237
    .end local v4    # "i":I
    invoke-static {p2, v5}, Lcom/android/server/am/ProcessList;->freezePackageCgroup(IZ)Z

    .line 3238
    return-void
.end method

.method private static freezePackageCgroup(IZ)Z
    .locals 4
    .param p0, "packageUID"    # I
    .param p1, "freeze"    # Z

    .line 3198
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/Process;->freezeCgroupUid(IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3203
    nop

    .line 3204
    const/4 v0, 0x1

    return v0

    .line 3199
    :catch_0
    move-exception v0

    .line 3200
    .local v0, "e":Ljava/lang/RuntimeException;
    if-eqz p1, :cond_0

    const-string/jumbo v1, "freeze"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "unfreeze"

    .line 3201
    .local v1, "logtxt":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cgroup uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    const/4 v2, 0x0

    return v2
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .locals 4
    .param p0, "min_oom_adj"    # I
    .param p1, "max_oom_adj"    # I

    .line 1750
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1751
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1752
    .local v1, "repl":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1753
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1754
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1756
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1757
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1758
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1759
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 1761
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;

    .line 3513
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 3517
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3518
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 3517
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    return-object v0

    .line 3515
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object v0
.end method

.method private getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .locals 12
    .param p1, "pmInt"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 2544
    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2545
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2546
    .local v1, "userId":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 2547
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 2548
    .local v5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v6, "ActivityManager"

    if-nez v5, :cond_0

    .line 2549
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    goto :goto_1

    .line 2552
    :cond_0
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    .line 2553
    .local v7, "volumeUuid":Ljava/lang/String;
    invoke-interface {v5, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v8

    .line 2554
    .local v8, "inode":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_1

    .line 2555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inode == 0 or app uninstalled with keep-data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    const/4 v2, 0x0

    return-object v2

    .line 2558
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2546
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local v8    # "inode":J
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2561
    :cond_2
    return-object v0
.end method

.method private static getUIDSublist(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .param p1, "startIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Boolean;",
            ">;>;I)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 3242
    .local p0, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3243
    .local v0, "uid":I
    add-int/lit8 v1, p1, 0x1

    .line 3244
    .local v1, "endIdx":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3245
    :cond_0
    invoke-interface {p0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private handlePredecessorProcDied(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2438
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 2439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is really gone now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2444
    .local v0, "start":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 2445
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2446
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2448
    :cond_1
    return-void
.end method

.method private handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "gids"    # [I
    .param p4, "runtimeFlags"    # I
    .param p5, "zygotePolicyFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "requiredAbi"    # Ljava/lang/String;
    .param p8, "instructionSet"    # Ljava/lang/String;
    .param p9, "invokeWith"    # Ljava/lang/String;
    .param p10, "startSeq"    # J

    .line 2356
    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2380
    .local v0, "startRunnable":Ljava/lang/Runnable;
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2381
    .local v3, "predecessor":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v4

    if-lez v4, :cond_0

    .line 2382
    invoke-direct {p0, v3, v0}, Lcom/android/server/am/ProcessList;->handleProcessStartWithPredecessor(Lcom/android/server/am/ProcessRecord;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2385
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2387
    :goto_0
    return-void
.end method

.method private handleProcessStartWithPredecessor(Lcom/android/server/am/ProcessRecord;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "predecessor"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "successorStartRunnable"    # Ljava/lang/Runnable;

    .line 2396
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We\'ve been watching for the death of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    return-void

    .line 2401
    :cond_0
    iput-object p2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2402
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2405
    return-void
.end method

.method private handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .locals 8
    .param p1, "pending"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "startResult"    # Landroid/os/Process$ProcessStartResult;
    .param p3, "expectedStartSeq"    # J

    .line 3019
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3020
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v1, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne v0, v1, :cond_0

    .line 3021
    iget-boolean v0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 3024
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3026
    :cond_1
    iget v3, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    .end local p1    # "pending":Lcom/android/server/am/ProcessRecord;
    .end local p3    # "expectedStartSeq":J
    .local v2, "pending":Lcom/android/server/am/ProcessRecord;
    .local v5, "expectedStartSeq":J
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result p1

    return p1
.end method

.method private handleZygoteMessages(Ljava/io/FileDescriptor;I)I
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 5682
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 5683
    .local v0, "eventFd":I
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5686
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 5688
    .local v1, "len":I
    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    array-length v3, v3

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    invoke-static {v5, v1, v6}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 5690
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget v4, v5, v4

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/AppExitInfoTracker;->handleZygoteSigChld(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5695
    .end local v1    # "len":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 5697
    :cond_0
    :goto_0
    goto :goto_2

    .line 5695
    :goto_1
    nop

    .line 5696
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in reading unsolicited zygote message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5699
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return v2
.end method

.method private hasAppStorage(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pmInt"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2811
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 2812
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    return v1

    .line 2816
    :cond_0
    nop

    .line 2817
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManager$Property;

    .line 2818
    .local v2, "noAppStorageProp":Landroid/content/pm/PackageManager$Property;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 6213
    if-eqz p1, :cond_0

    .line 6214
    sget-object v0, Lcom/android/server/am/ProcessList;->sAppWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 6216
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNothingApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 6201
    if-eqz p1, :cond_0

    const-string v0, "com.nothing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6202
    const/4 v0, 0x1

    return v0

    .line 6204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static killProcessGroup(II)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 1854
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_0

    .line 1855
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 1856
    const/16 v2, 0xfa0

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1855
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1858
    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 1861
    :goto_0
    return-void
.end method

.method private synthetic lambda$handleProcessStart$1(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 18
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "gids"    # [I
    .param p4, "runtimeFlags"    # I
    .param p5, "zygotePolicyFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "requiredAbi"    # Ljava/lang/String;
    .param p8, "instructionSet"    # Ljava/lang/String;
    .param p9, "invokeWith"    # Ljava/lang/String;
    .param p10, "startSeq"    # J

    .line 2358
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    .line 2359
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    .line 2360
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v10

    .line 2361
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2358
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    move-object v2, v0

    .line 2363
    .local v2, "startResult":Landroid/os/Process$ProcessStartResult;
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2364
    move-wide/from16 v5, p10

    :try_start_2
    invoke-direct {v1, v4, v2, v5, v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 2365
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2377
    .end local v2    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_2

    .line 2366
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2365
    .restart local v2    # "startResult":Landroid/os/Process$ProcessStartResult;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "entryPoint":Ljava/lang/String;
    .end local p3    # "gids":[I
    .end local p4    # "runtimeFlags":I
    .end local p5    # "zygotePolicyFlags":I
    .end local p6    # "mountExternal":I
    .end local p7    # "requiredAbi":Ljava/lang/String;
    .end local p8    # "instructionSet":Ljava/lang/String;
    .end local p9    # "invokeWith":Ljava/lang/String;
    .end local p10    # "startSeq":J
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2366
    .end local v2    # "startResult":Landroid/os/Process$ProcessStartResult;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "entryPoint":Ljava/lang/String;
    .restart local p3    # "gids":[I
    .restart local p4    # "runtimeFlags":I
    .restart local p5    # "zygotePolicyFlags":I
    .restart local p6    # "mountExternal":I
    .restart local p7    # "requiredAbi":Ljava/lang/String;
    .restart local p8    # "instructionSet":Ljava/lang/String;
    .restart local p9    # "invokeWith":Ljava/lang/String;
    .restart local p10    # "startSeq":J
    :catch_1
    move-exception v0

    :goto_0
    move-wide/from16 v5, p10

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    goto :goto_0

    :goto_1
    move-object v2, v0

    .line 2367
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 2368
    :try_start_6
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure starting process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2370
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2371
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2372
    iget-object v7, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2373
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v17, "start failure"

    .line 2372
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v0

    invoke-virtual/range {v7 .. v17}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    .line 2375
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->doEarlyCleanupIfNecessaryLocked()V

    .line 2376
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2378
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-void

    .line 2376
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private synthetic lambda$killAppIfBgRestrictedAndCachedIdleLocked$5(JLcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "nowElapsed"    # J
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5823
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    return-void
.end method

.method private static synthetic lambda$killPackageProcessesLSP$2(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2
    .param p0, "o1"    # Landroid/util/Pair;
    .param p1, "o2"    # Landroid/util/Pair;

    .line 3347
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$startProcessLocked$0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "gids"    # [I
    .param p4, "runtimeFlags"    # I
    .param p5, "zygotePolicyFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "requiredAbi"    # Ljava/lang/String;
    .param p8, "instructionSet"    # Ljava/lang/String;
    .param p9, "invokeWith"    # Ljava/lang/String;
    .param p10, "startSeq"    # J

    .line 2324
    invoke-direct/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static synthetic lambda$updateApplicationInfoLOSP$3(ZLjava/util/List;Landroid/util/ArrayMap;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p0, "updateFrameworkRes"    # Z
    .param p1, "packagesToUpdate"    # Ljava/util/List;
    .param p2, "applicationInfoByPackage"    # Landroid/util/ArrayMap;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "targetProcesses"    # Ljava/util/ArrayList;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 5426
    if-nez p0, :cond_0

    invoke-interface {p1, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5428
    :cond_0
    :try_start_0
    invoke-virtual {p2, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 5429
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 5430
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5431
    iput-object v0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 5432
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 5433
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object v1

    .line 5434
    invoke-virtual {v1, v0}, Lcom/android/server/am/PlatformCompatCache;->onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    .line 5439
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5436
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 5437
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5442
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_2

    .line 5439
    :goto_1
    nop

    .line 5440
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Failed to update %s ApplicationInfo for %s"

    filled-new-array {p5, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5444
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$updateBackgroundRestrictedForUidPackageLocked$4(Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restricted"    # Z
    .param p3, "nowElapsed"    # J
    .param p5, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5762
    iget-object v0, p5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5763
    iget-object v0, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setBackgroundRestricted(Z)V

    .line 5764
    if-eqz p2, :cond_2

    .line 5765
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v0, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5766
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v0

    .line 5768
    .local v0, "future":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    nop

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v3, 0x3a

    nop

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 5770
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5771
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sub-long v4, v0, p3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5774
    .end local v0    # "future":J
    :cond_1
    goto :goto_0

    .line 5775
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v0, p5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 5777
    :goto_0
    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5778
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 5781
    :cond_3
    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .locals 7
    .param p0, "setAdj"    # I
    .param p1, "compact"    # Z

    .line 1193
    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    .line 1194
    const-string v3, "   "

    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    move v4, p0

    move v6, p1

    .end local p0    # "setAdj":I
    .end local p1    # "compact":Z
    .local v4, "setAdj":I
    .local v6, "compact":Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    move v3, v4

    move v5, v6

    .end local v4    # "setAdj":I
    .end local v6    # "compact":Z
    .local v3, "setAdj":I
    .local v5, "compact":Z
    return-object p0

    .line 1196
    .end local v3    # "setAdj":I
    .end local v5    # "compact":Z
    .restart local p0    # "setAdj":I
    .restart local p1    # "compact":Z
    :cond_0
    move v3, p0

    move v5, p1

    .end local p0    # "setAdj":I
    .end local p1    # "compact":Z
    .restart local v3    # "setAdj":I
    .restart local v5    # "compact":Z
    const/16 p0, 0x320

    if-lt v3, p0, :cond_1

    .line 1197
    const/4 v2, 0x0

    const/16 v4, 0x320

    const-string/jumbo v0, "svcb  "

    const-string/jumbo v1, "svcb"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1199
    :cond_1
    const/16 p0, 0x2bc

    if-lt v3, p0, :cond_2

    .line 1200
    const/4 v2, 0x0

    const/16 v4, 0x2bc

    const-string/jumbo v0, "prev  "

    const-string/jumbo v1, "prev"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1202
    :cond_2
    const/16 p0, 0x258

    if-lt v3, p0, :cond_3

    .line 1203
    const/4 v2, 0x0

    const/16 v4, 0x258

    const-string/jumbo v0, "home  "

    const-string/jumbo v1, "home"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1205
    :cond_3
    const/16 p0, 0x1f4

    if-lt v3, p0, :cond_4

    .line 1206
    const/4 v2, 0x0

    const/16 v4, 0x1f4

    const-string/jumbo v0, "svc   "

    const-string/jumbo v1, "svc"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1208
    :cond_4
    const/16 p0, 0x190

    if-lt v3, p0, :cond_5

    .line 1209
    const/4 v2, 0x0

    const/16 v4, 0x190

    const-string/jumbo v0, "hvy   "

    const-string/jumbo v1, "hvy"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1211
    :cond_5
    const/16 p0, 0x12c

    if-lt v3, p0, :cond_6

    .line 1212
    const/4 v2, 0x0

    const/16 v4, 0x12c

    const-string v0, "bkup  "

    const-string v1, "bkup"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1214
    :cond_6
    const/16 p0, 0xfa

    if-lt v3, p0, :cond_7

    .line 1215
    const/4 v2, 0x0

    const/16 v4, 0xfa

    const-string/jumbo v0, "prcl  "

    const-string/jumbo v1, "prcl"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1217
    :cond_7
    const/16 p0, 0xe1

    if-lt v3, p0, :cond_8

    .line 1218
    const/4 v2, 0x0

    const/16 v4, 0xe1

    const-string/jumbo v0, "prcm  "

    const-string/jumbo v1, "prcm"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1220
    :cond_8
    const/16 p0, 0xc8

    if-lt v3, p0, :cond_9

    .line 1221
    const/4 v2, 0x0

    const/16 v4, 0xc8

    const-string/jumbo v0, "prcp  "

    const-string/jumbo v1, "prcp"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1223
    :cond_9
    const/16 p0, 0x64

    if-lt v3, p0, :cond_a

    .line 1224
    const-string v2, "   "

    const/16 v4, 0x64

    const-string/jumbo v0, "vis"

    const-string/jumbo v1, "vis"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1226
    :cond_a
    if-ltz v3, :cond_b

    .line 1227
    const-string v2, "   "

    const/4 v4, 0x0

    const-string v0, "fg "

    const-string v1, "fg "

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1229
    :cond_b
    const/16 p0, -0x2bc

    if-lt v3, p0, :cond_c

    .line 1230
    const/4 v2, 0x0

    const/16 v4, -0x2bc

    const-string/jumbo v0, "psvc  "

    const-string/jumbo v1, "psvc"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1232
    :cond_c
    const/16 p0, -0x320

    if-lt v3, p0, :cond_d

    .line 1233
    const/4 v2, 0x0

    const/16 v4, -0x320

    const-string/jumbo v0, "pers  "

    const-string/jumbo v1, "pers"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1235
    :cond_d
    const/16 p0, -0x384

    if-lt v3, p0, :cond_e

    .line 1236
    const/4 v2, 0x0

    const/16 v4, -0x384

    const-string/jumbo v0, "sys   "

    const-string/jumbo v1, "sys"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1238
    :cond_e
    const/16 p0, -0x3e8

    if-lt v3, p0, :cond_f

    .line 1239
    const/4 v2, 0x0

    const/16 v4, -0x3e8

    const-string/jumbo v0, "ntv  "

    const-string/jumbo v1, "ntv"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1242
    :cond_f
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 1
    .param p0, "curProcState"    # I

    .line 1251
    packed-switch p0, :pswitch_data_0

    .line 1297
    const/16 v0, 0x3e6

    return v0

    .line 1293
    :pswitch_0
    const/16 v0, 0x3fb

    return v0

    .line 1291
    :pswitch_1
    const/16 v0, 0x3fa

    return v0

    .line 1289
    :pswitch_2
    const/16 v0, 0x3f9

    return v0

    .line 1287
    :pswitch_3
    const/16 v0, 0x3f8

    return v0

    .line 1285
    :pswitch_4
    const/16 v0, 0x3f7

    return v0

    .line 1283
    :pswitch_5
    const/16 v0, 0x3f6

    return v0

    .line 1281
    :pswitch_6
    const/16 v0, 0x3f5

    return v0

    .line 1275
    :pswitch_7
    const/16 v0, 0x3f4

    return v0

    .line 1265
    :pswitch_8
    const/16 v0, 0x3f3

    return v0

    .line 1279
    :pswitch_9
    const/16 v0, 0x3f2

    return v0

    .line 1277
    :pswitch_a
    const/16 v0, 0x3f1

    return v0

    .line 1273
    :pswitch_b
    const/16 v0, 0x3f0

    return v0

    .line 1271
    :pswitch_c
    const/16 v0, 0x3ef

    return v0

    .line 1269
    :pswitch_d
    const/16 v0, 0x3ee

    return v0

    .line 1267
    :pswitch_e
    const/16 v0, 0x3ed

    return v0

    .line 1263
    :pswitch_f
    const/16 v0, 0x3ec

    return v0

    .line 1261
    :pswitch_10
    const/16 v0, 0x3eb

    return v0

    .line 1259
    :pswitch_11
    const/16 v0, 0x3fc

    return v0

    .line 1257
    :pswitch_12
    const/16 v0, 0x3ea

    return v0

    .line 1255
    :pswitch_13
    const/16 v0, 0x3e9

    return v0

    .line 1253
    :pswitch_14
    const/16 v0, 0x3e8

    return v0

    .line 1295
    :pswitch_15
    const/16 v0, 0x3e7

    return v0

    :pswitch_data_0
    .packed-switch -0x1
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

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .line 1247
    invoke-static {p0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .line 1511
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0
.end method

.method private needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "storageManagerInternal"    # Landroid/os/storage/StorageManagerInternal;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2566
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getMountMode()I

    move-result v0

    .line 2567
    .local v0, "mountMode":I
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2568
    invoke-virtual {p1, v1}, Landroid/os/storage/StorageManagerInternal;->isExternalStorageService(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2567
    :goto_0
    return v1
.end method

.method private offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J
    .param p4, "what"    # Ljava/lang/String;
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "srcApp"    # Lcom/android/server/am/ProcessRecord;

    .line 3843
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    .line 3845
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3847
    const/4 v0, -0x1

    return v0

    .line 3850
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3851
    .local v0, "lrui":I
    if-gez v0, :cond_1

    .line 3852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding dependent process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not on LRU list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    :cond_1
    return v0
.end method

.method private printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "adj"    # I

    .line 5119
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5120
    const/16 v0, 0x20

    if-ltz p3, :cond_0

    .line 5121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5122
    const/16 v1, 0xa

    if-ge p3, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 5124
    :cond_0
    const/16 v1, -0xa

    if-le p3, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5126
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 5127
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5129
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5130
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->stringifySize(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5131
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5132
    return-void
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .line 1507
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .line 1737
    if-gtz p0, :cond_0

    .line 1738
    return-void

    .line 1740
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1741
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1742
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1743
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1744
    return-void
.end method

.method private removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2466
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2468
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2467
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 2469
    .local v0, "appUidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    if-eqz v0, :cond_0

    .line 2470
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2473
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2474
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v3

    .line 2473
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AppZygote;

    .line 2475
    .local v1, "appZygote":Landroid/os/AppZygote;
    if-eqz v1, :cond_2

    .line 2476
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2477
    .local v2, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2478
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 2479
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2480
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2483
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_0

    .line 2485
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2486
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2487
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2491
    .end local v2    # "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void
.end method

.method public static setOomAdj(III)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .line 1582
    if-gtz p0, :cond_0

    .line 1583
    return-void

    .line 1585
    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    .line 1586
    return-void

    .line 1588
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1589
    .local v0, "start":J
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1590
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1591
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1592
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1593
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1594
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1595
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1596
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 1597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW OOM ADJ: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_2
    return-void
.end method

.method public static setOomAdjExt(IIIII)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I
    .param p3, "isSystemApp"    # I
    .param p4, "isMainProc"    # I

    .line 1616
    if-gtz p0, :cond_0

    .line 1617
    return-void

    .line 1619
    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    .line 1620
    return-void

    .line 1622
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1623
    .local v0, "start":J
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1624
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1625
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1626
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1627
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1628
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1629
    invoke-virtual {v2, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1630
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1632
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 1633
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW OOM ADJ: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_2
    return-void
.end method

.method private static sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "dumpPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 4834
    .local p0, "origList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    .line 4835
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4836
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 4837
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4838
    .local v3, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4839
    goto :goto_1

    .line 4841
    :cond_0
    new-instance v4, Landroid/util/Pair;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4836
    .end local v3    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 4844
    .end local v1    # "i":I
    .end local v2    # "size":I
    new-instance v1, Lcom/android/server/am/ProcessList$4;

    invoke-direct {v1}, Lcom/android/server/am/ProcessList$4;-><init>()V

    .line 4866
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4867
    return-object v0
.end method

.method private startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .locals 39
    .param p1, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "zygotePolicyFlags"    # I
    .param p8, "mountExternal"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "requiredAbi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "startTime"    # J

    .line 2582
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v5, p4

    move-wide/from16 v3, p13

    const-wide/16 v6, 0x40

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start proc: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2584
    const-string/jumbo v0, "startProcess: asking zygote to start proc"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2585
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v18

    move/from16 v19, v18

    .line 2586
    .local v19, "isTopApp":Z
    const/4 v0, 0x1

    if-eqz v19, :cond_0

    .line 2590
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    goto :goto_0

    .line 2806
    .end local v19    # "isTopApp":Z
    :catchall_0
    move-exception v0

    move-wide v10, v3

    move-wide/from16 v27, v6

    goto/16 :goto_13

    .line 2595
    .restart local v19    # "isTopApp":Z
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 2596
    .local v8, "bindMountAppStorageDirs":Z
    iget-boolean v9, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2597
    invoke-static {v9}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v9

    if-nez v9, :cond_1

    iget-boolean v9, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v9, :cond_2

    :cond_1
    iget-object v9, v1, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2599
    const-wide/32 v12, 0x89450c5

    invoke-virtual {v9, v12, v13, v11}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v0

    goto :goto_1

    :cond_2
    move v9, v10

    :goto_1
    nop

    .line 2603
    .local v9, "bindMountAppsData":Z
    iget-object v11, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 2608
    .local v11, "pmInt":Landroid/content/pm/PackageManagerInternal;
    iget-boolean v12, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v12, :cond_3

    .line 2609
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    .local v12, "targetPackagesList":[Ljava/lang/String;
    goto :goto_3

    .line 2611
    .end local v12    # "targetPackagesList":[Ljava/lang/String;
    :cond_3
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 2613
    .local v12, "sharedPackages":[Ljava/lang/String;
    array-length v13, v12

    if-nez v13, :cond_4

    .line 2614
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_4
    move-object v13, v12

    :goto_2
    move-object v12, v13

    .line 2617
    .local v12, "targetPackagesList":[Ljava/lang/String;
    :goto_3
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v11, v13}, Lcom/android/server/am/ProcessList;->hasAppStorage(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z

    move-result v13

    move/from16 v26, v13

    .line 2619
    .local v26, "hasAppStorage":Z
    invoke-direct {v1, v11, v12, v5}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v13

    .line 2620
    .local v13, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-nez v13, :cond_5

    .line 2623
    const/4 v9, 0x0

    .line 2628
    :cond_5
    new-instance v14, Landroid/util/ArraySet;

    iget-object v15, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2629
    .local v14, "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v15, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v10

    :goto_4
    if-ge v6, v15, :cond_6

    :try_start_1
    aget-object v7, v12, v6

    .line 2630
    .local v7, "pkg":Ljava/lang/String;
    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2629
    nop

    .end local v7    # "pkg":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2806
    .end local v8    # "bindMountAppStorageDirs":Z
    .end local v9    # "bindMountAppsData":Z
    .end local v11    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v12    # "targetPackagesList":[Ljava/lang/String;
    .end local v13    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v14    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "isTopApp":Z
    .end local v26    # "hasAppStorage":Z
    :catchall_1
    move-exception v0

    move-wide v10, v3

    const-wide/16 v27, 0x40

    goto/16 :goto_13

    .line 2633
    .restart local v8    # "bindMountAppStorageDirs":Z
    .restart local v9    # "bindMountAppsData":Z
    .restart local v11    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v12    # "targetPackagesList":[Ljava/lang/String;
    .restart local v13    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v14    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "isTopApp":Z
    .restart local v26    # "hasAppStorage":Z
    :cond_6
    new-array v6, v10, [Ljava/lang/String;

    .line 2634
    invoke-interface {v14, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 2633
    invoke-direct {v1, v11, v6, v5}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v6

    .line 2635
    .local v6, "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-nez v6, :cond_7

    .line 2638
    const/4 v9, 0x0

    .line 2641
    :cond_7
    if-nez v26, :cond_8

    iget-boolean v7, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez v7, :cond_8

    .line 2642
    const/4 v9, 0x0

    .line 2643
    const/4 v13, 0x0

    .line 2644
    const/4 v6, 0x0

    move/from16 v22, v9

    goto :goto_5

    .line 2647
    :cond_8
    move/from16 v22, v9

    .end local v9    # "bindMountAppsData":Z
    .local v22, "bindMountAppsData":Z
    :goto_5
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2648
    .local v7, "userId":I
    const-class v9, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManagerInternal;

    .line 2650
    .local v9, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-direct {v1, v9, v2}, Lcom/android/server/am/ProcessList;->needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 2653
    if-eqz v13, :cond_9

    invoke-virtual {v9, v7}, Landroid/os/storage/StorageManagerInternal;->isFuseMounted(I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2654
    const/4 v8, 0x1

    move/from16 v23, v8

    goto :goto_6

    .line 2658
    :cond_9
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 2659
    const/4 v8, 0x0

    move/from16 v23, v8

    goto :goto_6

    .line 2650
    :cond_a
    move/from16 v23, v8

    .line 2665
    .end local v8    # "bindMountAppStorageDirs":Z
    .local v23, "bindMountAppStorageDirs":Z
    :goto_6
    iget-boolean v8, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v8, :cond_b

    .line 2666
    const/4 v13, 0x0

    .line 2667
    const/4 v6, 0x0

    move-object/from16 v21, v6

    move-object/from16 v20, v13

    goto :goto_7

    .line 2665
    :cond_b
    move-object/from16 v21, v6

    move-object/from16 v20, v13

    .line 2670
    .end local v6    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v13    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v20, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v21, "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_7
    const/4 v6, 0x0

    .line 2671
    .local v6, "bindOverrideSysprops":Z
    const-string v8, "app_compat"

    const-string v13, "appcompat_sysprop_override_pkgs"

    const-string v15, ""

    invoke-static {v8, v13, v15}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, ","

    .line 2673
    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2674
    .local v8, "syspropOverridePkgNames":[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v13

    .line 2675
    .local v13, "pkgs":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_8
    array-length v0, v13

    if-ge v15, v0, :cond_d

    .line 2676
    aget-object v0, v13, v15

    invoke-static {v8, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2677
    const/4 v6, 0x1

    .line 2678
    move/from16 v24, v6

    goto :goto_9

    .line 2675
    :cond_c
    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    move/from16 v24, v6

    .line 2682
    .end local v6    # "bindOverrideSysprops":Z
    .end local v15    # "i":I
    .local v24, "bindOverrideSysprops":Z
    :goto_9
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    move-object v6, v0

    .line 2683
    .local v6, "ast":Lcom/android/server/AppStateTracker;
    if-eqz v6, :cond_f

    .line 2684
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v0, v15}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result v0

    move v15, v0

    .line 2686
    .local v15, "inBgRestricted":Z
    if-eqz v15, :cond_e

    .line 2687
    iget-object v10, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2688
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2689
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_a

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p2    # "entryPoint":Ljava/lang/String;
    .end local p3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p4    # "uid":I
    .end local p5    # "gids":[I
    .end local p6    # "runtimeFlags":I
    .end local p7    # "zygotePolicyFlags":I
    .end local p8    # "mountExternal":I
    .end local p9    # "seInfo":Ljava/lang/String;
    .end local p10    # "requiredAbi":Ljava/lang/String;
    .end local p11    # "instructionSet":Ljava/lang/String;
    .end local p12    # "invokeWith":Ljava/lang/String;
    .end local p13    # "startTime":J
    throw v0

    .line 2691
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p2    # "entryPoint":Ljava/lang/String;
    .restart local p3    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p4    # "uid":I
    .restart local p5    # "gids":[I
    .restart local p6    # "runtimeFlags":I
    .restart local p7    # "zygotePolicyFlags":I
    .restart local p8    # "mountExternal":I
    .restart local p9    # "seInfo":Ljava/lang/String;
    .restart local p10    # "requiredAbi":Ljava/lang/String;
    .restart local p11    # "instructionSet":Ljava/lang/String;
    .restart local p12    # "invokeWith":Ljava/lang/String;
    .restart local p13    # "startTime":J
    :cond_e
    :goto_a
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v15}, Lcom/android/server/am/ProcessStateRecord;->setBackgroundRestricted(Z)V

    .line 2695
    .end local v15    # "inBgRestricted":Z
    :cond_f
    const/4 v0, 0x0

    .line 2696
    .local v0, "regularZygote":Z
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 2697
    iput-boolean v10, v2, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    .line 2698
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v27

    move-wide/from16 v29, v27

    .line 2699
    .local v29, "forkTimeNs":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v10, :cond_10

    .line 2700
    :try_start_6
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 2704
    const-wide/16 v27, 0x40

    :try_start_7
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v17

    move/from16 v25, v0

    .end local v0    # "regularZygote":Z
    .local v25, "regularZygote":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    const-string/jumbo v3, "seq="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2705
    move-object/from16 v18, v4

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2700
    move-object v3, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v15

    .end local v14    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v15, 0x0

    move-object v4, v6

    .end local v6    # "ast":Lcom/android/server/AppStateTracker;
    .local v4, "ast":Lcom/android/server/AppStateTracker;
    move/from16 v6, p4

    move-object/from16 v33, v3

    move-object/from16 v38, v4

    move/from16 v34, v7

    move-object/from16 v36, v8

    move-object/from16 v35, v9

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v37, v13

    move-object/from16 v4, v18

    move-object/from16 v3, p2

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v18, v0

    .end local v3    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "ast":Lcom/android/server/AppStateTracker;
    .end local v7    # "userId":I
    .end local v8    # "syspropOverridePkgNames":[Ljava/lang/String;
    .end local v9    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v11    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v12    # "targetPackagesList":[Ljava/lang/String;
    .end local v13    # "pkgs":[Ljava/lang/String;
    .local v31, "pmInt":Landroid/content/pm/PackageManagerInternal;
    .local v32, "targetPackagesList":[Ljava/lang/String;
    .local v33, "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v34, "userId":I
    .local v35, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .local v36, "syspropOverridePkgNames":[Ljava/lang/String;
    .local v37, "pkgs":[Ljava/lang/String;
    .local v38, "ast":Lcom/android/server/AppStateTracker;
    invoke-static/range {v3 .. v18}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    move/from16 v5, p4

    move-object v4, v0

    move/from16 v18, v19

    move-object/from16 v19, v21

    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    goto/16 :goto_e

    .line 2806
    .end local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v19    # "isTopApp":Z
    .end local v20    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v21    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v22    # "bindMountAppsData":Z
    .end local v23    # "bindMountAppStorageDirs":Z
    .end local v24    # "bindOverrideSysprops":Z
    .end local v25    # "regularZygote":Z
    .end local v26    # "hasAppStorage":Z
    .end local v29    # "forkTimeNs":J
    .end local v31    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v32    # "targetPackagesList":[Ljava/lang/String;
    .end local v33    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v34    # "userId":I
    .end local v35    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v36    # "syspropOverridePkgNames":[Ljava/lang/String;
    .end local v37    # "pkgs":[Ljava/lang/String;
    .end local v38    # "ast":Lcom/android/server/AppStateTracker;
    :catchall_3
    move-exception v0

    :goto_b
    move/from16 v5, p4

    :goto_c
    move-wide/from16 v10, p13

    goto/16 :goto_13

    :catchall_4
    move-exception v0

    const-wide/16 v27, 0x40

    goto :goto_b

    .line 2706
    .local v0, "regularZygote":Z
    .restart local v6    # "ast":Lcom/android/server/AppStateTracker;
    .restart local v7    # "userId":I
    .restart local v8    # "syspropOverridePkgNames":[Ljava/lang/String;
    .restart local v9    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v11    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v12    # "targetPackagesList":[Ljava/lang/String;
    .restart local v13    # "pkgs":[Ljava/lang/String;
    .restart local v14    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "isTopApp":Z
    .restart local v20    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v21    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v22    # "bindMountAppsData":Z
    .restart local v23    # "bindMountAppStorageDirs":Z
    .restart local v24    # "bindOverrideSysprops":Z
    .restart local v26    # "hasAppStorage":Z
    .restart local v29    # "forkTimeNs":J
    :cond_10
    move/from16 v25, v0

    move-object/from16 v38, v6

    move/from16 v34, v7

    move-object/from16 v36, v8

    move-object/from16 v35, v9

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v37, v13

    move-object/from16 v33, v14

    const-wide/16 v27, 0x40

    .end local v0    # "regularZygote":Z
    .end local v6    # "ast":Lcom/android/server/AppStateTracker;
    .end local v7    # "userId":I
    .end local v8    # "syspropOverridePkgNames":[Ljava/lang/String;
    .end local v9    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v11    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v12    # "targetPackagesList":[Ljava/lang/String;
    .end local v13    # "pkgs":[Ljava/lang/String;
    .end local v14    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v25    # "regularZygote":Z
    .restart local v31    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v32    # "targetPackagesList":[Ljava/lang/String;
    .restart local v33    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v34    # "userId":I
    .restart local v35    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v36    # "syspropOverridePkgNames":[Ljava/lang/String;
    .restart local v37    # "pkgs":[Ljava/lang/String;
    .restart local v38    # "ast":Lcom/android/server/AppStateTracker;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2707
    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v3

    .line 2710
    .local v3, "appZygote":Landroid/os/AppZygote;
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2714
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seq="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2710
    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v16, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v0

    .end local v20    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v21    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v16, "isTopApp":Z
    .local v18, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v19, "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-virtual/range {v3 .. v20}, Landroid/os/AppZygote;->startProcess(Ljava/lang/String;Ljava/lang/String;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[JLjava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    move-object/from16 v20, v18

    move/from16 v18, v16

    .line 2717
    .end local v3    # "appZygote":Landroid/os/AppZygote;
    .end local v16    # "isTopApp":Z
    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    .local v18, "isTopApp":Z
    .restart local v20    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move/from16 v5, p4

    move-object v4, v0

    goto/16 :goto_e

    .line 2718
    .end local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v18    # "isTopApp":Z
    .local v19, "isTopApp":Z
    .restart local v21    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_11
    move/from16 v18, v19

    move-object/from16 v19, v21

    .end local v21    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v18    # "isTopApp":Z
    .local v19, "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    const/4 v0, 0x1

    .line 2719
    .end local v25    # "regularZygote":Z
    .local v0, "regularZygote":Z
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2723
    move-object/from16 v21, v19

    .end local v19    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v21    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2726
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2719
    move/from16 v6, p4

    move/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v17, p7

    move/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v15, p12

    move-object/from16 v16, v3

    move-object/from16 v3, p2

    :try_start_8
    invoke-static/range {v3 .. v25}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v4

    move-object/from16 v19, v21

    .line 2728
    .end local v21    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v4, "startResult":Landroid/os/Process$ProcessStartResult;
    .restart local v19    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 2731
    iget v3, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    if-lez v3, :cond_12

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2732
    sget-object v3, Lcom/android/server/am/ProcessList;->sHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/am/ProcessList$3;

    invoke-direct {v6, v1, v2, v4}, Lcom/android/server/am/ProcessList$3;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;)V

    const-wide/16 v7, 0x32

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 2806
    .end local v0    # "regularZygote":Z
    .end local v4    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v18    # "isTopApp":Z
    .end local v19    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v20    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v22    # "bindMountAppsData":Z
    .end local v23    # "bindMountAppStorageDirs":Z
    .end local v24    # "bindOverrideSysprops":Z
    .end local v26    # "hasAppStorage":Z
    .end local v29    # "forkTimeNs":J
    .end local v31    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v32    # "targetPackagesList":[Ljava/lang/String;
    .end local v33    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v34    # "userId":I
    .end local v35    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v36    # "syspropOverridePkgNames":[Ljava/lang/String;
    .end local v37    # "pkgs":[Ljava/lang/String;
    .end local v38    # "ast":Lcom/android/server/AppStateTracker;
    :catchall_5
    move-exception v0

    goto/16 :goto_c

    .line 2751
    .restart local v0    # "regularZygote":Z
    .restart local v4    # "startResult":Landroid/os/Process$ProcessStartResult;
    .restart local v18    # "isTopApp":Z
    .restart local v19    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v20    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v22    # "bindMountAppsData":Z
    .restart local v23    # "bindMountAppStorageDirs":Z
    .restart local v24    # "bindOverrideSysprops":Z
    .restart local v26    # "hasAppStorage":Z
    .restart local v29    # "forkTimeNs":J
    .restart local v31    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v32    # "targetPackagesList":[Ljava/lang/String;
    .restart local v33    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v34    # "userId":I
    .restart local v35    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v36    # "syspropOverridePkgNames":[Ljava/lang/String;
    .restart local v37    # "pkgs":[Ljava/lang/String;
    .restart local v38    # "ast":Lcom/android/server/AppStateTracker;
    :cond_12
    :goto_d
    move/from16 v25, v0

    .end local v0    # "regularZygote":Z
    .restart local v25    # "regularZygote":Z
    :goto_e
    nop

    .line 2752
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    move-wide/from16 v6, v29

    const/4 v3, 0x1

    .end local v29    # "forkTimeNs":J
    .local v6, "forkTimeNs":J
    invoke-virtual {v0, v2, v6, v7, v3}, Lcom/android/server/am/AppStartInfoTracker;->addTimestampToStart(Lcom/android/server/am/ProcessRecord;JI)V

    .line 2756
    if-nez v25, :cond_16

    .line 2758
    monitor-enter p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 2759
    :try_start_9
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    if-nez v0, :cond_15

    .line 2761
    iget v0, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-static {v5, v0}, Landroid/os/Process;->createProcessGroup(II)I

    move-result v0

    .line 2762
    .local v0, "res":I
    if-gez v0, :cond_14

    .line 2763
    sget v3, Landroid/system/OsConstants;->ESRCH:I

    neg-int v3, v3

    if-ne v0, v3, :cond_13

    .line 2764
    const-string v3, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create process group for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 2775
    .end local v0    # "res":I
    :catchall_6
    move-exception v0

    goto :goto_10

    .line 2768
    .restart local v0    # "res":I
    :cond_13
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create process group for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v4    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v6    # "forkTimeNs":J
    .end local v18    # "isTopApp":Z
    .end local v19    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v20    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v22    # "bindMountAppsData":Z
    .end local v23    # "bindMountAppStorageDirs":Z
    .end local v24    # "bindOverrideSysprops":Z
    .end local v25    # "regularZygote":Z
    .end local v26    # "hasAppStorage":Z
    .end local v31    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v32    # "targetPackagesList":[Ljava/lang/String;
    .end local v33    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v34    # "userId":I
    .end local v35    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v36    # "syspropOverridePkgNames":[Ljava/lang/String;
    .end local v37    # "pkgs":[Ljava/lang/String;
    .end local v38    # "ast":Lcom/android/server/AppStateTracker;
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p2    # "entryPoint":Ljava/lang/String;
    .end local p3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p4    # "uid":I
    .end local p5    # "gids":[I
    .end local p6    # "runtimeFlags":I
    .end local p7    # "zygotePolicyFlags":I
    .end local p8    # "mountExternal":I
    .end local p9    # "seInfo":Ljava/lang/String;
    .end local p10    # "requiredAbi":Ljava/lang/String;
    .end local p11    # "instructionSet":Ljava/lang/String;
    .end local p12    # "invokeWith":Ljava/lang/String;
    .end local p13    # "startTime":J
    throw v3

    .line 2772
    .restart local v4    # "startResult":Landroid/os/Process$ProcessStartResult;
    .restart local v6    # "forkTimeNs":J
    .restart local v18    # "isTopApp":Z
    .restart local v19    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v20    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v22    # "bindMountAppsData":Z
    .restart local v23    # "bindMountAppStorageDirs":Z
    .restart local v24    # "bindOverrideSysprops":Z
    .restart local v25    # "regularZygote":Z
    .restart local v26    # "hasAppStorage":Z
    .restart local v31    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v32    # "targetPackagesList":[Ljava/lang/String;
    .restart local v33    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v34    # "userId":I
    .restart local v35    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v36    # "syspropOverridePkgNames":[Ljava/lang/String;
    .restart local v37    # "pkgs":[Ljava/lang/String;
    .restart local v38    # "ast":Lcom/android/server/AppStateTracker;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p2    # "entryPoint":Ljava/lang/String;
    .restart local p3    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p4    # "uid":I
    .restart local p5    # "gids":[I
    .restart local p6    # "runtimeFlags":I
    .restart local p7    # "zygotePolicyFlags":I
    .restart local p8    # "mountExternal":I
    .restart local p9    # "seInfo":Ljava/lang/String;
    .restart local p10    # "requiredAbi":Ljava/lang/String;
    .restart local p11    # "instructionSet":Ljava/lang/String;
    .restart local p12    # "invokeWith":Ljava/lang/String;
    .restart local p13    # "startTime":J
    :cond_14
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 2775
    .end local v0    # "res":I
    :cond_15
    :goto_f
    monitor-exit p3

    goto :goto_11

    :goto_10
    monitor-exit p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p2    # "entryPoint":Ljava/lang/String;
    .end local p3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p4    # "uid":I
    .end local p5    # "gids":[I
    .end local p6    # "runtimeFlags":I
    .end local p7    # "zygotePolicyFlags":I
    .end local p8    # "mountExternal":I
    .end local p9    # "seInfo":Ljava/lang/String;
    .end local p10    # "requiredAbi":Ljava/lang/String;
    .end local p11    # "instructionSet":Ljava/lang/String;
    .end local p12    # "invokeWith":Ljava/lang/String;
    .end local p13    # "startTime":J
    :try_start_a
    throw v0

    .line 2781
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p2    # "entryPoint":Ljava/lang/String;
    .restart local p3    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p4    # "uid":I
    .restart local p5    # "gids":[I
    .restart local p6    # "runtimeFlags":I
    .restart local p7    # "zygotePolicyFlags":I
    .restart local p8    # "mountExternal":I
    .restart local p9    # "seInfo":Ljava/lang/String;
    .restart local p10    # "requiredAbi":Ljava/lang/String;
    .restart local p11    # "instructionSet":Ljava/lang/String;
    .restart local p12    # "invokeWith":Ljava/lang/String;
    .restart local p13    # "startTime":J
    :cond_16
    :goto_11
    if-eqz v23, :cond_17

    .line 2782
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move/from16 v8, v34

    move-object/from16 v9, v35

    .end local v34    # "userId":I
    .end local v35    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .local v8, "userId":I
    .restart local v9    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v9, v8, v0, v3}, Landroid/os/storage/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    goto :goto_12

    .line 2781
    .end local v8    # "userId":I
    .end local v9    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v34    # "userId":I
    .restart local v35    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_17
    move/from16 v8, v34

    move-object/from16 v9, v35

    .line 2786
    .end local v34    # "userId":I
    .end local v35    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v8    # "userId":I
    .restart local v9    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :goto_12
    sget-object v0, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    if-eqz v0, :cond_19

    .line 2789
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2791
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "next-activity"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2792
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "next-top-activity"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2797
    :cond_18
    if-eqz v4, :cond_19

    .line 2798
    sget-object v0, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v10, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    const/16 v11, 0x65

    const/16 v12, 0x1081

    invoke-virtual {v0, v12, v3, v10, v11}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2803
    :cond_19
    const-string/jumbo v0, "startProcess: returned from zygote!"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-wide/from16 v10, p13

    :try_start_b
    invoke-direct {v1, v10, v11, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 2804
    nop

    .line 2806
    invoke-static/range {v27 .. v28}, Landroid/os/Trace;->traceEnd(J)V

    .line 2804
    return-object v4

    .line 2806
    .end local v4    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v6    # "forkTimeNs":J
    .end local v8    # "userId":I
    .end local v9    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v18    # "isTopApp":Z
    .end local v19    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v20    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v22    # "bindMountAppsData":Z
    .end local v23    # "bindMountAppStorageDirs":Z
    .end local v24    # "bindOverrideSysprops":Z
    .end local v25    # "regularZygote":Z
    .end local v26    # "hasAppStorage":Z
    .end local v31    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v32    # "targetPackagesList":[Ljava/lang/String;
    .end local v33    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v36    # "syspropOverridePkgNames":[Ljava/lang/String;
    .end local v37    # "pkgs":[Ljava/lang/String;
    .end local v38    # "ast":Lcom/android/server/AppStateTracker;
    :catchall_7
    move-exception v0

    :goto_13
    invoke-static/range {v27 .. v28}, Landroid/os/Trace;->traceEnd(J)V

    .line 2807
    throw v0
.end method

.method public static startPsiMonitoringAfterBoot()V
    .locals 2

    .line 1832
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1833
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1834
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1835
    return-void
.end method

.method private static unfreezePackageCgroup(I)Z
    .locals 1
    .param p0, "packageUID"    # I

    .line 3208
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/ProcessList;->freezePackageCgroup(IZ)Z

    move-result v0

    return v0
.end method

.method private updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V
    .locals 21
    .param p1, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "topI"    # I
    .param p3, "bottomI"    # I
    .param p4, "endIndex"    # I

    .line 3924
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3925
    .local v3, "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v4

    if-nez v4, :cond_26

    .line 3926
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v16, v3

    goto/16 :goto_12

    .line 3932
    :cond_0
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3933
    .local v4, "uid":I
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v5

    .line 3934
    .local v5, "topConnectionGroup":I
    const-string v6, " @ "

    const-string v7, " group="

    const-string v8, "ActivityManager"

    if-lez v5, :cond_b

    .line 3935
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v9

    .line 3936
    .local v9, "endImportance":I
    move/from16 v10, p4

    move v11, v10

    move v10, v9

    move/from16 v9, p4

    .end local p4    # "endIndex":I
    .local v9, "endIndex":I
    .local v10, "endImportance":I
    .local v11, "i":I
    :goto_0
    if-lt v11, v2, :cond_a

    .line 3937
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 3938
    .local v12, "subProc":Lcom/android/server/am/ProcessRecord;
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3939
    .local v13, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v14

    .line 3940
    .local v14, "subConnectionGroup":I
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v15

    .line 3941
    .local v15, "subConnectionImportance":I
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v4, :cond_9

    if-ne v14, v5, :cond_9

    .line 3943
    if-ne v11, v9, :cond_2

    if-lt v15, v10, :cond_2

    .line 3947
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local v16, "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    const-string v3, "Keeping in-place above "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " endImportance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " importance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_1
    move-object/from16 v16, v3

    .line 3952
    .end local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_1
    add-int/lit8 v9, v9, -0x1

    .line 3953
    move v1, v15

    move v10, v1

    move/from16 v17, v5

    .end local v10    # "endImportance":I
    .local v1, "endImportance":I
    goto/16 :goto_5

    .line 3943
    .end local v1    # "endImportance":I
    .end local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v10    # "endImportance":I
    :cond_2
    move-object/from16 v16, v3

    .line 3957
    .end local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulling up "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to position in group with importance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    :cond_3
    const/4 v1, 0x0

    .line 3962
    .local v1, "moved":Z
    move/from16 v3, p2

    .local v3, "pos":I
    :goto_2
    move/from16 p4, v1

    .end local v1    # "moved":Z
    .local p4, "moved":Z
    const-string v1, " from position "

    move/from16 v17, v5

    .end local v5    # "topConnectionGroup":I
    .local v17, "topConnectionGroup":I
    const-string v5, "Moving "

    if-le v3, v9, :cond_6

    .line 3963
    move/from16 v18, v9

    .end local v9    # "endIndex":I
    .local v18, "endIndex":I
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 3964
    .local v9, "posProc":Lcom/android/server/am/ProcessRecord;
    move/from16 v19, v10

    .end local v10    # "endImportance":I
    .local v19, "endImportance":I
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3965
    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v10

    if-gt v15, v10, :cond_5

    .line 3966
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3967
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3968
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v20, v13

    .end local v13    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local v20, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    const-string v13, " to above "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v20    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v13    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_4
    move-object/from16 v20, v13

    .line 3972
    .end local v13    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v20    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_3
    const/4 v10, 0x1

    .line 3973
    .end local p4    # "moved":Z
    .local v10, "moved":Z
    add-int/lit8 v13, v18, -0x1

    .line 3974
    .end local v18    # "endIndex":I
    .local v13, "endIndex":I
    move v9, v13

    goto :goto_4

    .line 3965
    .end local v10    # "moved":Z
    .end local v20    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local v13, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v18    # "endIndex":I
    .restart local p4    # "moved":Z
    :cond_5
    move-object/from16 v20, v13

    .line 3962
    .end local v9    # "posProc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v20    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    add-int/lit8 v3, v3, -0x1

    move/from16 v1, p4

    move/from16 v5, v17

    move/from16 v9, v18

    move/from16 v10, v19

    goto :goto_2

    .end local v18    # "endIndex":I
    .end local v19    # "endImportance":I
    .end local v20    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local v9, "endIndex":I
    .local v10, "endImportance":I
    .restart local v13    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_6
    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v20, v13

    .end local v9    # "endIndex":I
    .end local v10    # "endImportance":I
    .end local v13    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v18    # "endIndex":I
    .restart local v19    # "endImportance":I
    .restart local v20    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    move/from16 v10, p4

    .line 3977
    .end local v3    # "pos":I
    .end local v18    # "endIndex":I
    .end local p4    # "moved":Z
    .restart local v9    # "endIndex":I
    .local v10, "moved":Z
    :goto_4
    if-nez v10, :cond_8

    .line 3979
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3980
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v9, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3981
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to end of group @ "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    :cond_7
    add-int/lit8 v9, v9, -0x1

    .line 3986
    move v1, v15

    move v10, v1

    .end local v19    # "endImportance":I
    .local v1, "endImportance":I
    goto :goto_5

    .line 3977
    .end local v1    # "endImportance":I
    .restart local v19    # "endImportance":I
    :cond_8
    move/from16 v10, v19

    goto :goto_5

    .line 3941
    .end local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v17    # "topConnectionGroup":I
    .end local v19    # "endImportance":I
    .end local v20    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local v3, "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v5    # "topConnectionGroup":I
    .local v10, "endImportance":I
    .restart local v13    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_9
    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v20, v13

    .line 3936
    .end local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v5    # "topConnectionGroup":I
    .end local v9    # "endIndex":I
    .end local v10    # "endImportance":I
    .end local v12    # "subProc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v14    # "subConnectionGroup":I
    .end local v15    # "subConnectionImportance":I
    .restart local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v17    # "topConnectionGroup":I
    .restart local v18    # "endIndex":I
    .restart local v19    # "endImportance":I
    move/from16 v9, v18

    move/from16 v10, v19

    .end local v18    # "endIndex":I
    .end local v19    # "endImportance":I
    .restart local v9    # "endIndex":I
    .restart local v10    # "endImportance":I
    :goto_5
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move/from16 v5, v17

    goto/16 :goto_0

    .end local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v17    # "topConnectionGroup":I
    .restart local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v5    # "topConnectionGroup":I
    :cond_a
    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v9

    move/from16 v19, v10

    .end local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v5    # "topConnectionGroup":I
    .end local v9    # "endIndex":I
    .end local v10    # "endImportance":I
    .restart local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v17    # "topConnectionGroup":I
    .restart local v18    # "endIndex":I
    .restart local v19    # "endImportance":I
    goto :goto_6

    .line 3934
    .end local v11    # "i":I
    .end local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v17    # "topConnectionGroup":I
    .end local v18    # "endIndex":I
    .end local v19    # "endImportance":I
    .restart local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v5    # "topConnectionGroup":I
    .local p4, "endIndex":I
    :cond_b
    move-object/from16 v16, v3

    move/from16 v17, v5

    .end local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v5    # "topConnectionGroup":I
    .restart local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v17    # "topConnectionGroup":I
    move/from16 v18, p4

    .line 3995
    .end local p4    # "endIndex":I
    .restart local v18    # "endIndex":I
    :goto_6
    move/from16 v1, v18

    move/from16 v3, v18

    .line 3996
    .end local v18    # "endIndex":I
    .local v1, "i":I
    .local v3, "endIndex":I
    :goto_7
    if-lt v1, v2, :cond_25

    .line 3997
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 3998
    .local v5, "subProc":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3999
    .local v9, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v10

    .line 4000
    .local v10, "subConnectionGroup":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Looking to spread old procs, at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    :cond_c
    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v11, v4, :cond_24

    .line 4006
    if-ge v1, v3, :cond_1b

    .line 4007
    const/4 v11, 0x0

    .line 4008
    .local v11, "hasActivity":Z
    const/4 v12, 0x0

    .line 4009
    .local v12, "connUid":I
    const/4 v13, 0x0

    .line 4010
    .local v13, "connGroup":I
    :goto_8
    iget-object v14, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v14, v4, :cond_1b

    .line 4011
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4012
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4013
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Different app, moving to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    :cond_d
    add-int/lit8 v1, v1, -0x1

    .line 4016
    if-ge v1, v2, :cond_e

    .line 4017
    goto/16 :goto_c

    .line 4019
    :cond_e
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v5, v14

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 4020
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_f

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Looking at next app at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    :cond_f
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v14

    if-nez v14, :cond_17

    .line 4023
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v14

    if-eqz v14, :cond_10

    goto/16 :goto_a

    .line 4033
    :cond_10
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 4034
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_11

    const-string v14, "This is a client of an activity"

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    :cond_11
    if-eqz v11, :cond_15

    .line 4037
    if-eqz v12, :cond_12

    iget-object v14, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v12, v14, :cond_13

    :cond_12
    goto :goto_9

    .line 4044
    :cond_13
    if-eqz v13, :cond_14

    if-eq v13, v10, :cond_1a

    .line 4047
    :cond_14
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_1b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Already found a different group: connGroup="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4040
    :goto_9
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_1b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Already found a different activity: connUid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4053
    :cond_15
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_16

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "This is an activity client!  uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    :cond_16
    const/4 v11, 0x1

    .line 4057
    iget-object v14, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4058
    move v13, v10

    goto :goto_b

    .line 4024
    :cond_17
    :goto_a
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_18

    const-string v14, "This is hosting an activity!"

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    :cond_18
    if-eqz v11, :cond_19

    .line 4028
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_1b

    const-string v14, "Already found an activity, done"

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4032
    :cond_19
    const/4 v11, 0x1

    .line 4061
    :cond_1a
    :goto_b
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_8

    .line 4068
    .end local v11    # "hasActivity":Z
    .end local v12    # "connUid":I
    .end local v13    # "connGroup":I
    :cond_1b
    :goto_c
    add-int/lit8 v3, v3, -0x1

    if-lt v3, v2, :cond_1d

    .line 4069
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 4070
    .local v11, "endProc":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v12, v4, :cond_1c

    .line 4071
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_1d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found next group of app: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 4070
    :cond_1c
    nop

    .end local v11    # "endProc":Lcom/android/server/am/ProcessRecord;
    goto :goto_c

    .line 4077
    :cond_1d
    :goto_d
    if-lt v3, v2, :cond_22

    .line 4078
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 4079
    .restart local v11    # "endProc":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4080
    .local v12, "endPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v13

    .line 4081
    .local v13, "endConnectionGroup":I
    add-int/lit8 v3, v3, -0x1

    :goto_e
    if-lt v3, v2, :cond_21

    .line 4082
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 4083
    .local v14, "nextEndProc":Lcom/android/server/am/ProcessRecord;
    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v15

    .line 4084
    .local v15, "nextConnectionGroup":I
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v4, :cond_1e

    if-eq v15, v13, :cond_1f

    :cond_1e
    goto :goto_f

    .line 4081
    .end local v14    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "nextConnectionGroup":I
    :cond_1f
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    goto :goto_e

    .line 4086
    .restart local v14    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "nextConnectionGroup":I
    :goto_f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p4, v1

    .end local v1    # "i":I
    .local p4, "i":I
    const-string v1, "Found next group or app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .end local p4    # "i":I
    .restart local v1    # "i":I
    :cond_20
    move/from16 p4, v1

    .end local v1    # "i":I
    .restart local p4    # "i":I
    goto :goto_10

    .line 4081
    .end local v14    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "nextConnectionGroup":I
    .end local p4    # "i":I
    .restart local v1    # "i":I
    :cond_21
    move/from16 p4, v1

    .end local v1    # "i":I
    .restart local p4    # "i":I
    goto :goto_10

    .line 4077
    .end local v11    # "endProc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "endPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v13    # "endConnectionGroup":I
    .end local p4    # "i":I
    .restart local v1    # "i":I
    :cond_22
    move/from16 p4, v1

    .line 4093
    .end local v1    # "i":I
    .restart local p4    # "i":I
    :goto_10
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bumping scan position to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    :cond_23
    move v0, v3

    move v1, v0

    .end local p4    # "i":I
    .local v0, "i":I
    goto :goto_11

    .line 4097
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_24
    add-int/lit8 v1, v1, -0x1

    .line 4099
    .end local v5    # "subProc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v10    # "subConnectionGroup":I
    :goto_11
    move-object/from16 v0, p0

    goto/16 :goto_7

    .line 4100
    :cond_25
    return-void

    .line 3925
    .end local v1    # "i":I
    .end local v4    # "uid":I
    .end local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v17    # "topConnectionGroup":I
    .local v3, "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local p4, "endIndex":I
    :cond_26
    move-object/from16 v16, v3

    .line 3929
    .end local v3    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v16    # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_12
    return-void
.end method

.method public static final updateLmkProps()V
    .locals 2

    .line 1770
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1771
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1773
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1774
    return-void
.end method

.method private updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V
    .locals 17
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "hasActivity"    # Z
    .param p4, "hasService"    # Z

    .line 4129
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    iget v1, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const/4 v8, 0x1

    add-int/2addr v1, v8

    iput v1, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 4130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4131
    .local v2, "now":J
    iget-object v9, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4132
    .local v9, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v6, v2, v3}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    .line 4136
    const-string v1, "ActivityManager"

    if-eqz p3, :cond_2

    .line 4137
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4138
    .local v4, "N":I
    if-lez v4, :cond_1

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v6, :cond_1

    .line 4139
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not moving, already top activity: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    :cond_0
    return-void

    .line 4142
    .end local v4    # "N":I
    :cond_1
    goto :goto_0

    .line 4143
    :cond_2
    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    nop

    if-lez v4, :cond_4

    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iget v5, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v5, v8

    .line 4144
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_4

    .line 4145
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not moving, already top other: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    :cond_3
    return-void

    .line 4150
    :cond_4
    :goto_0
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v10

    .line 4152
    .local v10, "lrui":I
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v4

    if-eqz v4, :cond_6

    if-ltz v10, :cond_6

    .line 4155
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not moving, persistent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    :cond_5
    return-void

    .line 4193
    :cond_6
    if-ltz v10, :cond_9

    .line 4194
    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v10, v4, :cond_7

    .line 4195
    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4197
    :cond_7
    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v10, v4, :cond_8

    .line 4198
    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4208
    :cond_8
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4222
    :cond_9
    const/4 v4, -0x1

    .line 4223
    .local v4, "nextActivityIndex":I
    const/4 v11, 0x0

    if-eqz p3, :cond_10

    .line 4224
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4225
    .local v5, "N":I
    iget v12, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4226
    .local v12, "nextIndex":I
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v13

    if-nez v13, :cond_e

    iget v13, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/lit8 v14, v5, -0x1

    if-ge v13, v14, :cond_e

    .line 4230
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    nop

    if-eqz v13, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding to second-top of LRU activity list: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " group="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4232
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " importance="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4233
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4230
    invoke-static {v1, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    :cond_a
    add-int/lit8 v1, v5, -0x1

    .line 4235
    .local v1, "pos":I
    :goto_1
    iget v13, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v1, v13, :cond_c

    .line 4236
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 4237
    .local v13, "posproc":Lcom/android/server/am/ProcessRecord;
    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v14, v15, :cond_b

    .line 4241
    goto :goto_2

    .line 4243
    :cond_b
    nop

    .end local v13    # "posproc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v1, v1, -0x1

    .line 4244
    goto :goto_1

    .line 4245
    :cond_c
    :goto_2
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4248
    add-int/lit8 v13, v1, -0x1

    .line 4249
    .local v13, "endIndex":I
    iget v14, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v13, v14, :cond_d

    .line 4250
    iget v13, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4252
    :cond_d
    move v4, v13

    .line 4253
    iget v14, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-direct {v0, v6, v1, v14, v13}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    .line 4254
    .end local v1    # "pos":I
    .end local v13    # "endIndex":I
    goto :goto_3

    .line 4256
    :cond_e
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v13, :cond_f

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding to top of LRU activity list: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    :cond_f
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4258
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    move v4, v1

    .line 4260
    .end local v5    # "N":I
    :goto_3
    move v13, v12

    move v12, v4

    goto/16 :goto_4

    .end local v12    # "nextIndex":I
    :cond_10
    if-eqz p4, :cond_12

    .line 4262
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding to top of LRU service list: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    :cond_11
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iget v5, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4264
    iget v12, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4265
    .restart local v12    # "nextIndex":I
    iget v1, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    move v13, v12

    move v12, v4

    goto/16 :goto_4

    .line 4268
    .end local v12    # "nextIndex":I
    :cond_12
    iget v5, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4269
    .local v5, "index":I
    if-eqz v7, :cond_15

    .line 4272
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v12

    .line 4273
    .local v12, "clientIndex":I
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v13, :cond_13

    if-gez v12, :cond_13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown client "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " when updating "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    :cond_13
    if-gt v12, v10, :cond_14

    .line 4278
    move v12, v10

    .line 4280
    :cond_14
    if-ltz v12, :cond_15

    if-le v5, v12, :cond_15

    .line 4281
    move v5, v12

    .line 4284
    .end local v12    # "clientIndex":I
    :cond_15
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " of LRU list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    :cond_16
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4286
    add-int/lit8 v12, v5, -0x1

    .line 4287
    .local v12, "nextIndex":I
    iget v1, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4288
    iget v1, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4289
    if-le v5, v8, :cond_17

    .line 4290
    iget v1, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v1, v8

    add-int/lit8 v13, v5, -0x1

    invoke-direct {v0, v6, v1, v11, v13}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    .line 4294
    .end local v5    # "index":I
    :cond_17
    move v13, v12

    move v12, v4

    .end local v4    # "nextActivityIndex":I
    .local v12, "nextActivityIndex":I
    .local v13, "nextIndex":I
    :goto_4
    iget v1, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v6, v1}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    .line 4302
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v4

    iget-object v5, v6, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 4303
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v1, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v14, v1

    .line 4307
    .local v14, "indices":Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v1

    sub-int/2addr v1, v8

    move v15, v1

    .local v15, "j":I
    :goto_5
    if-ltz v15, :cond_1d

    .line 4308
    invoke-virtual {v9, v15}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v5

    .line 4309
    .local v5, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v1, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v1, :cond_1b

    iget-boolean v1, v5, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v1, :cond_1b

    iget-object v1, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v1, :cond_1b

    iget-object v1, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1b

    iget-object v1, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4311
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v1

    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v1, v4, :cond_1a

    .line 4312
    move/from16 v16, v12

    .end local v12    # "nextActivityIndex":I
    .local v16, "nextActivityIndex":I
    const-wide v11, 0x440000130L

    invoke-virtual {v5, v11, v12}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(J)Z

    move-result v1

    nop

    if-eqz v1, :cond_1c

    iget-object v1, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4313
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 4314
    iget-object v1, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4315
    if-ltz v16, :cond_18

    .line 4316
    iget-object v1, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "service connection"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    invoke-virtual {v14, v1, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    goto :goto_6

    .line 4315
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    goto :goto_6

    .line 4320
    :cond_19
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "service connection"

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v14, v1, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_6

    .line 4311
    .end local v16    # "nextActivityIndex":I
    .restart local v12    # "nextActivityIndex":I
    :cond_1a
    move/from16 v16, v12

    .end local v12    # "nextActivityIndex":I
    .restart local v16    # "nextActivityIndex":I
    goto :goto_6

    .line 4309
    .end local v16    # "nextActivityIndex":I
    .restart local v12    # "nextActivityIndex":I
    :cond_1b
    move/from16 v16, v12

    .line 4307
    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v12    # "nextActivityIndex":I
    .restart local v16    # "nextActivityIndex":I
    :cond_1c
    :goto_6
    add-int/lit8 v15, v15, -0x1

    move/from16 v12, v16

    const/4 v11, 0x0

    goto/16 :goto_5

    .end local v16    # "nextActivityIndex":I
    .restart local v12    # "nextActivityIndex":I
    :cond_1d
    move/from16 v16, v12

    .line 4325
    .end local v12    # "nextActivityIndex":I
    .end local v15    # "j":I
    .restart local v16    # "nextActivityIndex":I
    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 4326
    .local v11, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v11}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v1

    sub-int/2addr v1, v8

    move v8, v1

    .local v8, "j":I
    :goto_7
    if-ltz v8, :cond_1f

    .line 4327
    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v1

    iget-object v5, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 4328
    .local v5, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v1, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1e

    iget-object v1, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v1

    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v1, v4, :cond_1e

    iget-object v1, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 4329
    iget-object v1, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "provider reference"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v14, v1, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_8

    .line 4328
    :cond_1e
    const/4 v4, 0x0

    .line 4326
    .end local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_8
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v6, p1

    goto :goto_7

    :cond_1f
    nop

    .line 4333
    .end local v8    # "j":I
    move/from16 v4, v16

    .end local v16    # "nextActivityIndex":I
    .restart local v4    # "nextActivityIndex":I
    invoke-direct {v0, v14, v4, v13}, Lcom/android/server/am/ProcessList;->completeLruProcessInternalLSP(Landroid/util/SparseBooleanArray;II)V

    .line 4334
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 18
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .line 1079
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v3, 0x15e

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43af0000    # 350.0f

    div-float/2addr v1, v2

    .line 1082
    .local v1, "scaleMem":F
    const v2, 0x5dc00

    .line 1083
    .local v2, "minSize":I
    const v3, 0xfa000

    .line 1084
    .local v3, "maxSize":I
    mul-int v4, p1, p2

    int-to-float v4, v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1091
    .local v4, "scaleDisp":F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 1092
    .local v5, "scale":F
    :goto_0
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 1093
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1094
    :cond_2
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1096
    .local v6, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00c4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1102
    .local v7, "minfree_abs":I
    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x0

    if-lez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v9

    .line 1104
    .local v8, "is64bit":Z
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v12

    const/4 v13, 0x4

    if-ge v11, v12, :cond_6

    .line 1105
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v12, v12, v11

    .line 1106
    .local v12, "low":I
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v14, v14, v11

    .line 1107
    .local v14, "high":I
    if-eqz v8, :cond_5

    .line 1109
    if-ne v11, v13, :cond_4

    mul-int/lit8 v13, v14, 0x3

    div-int/lit8 v14, v13, 0x2

    goto :goto_4

    .line 1110
    :cond_4
    const/4 v15, 0x5

    if-ne v11, v15, :cond_5

    mul-int/lit8 v15, v14, 0x7

    div-int/lit8 v14, v15, 0x4

    .line 1112
    :cond_5
    :goto_4
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v15, v12

    const/16 v16, 0x1

    sub-int v10, v14, v12

    int-to-float v10, v10

    mul-float/2addr v10, v5

    add-float/2addr v15, v10

    float-to-int v10, v15

    aput v10, v13, v11

    .line 1104
    .end local v12    # "low":I
    .end local v14    # "high":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    const/16 v16, 0x1

    .line 1115
    .end local v11    # "i":I
    if-ltz v7, :cond_7

    .line 1116
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v11, v11

    if-ge v10, v11, :cond_7

    .line 1117
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v12, v7

    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v14, v10

    int-to-float v14, v14

    mul-float/2addr v12, v14

    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    int-to-float v14, v14

    div-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v11, v10

    .line 1116
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1122
    .end local v10    # "i":I
    :cond_7
    if-eqz v6, :cond_a

    .line 1123
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v11, v11

    if-ge v10, v11, :cond_9

    .line 1124
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v12, v11, v10

    int-to-float v14, v6

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v15, v15, v10

    int-to-float v15, v15

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move/from16 v17, v13

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget v13, v15, v13

    int-to-float v13, v13

    div-float/2addr v14, v13

    float-to-int v13, v14

    add-int/2addr v12, v13

    aput v12, v11, v10

    .line 1126
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v11, v11, v10

    if-gez v11, :cond_8

    .line 1127
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aput v9, v11, v10

    .line 1123
    :cond_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v17

    goto :goto_6

    :cond_9
    move/from16 v17, v13

    goto :goto_7

    .line 1122
    .end local v10    # "i":I
    :cond_a
    move/from16 v17, v13

    .line 1135
    :goto_7
    const/16 v10, 0x3e7

    invoke-virtual {v0, v10}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3

    div-long/2addr v10, v12

    iput-wide v10, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 1139
    mul-int v10, p1, p2

    mul-int/lit8 v10, v10, 0x4

    mul-int/lit8 v10, v10, 0x3

    div-int/lit16 v10, v10, 0x400

    .line 1140
    .local v10, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e009d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 1142
    .local v11, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e009c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 1145
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_b

    .line 1146
    move v10, v12

    .line 1149
    :cond_b
    if-eqz v11, :cond_c

    .line 1150
    add-int/2addr v10, v11

    .line 1151
    if-gez v10, :cond_c

    .line 1152
    const/4 v10, 0x0

    .line 1156
    :cond_c
    if-eqz p3, :cond_e

    .line 1157
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x4

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1158
    .local v13, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v13, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1159
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v14, v14

    if-ge v9, v14, :cond_d

    .line 1160
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v14, v9

    mul-int/lit16 v14, v14, 0x400

    sget v15, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    div-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1161
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v14, v14, v9

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1159
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    nop

    .line 1164
    .end local v9    # "i":I
    const/4 v9, 0x0

    invoke-static {v13, v9}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1165
    const-string/jumbo v9, "sys.sysctl.extra_free_kbytes"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    move/from16 v9, v16

    iput-boolean v9, v0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 1170
    .end local v13    # "buf":Ljava/nio/ByteBuffer;
    :cond_e
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "repl"    # Ljava/nio/ByteBuffer;

    .line 1838
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 1841
    const/16 v2, 0xfa1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1840
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1844
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/LmkdConnection;->waitForConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    const/4 v0, 0x0

    return v0

    .line 1849
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/LmkdConnection;->exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method private static writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z
    .locals 28
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p5, "inclDetails"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 4873
    .local p4, "origList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4874
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    return v4

    .line 4876
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4878
    .local v4, "curUptime":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_d

    .line 4879
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 4880
    .local v8, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4881
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4882
    .local v10, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 4883
    .local v11, "token":J
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-static {v13, v7}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v13

    .line 4884
    .local v13, "oomAdj":Ljava/lang/String;
    const-wide v14, 0x10800000001L

    move/from16 v16, v7

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4885
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v7, v14

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4886
    const-wide v14, 0x10900000003L

    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4887
    const/4 v7, -0x1

    .line 4888
    .local v7, "schedGroup":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 4899
    :pswitch_1
    const/4 v7, 0x3

    goto :goto_1

    .line 4896
    :pswitch_2
    const/4 v7, 0x2

    .line 4897
    goto :goto_1

    .line 4893
    :pswitch_3
    const/4 v7, 0x1

    .line 4894
    goto :goto_1

    .line 4890
    :pswitch_4
    const/4 v7, 0x0

    .line 4891
    nop

    .line 4902
    :goto_1
    const/4 v14, -0x1

    if-eq v7, v14, :cond_1

    .line 4903
    const-wide v14, 0x10e00000004L

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4905
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 4906
    const-wide v14, 0x10800000005L

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_2

    .line 4907
    :cond_2
    move/from16 v1, v16

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 4908
    const-wide v14, 0x10800000006L

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4910
    :cond_3
    :goto_2
    nop

    .line 4911
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v1

    .line 4910
    const-wide v14, 0x10e00000007L

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4912
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v1

    const-wide v14, 0x10500000008L

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4913
    const-wide v14, 0x10b00000009L

    invoke-virtual {v8, v0, v14, v15}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4914
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v1

    const-wide v14, 0x1090000000aL

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4915
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 4916
    :cond_4
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    .line 4917
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 4918
    .local v1, "cn":Landroid/content/ComponentName;
    const-wide v14, 0x10b0000000bL

    invoke-virtual {v1, v0, v14, v15}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4919
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_5
    goto :goto_3

    :cond_6
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4920
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide v14, 0x1090000000cL

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4922
    :goto_3
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_8

    .line 4923
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 4924
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    const-wide v14, 0x10b0000000dL

    invoke-virtual {v1, v0, v14, v15}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4925
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_7
    goto :goto_4

    :cond_8
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 4926
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide v14, 0x1090000000eL

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4929
    :cond_9
    :goto_4
    if-eqz p5, :cond_c

    .line 4930
    const-wide v14, 0x10b0000000fL

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 4931
    .local v1, "detailToken":J
    const-wide v14, 0x10500000001L

    move-object/from16 v25, v3

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v25, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4932
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4933
    const-wide v14, 0x10500000003L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4934
    const-wide v14, 0x10500000004L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4935
    const-wide v14, 0x10500000005L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4936
    nop

    .line 4937
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v3

    .line 4936
    const-wide v14, 0x10e00000007L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4938
    nop

    .line 4939
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v3

    .line 4938
    const-wide v14, 0x10e00000008L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4940
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4941
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v14

    const-wide/16 v17, 0x400

    mul-long v14, v14, v17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4940
    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x10900000009L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4942
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4943
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v14

    mul-long v14, v14, v17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4942
    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x1090000000aL

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4946
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4947
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v14

    mul-long v14, v14, v17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4946
    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x1090000000bL

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4948
    const-wide v14, 0x1080000000cL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4949
    const-wide v14, 0x1080000000dL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4950
    const-wide v14, 0x1080000000eL

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4952
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v14, 0xa

    if-lt v3, v14, :cond_b

    .line 4953
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    .line 4954
    .local v14, "lastCpuTime":J
    move-object/from16 v3, p3

    move-wide/from16 v17, v4

    .end local v4    # "curUptime":J
    .local v17, "curUptime":J
    iget-wide v4, v3, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v4, v17, v4

    .line 4955
    .local v4, "uptimeSince":J
    const-wide/16 v19, 0x0

    cmp-long v21, v14, v19

    if-eqz v21, :cond_a

    cmp-long v19, v4, v19

    if-lez v19, :cond_a

    .line 4956
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v19

    move v3, v6

    move/from16 v21, v7

    .end local v6    # "i":I
    .end local v7    # "schedGroup":I
    .local v3, "i":I
    .local v21, "schedGroup":I
    sub-long v6, v19, v14

    .line 4957
    .local v6, "timeUsed":J
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    const-wide v8, 0x10b0000000fL

    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v19, "r":Lcom/android/server/am/ProcessRecord;
    .local v20, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4958
    .local v8, "cpuTimeToken":J
    move-object/from16 v22, v13

    move-wide/from16 v23, v14

    .end local v13    # "oomAdj":Ljava/lang/String;
    .end local v14    # "lastCpuTime":J
    .local v22, "oomAdj":Ljava/lang/String;
    .local v23, "lastCpuTime":J
    const-wide v13, 0x10300000001L

    invoke-virtual {v0, v13, v14, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4959
    const-wide v13, 0x10300000002L

    invoke-virtual {v0, v13, v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4960
    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    long-to-double v13, v6

    mul-double v13, v13, v26

    move-wide/from16 v26, v6

    .end local v6    # "timeUsed":J
    .local v26, "timeUsed":J
    long-to-double v6, v4

    div-double/2addr v13, v6

    const-wide v6, 0x10200000003L

    invoke-virtual {v0, v6, v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 4962
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_5

    .line 4955
    .end local v3    # "i":I
    .end local v19    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v21    # "schedGroup":I
    .end local v22    # "oomAdj":Ljava/lang/String;
    .end local v23    # "lastCpuTime":J
    .end local v26    # "timeUsed":J
    .local v6, "i":I
    .restart local v7    # "schedGroup":I
    .local v8, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v13    # "oomAdj":Ljava/lang/String;
    .restart local v14    # "lastCpuTime":J
    :cond_a
    move v3, v6

    move/from16 v21, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v13

    move-wide/from16 v23, v14

    .end local v6    # "i":I
    .end local v7    # "schedGroup":I
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v13    # "oomAdj":Ljava/lang/String;
    .end local v14    # "lastCpuTime":J
    .restart local v3    # "i":I
    .restart local v19    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v20    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v21    # "schedGroup":I
    .restart local v22    # "oomAdj":Ljava/lang/String;
    .restart local v23    # "lastCpuTime":J
    goto :goto_5

    .line 4952
    .end local v3    # "i":I
    .end local v17    # "curUptime":J
    .end local v19    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v21    # "schedGroup":I
    .end local v22    # "oomAdj":Ljava/lang/String;
    .end local v23    # "lastCpuTime":J
    .local v4, "curUptime":J
    .restart local v6    # "i":I
    .restart local v7    # "schedGroup":I
    .restart local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v13    # "oomAdj":Ljava/lang/String;
    :cond_b
    move-wide/from16 v17, v4

    move v3, v6

    move/from16 v21, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v13

    .line 4965
    .end local v4    # "curUptime":J
    .end local v6    # "i":I
    .end local v7    # "schedGroup":I
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v13    # "oomAdj":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v17    # "curUptime":J
    .restart local v19    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v20    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v21    # "schedGroup":I
    .restart local v22    # "oomAdj":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_6

    .line 4929
    .end local v1    # "detailToken":J
    .end local v17    # "curUptime":J
    .end local v19    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v21    # "schedGroup":I
    .end local v22    # "oomAdj":Ljava/lang/String;
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .restart local v4    # "curUptime":J
    .restart local v6    # "i":I
    .restart local v7    # "schedGroup":I
    .restart local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v13    # "oomAdj":Ljava/lang/String;
    :cond_c
    move-object/from16 v25, v3

    move-wide/from16 v17, v4

    move v3, v6

    move/from16 v21, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v13

    .line 4967
    .end local v4    # "curUptime":J
    .end local v6    # "i":I
    .end local v7    # "schedGroup":I
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v13    # "oomAdj":Ljava/lang/String;
    .local v3, "i":I
    .restart local v17    # "curUptime":J
    .restart local v19    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v20    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v21    # "schedGroup":I
    .restart local v22    # "oomAdj":Ljava/lang/String;
    .restart local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    :goto_6
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4878
    .end local v10    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v11    # "token":J
    .end local v19    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v21    # "schedGroup":I
    .end local v22    # "oomAdj":Ljava/lang/String;
    add-int/lit8 v6, v3, -0x1

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-wide/from16 v4, v17

    move-object/from16 v3, v25

    const/4 v7, 0x1

    .end local v3    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_0

    .end local v17    # "curUptime":J
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .restart local v4    # "curUptime":J
    :cond_d
    nop

    .line 4970
    .end local v6    # "i":I
    const/16 v16, 0x1

    return v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 3452
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 3453
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 3454
    .local v1, "old":Lcom/android/server/am/ProcessRecord;
    if-ne v1, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3456
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-adding persistent process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->resetCrashingOnRestart()V

    goto :goto_0

    .line 3496
    .end local v1    # "old":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 3459
    .restart local v1    # "old":Lcom/android/server/am/ProcessRecord;
    :cond_0
    if-eqz v1, :cond_2

    .line 3460
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3463
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was killed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getKillTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms ago when adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3463
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3467
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already have existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 3471
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v2, :cond_6

    .line 3472
    new-instance v3, Lcom/android/server/am/UidRecord;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v3, v4, v5}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    move-object v2, v3

    .line 3474
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_3

    .line 3475
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating new process uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3478
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 3477
    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3479
    invoke-virtual {v3, v4}, Lcom/android/server/am/PendingTempAllowlists;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_5

    .line 3480
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 3481
    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 3483
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 3484
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 3485
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 3486
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    .line 3487
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    .line 3486
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    .line 3488
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 3490
    :cond_6
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3491
    invoke-virtual {v2, p1}, Lcom/android/server/am/UidRecord;->addProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3494
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setRenderThreadTid(I)V

    .line 3495
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 3496
    nop

    .end local v1    # "old":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3497
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_7

    .line 3498
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3500
    :cond_7
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v0, :cond_9

    .line 3501
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3502
    .local v0, "sdkSandboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-nez v0, :cond_8

    .line 3503
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 3505
    :cond_8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3506
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3508
    .end local v0    # "sdkSandboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_9
    return-void

    .line 3496
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 1040
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_0

    .line 1041
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1043
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1044
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 1045
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 1046
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 1049
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method clearAllDnsCacheLOSP()V
    .locals 6

    .line 3811
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3812
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3813
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3814
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_0

    .line 3816
    :try_start_0
    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3819
    goto :goto_1

    .line 3817
    :catch_0
    move-exception v3

    .line 3818
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clear dns cache for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 3822
    .end local v0    # "i":I
    return-void
.end method

.method collectProcessesLOSP(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "start"    # I
    .param p2, "allPkgs"    # Z
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 5371
    if-eqz p3, :cond_5

    array-length v0, p3

    if-le v0, p1, :cond_5

    aget-object v0, p3, p1

    .line 5372
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    .line 5373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5374
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, -0x1

    .line 5376
    .local v1, "pid":I
    :try_start_0
    aget-object v2, p3, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 5378
    goto :goto_0

    .line 5377
    :catch_0
    move-exception v2

    .line 5379
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 5380
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 5381
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 5382
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5383
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5384
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5385
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5386
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5387
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5379
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    nop

    .line 5390
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 5391
    const/4 v2, 0x0

    return-object v2

    .line 5390
    :cond_4
    nop

    .line 5393
    .end local v1    # "pid":I
    goto :goto_3

    .line 5394
    .end local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5396
    .restart local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_3
    return-object v0
.end method

.method dispatchProcessDied(II)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 5352
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 5353
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 5354
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 5355
    add-int/lit8 v1, v1, -0x1

    .line 5356
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IProcessObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5357
    .local v2, "observer":Landroid/app/IProcessObserver;
    if-eqz v2, :cond_0

    .line 5359
    :try_start_1
    invoke-interface {v2, p1, p2}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5361
    goto :goto_1

    .line 5365
    .end local v1    # "i":I
    .end local v2    # "observer":Landroid/app/IProcessObserver;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 5360
    .restart local v1    # "i":I
    .restart local v2    # "observer":Landroid/app/IProcessObserver;
    :catch_0
    move-exception v3

    .line 5363
    .end local v2    # "observer":Landroid/app/IProcessObserver;
    :cond_0
    :goto_1
    goto :goto_0

    .line 5364
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5365
    .end local v1    # "i":I
    monitor-exit v0

    .line 5366
    return-void

    .line 5365
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method dispatchProcessStarted(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I

    .line 5330
    nop

    .line 5331
    const-string v0, "ActivityManager"

    const-string v1, "ProcessObserver broadcast disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5332
    return-void
.end method

.method dispatchProcessesChanged()V
    .locals 9

    .line 5194
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5195
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5196
    .local v1, "numOfChanges":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 5197
    new-array v2, v1, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    goto :goto_0

    .line 5205
    .end local v1    # "numOfChanges":I
    :catchall_0
    move-exception v1

    goto/16 :goto_8

    .line 5199
    .restart local v1    # "numOfChanges":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5200
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5201
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v2, :cond_1

    .line 5202
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** Delivering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " process changes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5205
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5207
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 5208
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 5209
    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_8

    .line 5210
    add-int/lit8 v0, v0, -0x1

    .line 5211
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IProcessObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5212
    .local v3, "observer":Landroid/app/IProcessObserver;
    if-eqz v3, :cond_7

    .line 5214
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v1, :cond_6

    .line 5215
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v5, v5, v4

    .line 5216
    .local v5, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 5217
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v6, :cond_2

    .line 5218
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTIVITIES CHANGED pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5241
    .end local v0    # "i":I
    .end local v3    # "observer":Landroid/app/IProcessObserver;
    .end local v4    # "j":I
    .end local v5    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 5236
    .restart local v0    # "i":I
    .restart local v3    # "observer":Landroid/app/IProcessObserver;
    :catch_0
    move-exception v4

    goto :goto_4

    .line 5222
    .restart local v4    # "j":I
    .restart local v5    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_2
    :goto_3
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v7, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget-boolean v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-interface {v3, v6, v7, v8}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V

    .line 5225
    :cond_3
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    .line 5227
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v6, :cond_4

    .line 5228
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FOREGROUND SERVICES CHANGED pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    :cond_4
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v7, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-interface {v3, v6, v7, v8}, Landroid/app/IProcessObserver;->onForegroundServicesChanged(III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5214
    .end local v5    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_6
    nop

    .line 5237
    .end local v4    # "j":I
    nop

    .line 5239
    .end local v3    # "observer":Landroid/app/IProcessObserver;
    :cond_7
    :goto_4
    goto/16 :goto_1

    .line 5240
    :cond_8
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5241
    .end local v0    # "i":I
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5243
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5244
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    if-ge v2, v1, :cond_9

    .line 5245
    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5244
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5247
    .end local v2    # "j":I
    :catchall_2
    move-exception v2

    goto :goto_6

    .line 5244
    .restart local v2    # "j":I
    :cond_9
    nop

    .line 5247
    .end local v2    # "j":I
    monitor-exit v0

    .line 5248
    return-void

    .line 5247
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 5241
    :goto_7
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 5205
    .end local v1    # "numOfChanges":I
    :goto_8
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method doStopUidForIdleUidsLocked()V
    .locals 6

    .line 5509
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 5510
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5511
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 5512
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5513
    goto :goto_1

    .line 5515
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 5516
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5517
    goto :goto_1

    .line 5519
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 5510
    .end local v2    # "uid":I
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 5521
    .end local v1    # "i":I
    return-void
.end method

.method dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4567
    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4568
    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4569
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4570
    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4571
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4572
    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4573
    return-void
.end method

.method dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 4626
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4628
    .local v0, "lruSize":I
    if-nez p3, :cond_0

    .line 4629
    const-string v1, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity lru)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4630
    const-string v1, "  "

    .local v1, "innerPrefix":Ljava/lang/String;
    goto :goto_1

    .line 4632
    .end local v1    # "innerPrefix":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 4633
    .local v1, "haveAny":Z
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 4634
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4635
    .local v3, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4636
    nop

    .line 4633
    .end local v3    # "r":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4638
    .restart local v3    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x1

    .line 4639
    nop

    .line 4641
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_2
    if-nez v1, :cond_3

    .line 4642
    const/4 v2, 0x0

    return v2

    .line 4644
    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4645
    const-string v2, "Raw LRU list (dumpsys activity lru):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 4649
    .local v1, "innerPrefix":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x1

    .line 4650
    .local v2, "first":Z
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_2
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v3, v4, :cond_6

    .line 4651
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4652
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_4

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4653
    goto :goto_3

    .line 4655
    :cond_4
    if-eqz v2, :cond_5

    .line 4656
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4657
    const-string v5, "Activities:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4658
    const/4 v2, 0x0

    .line 4660
    :cond_5
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4650
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 4662
    :cond_6
    const/4 v2, 0x1

    .line 4663
    :goto_4
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lt v3, v4, :cond_9

    .line 4664
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4665
    .restart local v4    # "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_7

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4666
    goto :goto_5

    .line 4668
    :cond_7
    if-eqz v2, :cond_8

    .line 4669
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4670
    const-string v5, "Services:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4671
    const/4 v2, 0x0

    .line 4673
    :cond_8
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4663
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 4675
    :cond_9
    const/4 v2, 0x1

    .line 4676
    :goto_6
    if-ltz v3, :cond_c

    .line 4677
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4678
    .restart local v4    # "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_a

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 4679
    goto :goto_7

    .line 4681
    :cond_a
    if-eqz v2, :cond_b

    .line 4682
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4683
    const-string v5, "Other:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4684
    const/4 v2, 0x0

    .line 4686
    :cond_b
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4676
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 4688
    :cond_c
    const/4 v4, 0x1

    return v4
.end method

.method dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;
    .param p8, "inclGc"    # Z

    .line 5137
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_2

    .line 5138
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5139
    :cond_0
    const/4 p3, 0x1

    .line 5140
    const-string v0, "  OOM levels:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5141
    const-string v0, "SYSTEM_ADJ"

    const/16 v1, -0x384

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5142
    const-string v0, "PERSISTENT_PROC_ADJ"

    const/16 v1, -0x320

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5143
    const-string v0, "PERSISTENT_SERVICE_ADJ"

    const/16 v1, -0x2bc

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5144
    const-string v0, "FOREGROUND_APP_ADJ"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5145
    const-string v0, "VISIBLE_APP_ADJ"

    const/16 v1, 0x64

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5146
    const-string v0, "PERCEPTIBLE_APP_ADJ"

    const/16 v1, 0xc8

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5147
    const-string v0, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    const/16 v1, 0xe1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5148
    const-string v0, "PERCEPTIBLE_LOW_APP_ADJ"

    const/16 v1, 0xfa

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5149
    const-string v0, "BACKUP_APP_ADJ"

    const/16 v1, 0x12c

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5150
    const-string v0, "HEAVY_WEIGHT_APP_ADJ"

    const/16 v1, 0x190

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5151
    const-string v0, "SERVICE_ADJ"

    const/16 v1, 0x1f4

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5152
    const-string v0, "HOME_APP_ADJ"

    const/16 v1, 0x258

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5153
    const-string v0, "PREVIOUS_APP_ADJ"

    const/16 v1, 0x2bc

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5154
    const-string v0, "SERVICE_B_ADJ"

    const/16 v1, 0x320

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5155
    const-string v0, "CACHED_APP_MIN_ADJ"

    const/16 v1, 0x384

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5156
    const-string v0, "CACHED_APP_MAX_ADJ"

    const/16 v1, 0x3e7

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5158
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5159
    :cond_1
    const-string v0, "  Process OOM control ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5160
    const-string v0, " total, non-act at "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5161
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5162
    const-string v0, ", non-svc at "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5163
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5164
    const-string v0, "):"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5165
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const-string v4, "    "

    const-string v5, "Proc"

    const-string v6, "PERS"

    const/4 v7, 0x1

    move-object v1, p2

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 5167
    const/4 p3, 0x1

    .line 5170
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5171
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v8, p7

    :try_start_1
    invoke-virtual {v0, p2, p3, v8}, Lcom/android/server/am/AppProfiler;->dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    .line 5172
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5174
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5175
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dumpForOom(Ljava/io/PrintWriter;)V

    .line 5177
    const/4 v0, 0x1

    return v0

    .line 5172
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v8, p7

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "dumpAppId"    # I

    .line 4694
    move-object/from16 v2, p6

    const/4 v0, 0x0

    .line 4695
    .local v0, "needSep":Z
    const/4 v1, 0x0

    .line 4697
    .local v1, "numPers":I
    const-string v3, "ACTIVITY MANAGER RUNNING PROCESSES (dumpsys activity processes)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4699
    if-nez p5, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v9, v1

    goto/16 :goto_5

    .line 4700
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 4701
    .local v3, "numOfNames":I
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_1
    if-ge v4, v3, :cond_7

    .line 4702
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 4703
    .local v5, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v6, 0x0

    .local v6, "ia":I
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    .local v7, "size":I
    :goto_2
    if-ge v6, v7, :cond_6

    .line 4704
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 4705
    .local v8, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_2

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 4706
    goto :goto_4

    .line 4708
    :cond_2
    if-nez v0, :cond_3

    .line 4709
    const-string v9, "  All known processes:"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4710
    const/4 v0, 0x1

    .line 4712
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "  *PERS*"

    goto :goto_3

    :cond_4
    const-string v9, "  *APP*"

    :goto_3
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4713
    const-string v9, " UID "

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 4714
    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4715
    const-string v9, "    "

    invoke-virtual {v8, p2, v9}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4716
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4717
    add-int/lit8 v1, v1, 0x1

    .line 4703
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    nop

    .line 4701
    .end local v5    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v6    # "ia":I
    .end local v7    # "size":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move v9, v1

    .line 4723
    .end local v1    # "numPers":I
    .end local v3    # "numOfNames":I
    .end local v4    # "ip":I
    .local v9, "numPers":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 4724
    const/4 v1, 0x0

    .line 4725
    .local v1, "printed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, "size":I
    :goto_6
    if-ge v3, v4, :cond_b

    .line 4726
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 4727
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_8

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 4728
    goto :goto_7

    .line 4730
    :cond_8
    if-nez v1, :cond_a

    .line 4731
    if-eqz v0, :cond_9

    .line 4732
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4734
    :cond_9
    const-string v6, "  Isolated process list (sorted by uid):"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4735
    const/4 v1, 0x1

    .line 4736
    const/4 v0, 0x1

    .line 4738
    :cond_a
    const-string v6, "    Isolated #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4739
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4725
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4743
    .end local v1    # "printed":Z
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/server/am/ActivityManagerService;->dumpActiveInstruments(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z

    move-result v3

    .line 4745
    .end local v0    # "needSep":Z
    .local v3, "needSep":Z
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, v2

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 4746
    const/4 v3, 0x1

    move v5, v3

    goto :goto_8

    .line 4745
    :cond_c
    move v5, v3

    .line 4749
    .end local v3    # "needSep":Z
    .local v5, "needSep":Z
    :goto_8
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 4750
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-string v4, "UID states:"

    move-object v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v5, v0

    .line 4754
    :cond_d
    if-eqz p5, :cond_e

    .line 4755
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    const-string v4, "UID validation:"

    move-object v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UidObserverController;->dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v5, v0

    goto :goto_9

    .line 4754
    :cond_e
    move-object/from16 v2, p6

    .line 4759
    :goto_9
    if-eqz v5, :cond_f

    .line 4760
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4762
    :cond_f
    const-string v0, "  "

    invoke-virtual {p0, p2, v2, v0}, Lcom/android/server/am/ProcessList;->dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4763
    const/4 v5, 0x1

    move v8, v5

    goto :goto_a

    .line 4762
    :cond_10
    move v8, v5

    .line 4766
    .end local v5    # "needSep":Z
    .local v8, "needSep":Z
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_12

    .line 4767
    if-eqz v8, :cond_11

    .line 4768
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4770
    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessList;->dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V

    .line 4771
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const-string v5, "PERS"

    const/4 v6, 0x0

    const-string v3, "    "

    const-string v4, "Proc"

    move-object v0, p2

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 4773
    const/4 v8, 0x1

    move v7, v8

    goto :goto_b

    .line 4766
    :cond_12
    move v7, v8

    .line 4776
    .end local v8    # "needSep":Z
    .local v7, "needSep":Z
    :goto_b
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move v6, v9

    .end local v9    # "numPers":I
    .local v6, "numPers":I
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->dumpOtherProcessesInfoLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;IIZ)V

    .line 4778
    return-void
.end method

.method enqueueProcessChangeItemLocked(IIII)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "changes"    # I
    .param p4, "foregroundServicetypes"    # I

    .line 5252
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5253
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v1

    .line 5254
    .local v1, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iget v2, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr v2, p3

    iput v2, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 5255
    iput p4, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    .line 5256
    .end local v1    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    monitor-exit v0

    .line 5257
    return-void

    .line 5256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method enqueueProcessChangeItemLocked(IIIZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "changes"    # I
    .param p4, "hasForegroundActivities"    # Z

    .line 5262
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5263
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v1

    .line 5264
    .local v1, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iget v2, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr v2, p3

    iput v2, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 5265
    iput-boolean p4, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 5266
    .end local v1    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    monitor-exit v0

    .line 5267
    return-void

    .line 5266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "outInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"    # I

    .line 4376
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4377
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 4378
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4379
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4381
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4382
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4384
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4385
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4387
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 4388
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4389
    .local v0, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    .line 4390
    .local v2, "procState":I
    nop

    .line 4391
    invoke-static {v2, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v3

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 4392
    iget v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x190

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    .line 4393
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_0

    .line 4395
    :cond_3
    iput v5, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 4397
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAdjTypeCode()I

    move-result v3

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4398
    iput v2, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4399
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v5

    :goto_1
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4400
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v3

    iput-wide v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4403
    return-void
.end method

.method findAppProcessLOSP(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 8
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1900
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1901
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1902
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1903
    .local v2, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1904
    .local v3, "NA":I
    const/4 v4, 0x0

    .local v4, "ia":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 1905
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1906
    .local v5, "p":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1907
    .local v6, "thread":Landroid/app/IApplicationThread;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, p1, :cond_0

    .line 1908
    return-object v5

    .line 1904
    .end local v5    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "thread":Landroid/app/IApplicationThread;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 1901
    .end local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "NA":I
    .end local v4    # "ia":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1913
    .end local v1    # "ip":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find mystery application for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1913
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    const/4 v1, 0x0

    return-object v1
.end method

.method forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V
    .locals 3
    .param p1, "iterateForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 4507
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz p1, :cond_1

    .line 4508
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4509
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .end local v0    # "i":I
    .end local v1    # "size":I
    goto :goto_2

    .line 4512
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 4513
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4512
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4516
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;
    .locals 1

    .line 1567
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    return-object v0
.end method

.method getBlockStateForUid(Lcom/android/server/am/UidRecord;)I
    .locals 5
    .param p1, "uidRec"    # Lcom/android/server/am/UidRecord;

    .line 5536
    nop

    .line 5537
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    .line 5538
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    .line 5537
    invoke-static {v0, v1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 5539
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    .line 5540
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v3

    .line 5539
    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    nop

    .line 5542
    .local v0, "isAllowed":Z
    nop

    .line 5543
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v3

    .line 5544
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    .line 5543
    invoke-static {v3, v4}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5545
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v3

    .line 5546
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    .line 5545
    invoke-static {v3, v4}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    nop

    .line 5550
    .local v3, "wasAllowed":Z
    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    .line 5551
    return v1

    .line 5555
    :cond_4
    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 5556
    const/4 v1, 0x2

    return v1

    .line 5558
    :cond_5
    return v2
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .line 1563
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getIsolatedProcessesLocked(I)Ljava/util/List;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3535
    const/4 v0, 0x0

    .line 3536
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 3537
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3538
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_1

    .line 3539
    if-nez v0, :cond_0

    .line 3540
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 3542
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3536
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 3545
    .end local v1    # "i":I
    .end local v2    # "size":I
    return-object v0
.end method

.method getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 4338
    if-nez p1, :cond_0

    .line 4339
    const/4 v0, 0x0

    return-object v0

    .line 4341
    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method getLRURecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;
    .locals 5
    .param p1, "threadBinder"    # Landroid/os/IBinder;

    .line 4346
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4347
    return-object v0

    .line 4350
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4351
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4352
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 4353
    .local v3, "t":Landroid/app/IApplicationThread;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 4354
    return-object v2

    .line 4350
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "t":Landroid/app/IApplicationThread;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 4357
    .end local v1    # "i":I
    return-object v0
.end method

.method getLruProcessServiceStartLOSP()I
    .locals 1

    .line 4493
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    return v0
.end method

.method getLruProcessesLOSP()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 4467
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLruProcessesLSP()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 4475
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLruSeqLOSP()I
    .locals 1

    .line 4557
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    return v0
.end method

.method getLruSizeLOSP()I
    .locals 1

    .line 4459
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMemLevel(I)J
    .locals 3
    .param p1, "adjustment"    # I

    .line 1550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1551
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    .line 1550
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1555
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method

.method getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 10
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .line 1885
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    .line 1886
    .local v0, "homeAppMem":J
    const/16 v2, 0x384

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1887
    .local v2, "cachedAppMem":J
    invoke-static {}, Landroid/os/Process;->getAdvertisedMem()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    .line 1888
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1889
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1890
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1891
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v6, v0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iput-boolean v4, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1892
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 1893
    const/16 v4, 0x1f4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 1894
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1895
    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 1896
    return-void
.end method

.method getNextProcStateSeq()J
    .locals 4

    .line 5644
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    return-wide v0
.end method

.method getNumForegroundServices()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5921
    const/4 v0, 0x0

    .line 5922
    .local v0, "numForegroundServices":I
    const/4 v1, 0x0

    .line 5923
    .local v1, "procs":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 5924
    const/4 v3, 0x0

    .local v3, "i":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 5925
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 5926
    .local v5, "pr":Lcom/android/server/am/ProcessRecord;
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessServiceRecord;->getNumForegroundServices()I

    move-result v6

    .line 5927
    .local v6, "numFgs":I
    if-lez v6, :cond_0

    .line 5928
    add-int/2addr v0, v6

    .line 5929
    add-int/lit8 v1, v1, 0x1

    .line 5924
    .end local v5    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "numFgs":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5932
    .end local v3    # "i":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 5924
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    :cond_1
    nop

    .line 5932
    .end local v3    # "i":I
    .end local v4    # "size":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5933
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 5932
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    if-nez v1, :cond_0

    .line 607
    new-instance v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    .line 608
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    invoke-static {v1}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->-$$Nest$mregisterObserver(Lcom/android/server/am/ProcessList$ProcessListSettingsListener;)V

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 610
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 611
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;
    .locals 1

    .line 4562
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    return-object v0
.end method

.method getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1865
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_3

    .line 1869
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1870
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1871
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1872
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1873
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1874
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    nop

    if-eqz v4, :cond_2

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1876
    goto :goto_1

    .line 1878
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    return-object v4

    .line 1872
    .end local v3    # "procUid":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1881
    .end local v0    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v1    # "procCount":I
    .end local v2    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1056
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1057
    .local v0, "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1058
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1059
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1060
    .local v3, "record":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isBindMountPending()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1061
    goto :goto_1

    .line 1063
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    .line 1066
    .local v4, "pid":I
    if-eqz v4, :cond_1

    .line 1070
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1072
    .end local v2    # "i":I
    .end local v3    # "record":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "pid":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1067
    .restart local v2    # "i":I
    .restart local v3    # "record":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "pid":I
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Pending process is not started yet,retry later"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "userId":I
    throw v5

    .line 1058
    .end local v3    # "record":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "pid":I
    .restart local v0    # "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "userId":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 1072
    .end local v2    # "i":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1073
    return-object v0

    .line 1072
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method getRunningAppProcessesLOSP(ZIZII)Ljava/util/List;
    .locals 9
    .param p1, "allUsers"    # Z
    .param p2, "userId"    # I
    .param p3, "allUids"    # Z
    .param p4, "callingUid"    # I
    .param p5, "clientTargetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 4409
    const/4 v0, 0x0

    .line 4411
    .local v0, "runList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_8

    .line 4412
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4413
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4414
    .local v3, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 4415
    .local v4, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    if-nez p1, :cond_0

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p2, :cond_7

    :cond_0
    if-nez p3, :cond_1

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v5, p4, :cond_1

    .line 4417
    goto/16 :goto_2

    .line 4419
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 4420
    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v5

    if-nez v5, :cond_7

    .line 4422
    new-instance v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 4424
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 4425
    .local v5, "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4426
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 4427
    .local v6, "size":I
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    .line 4429
    .end local v6    # "size":I
    :cond_2
    invoke-virtual {p0, v2, v5, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 4430
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_3

    .line 4431
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    iput v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4432
    nop

    .line 4434
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSourceProcState()I

    move-result v6

    .line 4433
    invoke-static {v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v6

    iput v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_1

    .line 4435
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v6, :cond_4

    .line 4436
    nop

    .line 4437
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 4438
    .local v6, "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v7

    .line 4439
    .local v7, "pid":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 4440
    iput v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4443
    .end local v6    # "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v7    # "pid":I
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/content/ComponentName;

    if-eqz v6, :cond_5

    .line 4444
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    iput-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 4448
    :cond_5
    if-nez v0, :cond_6

    .line 4449
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 4451
    :cond_6
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4411
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v4    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v5    # "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_8
    nop

    .line 4454
    .end local v1    # "i":I
    return-object v0
.end method

.method getSdkSandboxProcessesForAppLocked(I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 3558
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getSharedIsolatedProcess(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3523
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3524
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3525
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3526
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3527
    return-object v2

    .line 3523
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3530
    .end local v0    # "i":I
    .end local v1    # "size":I
    const/4 v0, 0x0

    return-object v0
.end method

.method getUidProcStateLOSP(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 5483
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 5484
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v0, :cond_0

    const/16 v1, 0x14

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    :goto_0
    return v1
.end method

.method getUidProcessCapabilityLOSP(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 5493
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 5494
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    :goto_0
    return v1
.end method

.method getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;
    .locals 1
    .param p1, "uid"    # I

    .line 5500
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method handleAllTrustStorageUpdateLOSP()V
    .locals 6

    .line 3826
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3827
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3828
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3829
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_0

    .line 3831
    :try_start_0
    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3835
    goto :goto_1

    .line 3832
    :catch_0
    move-exception v3

    .line 3833
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to handle trust storage update for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 3838
    .end local v0    # "i":I
    return-void
.end method

.method handleDyingAppDeathLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I

    .line 5709
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    nop

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 5710
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 5712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got obituary of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 5715
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5716
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5717
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 5719
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 5720
    const/4 v0, 0x1

    return v0

    .line 5722
    :cond_0
    return v1
.end method

.method handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5732
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5736
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5737
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 5738
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5742
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 5743
    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 5745
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5748
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5749
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5750
    const/4 v0, 0x0

    return v0

    .line 5752
    :cond_1
    return v1
.end method

.method handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .locals 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I
    .param p3, "usingWrapper"    # Z
    .param p4, "expectedStartSeq"    # J
    .param p6, "procAttached"    # Z

    .line 3033
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    move/from16 v11, p3

    move-wide/from16 v12, p4

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v12, v13}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3034
    invoke-virtual {v1, v2, v12, v13}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v14

    .line 3035
    .local v14, "reason":Ljava/lang/String;
    const/4 v10, 0x0

    if-eqz v14, :cond_1

    .line 3036
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " start not valid, killing pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 3040
    invoke-static {v9}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 3041
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 3042
    .local v0, "appPid":I
    if-eqz v0, :cond_0

    .line 3043
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3, v0}, Landroid/os/Process;->killProcessGroup(II)I

    .line 3045
    :cond_0
    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3, v3, v14}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 3047
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->doEarlyCleanupIfNecessaryLocked()V

    .line 3048
    return v10

    .line 3050
    .end local v0    # "appPid":I
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 3051
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: done updating battery stats"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3053
    nop

    .line 3054
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3055
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v7

    .line 3056
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_0

    :goto_1
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 3053
    const/16 v3, 0x753e

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3059
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3060
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3059
    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3063
    goto :goto_2

    .line 3061
    :catch_0
    move-exception v0

    .line 3065
    :goto_2
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v9}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 3067
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: building log message"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3068
    iget-object v15, v1, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 3069
    .local v15, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3070
    const-string v0, "Start proc "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3072
    const/16 v0, 0x3a

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3073
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3074
    const/16 v0, 0x2f

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3075
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v0

    invoke-static {v15, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 3076
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3077
    const-string v0, " ["

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3078
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    const-string v0, "]"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3081
    :cond_3
    const-string v0, " for "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3084
    const-string v0, " "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3085
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3087
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "ActivityManager"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3088
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    .line 3089
    :try_start_1
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 3090
    invoke-virtual {v2, v11}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 3091
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 3092
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3093
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: starting to update pids map"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3095
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    .line 3096
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v3, v0

    .line 3097
    .local v3, "oldApp":Lcom/android/server/am/ProcessRecord;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3099
    if-eqz v3, :cond_5

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_5

    .line 3101
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleProcessStartedLocked process:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " startSeq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " belongs to another existing app:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " startSeq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3105
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3101
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    move-object v4, v3

    .end local v3    # "oldApp":Lcom/android/server/am/ProcessRecord;
    .local v4, "oldApp":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;IZZIZZ)Z

    move-object v3, v4

    .line 3109
    .end local v4    # "oldApp":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "oldApp":Lcom/android/server/am/ProcessRecord;
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3110
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v5

    .line 3111
    if-nez p6, :cond_7

    .line 3112
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3113
    .local v0, "msg":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3114
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v11, :cond_6

    .line 3115
    const-wide/32 v6, 0x124f80

    goto :goto_3

    :cond_6
    sget v6, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v6, v6

    .line 3114
    :goto_3
    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 3117
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_7
    :goto_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3118
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/ProcessList;->dispatchProcessStarted(Lcom/android/server/am/ProcessRecord;I)V

    .line 3119
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v4

    const-string/jumbo v0, "startProcess: done updating pids map"

    invoke-direct {v1, v4, v5, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3122
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_MEMORY_STATUS_REPORTER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/INtMemoryStatusReporter;

    invoke-interface {v0, v2}, Lcom/android/server/am/INtMemoryStatusReporter;->updateColdStart(Lcom/android/server/am/ProcessRecord;)V

    .line 3124
    const/4 v0, 0x1

    return v0

    .line 3117
    :goto_5
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 3097
    .end local v3    # "oldApp":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 3092
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method haveBackgroundProcessLOSP()Z
    .locals 5

    .line 4362
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4363
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4364
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    nop

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4365
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 4366
    return v1

    .line 4362
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 4369
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V
    .locals 11
    .param p1, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 5569
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5570
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 5571
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getNextProcStateSeq()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    .line 5569
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 5573
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 5574
    return-void

    .line 5577
    :cond_1
    const/4 v0, 0x0

    .line 5578
    .local v0, "blockingUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_b

    .line 5579
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 5581
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$Injector;->isNetworkRestrictedForUid(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5582
    goto/16 :goto_5

    .line 5584
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    nop

    if-eqz v6, :cond_a

    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    if-nez v6, :cond_3

    .line 5585
    goto :goto_5

    .line 5588
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 5589
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 5590
    goto :goto_5

    .line 5592
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/UidRecord;)I

    move-result v6

    .line 5595
    .local v6, "blockState":I
    if-nez v6, :cond_5

    .line 5596
    goto :goto_5

    .line 5598
    :cond_5
    iget-object v7, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5599
    if-ne v6, v1, :cond_7

    .line 5600
    if-nez v0, :cond_6

    .line 5601
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    goto :goto_2

    .line 5613
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 5603
    :cond_6
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5605
    :cond_7
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v8, :cond_8

    .line 5606
    const-string v8, "ActivityManager_Network"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uid going to background, notifying all blocking threads for uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5609
    :cond_8
    iget-wide v8, v3, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    cmp-long v8, v8, v4

    if-eqz v8, :cond_9

    .line 5610
    iget-object v8, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 5613
    :cond_9
    :goto_3
    monitor-exit v7

    goto :goto_5

    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5578
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v6    # "blockState":I
    :cond_a
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_b
    nop

    .line 5617
    .end local v2    # "i":I
    if-nez v0, :cond_c

    .line 5618
    return-void

    .line 5621
    :cond_c
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_6
    if-ltz v2, :cond_11

    .line 5622
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 5623
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 5624
    goto :goto_8

    .line 5626
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 5627
    .local v3, "thread":Landroid/app/IApplicationThread;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_10

    .line 5628
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    .line 5630
    .local v4, "uidRec":Lcom/android/server/am/UidRecord;
    :try_start_1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v5, :cond_e

    .line 5631
    const-string v5, "ActivityManager_Network"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Informing app thread that it needs to block: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 5637
    :catch_0
    move-exception v5

    goto :goto_8

    .line 5634
    :cond_e
    :goto_7
    if-eqz v4, :cond_f

    .line 5635
    iget-wide v5, v4, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-interface {v3, v5, v6}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5638
    :cond_f
    nop

    .line 5621
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "thread":Landroid/app/IApplicationThread;
    .end local v4    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_10
    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_11
    nop

    .line 5641
    .end local v2    # "i":I
    return-void
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p3, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;

    .line 909
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 910
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 911
    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 912
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 915
    nop

    .line 916
    const-string/jumbo v0, "persist.zygote.app_data_isolation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 917
    const-string/jumbo v0, "persist.sys.vold_app_data_isolation_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    .line 920
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    .line 924
    sget-object v0, Lcom/android/server/am/ProcessList;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "nt_fore"

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sHandlerThread:Landroid/os/HandlerThread;

    .line 926
    sget-object v0, Lcom/android/server/am/ProcessList;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 927
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/ProcessList;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sHandler:Landroid/os/Handler;

    .line 931
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez v0, :cond_2

    .line 932
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "ActivityManager:kill"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 934
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 935
    new-instance v0, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 936
    new-instance v0, Lcom/android/server/am/OomConnection;

    new-instance v2, Lcom/android/server/am/ProcessList$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {v0, v2}, Lcom/android/server/am/OomConnection;-><init>(Lcom/android/server/am/OomConnection$OomConnectionListener;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sOomConnection:Lcom/android/server/am/OomConnection;

    .line 953
    new-instance v0, Lcom/android/server/am/LmkdConnection;

    sget-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessList$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessList$2;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 1022
    invoke-direct {p0}, Lcom/android/server/am/ProcessList;->createSystemServerSocketForZygote()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 1023
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    .line 1024
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 1025
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 1024
    invoke-virtual {v0, v2, v1, v3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppStartInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 1029
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 1030
    new-instance v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 1032
    :cond_2
    return-void
.end method

.method isInLruListLOSP(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4552
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "expectedStartSeq"    # J

    .line 2982
    const/4 v0, 0x0

    .line 2983
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2984
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2985
    :cond_0
    const-string/jumbo v1, "killedByAm=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_3

    .line 2988
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2989
    :cond_2
    const-string v1, "No entry in mProcessNames;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2992
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2993
    :cond_4
    const-string/jumbo v1, "pendingStart=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2995
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-lez v1, :cond_7

    .line 2996
    if-nez v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2997
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    :cond_7
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3011
    :goto_0
    goto :goto_2

    .line 3003
    :catch_0
    move-exception v1

    goto :goto_1

    .line 3001
    :catch_1
    move-exception v1

    goto :goto_0

    .line 3003
    :goto_1
    nop

    .line 3004
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v2, :cond_9

    .line 3005
    if-nez v0, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 3006
    :cond_8
    const-string v2, "Package is frozen;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3009
    :cond_9
    throw v1

    .line 3012
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_2
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method killAllBackgroundProcessesExceptLSP(II)V
    .locals 12
    .param p1, "minTargetSdk"    # I
    .param p2, "maxProcState"    # I

    .line 3745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3746
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3747
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 3748
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3749
    .local v3, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 3750
    .local v4, "NA":I
    const/4 v5, 0x0

    .local v5, "ia":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 3751
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 3752
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_1

    if-ltz p1, :cond_0

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v7, p1, :cond_2

    :cond_0
    if-ltz p2, :cond_1

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3754
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v7

    if-le v7, p2, :cond_2

    .line 3755
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3750
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 3747
    .end local v3    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "NA":I
    .end local v5    # "ia":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 3760
    .end local v2    # "ip":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3761
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 3762
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    const/16 v10, 0xa

    const-string/jumbo v11, "kill all background except"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xd

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 3761
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    nop

    .line 3765
    .end local v3    # "i":I
    return-void
.end method

.method killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J

    .line 5795
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 5796
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getLastCanKillOnBgRestrictedAndIdleTime()J

    move-result-wide v1

    .line 5797
    .local v1, "lastCanKillTime":J
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_3

    .line 5798
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5799
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 5800
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, v1, v4

    if-nez v3, :cond_1

    :cond_0
    goto :goto_0

    .line 5803
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    add-long/2addr v6, v1

    .line 5805
    .local v6, "future":J
    cmp-long v3, v6, p2

    if-gtz v3, :cond_2

    .line 5806
    const/16 v3, 0x12

    const/4 v8, 0x1

    const-string v9, "cached idle & background restricted"

    const/16 v10, 0xd

    invoke-virtual {p1, v9, v10, v3, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 5810
    return-wide v4

    .line 5812
    :cond_2
    return-wide v6

    .line 5801
    .end local v6    # "future":J
    :cond_3
    :goto_0
    return-wide v4
.end method

.method killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/UidRecord;)V
    .locals 3
    .param p1, "uidRec"    # Lcom/android/server/am/UidRecord;

    .line 5822
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5823
    .local v0, "nowElapsed":J
    new-instance v2, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ProcessList;J)V

    invoke-virtual {p1, v2}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 5824
    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .locals 5
    .param p1, "appZygote"    # Landroid/os/AppZygote;
    .param p2, "force"    # Z

    .line 2452
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2453
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2454
    .local v1, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2456
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 2457
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2459
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    .line 2461
    :cond_1
    return-void
.end method

.method killAppZygotesLocked(Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "force"    # Z

    .line 3173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3174
    .local v0, "zygotesToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/AppZygote;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 3175
    .local v2, "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3176
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3177
    .local v4, "appZygoteUid":I
    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_0

    .line 3178
    goto :goto_2

    .line 3180
    :cond_0
    if-ltz p2, :cond_1

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 3181
    goto :goto_2

    .line 3183
    :cond_1
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AppZygote;

    .line 3184
    .local v5, "appZygote":Landroid/os/AppZygote;
    if-eqz p1, :cond_2

    .line 3185
    invoke-virtual {v5}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3186
    goto :goto_2

    .line 3188
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3175
    .end local v4    # "appZygoteUid":I
    .end local v5    # "appZygote":Landroid/os/AppZygote;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 3190
    .end local v2    # "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    .end local v3    # "i":I
    goto :goto_0

    .line 3191
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 3192
    .local v2, "appZygote":Landroid/os/AppZygote;
    invoke-virtual {p0, v2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 3193
    .end local v2    # "appZygote":Landroid/os/AppZygote;
    goto :goto_3

    .line 3194
    :cond_5
    return-void
.end method

.method killPackageProcessesLSP(Ljava/lang/String;IIIIILjava/lang/String;)Z
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "minOomAdj"    # I
    .param p5, "reasonCode"    # I
    .param p6, "subReason"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 3162
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    move-result v5

    return v5
.end method

.method killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z
    .locals 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "minOomAdj"    # I
    .param p5, "callerWillRestart"    # Z
    .param p6, "allowRestart"    # Z
    .param p7, "doit"    # Z
    .param p8, "evenPersistent"    # Z
    .param p9, "setRemoved"    # Z
    .param p10, "uninstalling"    # Z
    .param p11, "reasonCode"    # I
    .param p12, "subReason"    # I
    .param p13, "reason"    # Ljava/lang/String;

    .line 3253
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 3254
    .local v11, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 3259
    .local v12, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 3260
    .local v13, "NP":I
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_0
    if-ge v1, v13, :cond_16

    .line 3261
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 3262
    .local v2, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3263
    .local v3, "NA":I
    const/4 v4, 0x0

    .local v4, "ia":I
    :goto_1
    if-ge v4, v3, :cond_15

    .line 3264
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 3265
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p8, :cond_0

    .line 3267
    move/from16 v14, p4

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    const/4 v15, 0x1

    goto/16 :goto_8

    .line 3269
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3270
    if-eqz p7, :cond_6

    .line 3271
    const/4 v6, 0x0

    .line 3272
    .local v6, "shouldAllowRestart":Z
    if-nez p10, :cond_5

    if-eqz v8, :cond_5

    .line 3275
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3276
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 3277
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v14, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v16, 0x1

    iget v15, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 3279
    invoke-virtual {v11, v7, v14, v15}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_4

    move/from16 v7, v16

    goto :goto_3

    .line 3277
    :cond_1
    const/16 v16, 0x1

    goto :goto_2

    .line 3276
    :cond_2
    const/16 v16, 0x1

    goto :goto_2

    .line 3275
    :cond_3
    const/16 v16, 0x1

    .line 3279
    :cond_4
    :goto_2
    const/4 v7, 0x0

    :goto_3
    move v6, v7

    goto :goto_4

    .line 3272
    :cond_5
    const/16 v16, 0x1

    .line 3282
    :goto_4
    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v7, v5, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3283
    .end local v6    # "shouldAllowRestart":Z
    move/from16 v14, p4

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v15, v16

    goto/16 :goto_8

    .line 3270
    :cond_6
    const/16 v16, 0x1

    move/from16 v14, p4

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v15, v16

    goto/16 :goto_8

    .line 3288
    :cond_7
    const/16 v16, 0x1

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v6

    move/from16 v14, p4

    if-ge v6, v14, :cond_8

    .line 3294
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v15, v16

    goto/16 :goto_8

    .line 3297
    :cond_8
    const/4 v6, 0x0

    .line 3301
    .restart local v6    # "shouldAllowRestart":Z
    const/4 v7, -0x1

    if-nez v8, :cond_b

    .line 3302
    if-eq v10, v7, :cond_9

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v7, v10, :cond_9

    .line 3303
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v15, v16

    goto/16 :goto_8

    .line 3305
    :cond_9
    if-ltz v9, :cond_a

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v7, v9, :cond_a

    .line 3306
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v15, v16

    goto/16 :goto_8

    .line 3305
    :cond_a
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    goto/16 :goto_6

    .line 3312
    :cond_b
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 3313
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    move/from16 v15, v16

    goto :goto_5

    :cond_c
    const/4 v15, 0x0

    :goto_5
    nop

    .line 3314
    .local v15, "isDep":Z
    if-nez v15, :cond_d

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v7, v9, :cond_d

    .line 3315
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v15, v16

    goto/16 :goto_8

    .line 3317
    :cond_d
    const/4 v7, -0x1

    if-eq v10, v7, :cond_e

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v7, v10, :cond_e

    .line 3318
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v15, v16

    goto :goto_8

    .line 3320
    :cond_e
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 3321
    .local v7, "isInPkgList":Z
    if-nez v7, :cond_f

    if-nez v15, :cond_f

    .line 3322
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v15, v16

    goto :goto_8

    .line 3324
    :cond_f
    if-nez v7, :cond_11

    if-eqz v15, :cond_11

    if-nez p10, :cond_11

    move/from16 v17, v1

    .end local v1    # "ip":I
    .local v17, "ip":I
    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_10

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v2

    .end local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .local v18, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    iget v2, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v19, v3

    .end local v3    # "NA":I
    .local v19, "NA":I
    iget v3, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 3325
    invoke-virtual {v11, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3328
    const/4 v6, 0x1

    goto :goto_6

    .line 3324
    .end local v18    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v19    # "NA":I
    .restart local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v3    # "NA":I
    :cond_10
    move-object/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "NA":I
    .restart local v18    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v19    # "NA":I
    goto :goto_6

    .end local v17    # "ip":I
    .end local v18    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v19    # "NA":I
    .restart local v1    # "ip":I
    .restart local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v3    # "NA":I
    :cond_11
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    .line 3333
    .end local v1    # "ip":I
    .end local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "NA":I
    .end local v7    # "isInPkgList":Z
    .end local v15    # "isDep":Z
    .restart local v17    # "ip":I
    .restart local v18    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v19    # "NA":I
    :cond_12
    :goto_6
    if-nez p7, :cond_13

    .line 3334
    return v16

    .line 3336
    :cond_13
    if-eqz p9, :cond_14

    .line 3337
    move/from16 v15, v16

    invoke-virtual {v5, v15}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    goto :goto_7

    .line 3336
    :cond_14
    move/from16 v15, v16

    .line 3339
    :goto_7
    new-instance v1, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3263
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "shouldAllowRestart":Z
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto/16 :goto_1

    .end local v17    # "ip":I
    .end local v18    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v19    # "NA":I
    .restart local v1    # "ip":I
    .restart local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v3    # "NA":I
    :cond_15
    move/from16 v14, p4

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    .line 3260
    .end local v1    # "ip":I
    .end local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "NA":I
    .end local v4    # "ia":I
    .restart local v17    # "ip":I
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "ip":I
    .restart local v1    # "ip":I
    goto/16 :goto_0

    :cond_16
    move/from16 v14, p4

    move/from16 v17, v1

    const/4 v15, 0x1

    .line 3343
    .end local v1    # "ip":I
    const/16 v1, 0x2710

    if-lt v9, v1, :cond_17

    const/16 v1, 0x4e1f

    if-gt v9, v1, :cond_17

    move v1, v15

    goto :goto_9

    :cond_17
    const/4 v1, 0x0

    :goto_9
    move/from16 v16, v1

    .line 3346
    .local v16, "killingUserApp":Z
    if-eqz v16, :cond_18

    .line 3347
    new-instance v1, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 3350
    :cond_18
    const/4 v1, 0x0

    .line 3351
    .local v1, "idx":I
    :goto_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 3352
    invoke-static {v12, v1}, Lcom/android/server/am/ProcessList;->getUIDSublist(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 3353
    .local v2, "uidProcs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3357
    .local v3, "packageUID":I
    if-eqz v16, :cond_19

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v4, v9, :cond_19

    move v4, v15

    goto :goto_b

    :cond_19
    const/4 v4, 0x0

    :goto_b
    move/from16 v17, v4

    .line 3359
    .local v17, "doFreeze":Z
    if-eqz v17, :cond_1a

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ProcessList;->freezeBinderAndPackageCgroup(Ljava/util/List;I)V

    .line 3361
    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 3362
    .local v4, "proc":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-nez p6, :cond_1b

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_1b
    goto :goto_d

    :cond_1c
    move v6, v3

    const/4 v3, 0x0

    goto :goto_e

    :goto_d
    move v6, v3

    move v3, v15

    .end local v3    # "packageUID":I
    .local v6, "packageUID":I
    :goto_e
    if-nez v17, :cond_1d

    move v7, v15

    goto :goto_f

    :cond_1d
    const/4 v7, 0x0

    :goto_f
    move/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v22, v4

    move-object v1, v5

    move/from16 v21, v6

    move/from16 v2, p5

    move/from16 v4, p11

    move/from16 v5, p12

    move-object/from16 v6, p13

    .end local v1    # "idx":I
    .end local v2    # "uidProcs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    .end local v4    # "proc":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;"
    .end local v6    # "packageUID":I
    .local v19, "idx":I
    .local v20, "uidProcs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    .local v21, "packageUID":I
    .local v22, "proc":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;"
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 3364
    .end local v22    # "proc":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;"
    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    goto :goto_c

    .line 3365
    .end local v19    # "idx":I
    .end local v20    # "uidProcs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    .end local v21    # "packageUID":I
    .restart local v1    # "idx":I
    .restart local v2    # "uidProcs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    .restart local v3    # "packageUID":I
    :cond_1e
    move/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    .end local v1    # "idx":I
    .end local v2    # "uidProcs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    .end local v3    # "packageUID":I
    .restart local v19    # "idx":I
    .restart local v20    # "uidProcs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    .restart local v21    # "packageUID":I
    const/4 v3, 0x0

    invoke-virtual {v0, v8, v9, v10, v3}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(Ljava/lang/String;IIZ)V

    .line 3367
    if-eqz v17, :cond_1f

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/ProcessList;->unfreezePackageCgroup(I)Z

    .line 3369
    :cond_1f
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    add-int v1, v19, v1

    .line 3370
    .end local v17    # "doFreeze":Z
    .end local v19    # "idx":I
    .end local v20    # "uidProcs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    .end local v21    # "packageUID":I
    .restart local v1    # "idx":I
    goto/16 :goto_a

    .line 3371
    :cond_20
    move/from16 v19, v1

    const/4 v3, 0x0

    .end local v1    # "idx":I
    .restart local v19    # "idx":I
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 3372
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    move v3, v15

    :cond_21
    return v3
.end method

.method killProcessesWhenImperceptible([ILjava/lang/String;I)V
    .locals 5
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "requester"    # I

    .line 5899
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5900
    return-void

    .line 5903
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 5905
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 5906
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5907
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 5908
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5909
    if-eqz v3, :cond_1

    .line 5910
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 5913
    .end local v1    # "i":I
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 5905
    .restart local v1    # "i":I
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5908
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "pids":[I
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "requester":I
    :try_start_4
    throw v3

    .line 5905
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "pids":[I
    .restart local p2    # "reason":Ljava/lang/String;
    .restart local p3    # "requester":I
    :cond_2
    nop

    .line 5913
    .end local v1    # "i":I
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5914
    return-void

    .line 5913
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 13
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "customProcess"    # Ljava/lang/String;
    .param p3, "isolated"    # Z
    .param p4, "isolatedUid"    # I
    .param p5, "isSdkSandbox"    # Z
    .param p6, "sdkSandboxUid"    # I
    .param p7, "sdkSandboxClientAppPackage"    # Ljava/lang/String;
    .param p8, "hostingRecord"    # Lcom/android/server/am/HostingRecord;

    .line 3565
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    .line 3566
    .local v4, "proc":Ljava/lang/String;
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3567
    .local v0, "userId":I
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3568
    .local v1, "uid":I
    if-eqz p5, :cond_1

    .line 3569
    move/from16 v1, p6

    .line 3571
    :cond_1
    invoke-static {v1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-eqz p5, :cond_2

    if-nez p7, :cond_3

    .line 3572
    :cond_2
    const-string v2, "ActivityManager"

    const-string v5, "Abort creating new sandbox process as required parameters are missing."

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    return-object v3

    .line 3575
    :cond_3
    if-eqz p3, :cond_7

    .line 3576
    if-nez p4, :cond_6

    .line 3577
    move-object/from16 v9, p8

    invoke-direct {p0, p1, v9}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v2

    .line 3578
    .local v2, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    if-nez v2, :cond_4

    .line 3579
    return-object v3

    .line 3581
    :cond_4
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v1

    .line 3582
    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    .line 3583
    return-object v3

    .line 3582
    :cond_5
    nop

    .line 3585
    .end local v2    # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    goto :goto_1

    .line 3588
    :cond_6
    move-object/from16 v9, p8

    move/from16 v1, p4

    .line 3590
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, v2, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->addIsolatedUid(II)V

    .line 3591
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 3599
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    move v5, v1

    goto :goto_2

    .line 3575
    :cond_7
    move-object/from16 v9, p8

    move v5, v1

    .line 3601
    .end local v1    # "uid":I
    .local v5, "uid":I
    :goto_2
    new-instance v1, Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3603
    invoke-virtual {v9}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v7

    invoke-virtual {v9}, Lcom/android/server/am/HostingRecord;->getDefiningProcessName()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 3604
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3606
    .local v2, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v6

    .line 3608
    .local v6, "wasStopped":Z
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_a

    .line 3609
    const/4 v10, 0x0

    .line 3610
    .local v10, "wasEverLaunched":Z
    nop

    .line 3611
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v11

    xor-int/2addr v11, v8

    .line 3623
    .end local v10    # "wasEverLaunched":Z
    .local v11, "wasEverLaunched":Z
    invoke-virtual {v9}, Lcom/android/server/am/HostingRecord;->isTypeActivity()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 3626
    if-eqz v11, :cond_8

    .line 3627
    move v10, v7

    goto :goto_3

    .line 3628
    :cond_8
    move v10, v8

    :goto_3
    nop

    .line 3629
    .local v10, "stoppedState":I
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/wm/WindowProcessController;->setStoppedState(I)V

    .line 3630
    .end local v10    # "stoppedState":I
    goto :goto_4

    .line 3631
    :cond_9
    nop

    .line 3633
    invoke-virtual {v1, v11}, Lcom/android/server/am/ProcessRecord;->setWasForceStopped(Z)V

    .line 3640
    .end local v11    # "wasEverLaunched":Z
    :cond_a
    :goto_4
    if-nez p3, :cond_b

    if-nez p5, :cond_b

    if-nez v0, :cond_b

    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v11, 0x9

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_b

    iget-object v10, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3643
    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3645
    invoke-virtual {v2, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3646
    invoke-virtual {v2, v7}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3647
    invoke-virtual {v1, v8}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 3648
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v8, -0x320

    invoke-virtual {v7, v1, v8}, Lcom/android/server/am/ProcessStateController;->setMaxAdj(Lcom/android/server/am/ProcessRecord;I)V

    .line 3650
    :cond_b
    if-eqz p3, :cond_c

    if-eqz p4, :cond_c

    .line 3653
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v8, -0x2bc

    invoke-virtual {v7, v1, v8}, Lcom/android/server/am/ProcessStateController;->setMaxAdj(Lcom/android/server/am/ProcessRecord;I)V

    .line 3655
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3656
    return-object v1
.end method

.method noteAppKill(IIIILjava/lang/String;)V
    .locals 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "subReason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .line 5878
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 5879
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "note: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is being killed, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sub-reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 5885
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 5886
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5887
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5889
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5890
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5892
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .end local p1    # "pid":I
    .end local p2    # "uid":I
    .end local p3    # "reason":I
    .end local p4    # "subReason":I
    .end local p5    # "msg":Ljava/lang/String;
    .local v3, "pid":I
    .local v4, "uid":I
    .local v5, "reason":I
    .local v6, "subReason":I
    .local v7, "msg":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(IIIILjava/lang/String;)V

    .line 5893
    return-void

    .line 5886
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "pid":I
    .end local v4    # "uid":I
    .end local v5    # "reason":I
    .end local v6    # "subReason":I
    .end local v7    # "msg":Ljava/lang/String;
    .restart local p1    # "pid":I
    .restart local p2    # "uid":I
    .restart local p3    # "reason":I
    .restart local p4    # "subReason":I
    .restart local p5    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object p1, v0

    .end local p1    # "pid":I
    .end local p2    # "uid":I
    .end local p3    # "reason":I
    .end local p4    # "subReason":I
    .end local p5    # "msg":Ljava/lang/String;
    .restart local v3    # "pid":I
    .restart local v4    # "uid":I
    .restart local v5    # "reason":I
    .restart local v6    # "subReason":I
    .restart local v7    # "msg":Ljava/lang/String;
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0
.end method

.method noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # I
    .param p3, "subReason"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .line 5862
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 5863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is being killed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5864
    invoke-static {p2}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sub-reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5865
    invoke-static {p3}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5863
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5867
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5869
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5870
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5872
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 5873
    return-void
.end method

.method noteAppRecoverableCrash(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5850
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 5851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has a recoverable native crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5853
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppRecoverableCrash(Lcom/android/server/am/ProcessRecord;)V

    .line 5854
    return-void
.end method

.method noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5831
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 5832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died, saving the exit info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5835
    :cond_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->processDied(Ljava/lang/String;I)V

    .line 5836
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    nop

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 5837
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 5839
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5840
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5842
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V

    .line 5843
    return-void
.end method

.method public ntGetLruProcesses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 4479
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onLmkdConnect(Ljava/io/OutputStream;)Z
    .locals 7
    .param p1, "ostream"    # Ljava/io/OutputStream;

    .line 1798
    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1799
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1800
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1801
    iget-boolean v3, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1803
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    .line 1804
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1805
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1806
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v3, v3, v0

    mul-int/lit16 v3, v3, 0x400

    sget v5, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    div-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1807
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1805
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1822
    .end local v0    # "i":I
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1805
    .restart local v0    # "i":I
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    nop

    .line 1809
    .end local v0    # "i":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1812
    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1813
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1814
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1815
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 1818
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1819
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1820
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1821
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1824
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    nop

    .line 1825
    return v4

    .line 1822
    :goto_1
    nop

    .line 1823
    .local v0, "ex":Ljava/io/IOException;
    return v1
.end method

.method onSystemReady()V
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppStartInfoTracker;->onSystemReady()V

    .line 1036
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppExitInfoTracker;->onSystemReady()V

    .line 1037
    return-void
.end method

.method registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/app/IProcessObserver;

    .line 5181
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 5182
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5183
    monitor-exit v0

    .line 5184
    return-void

    .line 5183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3129
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3130
    .local v0, "lrui":I
    const/4 v1, 0x1

    if-ltz v0, :cond_5

    .line 3131
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 3132
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3133
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3134
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3154
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3136
    :cond_0
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-lez v3, :cond_1

    .line 3138
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 3139
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 3140
    const-string/jumbo v3, "hasn\'t been killed"

    const/16 v4, 0xd

    const/16 v5, 0x10

    invoke-virtual {p0, p1, v4, v5, v3}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    goto :goto_0

    .line 3143
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 3147
    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v0, v3, :cond_3

    .line 3148
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3150
    :cond_3
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v0, v3, :cond_4

    .line 3151
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3153
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3154
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 3156
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/am/ActivityManagerService;->removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 3157
    return-void
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "reasonCode"    # I
    .param p5, "subReason"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .line 3385
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "callerWillRestart":Z
    .end local p3    # "allowRestart":Z
    .end local p4    # "reasonCode":I
    .end local p5    # "subReason":I
    .end local p6    # "reason":Ljava/lang/String;
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .local v2, "callerWillRestart":Z
    .local v3, "allowRestart":Z
    .local v4, "reasonCode":I
    .local v5, "subReason":I
    .local v6, "reason":Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z
    .locals 19
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "reasonCode"    # I
    .param p5, "subReason"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "async"    # Z

    .line 3392
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3393
    .local v7, "name":Ljava/lang/String;
    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3394
    .local v8, "uid":I
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v3, "ActivityManager"

    nop

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Force removing proc "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3395
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3394
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2, v7, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 3398
    .local v9, "old":Lcom/android/server/am/ProcessRecord;
    const/4 v2, 0x0

    if-eq v9, v1, :cond_1

    .line 3400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring remove of inactive process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    return v2

    .line 3403
    :cond_1
    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3404
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 3406
    const/4 v3, 0x0

    .line 3407
    .local v3, "needRestart":Z
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v10

    .line 3408
    .local v10, "pid":I
    if-lez v10, :cond_2

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v10, v4, :cond_3

    :cond_2
    if-nez v10, :cond_a

    .line 3409
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3410
    :cond_3
    if-lez v10, :cond_4

    .line 3411
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 3412
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3413
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 3414
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v2, :cond_4

    .line 3415
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 3416
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 3419
    :cond_4
    const/4 v2, 0x0

    .line 3420
    .local v2, "willRestart":Z
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v4, :cond_6

    .line 3421
    if-nez p2, :cond_5

    .line 3422
    const/4 v2, 0x1

    move v11, v2

    move v12, v3

    goto :goto_0

    .line 3424
    :cond_5
    const/4 v3, 0x1

    move v11, v2

    move v12, v3

    goto :goto_0

    .line 3427
    :cond_6
    move v11, v2

    move v12, v3

    .end local v2    # "willRestart":Z
    .end local v3    # "needRestart":Z
    .local v11, "willRestart":Z
    .local v12, "needRestart":Z
    :goto_0
    const/4 v5, 0x1

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v2, p6

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZZ)V

    .line 3428
    if-lez v10, :cond_7

    .line 3432
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v10, v1}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 3434
    :cond_7
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v5, p3

    move v3, v10

    move v4, v11

    .end local v10    # "pid":I
    .end local v11    # "willRestart":Z
    .local v3, "pid":I
    .local v4, "willRestart":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;IZZZ)V

    .line 3436
    move-object v1, v2

    move v2, v3

    .end local v3    # "pid":I
    .local v2, "pid":I
    if-eqz v4, :cond_8

    .line 3437
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3438
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3441
    .end local v4    # "willRestart":Z
    :cond_8
    move v3, v12

    goto :goto_2

    .line 3409
    .end local v2    # "pid":I
    .end local v12    # "needRestart":Z
    .local v3, "needRestart":Z
    .restart local v10    # "pid":I
    :cond_9
    move v2, v10

    .end local v10    # "pid":I
    .restart local v2    # "pid":I
    goto :goto_1

    .line 3408
    .end local v2    # "pid":I
    .restart local v10    # "pid":I
    :cond_a
    move v2, v10

    .line 3442
    .end local v10    # "pid":I
    .restart local v2    # "pid":I
    :goto_1
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3445
    :goto_2
    return v3
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "reasonCode"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 3378
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "callerWillRestart":Z
    .end local p3    # "allowRestart":Z
    .end local p4    # "reasonCode":I
    .end local p5    # "reason":Ljava/lang/String;
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .local v2, "callerWillRestart":Z
    .local v3, "allowRestart":Z
    .local v4, "reasonCode":I
    .local v6, "reason":Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3661
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "expecting"    # Lcom/android/server/am/ProcessRecord;

    .line 3667
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3668
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3669
    .local v1, "record":Lcom/android/server/am/ProcessRecord;
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 3673
    if-eqz p3, :cond_1

    if-ne v0, p3, :cond_2

    .line 3674
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3676
    :cond_2
    if-eqz v1, :cond_5

    .line 3677
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 3678
    .local v3, "uidRecord":Lcom/android/server/am/UidRecord;
    if-eqz v3, :cond_5

    .line 3679
    invoke-virtual {v3, v1}, Lcom/android/server/am/UidRecord;->removeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3680
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v4

    if-nez v4, :cond_4

    .line 3682
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v4, :cond_3

    .line 3683
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No more processes in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3699
    .end local v3    # "uidRecord":Lcom/android/server/am/UidRecord;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 3685
    .restart local v3    # "uidRecord":Lcom/android/server/am/UidRecord;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    const v6, -0x7fffffff

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 3687
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 3688
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 3689
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/FgsTempAllowList;->removeUid(I)V

    .line 3690
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-virtual {v4, p2, v6, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    .line 3693
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p2, v6}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 3696
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3699
    .end local v3    # "uidRecord":Lcom/android/server/am/UidRecord;
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3700
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3701
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 3703
    if-eqz v1, :cond_6

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz v2, :cond_6

    .line 3704
    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3706
    :cond_6
    if-eqz v1, :cond_7

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v2, :cond_7

    .line 3707
    invoke-static {p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v2

    .line 3708
    .local v2, "appUid":I
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3709
    .local v3, "sdkSandboxesForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v3, :cond_7

    .line 3710
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3711
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 3712
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3716
    .end local v2    # "appUid":I
    .end local v3    # "sdkSandboxesForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3718
    return-object v0

    .line 3699
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v3
.end method

.method scheduleDispatchProcessDiedLocked(II)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 5316
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5317
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 5318
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 5319
    .local v2, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    if-lez p1, :cond_0

    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_0

    .line 5320
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5321
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5326
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 5317
    .restart local v1    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 5324
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5325
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5326
    monitor-exit v0

    .line 5327
    return-void

    .line 5326
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;
    .locals 4
    .param p1, "iterateForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/function/Function<",
            "Lcom/android/server/am/ProcessRecord;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 4532
    .local p2, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/am/ProcessRecord;TR;>;"
    if-eqz p1, :cond_2

    .line 4533
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4535
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "r":Ljava/lang/Object;, "TR;"
    if-eqz v2, :cond_0

    .line 4536
    return-object v3

    .line 4535
    :cond_0
    nop

    .line 4533
    .end local v3    # "r":Ljava/lang/Object;, "TR;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .end local v0    # "i":I
    .end local v1    # "size":I
    goto :goto_2

    .line 4540
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 4542
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;, "TR;"
    if-eqz v1, :cond_3

    .line 4543
    return-object v2

    .line 4542
    :cond_3
    nop

    .line 4540
    .end local v2    # "r":Ljava/lang/Object;, "TR;"
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4547
    .end local v0    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .locals 7
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 5452
    const/4 v0, 0x0

    .line 5453
    .local v0, "foundProcess":Z
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 5454
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 5455
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 5456
    .local v3, "thread":Landroid/app/IApplicationThread;
    if-eqz v3, :cond_3

    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p3, :cond_3

    .line 5458
    :cond_0
    :try_start_0
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    .local v4, "index":I
    :goto_1
    if-ltz v4, :cond_2

    if-nez v0, :cond_2

    .line 5459
    aget-object v5, p2, v4

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5460
    const/4 v0, 0x1

    .line 5458
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 5464
    .end local v4    # "index":I
    :catch_0
    move-exception v4

    goto :goto_2

    .line 5463
    :cond_2
    invoke-interface {v3, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5465
    nop

    .line 5453
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "thread":Landroid/app/IApplicationThread;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 5469
    .end local v1    # "i":I
    if-nez v0, :cond_5

    .line 5471
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5473
    goto :goto_3

    .line 5472
    :catch_1
    move-exception v1

    .line 5475
    :cond_5
    :goto_3
    return-void
.end method

.method setAllHttpProxy()V
    .locals 8

    .line 3789
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 3790
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3791
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3792
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 3796
    .local v3, "thread":Landroid/app/IApplicationThread;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_0

    if-eqz v3, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 3798
    :try_start_1
    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3802
    goto :goto_1

    .line 3805
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "thread":Landroid/app/IApplicationThread;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3799
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "thread":Landroid/app/IApplicationThread;
    :catch_0
    move-exception v4

    .line 3800
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to update http proxy for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "thread":Landroid/app/IApplicationThread;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 3805
    .end local v1    # "i":I
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3806
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 3807
    return-void

    .line 3805
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method setLruProcessServiceStartLSP(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 4488
    iput p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4489
    return-void
.end method

.method startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .locals 19
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "intentFlags"    # I
    .param p5, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p6, "zygotePolicyFlags"    # I
    .param p7, "allowWhileBooting"    # Z
    .param p8, "isolated"    # Z
    .param p9, "isolatedUid"    # I
    .param p10, "isSdkSandbox"    # Z
    .param p11, "sdkSandboxUid"    # I
    .param p12, "sdkSandboxClientAppPackage"    # Ljava/lang/String;
    .param p13, "abiOverride"    # Ljava/lang/String;
    .param p14, "entryPoint"    # Ljava/lang/String;
    .param p15, "entryPointArgs"    # [Ljava/lang/String;
    .param p16, "crashHandler"    # Ljava/lang/Runnable;

    .line 2840
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v9, p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2841
    .local v10, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v12

    .line 2843
    .local v12, "startTimeNs":J
    const-string v14, "/"

    const/4 v15, 0x0

    const-string v3, "ActivityManager"

    if-nez p8, :cond_3

    .line 2844
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 2845
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v5, "startProcess: after getProcessRecord"

    invoke-direct {v0, v10, v11, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2847
    and-int/lit8 v5, p4, 0x4

    if-eqz v5, :cond_1

    .line 2850
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v2, v6}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2851
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    :cond_0
    return-object v15

    .line 2860
    :cond_1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing bad process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    :cond_2
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v2, v6}, Lcom/android/server/am/AppErrors;->resetProcessCrashTime(Ljava/lang/String;I)V

    .line 2863
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v2, v6}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2864
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2865
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 2864
    const/16 v6, 0x7540

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2867
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v2, v6}, Lcom/android/server/am/AppErrors;->clearBadProcess(Ljava/lang/String;I)V

    .line 2868
    if-eqz v4, :cond_4

    .line 2869
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    goto :goto_0

    .line 2875
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_3
    const/4 v4, 0x0

    .line 2884
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_4
    :goto_0
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    nop

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startProcess: name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " knownToBeDead="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " thread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2886
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    goto :goto_1

    :cond_5
    move-object v6, v15

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    goto :goto_2

    :cond_6
    const/4 v6, -0x1

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2884
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :cond_7
    const/4 v5, 0x0

    .line 2889
    .local v5, "predecessor":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    if-lez v6, :cond_e

    .line 2890
    if-nez v9, :cond_8

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    if-nez v6, :cond_b

    .line 2893
    :cond_9
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App already running: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    :cond_a
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v3, v6, v7, v8}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2896
    const-string/jumbo v3, "startProcess: done, added package to proc"

    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2897
    return-object v4

    .line 2902
    :cond_b
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App died: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    :cond_c
    const-string/jumbo v6, "startProcess: bad proc running, killing"

    invoke-direct {v0, v10, v11, v6}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2904
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2905
    const-string/jumbo v6, "startProcess: done killing old proc"

    invoke-direct {v0, v10, v11, v6}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2907
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v6

    const-string v7, " is attached to a previous process"

    if-nez v6, :cond_d

    .line 2909
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2911
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    :goto_3
    move-object v5, v4

    .line 2916
    const/4 v4, 0x0

    goto :goto_5

    .line 2917
    :cond_e
    if-nez p8, :cond_10

    .line 2920
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 2921
    if-eqz v5, :cond_10

    .line 2925
    if-eqz v4, :cond_f

    if-eq v4, v5, :cond_f

    .line 2926
    iput-object v5, v4, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2927
    iput-object v4, v5, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    goto :goto_4

    .line 2929
    :cond_f
    const/4 v4, 0x0

    .line 2931
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is attached to a previous process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2932
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2931
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    :cond_10
    :goto_5
    if-nez v4, :cond_13

    .line 2937
    const-string/jumbo v6, "startProcess: creating new process record"

    invoke-direct {v0, v10, v11, v6}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2938
    move-object/from16 v8, p5

    move/from16 v6, p11

    move-object/from16 v7, p12

    move-object v9, v3

    move-wide/from16 v17, v12

    move-object/from16 v16, v15

    move/from16 v3, p8

    move-object v15, v4

    move-object v12, v5

    move/from16 v4, p9

    move/from16 v5, p10

    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .local v12, "predecessor":Lcom/android/server/am/ProcessRecord;
    .local v15, "app":Lcom/android/server/am/ProcessRecord;
    .local v17, "startTimeNs":J
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v13

    .line 2940
    .end local v15    # "app":Lcom/android/server/am/ProcessRecord;
    .local v13, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v13, :cond_11

    .line 2941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed making new process record for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isolated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    return-object v16

    .line 2945
    :cond_11
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object/from16 v5, p16

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashHandler(Ljava/lang/Runnable;)V

    .line 2946
    move-object/from16 v4, p14

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPoint(Ljava/lang/String;)V

    .line 2947
    move-object/from16 v6, p15

    invoke-virtual {v13, v6}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPointArgs([Ljava/lang/String;)V

    .line 2948
    if-eqz v12, :cond_12

    .line 2949
    iput-object v12, v13, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2950
    iput-object v13, v12, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 2952
    :cond_12
    const-string/jumbo v7, "startProcess: done creating new process record"

    invoke-direct {v0, v10, v11, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v15, v13

    goto :goto_6

    .line 2955
    .end local v13    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "startTimeNs":J
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .local v12, "startTimeNs":J
    :cond_13
    move-object/from16 v6, p15

    move-object v9, v3

    move-wide/from16 v17, v12

    move-object/from16 v16, v15

    move/from16 v3, p8

    move-object v15, v4

    move-object v12, v5

    move-object/from16 v4, p14

    move-object/from16 v5, p16

    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .local v12, "predecessor":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "startTimeNs":J
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v13, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v15, v7, v13, v14, v8}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2956
    const-string/jumbo v7, "startProcess: added package to existing proc"

    invoke-direct {v0, v10, v11, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2961
    :goto_6
    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    nop

    if-nez v7, :cond_16

    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2962
    invoke-virtual {v7, v1}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-nez v7, :cond_16

    if-nez p7, :cond_16

    .line 2964
    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 2965
    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2967
    :cond_14
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v7, :cond_15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "System not ready, putting on hold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    :cond_15
    const-string/jumbo v7, "startProcess: returning with proc on hold"

    invoke-direct {v0, v10, v11, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2970
    return-object v15

    .line 2973
    :cond_16
    const-string/jumbo v7, "startProcess: stepping in to startProcess"

    invoke-direct {v0, v10, v11, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2974
    nop

    .line 2975
    move-object/from16 v8, p5

    move/from16 v7, p6

    move-object/from16 v9, p13

    invoke-virtual {v0, v15, v8, v7, v9}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    move-result v13

    .line 2976
    .local v13, "success":Z
    const-string/jumbo v14, "startProcess: done starting proc!"

    invoke-direct {v0, v10, v11, v14}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2977
    if-eqz v13, :cond_17

    move-object/from16 v16, v15

    :cond_17
    return-object v16
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I

    .line 2823
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    .line 2824
    return-void
.end method

.method startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 25
    .param p1, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "zygotePolicyFlags"    # I
    .param p8, "mountExternal"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "requiredAbi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "startUptime"    # J
    .param p15, "startElapsedTime"    # J

    .line 2294
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2295
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 2296
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    .line 2297
    :try_start_0
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setKilledByAm(Z)V

    .line 2298
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setKilled(Z)V

    .line 2299
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2300
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 2301
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcessLocked processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with non-zero startSeq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2302
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2301
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2305
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcessLocked processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with non-zero pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2305
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2309
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setLoggableCompatChanges([J)V

    .line 2310
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_2

    .line 2311
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Lcom/android/server/compat/PlatformCompat;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2312
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Lcom/android/server/compat/PlatformCompat;->getLoggableChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setLoggableCompatChanges([J)V

    .line 2314
    :cond_2
    iget-wide v3, v1, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, v1, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    move-wide v11, v5

    .line 2315
    .local v11, "startSeq":J
    invoke-virtual {v2, v11, v12}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    .line 2316
    move-object/from16 v4, p1

    move/from16 v3, p4

    move-object/from16 v5, p9

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;JJ)V

    .line 2317
    nop

    nop

    if-nez p12, :cond_4

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2318
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v10

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v13

    .line 2317
    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2319
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2321
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_6

    .line 2322
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    nop

    if-eqz v0, :cond_5

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Posting procStart msg for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2322
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-wide v5, v11

    .end local v11    # "startSeq":J
    .local v5, "startSeq":J
    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2327
    return v13

    .line 2330
    .end local v5    # "startSeq":J
    .restart local v11    # "startSeq":J
    :cond_6
    move-wide v5, v11

    .end local v11    # "startSeq":J
    .restart local v5    # "startSeq":J
    :try_start_1
    invoke-direct/range {p0 .. p14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 2334
    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2342
    nop

    .end local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_3

    .line 2336
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 2337
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure starting process "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2339
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2340
    iget-object v14, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v16

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v24, "start failure"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v3

    invoke-virtual/range {v14 .. v24}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    .line 2343
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_7

    goto :goto_4

    :cond_7
    move v13, v10

    :goto_4
    return v13

    .line 2299
    .end local v5    # "startSeq":J
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I
    .param p4, "abiOverride"    # Ljava/lang/String;

    .line 2829
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "abiOverride":Ljava/lang/String;
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .local v2, "hostingRecord":Lcom/android/server/am/HostingRecord;
    .local v3, "zygotePolicyFlags":I
    .local v6, "abiOverride":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z
    .locals 37
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I
    .param p4, "disableHiddenApiChecks"    # Z
    .param p5, "disableTestApiChecks"    # Z
    .param p6, "abiOverride"    # Ljava/lang/String;

    .line 1994
    move-object/from16 v2, p0

    move-object/from16 v5, p1

    const-string v0, "1"

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1995
    return v3

    .line 1997
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1998
    .local v6, "startUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 1999
    .local v17, "startElapsedTime":J
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    const/4 v4, 0x0

    if-lez v1, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v8, :cond_1

    .line 2000
    const-string/jumbo v1, "startProcess: removing from pids map"

    invoke-direct {v2, v6, v7, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2001
    iget-object v1, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    invoke-virtual {v1, v8, v5}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 2002
    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 2003
    iget-object v1, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x14

    invoke-virtual {v1, v8, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2004
    const-string/jumbo v1, "startProcess: done removing from pids map"

    invoke-direct {v2, v6, v7, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2005
    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2006
    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    .line 2009
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 2010
    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 2012
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v8, "ActivityManager"

    if-eqz v1, :cond_2

    iget-object v1, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startProcessLocked removing on hold: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_2
    iget-object v1, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2017
    const-string/jumbo v1, "startProcess: starting to update cpu stats"

    invoke-direct {v2, v6, v7, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2018
    iget-object v1, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2019
    const-string/jumbo v1, "startProcess: done updating cpu stats"

    invoke-direct {v2, v6, v7, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2022
    :try_start_0
    iget v1, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8

    .line 2024
    .local v1, "userId":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v1}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8

    .line 2027
    nop

    .line 2029
    :try_start_2
    iget v9, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2030
    .local v9, "uid":I
    const/4 v10, 0x0

    .line 2031
    .local v10, "gids":[I
    const/4 v11, 0x0

    .line 2032
    .local v11, "mountExternal":I
    const/4 v12, 0x0

    .line 2033
    .local v12, "externalStorageAccess":Z
    iget-boolean v13, v5, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8

    if-nez v13, :cond_6

    .line 2034
    const/4 v13, 0x0

    .line 2036
    .local v13, "permGids":[I
    :try_start_3
    const-string/jumbo v14, "startProcess: getting gids from package manager"

    invoke-direct {v2, v6, v7, v14}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2037
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 2038
    .local v14, "pm":Landroid/content/pm/IPackageManager;
    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v16, v4

    :try_start_4
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "gids":[I
    .end local v11    # "mountExternal":I
    .local v19, "gids":[I
    .local v20, "mountExternal":I
    const-wide/32 v10, 0x10000000

    :try_start_5
    invoke-interface {v14, v15, v10, v11, v4}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v4

    move-object v13, v4

    .line 2040
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManagerInternal;

    .line 2042
    .local v4, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v10
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move v11, v10

    .line 2044
    .end local v20    # "mountExternal":I
    .restart local v11    # "mountExternal":I
    :try_start_6
    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/os/storage/StorageManagerInternal;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v10

    move v12, v10

    .line 2046
    iget-object v10, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->isAppFreezerExemptInstPkg()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "android.permission.INSTALL_PACKAGES"

    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2047
    invoke-interface {v14, v10, v15, v1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_3

    .line 2050
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is exempt from freezer"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeExempt(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 2249
    .end local v1    # "userId":I
    .end local v4    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v9    # "uid":I
    .end local v11    # "mountExternal":I
    .end local v12    # "externalStorageAccess":Z
    .end local v13    # "permGids":[I
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .end local v19    # "gids":[I
    :catch_0
    move-exception v0

    :goto_0
    move-object v1, v8

    move/from16 v25, v16

    move-wide v15, v6

    goto/16 :goto_15

    .line 2053
    .restart local v1    # "userId":I
    .restart local v9    # "uid":I
    .restart local v11    # "mountExternal":I
    .restart local v12    # "externalStorageAccess":Z
    .restart local v13    # "permGids":[I
    .restart local v19    # "gids":[I
    :catch_1
    move-exception v0

    goto/16 :goto_5

    .line 2055
    :cond_3
    :goto_1
    nop

    .line 2060
    :try_start_7
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v4, :cond_5

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v4, v4, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v4, :cond_5

    .line 2061
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v4, v4, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_5

    .line 2062
    iget-object v10, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v14, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v14, v14, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 2063
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget v15, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 2062
    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v10

    .line 2064
    .local v10, "denyGids":[I
    if-eqz v10, :cond_4

    .line 2065
    array-length v14, v10

    move/from16 v15, v16

    :goto_3
    if-ge v15, v14, :cond_4

    aget v20, v10, v15

    move/from16 v21, v20

    .line 2066
    .local v21, "gid":I
    move/from16 v3, v21

    .end local v21    # "gid":I
    .local v3, "gid":I
    invoke-static {v13, v3}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v20

    move-object/from16 v13, v20

    .line 2065
    .end local v3    # "gid":I
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    goto :goto_3

    .line 2061
    .end local v10    # "denyGids":[I
    :cond_4
    add-int/lit8 v4, v4, -0x1

    const/4 v3, 0x1

    goto :goto_2

    .line 2072
    .end local v4    # "i":I
    :cond_5
    invoke-direct {v2, v11, v9, v13, v12}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(II[IZ)[I

    move-result-object v3

    move-object v10, v3

    move/from16 v19, v12

    .end local v19    # "gids":[I
    .local v10, "gids":[I
    goto :goto_6

    .line 2053
    .end local v10    # "gids":[I
    .end local v11    # "mountExternal":I
    .restart local v19    # "gids":[I
    .restart local v20    # "mountExternal":I
    :catch_2
    move-exception v0

    move/from16 v11, v20

    goto :goto_5

    .end local v19    # "gids":[I
    .end local v20    # "mountExternal":I
    .restart local v10    # "gids":[I
    .restart local v11    # "mountExternal":I
    :catch_3
    move-exception v0

    :goto_4
    move-object/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "gids":[I
    .end local v11    # "mountExternal":I
    .restart local v19    # "gids":[I
    .restart local v20    # "mountExternal":I
    goto :goto_5

    .line 2249
    .end local v1    # "userId":I
    .end local v9    # "uid":I
    .end local v12    # "externalStorageAccess":Z
    .end local v13    # "permGids":[I
    .end local v19    # "gids":[I
    .end local v20    # "mountExternal":I
    :catch_4
    move-exception v0

    move/from16 v16, v4

    goto :goto_0

    .line 2053
    .restart local v1    # "userId":I
    .restart local v9    # "uid":I
    .restart local v10    # "gids":[I
    .restart local v11    # "mountExternal":I
    .restart local v12    # "externalStorageAccess":Z
    .restart local v13    # "permGids":[I
    :catch_5
    move-exception v0

    move/from16 v16, v4

    goto :goto_4

    .end local v10    # "gids":[I
    .restart local v19    # "gids":[I
    :goto_5
    nop

    .line 2054
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v6    # "startUptime":J
    .end local v17    # "startElapsedTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "abiOverride":Ljava/lang/String;
    throw v3
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2033
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "permGids":[I
    .end local v19    # "gids":[I
    .restart local v6    # "startUptime":J
    .restart local v10    # "gids":[I
    .restart local v17    # "startElapsedTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "abiOverride":Ljava/lang/String;
    :cond_6
    move/from16 v16, v4

    move-object/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "gids":[I
    .end local v11    # "mountExternal":I
    .restart local v19    # "gids":[I
    .restart local v20    # "mountExternal":I
    move/from16 v19, v12

    .line 2074
    .end local v12    # "externalStorageAccess":Z
    .end local v20    # "mountExternal":I
    .restart local v10    # "gids":[I
    .restart local v11    # "mountExternal":I
    .local v19, "externalStorageAccess":Z
    :goto_6
    :try_start_8
    invoke-virtual {v5, v11}, Lcom/android/server/am/ProcessRecord;->setMountMode(I)V

    .line 2075
    const-string/jumbo v3, "startProcess: building args"

    invoke-direct {v2, v6, v7, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2076
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->isFactoryTestProcess()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2077
    const/4 v9, 0x0

    .line 2079
    :cond_7
    const/4 v3, 0x0

    .line 2081
    .local v3, "runtimeFlags":I
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    move/from16 v4, v16

    .line 2082
    .local v4, "debuggableFlag":Z
    :goto_7
    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v12

    .line 2083
    .local v12, "isProfileableByShell":Z
    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v13

    .line 2085
    .local v13, "isProfileable":Z
    iget-boolean v14, v5, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    if-eqz v14, :cond_a

    .line 2086
    :try_start_9
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 2087
    .local v14, "clientInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v14, :cond_a

    .line 2088
    iget v15, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    goto :goto_8

    :cond_9
    move/from16 v15, v16

    :goto_8
    or-int/2addr v4, v15

    .line 2089
    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v15

    or-int/2addr v12, v15

    .line 2090
    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v15

    or-int/2addr v13, v15

    move/from16 v20, v4

    move/from16 v21, v12

    move/from16 v23, v13

    goto :goto_9

    .line 2094
    .end local v14    # "clientInfo":Landroid/content/pm/ApplicationInfo;
    :cond_a
    move/from16 v20, v4

    move/from16 v21, v12

    move/from16 v23, v13

    .end local v4    # "debuggableFlag":Z
    .end local v12    # "isProfileableByShell":Z
    .end local v13    # "isProfileable":Z
    .local v20, "debuggableFlag":Z
    .local v21, "isProfileableByShell":Z
    .local v23, "isProfileable":Z
    :goto_9
    if-eqz v20, :cond_b

    .line 2095
    or-int/lit8 v3, v3, 0x1

    .line 2096
    const/high16 v4, 0x2000000

    or-int/2addr v3, v4

    .line 2097
    or-int/lit16 v3, v3, 0x100

    .line 2100
    or-int/lit8 v3, v3, 0x2

    .line 2103
    iget-object v4, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v12, "art_verifier_verify_debuggable"

    const/4 v13, 0x1

    invoke-static {v4, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_c

    .line 2105
    or-int/lit16 v3, v3, 0x200

    .line 2106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": ART verification disabled"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_a

    .line 2094
    :cond_b
    const/4 v13, 0x1

    .line 2111
    :cond_c
    :goto_a
    :try_start_a
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_7

    and-int/lit16 v4, v4, 0x4000

    if-nez v4, :cond_d

    :try_start_b
    iget-object v4, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    if-eqz v4, :cond_e

    .line 2112
    :cond_d
    or-int/lit8 v3, v3, 0x8

    .line 2114
    :cond_e
    if-eqz v21, :cond_f

    .line 2115
    const v4, 0x8000

    or-int/2addr v3, v4

    .line 2117
    :cond_f
    if-eqz v23, :cond_10

    .line 2118
    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    .line 2120
    :cond_10
    :try_start_c
    const-string v4, "debug.checkjni"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2121
    or-int/lit8 v3, v3, 0x2

    .line 2123
    :cond_11
    const-string v4, "debug.generate-debug-info"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2124
    .local v4, "genDebugInfoProperty":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7

    const-string/jumbo v14, "true"

    if-nez v12, :cond_12

    :try_start_d
    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    if-eqz v12, :cond_13

    .line 2125
    :cond_12
    or-int/lit8 v3, v3, 0x20

    .line 2127
    :cond_13
    :try_start_e
    const-string v12, "dalvik.vm.minidebuginfo"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2128
    .local v12, "genMiniDebugInfoProperty":Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7

    if-nez v15, :cond_14

    :try_start_f
    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    if-eqz v14, :cond_15

    .line 2129
    :cond_14
    or-int/lit16 v3, v3, 0x800

    .line 2131
    :cond_15
    :try_start_10
    const-string v14, "debug.jni.logging"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 2132
    or-int/lit8 v3, v3, 0x10

    .line 2134
    :cond_16
    const-string v14, "debug.assert"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 2135
    or-int/lit8 v3, v3, 0x4

    .line 2137
    :cond_17
    const-string v14, "debug.ignoreappsignalhandler"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2138
    const/high16 v0, 0x20000

    or-int/2addr v3, v0

    .line 2140
    :cond_18
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_7

    if-eqz v0, :cond_19

    :try_start_11
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    iget-object v14, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2141
    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2143
    or-int/lit8 v0, v3, 0x40

    .line 2144
    .end local v3    # "runtimeFlags":I
    .local v0, "runtimeFlags":I
    or-int/lit8 v0, v0, 0x20

    .line 2145
    or-int/lit16 v3, v0, 0x80

    .line 2146
    .end local v0    # "runtimeFlags":I
    .restart local v3    # "runtimeFlags":I
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x0

    iput-object v14, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 2149
    :cond_19
    :try_start_12
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_7

    if-nez v0, :cond_1a

    :try_start_13
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v0, :cond_1b

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    if-eqz v0, :cond_1b

    .line 2151
    :cond_1a
    or-int/lit16 v3, v3, 0x400

    .line 2154
    :cond_1b
    if-nez p4, :cond_1e

    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2155
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 2156
    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v14

    .line 2155
    invoke-virtual {v0, v14}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 2157
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2158
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v0

    .line 2159
    .local v0, "policy":I
    sget v14, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v14, v0, v14

    .line 2160
    .local v14, "policyBits":I
    and-int/lit16 v15, v14, 0x3000

    if-ne v15, v14, :cond_1d

    .line 2163
    or-int/2addr v3, v14

    .line 2165
    if-eqz p5, :cond_1c

    .line 2166
    const/high16 v15, 0x40000

    or-int/2addr v3, v15

    move/from16 v22, v1

    goto :goto_b

    .line 2165
    :cond_1c
    move/from16 v22, v1

    goto :goto_b

    .line 2161
    :cond_1d
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v1

    .end local v1    # "userId":I
    .local v22, "userId":I
    const-string v1, "Invalid API policy: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "startUptime":J
    .end local v17    # "startElapsedTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "abiOverride":Ljava/lang/String;
    throw v13
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    .line 2154
    .end local v0    # "policy":I
    .end local v14    # "policyBits":I
    .end local v22    # "userId":I
    .restart local v1    # "userId":I
    .restart local v6    # "startUptime":J
    .restart local v17    # "startElapsedTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "abiOverride":Ljava/lang/String;
    :cond_1e
    move/from16 v22, v1

    .line 2170
    .end local v1    # "userId":I
    .restart local v22    # "userId":I
    :goto_b
    :try_start_14
    const-string/jumbo v0, "persist.device_config.runtime_native.use_app_image_startup_cache"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2173
    .local v1, "useAppImageCache":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_7

    if-nez v0, :cond_1f

    :try_start_15
    const-string v0, "false"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    if-nez v0, :cond_1f

    .line 2174
    const/high16 v0, 0x10000

    or-int/2addr v3, v0

    .line 2177
    :cond_1f
    nop

    .line 2178
    :try_start_16
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v14
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_7

    const-wide/16 v24, 0x4000

    cmp-long v0, v14, v24

    if-nez v0, :cond_20

    goto :goto_c

    :cond_20
    move/from16 v13, v16

    .line 2179
    .local v13, "is16KbDevice":Z
    :goto_c
    if-eqz v13, :cond_21

    :try_start_17
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2181
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v14, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2182
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->isPageSizeCompatEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2183
    const/high16 v0, 0x4000000

    or-int/2addr v3, v0

    .line 2187
    .end local v13    # "is16KbDevice":Z
    :cond_21
    const/4 v13, 0x0

    .line 2188
    .local v13, "invokeWith":Ljava/lang/String;
    if-eqz v20, :cond_23

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/wrap.sh"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 2191
    .local v14, "wrapperFileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    move-object v15, v0

    .line 2193
    .local v15, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    move-object/from16 v24, v1

    .end local v1    # "useAppImageCache":Ljava/lang/String;
    .local v24, "useAppImageCache":Ljava/lang/String;
    :try_start_19
    const-string v1, "/system/bin/logwrapper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-object v13, v0

    goto :goto_d

    .line 2197
    :catchall_0
    move-exception v0

    goto :goto_e

    .end local v24    # "useAppImageCache":Ljava/lang/String;
    .restart local v1    # "useAppImageCache":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v1

    .end local v1    # "useAppImageCache":Ljava/lang/String;
    .restart local v24    # "useAppImageCache":Ljava/lang/String;
    goto :goto_e

    .line 2193
    .end local v24    # "useAppImageCache":Ljava/lang/String;
    .restart local v1    # "useAppImageCache":Ljava/lang/String;
    :cond_22
    move-object/from16 v24, v1

    .line 2197
    .end local v1    # "useAppImageCache":Ljava/lang/String;
    .restart local v24    # "useAppImageCache":Ljava/lang/String;
    :goto_d
    :try_start_1a
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2198
    move-object v14, v13

    goto :goto_f

    .line 2197
    :goto_e
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2198
    nop

    .end local v6    # "startUptime":J
    .end local v17    # "startElapsedTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "abiOverride":Ljava/lang/String;
    throw v0
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 2188
    .end local v14    # "wrapperFileName":Ljava/lang/String;
    .end local v15    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "useAppImageCache":Ljava/lang/String;
    .restart local v1    # "useAppImageCache":Ljava/lang/String;
    .restart local v6    # "startUptime":J
    .restart local v17    # "startElapsedTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "abiOverride":Ljava/lang/String;
    :cond_23
    move-object/from16 v24, v1

    .end local v1    # "useAppImageCache":Ljava/lang/String;
    .restart local v24    # "useAppImageCache":Ljava/lang/String;
    move-object v14, v13

    .line 2201
    .end local v13    # "invokeWith":Ljava/lang/String;
    .local v14, "invokeWith":Ljava/lang/String;
    :goto_f
    if-eqz p6, :cond_24

    move-object/from16 v0, p6

    goto :goto_10

    :cond_24
    :try_start_1b
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_7

    .line 2202
    .local v0, "requiredAbi":Ljava/lang/String;
    :goto_10
    if-nez v0, :cond_25

    .line 2203
    :try_start_1c
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v1, v1, v16
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    move-object v0, v1

    .line 2206
    :cond_25
    const/4 v1, 0x0

    .line 2207
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_1d
    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_7

    if-eqz v13, :cond_26

    .line 2210
    :try_start_1e
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0

    move-object v1, v13

    goto :goto_11

    .line 2207
    :cond_26
    move-object v13, v1

    .line 2213
    .end local v1    # "instructionSet":Ljava/lang/String;
    .local v13, "instructionSet":Ljava/lang/String;
    :goto_11
    :try_start_1f
    invoke-virtual {v5, v10}, Lcom/android/server/am/ProcessRecord;->setGids([I)V

    .line 2214
    invoke-virtual {v5, v0}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 2215
    invoke-virtual {v5, v13}, Lcom/android/server/am/ProcessRecord;->setInstructionSet(Ljava/lang/String;)V

    .line 2222
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_7

    if-eqz v1, :cond_27

    .line 2223
    :try_start_20
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v15}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2224
    .local v1, "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2225
    iput v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_0

    goto :goto_12

    .line 2227
    .end local v1    # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_27
    :try_start_21
    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2230
    .restart local v1    # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_12
    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    move-object/from16 v25, v0

    .end local v0    # "requiredAbi":Ljava/lang/String;
    .local v25, "requiredAbi":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-static {v1, v15, v13, v0}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    or-int/2addr v0, v3

    .line 2234
    .end local v3    # "runtimeFlags":I
    .local v0, "runtimeFlags":I
    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_7

    if-eqz v3, :cond_28

    .line 2235
    :try_start_22
    const-string v3, "SELinux tag not defined"

    new-instance v15, Ljava/lang/IllegalStateException;

    move/from16 v26, v0

    .end local v0    # "runtimeFlags":I
    .local v26, "runtimeFlags":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v1

    .end local v1    # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v27, "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    const-string v1, "SELinux tag not defined for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v3, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_0

    goto :goto_13

    .line 2234
    .end local v26    # "runtimeFlags":I
    .end local v27    # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "runtimeFlags":I
    .restart local v1    # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_28
    move/from16 v26, v0

    move-object/from16 v27, v1

    .line 2240
    .end local v0    # "runtimeFlags":I
    .end local v1    # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v26    # "runtimeFlags":I
    .restart local v27    # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_13
    :try_start_23
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->updateSeInfo(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v0

    .line 2244
    .local v0, "seInfo":Ljava/lang/String;
    const-string v1, "android.app.ActivityThread"

    .line 2246
    .local v1, "entryPoint":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "genDebugInfoProperty":Ljava/lang/String;
    .local v3, "genDebugInfoProperty":Ljava/lang/String;
    const-string v4, "android.app.ActivityThread"
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_7

    move-object/from16 v28, v12

    move-object/from16 v12, v25

    move/from16 v25, v16

    move-wide v15, v6

    move v6, v9

    move-object v7, v10

    move v10, v11

    move/from16 v9, p3

    move-object v11, v0

    move-object v0, v1

    move-object v1, v8

    move/from16 v8, v26

    move-object/from16 v26, v3

    move-object/from16 v3, p2

    .end local v1    # "entryPoint":Ljava/lang/String;
    .end local v3    # "genDebugInfoProperty":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v25    # "requiredAbi":Ljava/lang/String;
    .local v0, "entryPoint":Ljava/lang/String;
    .local v6, "uid":I
    .local v7, "gids":[I
    .local v8, "runtimeFlags":I
    .local v10, "mountExternal":I
    .local v11, "seInfo":Ljava/lang/String;
    .local v12, "requiredAbi":Ljava/lang/String;
    .local v15, "startUptime":J
    .local v26, "genDebugInfoProperty":Ljava/lang/String;
    .local v28, "genMiniDebugInfoProperty":Ljava/lang/String;
    :try_start_24
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v1

    move-object/from16 v25, v12

    .end local v12    # "requiredAbi":Ljava/lang/String;
    .restart local v25    # "requiredAbi":Ljava/lang/String;
    return v1

    .line 2249
    .end local v0    # "entryPoint":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v7    # "gids":[I
    .end local v8    # "runtimeFlags":I
    .end local v10    # "mountExternal":I
    .end local v11    # "seInfo":Ljava/lang/String;
    .end local v13    # "instructionSet":Ljava/lang/String;
    .end local v14    # "invokeWith":Ljava/lang/String;
    .end local v19    # "externalStorageAccess":Z
    .end local v20    # "debuggableFlag":Z
    .end local v21    # "isProfileableByShell":Z
    .end local v22    # "userId":I
    .end local v23    # "isProfileable":Z
    .end local v24    # "useAppImageCache":Ljava/lang/String;
    .end local v25    # "requiredAbi":Ljava/lang/String;
    .end local v26    # "genDebugInfoProperty":Ljava/lang/String;
    .end local v27    # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v28    # "genMiniDebugInfoProperty":Ljava/lang/String;
    :catch_6
    move-exception v0

    goto :goto_15

    .end local v15    # "startUptime":J
    .local v6, "startUptime":J
    :catch_7
    move-exception v0

    move-object v1, v8

    move/from16 v25, v16

    move-wide v15, v6

    .end local v6    # "startUptime":J
    .restart local v15    # "startUptime":J
    :goto_14
    goto :goto_15

    .end local v15    # "startUptime":J
    .restart local v6    # "startUptime":J
    :catch_8
    move-exception v0

    move/from16 v25, v4

    move-wide v15, v6

    move-object v1, v8

    goto :goto_14

    .line 2025
    .local v1, "userId":I
    :catch_9
    move-exception v0

    move/from16 v22, v1

    move/from16 v25, v4

    move-wide v15, v6

    move-object v1, v8

    .end local v1    # "userId":I
    .end local v6    # "startUptime":J
    .restart local v15    # "startUptime":J
    .restart local v22    # "userId":I
    nop

    .line 2026
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v15    # "startUptime":J
    .end local v17    # "startElapsedTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "abiOverride":Ljava/lang/String;
    throw v3
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_6

    .line 2249
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v22    # "userId":I
    .restart local v15    # "startUptime":J
    .restart local v17    # "startElapsedTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "abiOverride":Ljava/lang/String;
    :goto_15
    nop

    .line 2250
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure starting process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2258
    iget-object v1, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v28

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v36, "start failure"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v26, v1

    move-object/from16 v27, v3

    move/from16 v35, v4

    invoke-virtual/range {v26 .. v36}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    .line 2260
    return v25
.end method

.method unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/app/IProcessObserver;

    .line 5187
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 5188
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 5189
    monitor-exit v0

    .line 5190
    return-void

    .line 5189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateAllTimePrefsLOSP(I)V
    .locals 6
    .param p1, "timePref"    # I

    .line 3773
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3774
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3775
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3776
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_0

    .line 3778
    :try_start_0
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3782
    goto :goto_1

    .line 3779
    :catch_0
    move-exception v3

    .line 3780
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update preferences for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 3785
    .end local v0    # "i":I
    return-void
.end method

.method updateApplicationInfoLOSP(Ljava/util/List;IZ)V
    .locals 11
    .param p2, "userId"    # I
    .param p3, "updateFrameworkRes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 5402
    .local p1, "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v4, v0

    .line 5403
    .local v4, "applicationInfoByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5404
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 5405
    .local v6, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    const-wide/16 v7, 0x400

    const/16 v9, 0x3e8

    move v10, p2

    .end local p2    # "userId":I
    .local v10, "userId":I
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 5407
    .local p2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_0

    .line 5408
    invoke-virtual {v4, v6, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5403
    .end local v6    # "packageName":Ljava/lang/String;
    .end local p2    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    move p2, v10

    goto :goto_0

    .end local v10    # "userId":I
    .local p2, "userId":I
    :cond_1
    move v10, p2

    .line 5411
    .end local v0    # "i":I
    .end local p2    # "userId":I
    .restart local v10    # "userId":I
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, v10, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityApplicationInfo(ILandroid/util/ArrayMap;)V

    .line 5414
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5415
    .local v6, "targetProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowProcessController;>;"
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .local p2, "i":I
    :goto_1
    if-ltz p2, :cond_4

    .line 5416
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 5417
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5418
    move-object v3, p1

    move v2, p3

    goto :goto_2

    .line 5421
    :cond_2
    const/4 v0, -0x1

    if-eq v10, v0, :cond_3

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v0, v10, :cond_3

    .line 5422
    move-object v3, p1

    move v2, p3

    goto :goto_2

    .line 5425
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;

    move-object v3, p1

    move v2, p3

    .end local p1    # "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "updateFrameworkRes":Z
    .local v2, "updateFrameworkRes":Z
    .local v3, "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;-><init>(ZLjava/util/List;Landroid/util/ArrayMap;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 5415
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_2
    add-int/lit8 p2, p2, -0x1

    move p3, v2

    move-object p1, v3

    goto :goto_1

    .end local v2    # "updateFrameworkRes":Z
    .end local v3    # "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "updateFrameworkRes":Z
    :cond_4
    move-object v3, p1

    move v2, p3

    .line 5447
    .end local p1    # "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "i":I
    .end local p3    # "updateFrameworkRes":Z
    .restart local v2    # "updateFrameworkRes":Z
    .restart local v3    # "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, v6, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateAssetConfiguration(Ljava/util/List;Z)V

    .line 5448
    return-void
.end method

.method updateBackgroundRestrictedForUidPackageLocked(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 5758
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 5759
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v0, :cond_0

    .line 5760
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 5761
    .local v5, "nowElapsed":J
    new-instance v1, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "restricted":Z
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "restricted":Z
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJ)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 5783
    iget-object p2, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 p3, 0x15

    invoke-virtual {p2, p3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    goto :goto_0

    .line 5759
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "restricted":Z
    .end local v5    # "nowElapsed":J
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "restricted":Z
    :cond_0
    move-object v2, p0

    move-object v3, p2

    move v4, p3

    .line 5785
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "restricted":Z
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "restricted":Z
    :goto_0
    return-void
.end method

.method updateCoreSettingsLOSP(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "settings"    # Landroid/os/Bundle;

    .line 3724
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3725
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3726
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3728
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_0

    .line 3729
    :try_start_0
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3731
    :catch_0
    move-exception v3

    goto :goto_2

    .line 3733
    :cond_0
    :goto_1
    nop

    .line 3724
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 3735
    .end local v0    # "i":I
    return-void
.end method

.method updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityChange"    # Z
    .param p3, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 4104
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4105
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4106
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    nop

    .line 4107
    .local v1, "hasActivity":Z
    const/4 v3, 0x0

    .line 4108
    .local v3, "hasService":Z
    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    .line 4113
    return-void

    .line 4116
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4118
    return-void

    .line 4121
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    .line 4122
    :try_start_0
    invoke-direct {p0, p1, p3, v1, v2}, Lcom/android/server/am/ProcessList;->updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 4123
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 4124
    return-void

    .line 4123
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method updateSeInfo(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2267
    const-string v0, ""

    .line 2270
    .local v0, "extraInfo":Ljava/lang/String;
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v1, :cond_1

    .line 2271
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->applySdkSandboxRestrictionsNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2272
    const-string v0, ":isSdkSandboxNext"

    goto :goto_0

    .line 2273
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2274
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->applySdkSandboxRestrictionsAudit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2275
    const-string v0, ":isSdkSandboxAudit"

    .line 2280
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxInputSelector()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2283
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    goto :goto_1

    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2283
    return-object v1
.end method

.method writeProcessesToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 4782
    move-object v2, p2

    const/4 v1, 0x0

    .line 4784
    .local v1, "numPers":I
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 4785
    .local v7, "numOfNames":I
    const/4 v3, 0x0

    move v8, v1

    .end local v1    # "numPers":I
    .local v3, "ip":I
    .local v8, "numPers":I
    :goto_0
    if-ge v3, v7, :cond_3

    .line 4786
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 4787
    .local v1, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v4, 0x0

    .local v4, "ia":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 4788
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 4789
    .local v6, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 4790
    goto :goto_2

    .line 4792
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4793
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 4792
    const-wide v10, 0x20b00000001L

    invoke-virtual {v6, p1, v10, v11, v9}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4795
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4796
    add-int/lit8 v8, v8, 0x1

    .line 4787
    .end local v6    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 4785
    .end local v1    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "ia":I
    .end local v5    # "size":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 4801
    .end local v3    # "ip":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_3
    if-ge v1, v3, :cond_5

    .line 4802
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4803
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_4

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4804
    goto :goto_4

    .line 4806
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4807
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 4806
    const-wide v9, 0x20b00000002L

    invoke-virtual {v4, p1, v9, v10, v5}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4801
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    nop

    .line 4811
    .end local v1    # "i":I
    .end local v3    # "size":I
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityManagerService;->getAppId(Ljava/lang/String;)I

    move-result v3

    .line 4812
    .local v3, "dumpAppId":I
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-wide v4, 0x20b00000004L

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 4815
    move v9, v3

    .end local v3    # "dumpAppId":I
    .local v9, "dumpAppId":I
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    if-lez v1, :cond_6

    .line 4816
    const-wide v1, 0x10b00000006L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 4817
    .local v10, "lruToken":J
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v12

    .line 4818
    .local v12, "total":I
    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4819
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int v1, v12, v1

    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4821
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int v1, v12, v1

    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4823
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const-wide v1, 0x20b00000004L

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z

    .line 4826
    move-object v2, v6

    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_5

    .line 4815
    .end local v10    # "lruToken":J
    .end local v12    # "total":I
    :cond_6
    move-object v2, p2

    .line 4829
    :goto_5
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, v9, v8}, Lcom/android/server/am/ActivityManagerService;->writeOtherProcessesInfoToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;II)V

    .line 4830
    return-void
.end method
