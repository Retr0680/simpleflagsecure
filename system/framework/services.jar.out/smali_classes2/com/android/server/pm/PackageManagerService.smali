.class public Lcom/android/server/pm/PackageManagerService;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageSender;
.implements Landroid/content/pm/TestUtilityService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$Snapshot;,
        Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;,
        Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;,
        Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;,
        Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;,
        Lcom/android/server/pm/PackageManagerService$PackageStartability;,
        Lcom/android/server/pm/PackageManagerService$ScanFlags;
    }
.end annotation


# static fields
.field public static final APP_METADATA_FILE_NAME:Ljava/lang/String; = "app.metadata"

.field private static final BACKGROUND_HANDLER_CALLBACK:Landroid/os/Handler$Callback;

.field private static final BLUETOOTH_UID:I = 0x3ea

.field private static final BROADCAST_DELAY:J = 0x3e8L

.field private static final BROADCAST_DELAY_DURING_STARTUP:J = 0x2710L

.field static final CHECK_PENDING_VERIFICATION:I = 0x10

.field private static final COMPANION_PACKAGE_NAME:Ljava/lang/String; = "com.android.companiondevicemanager"

.field public static final COMPRESSED_EXTENSION:Ljava/lang/String; = ".gz"

.field static final DEBUG_ABI_SELECTION:Z = false

.field static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_COMPRESSION:Z

.field public static final DEBUG_DEXOPT:Z = false

.field static final DEBUG_DOMAIN_VERIFICATION:Z = false

.field public static final DEBUG_INSTALL:Z = false

.field public static final DEBUG_INSTANT:Z

.field static final DEBUG_INTENT_MATCHING:Z = false

.field static final DEBUG_PACKAGE_INFO:Z = false

.field public static final DEBUG_PACKAGE_SCANNING:Z = false

.field public static final DEBUG_PERMISSIONS:Z = false

.field private static final DEBUG_PER_UID_READ_TIMEOUTS:Z = false

.field static final DEBUG_PREFERRED:Z = false

.field public static final DEBUG_REMOVE:Z = false

.field public static final DEBUG_SETTINGS:Z = false

.field static final DEBUG_UPGRADE:Z = false

.field static final DEBUG_VERIFY:Z = false

.field static final DEFAULT_FILE_ACCESS_MODE:I = 0x1a4

.field static final DEFAULT_NATIVE_LIBRARY_FILE_ACCESS_MODE:I = 0x1ed

.field static final DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

.field static final DEFAULT_VERIFICATION_RESPONSE:I = 0x1

.field static final DEFERRED_NO_KILL_INSTALL_OBSERVER:I = 0x18

.field private static final DEFERRED_NO_KILL_INSTALL_OBSERVER_DELAY_MS:I = 0x1f4

.field static final DEFERRED_NO_KILL_POST_DELETE:I = 0x17

.field private static final DEFERRED_NO_KILL_POST_DELETE_DELAY_MS:I = 0xbb8

.field private static final DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:J

.field static final DEFERRED_PENDING_KILL_INSTALL_OBSERVER:I = 0x1d

.field private static final DEFERRED_PENDING_KILL_INSTALL_OBSERVER_DELAY_MS:I = 0x3e8

.field static final DOMAIN_VERIFICATION:I = 0x1b

.field static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

.field private static final ENABLE_BOOST:Z = false

.field static final ENABLE_ROLLBACK_STATUS:I = 0x15

.field static final ENABLE_ROLLBACK_TIMEOUT:I = 0x16

.field static final HIDE_EPHEMERAL_APIS:Z = false

.field static final INSTANT_APP_RESOLUTION_PHASE_TWO:I = 0x14

.field private static final LOG_UID:I = 0x3ef

.field public static final MIN_INSTALLABLE_TARGET_SDK:I

.field private static final NETWORKSTACK_UID:I = 0x431

.field private static final NFC_UID:I = 0x403

.field static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field public static final PACKAGE_STARTABILITY_DIRECT_BOOT_UNSUPPORTED:I = 0x4

.field public static final PACKAGE_STARTABILITY_FROZEN:I = 0x3

.field public static final PACKAGE_STARTABILITY_NOT_FOUND:I = 0x1

.field public static final PACKAGE_STARTABILITY_NOT_SYSTEM:I = 0x2

.field public static final PACKAGE_STARTABILITY_OK:I = 0x0

.field static final PACKAGE_VERIFIED:I = 0xf

.field public static final PLATFORM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field static final POST_INSTALL:I = 0x9

.field static final PRECOMPILE_LAYOUTS:Ljava/lang/String; = "pm.precompile_layouts"

.field private static final PROPERTY_DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:Ljava/lang/String; = "deferred_no_kill_post_delete_delay_ms_extended"

.field private static final PROPERTY_INCFS_DEFAULT_TIMEOUTS:Ljava/lang/String; = "incfs_default_timeouts"

.field private static final PROPERTY_IS_PRE_APPROVAL_REQUEST_AVAILABLE:Ljava/lang/String; = "is_preapproval_available"

.field private static final PROPERTY_IS_UPDATE_OWNERSHIP_ENFORCEMENT_AVAILABLE:Ljava/lang/String; = "is_update_ownership_enforcement_available"

.field private static final PROPERTY_KNOWN_DIGESTERS_LIST:Ljava/lang/String; = "known_digesters_list"

.field private static final PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

.field static final PRUNE_UNUSED_STATIC_SHARED_LIBRARIES:I = 0x1c

.field private static final RADIO_UID:I = 0x3e9

.field static final RANDOM_CODEPATH_PREFIX:C = '-'

.field static final RANDOM_DIR_PREFIX:Ljava/lang/String; = "~~"

.field public static final REASON_AB_OTA:I = 0xa

.field public static final REASON_BACKGROUND_DEXOPT:I = 0x9

.field public static final REASON_BOOT_AFTER_MAINLINE_UPDATE:I = 0xd

.field public static final REASON_BOOT_AFTER_OTA:I = 0x1

.field public static final REASON_CMDLINE:I = 0xc

.field public static final REASON_FIRST_BOOT:I = 0x0

.field public static final REASON_INACTIVE_PACKAGE_DOWNGRADE:I = 0xb

.field public static final REASON_INSTALL:I = 0x3

.field public static final REASON_INSTALL_BULK:I = 0x5

.field public static final REASON_INSTALL_BULK_DOWNGRADED:I = 0x7

.field public static final REASON_INSTALL_BULK_SECONDARY:I = 0x6

.field public static final REASON_INSTALL_BULK_SECONDARY_DOWNGRADED:I = 0x8

.field public static final REASON_INSTALL_FAST:I = 0x4

.field public static final REASON_LAST:I = 0xe

.field public static final REASON_POST_BOOT:I = 0x2

.field public static final REASON_SHARED:I = 0xe

.field private static final REQUIRED_VERIFIERS_MAX_COUNT:I = 0x2

.field static final SCAN_AS_APEX:I = 0x4000000

.field static final SCAN_AS_APK_IN_APEX:I = 0x800000

.field static final SCAN_AS_FACTORY:I = 0x2000000

.field static final SCAN_AS_FULL_APP:I = 0x4000

.field static final SCAN_AS_INSTANT_APP:I = 0x2000

.field static final SCAN_AS_ODM:I = 0x400000

.field static final SCAN_AS_OEM:I = 0x40000

.field static final SCAN_AS_PRIVILEGED:I = 0x20000

.field static final SCAN_AS_PRODUCT:I = 0x100000

.field static final SCAN_AS_STOPPED_SYSTEM_APP:I = 0x8000000

.field static final SCAN_AS_SYSTEM:I = 0x10000

.field static final SCAN_AS_SYSTEM_EXT:I = 0x200000

.field static final SCAN_AS_VENDOR:I = 0x80000

.field static final SCAN_AS_VIRTUAL_PRELOAD:I = 0x8000

.field static final SCAN_BOOTING:I = 0x10

.field static final SCAN_DONT_KILL_APP:I = 0x400

.field static final SCAN_DROP_CACHE:I = 0x1000000

.field static final SCAN_FIRST_BOOT_OR_UPGRADE:I = 0x1000

.field static final SCAN_IGNORE_FROZEN:I = 0x800

.field static final SCAN_INITIAL:I = 0x200

.field static final SCAN_MOVE:I = 0x100

.field static final SCAN_NEW_INSTALL:I = 0x4

.field static final SCAN_NO_DEX:I = 0x1

.field static final SCAN_REQUIRE_KNOWN:I = 0x80

.field static final SCAN_UPDATE_SIGNATURE:I = 0x2

.field static final SCAN_UPDATE_TIME:I = 0x8

.field static final SEND_PENDING_BROADCAST:I = 0x1

.field private static final SE_UID:I = 0x42c

.field static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"

.field private static final SHELL_UID:I = 0x7d0

.field private static final STATIC_SHARED_LIB_DELIMITER:Ljava/lang/String; = "_"

.field public static final STUB_SUFFIX:Ljava/lang/String; = "-Stub"

.field public static final SYSTEM_PARTITIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final THROW_EXCEPTION_ON_REQUIRE_INSTALL_PACKAGES_TO_ADD_INSTALLER_PACKAGE:J = 0x8fde625L

.field public static final TRACE_SNAPSHOTS:Z = false

.field private static final UWB_UID:I = 0x43b

.field static final WATCHDOG_TIMEOUT:J = 0x927c0L

.field static final WRITE_DIRTY_PACKAGE_RESTRICTIONS:I = 0xe

.field static final WRITE_PACKAGE_LIST:I = 0x13

.field static final WRITE_SETTINGS:I = 0xd

.field static final WRITE_SETTINGS_DELAY:I = 0x2710

.field static final WRITE_USER_PACKAGE_RESTRICTIONS:I = 0x1e

.field private static final sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/pm/Computer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sThreadPriorityBooster:Lcom/android/server/ThreadPriorityBooster;


# instance fields
.field final mAmbientContextDetectionPackage:Ljava/lang/String;

.field private mAndroidApplication:Landroid/content/pm/ApplicationInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field private final mAppInstallDir:Ljava/io/File;

.field final mAppPredictionServicePackage:Ljava/lang/String;

.field final mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field private final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Landroid/os/Handler;

.field final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field private mCacheDir:Ljava/io/File;

.field final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field final mCompilerStats:Lcom/android/server/pm/CompilerStats;

.field final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field final mConfiguratorPackage:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mCustomResolverComponentName:Landroid/content/ComponentName;

.field private final mDefParseFlags:I

.field private final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field final mDefaultTextClassifierPackage:Ljava/lang/String;

.field private final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field private final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field final mDirtyUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

.field private final mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

.field private mExistingPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

.field final mFactoryTest:Z

.field private mFirstBoot:Z

.field private final mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

.field final mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mIncidentReportApproverPackage:Ljava/lang/String;

.field final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field private final mIncrementalVersion:Ljava/lang/String;

.field private final mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

.field final mInitialNonStoppedSystemPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field private final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field final mInstaller:Lcom/android/server/pm/Installer;

.field final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field private final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field final mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

.field private final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;>;"
        }
    .end annotation
.end field

.field final mIsEngBuild:Z

.field private final mIsPreNMR1Upgrade:Z

.field private final mIsPreQUpgrade:Z

.field private final mIsUpgrade:Z

.field private final mIsUserDebugBuild:Z

.field final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field private final mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeepUninstalledPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

.field private mLiveComputer:Lcom/android/server/pm/ComputerLocked;

.field final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private final mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

.field final mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

.field mNextInstallToken:I

.field private final mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mNoKillInstallObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/InstallRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mOptionalVerifierPackage:Ljava/lang/String;

.field private final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field private final mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field private final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

.field private final mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

.field final mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

.field private final mPackageProperty:Lcom/android/server/pm/PackageProperty;

.field private final mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

.field private final mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field private final mPackageUsage:Lcom/android/server/pm/PackageUsage;

.field final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

.field final mPendingEnableRollback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/VerifyingSession;",
            ">;"
        }
    .end annotation
.end field

.field mPendingEnableRollbackToken:I

.field private final mPendingKillInstallObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/InstallRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVerification:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageVerificationState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingVerificationToken:I

.field mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

.field final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

.field private mPlatformPackageOverlayPaths:[Ljava/lang/String;

.field private mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

.field private final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field private mPrepareAppDataFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mPriorSdkVersion:I

.field final mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

.field mPromoteSystemApps:Z

.field final mProtectedBroadcasts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field final mRecentsPackage:Ljava/lang/String;

.field mReleaseOnSystemReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field private mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

.field private mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

.field final mRequiredInstallerPackage:Ljava/lang/String;

.field final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field private final mRequiredSdkSandboxPackage:Ljava/lang/String;

.field final mRequiredUninstallerPackage:Ljava/lang/String;

.field final mRequiredVerifierPackages:[Ljava/lang/String;

.field private final mResolveActivity:Landroid/content/pm/ActivityInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field mResolveComponentName:Landroid/content/ComponentName;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

.field private mResolverReplaced:Z

.field final mRetailDemoPackage:Ljava/lang/String;

.field final mRunningInstalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSafeMode:Z
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field private final mSdkVersion:I

.field private final mSeparateProcesses:[Ljava/lang/String;

.field private mServiceStartWithDelay:J

.field final mServicesExtensionPackageName:Ljava/lang/String;

.field final mSettings:Lcom/android/server/pm/Settings;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field final mSetupWizardPackage:Ljava/lang/String;

.field private final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field final mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

.field final mShouldStopSystemPackagesByDefault:Z

.field private final mSnapshotLock:Ljava/lang/Object;

.field private final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field private final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

.field final mStorageManagerPackage:Ljava/lang/String;

.field private final mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

.field private volatile mSystemReady:Z
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field final mSystemTextClassifierPackageName:Ljava/lang/String;

.field private final mTestUtilityService:Landroid/content/pm/TestUtilityService;

.field final mTransferredPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Lcom/android/server/pm/UserManagerService;

.field final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

.field private final mWatcher:Lcom/android/server/utils/Watcher;

.field final mWearableSensingPackage:Ljava/lang/String;

.field private final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0oaHXpkag_dkj4TwNQRDdJj_zAE(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$32(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4Z1YtE7cxcYUZgWM-J4EjdW1x5M(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SystemConfig;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$17(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SystemConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5qKl79lcfZYf0GUNhzMocy3X3iE(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->lambda$resetComponentEnabledSettingsIfNeededLPw$49(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7FmIxSyDxwN2oP0ULX-ACdijBE0(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$36(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7ZinaF8LTt-Uh2mhTs9mKdw7xzM(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$33(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$89-iFQ1aETRFz07pCfDoZj2XkuE(ILjava/util/function/Consumer;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$forEachInstalledPackage$59(ILjava/util/function/Consumer;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8JNEilt9uX7CU1sZk__GplQZfQE(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$setPackageStoppedState$56(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$989v1FjM4elesK4RsQp3LCtiuGk(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$42(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ALY9D6JtM3Rzu22ittvm6-xByg8()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->lambda$main$25()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ASFchvSw0ug8nKq5Yx9fVtgMcoU(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$27(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AtsdeBa8co53jl7kYt8ysrzmEo8(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$29(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CY1Y9-ODqilre5Zr9vbiuvpXloI(Landroid/content/Context;)Landroid/app/role/RoleManager;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$main$24(Landroid/content/Context;)Landroid/app/role/RoleManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DbYdM22aB05Ld5CwBnygjqTFHRQ(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ArtManagerService;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$21(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Deji_uDfOYEGcd8p52w8PgpVaIY(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageInstallerService;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$31(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageInstallerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DpoUGfBUKUwY29CYlSb-44Pr7Jg(ILandroid/content/pm/UserPackage;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$cleanUpCrossUserSuspension$52(ILandroid/content/pm/UserPackage;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DyxwdXZ2sKAQ7C3R9fNuovxQL_c(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/resolution/ComponentResolver;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$10(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/resolution/ComponentResolver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EGnvYmsKoA62_1tKJF8QMfSA3fw(Lcom/android/server/pm/PackageManagerService;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$getDevicePolicyManagementRoleHolderPackageName$48(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FR8U4c0RIqXgpjjotqX7kwhVGTY(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageMonitorCallbackHelper;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$41(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FdBPiebK9rLjAomb4mZZJ9NKOYk(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$23(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GMdg9Gu3v0AWXpfEtswAPUw-jbI(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$new$44()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JBkyeqqcKcrkFXwHsWY-lfqZDZQ(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/AppOpsManagerInternal;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$12(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K4U8BbWQNz_-MUayzIZXjBMC-qc(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageDexOptimizer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$18(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KfMN079YpPJV8jCCcsqdB3kujdo(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/CrossProfileIntentFilterHelper;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$39(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/CrossProfileIntentFilterHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KzwIl5MMSy3bx3fugL-pJ7cnWso(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$new$45()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LoanWrFkSmqmYkKKDCgWwIc_YE4(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$7()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NUyH-5EgnH_DZTUdQCD-424kYC0(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$6(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OpGq-tOKk2WqRP1oHK7swsx3IFo(IZZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->lambda$setPackageStoppedState$55(IZZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QePmjVVwOYEnuJhyRF7gWBPJrQg(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$35(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R5Z-wL-IvQQFplWQOcBkXnyMFPE(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$deletePackageIfUnused$53(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHF4N0sxOaUiV4GgpfujjS9e1l0(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$34(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RqLs6LNiK4tDRn-A9IQAFfR3CAY(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DynamicCodeLogger;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$20(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SRzeXRVeginHaz6FHIw_C4e2Wro(Lcom/android/server/pm/PackageManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$systemReady$51(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UFVgkee8XIC-STHCFe4pNFRUMIA(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$43(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WsQevY_EOQYv9cZUCclQpmpR9Ms()Ljava/lang/Long;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->lambda$scheduleDeferredNoKillPostDelete$0()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$YN_zsIMedZwxGl_Li02d0bi2WJo(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UserManagerService;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService;->lambda$main$13(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YjcUAA3ctD_3T7SjCtOPfwF20bc(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->lambda$notifyFirstLaunch$47(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZCj3lmoV_Zx9okgcq9uQPqhgiaE(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/compat/PlatformCompat;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$16(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/compat/PlatformCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZK5tCshpQmlMZgJGT_dvYG10Bx0(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilterImpl;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$15(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilterImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zfmi3OQqCNPJerY1YU797tz6T9k(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->lambda$setPackageStoppedState$57(Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zl1sWAt6kk8mZdgxlYbjhKByEh0(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/backup/IBackupManager;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$37(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/backup/IBackupManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b3cgW8mX_pL9e_z3AP44WcOPO8I(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UpdateOwnershipHelper;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$40(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UpdateOwnershipHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dWX1CfMqFuW5gEejwGW9rs6ytsE(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$11(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gVzQEoImEzmR9uic7xKFpfy2hqQ(Lcom/android/server/pm/PackageManagerService;[ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$new$46([ILcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j5KzlvWk9TTfMFAUB01t-Gg_AqU(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$4(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXUrzwWpwWoEvTV2CGn70IVLMgM(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$30(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lNFSVjkK-rEfgySY2Ol9NfqUg78(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/Settings;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->lambda$main$14(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/Settings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lz_MfZZvaU7VW9pQrSkTKzx71qY(ILandroid/util/ArrayMap;Ljava/util/Set;ILandroid/util/ArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService;->lambda$setEnabledOverlayPackages$58(ILandroid/util/ArrayMap;Ljava/util/Set;ILandroid/util/ArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mx5cCvSWi41BPe3mVl6DECtM_ho(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$8(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oKuPIpKjnh2q0ulRxEHQu6XRsGI(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$3()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oviSJhc44C-YTWipt-DYXgcWaWw(Lcom/android/server/pm/PackageManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$1()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p8Ky1neiIR1xqBFc9FaPrOjt7f8(Lcom/android/server/pm/PackageManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$5()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p_fPVsKBbhj2m_wyJLByZWTJmJw(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$2(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pit7wSrbqXyL9dXgw2HHMpvrI-o(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->lambda$updateComponentLabelIcon$50(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r6R6hXY46S5fZZ0Z8nw75riokrg(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$28(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rtZ5l4b--6OK6u0JxdtS_fV-1qg(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$38(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sRP_CS0LIYOJNj3zGtWb31aB2V4(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$22(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wnOMW5JK5d4FqTn9xDilP8MoD-M(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$26(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ycLid5CfrcIKxha4GPTBH7u22Kc(I)[Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$writePendingRestrictions$9(I)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yro1nMZqE_YypzKp5G1sqwB577E(Ljava/lang/String;ZLcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$setSystemAppHiddenUntilInstalled$54(Ljava/lang/String;ZLcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zVIvnjgXoK0MMJP-2UHOyOSaf9I(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$19(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAndroidApplication(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultAppProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDexOptHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DexOptHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDomainVerificationConnection(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DomainVerificationConnection;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDynamicCodeLogger(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DynamicCodeLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrozenPackagesSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstallPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstallPackageHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstantAppInstallerInfo(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstrumentation(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstrumentationSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsolatedOwnersSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLiveComputer(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ComputerLocked;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModuleInfoProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextMoveId(Lcom/android/server/pm/PackageManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageMonitorCallbackHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageMonitorCallbackHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageObserverHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageObserverHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageProperty(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageProperty;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageStateWriteLock(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerTracedLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackagesSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlatformPackage(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPriorSdkVersion(Lcom/android/server/pm/PackageManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequiredSdkSandboxPackage(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedLibraries(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSnapshotStatistics(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SnapshotStatistics;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageEventHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/StorageEventHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/pm/PackageManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestUtilityService(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/TestUtilityService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWebInstantAppsDisabled(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedSparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSafeMode(Lcom/android/server/pm/PackageManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearApplicationUserDataLIF(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;IZ)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->enforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceCanSetDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->enforceCanSetDistractingPackageRestrictionsAsUser(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;ZLandroid/content/pm/UserPackage;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService;->enforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/Computer;ZLandroid/content/pm/UserPackage;IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfreezePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->notifyPackageUseInternal(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetComponentEnabledSettingsIfNeededLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->resetComponentEnabledSettingsIfNeededLPw(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnabledOverlayPackages(Lcom/android/server/pm/PackageManagerService;ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettings(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 367
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 377
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    .line 497
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 585
    const/16 v1, 0x18

    sput v1, Lcom/android/server/pm/PackageManagerService;->MIN_INSTALLABLE_TARGET_SDK:I

    .line 760
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda23;-><init>()V

    .line 761
    invoke-static {v1}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    .line 760
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 768
    new-array v0, v0, [Landroid/os/incremental/PerUidReadTimeouts;

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 953
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 954
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:J

    .line 964
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 965
    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

    .line 970
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 971
    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 1039
    new-instance v0, Lcom/android/server/ThreadPriorityBooster;

    const/4 v1, -0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/ThreadPriorityBooster;-><init>(II)V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sThreadPriorityBooster:Lcom/android/server/ThreadPriorityBooster;

    .line 1159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1162
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1676
    new-instance v0, Lcom/android/server/pm/PackageManagerService$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->BACKGROUND_HANDLER_CALLBACK:Landroid/os/Handler$Callback;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerServiceTestParams;)V
    .locals 5
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "testParams"    # Lcom/android/server/pm/PackageManagerServiceTestParams;

    .line 1896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 661
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 666
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 669
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const-string v3, "PackageManagerService.mPackages"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 674
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 677
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    const-string v3, "PackageManagerService.mIsolatedOwners"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 719
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 721
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    const-string v4, "PackageManagerService.mFrozenPackages"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 743
    new-instance v1, Lcom/android/server/pm/PackageObserverHelper;

    invoke-direct {v1}, Lcom/android/server/pm/PackageObserverHelper;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 800
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 803
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    const-string v4, "PackageManagerService.mInstrumentation"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 810
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 813
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 820
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 826
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 838
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 845
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 851
    iput v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 857
    new-instance v2, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 863
    new-instance v2, Landroid/content/pm/ActivityInfo;

    invoke-direct {v2}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 865
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 872
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 873
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 875
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 876
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 878
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 891
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 894
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 895
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 897
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 898
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 907
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 912
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 924
    new-instance v2, Lcom/android/server/pm/PackageProperty;

    invoke-direct {v2}, Lcom/android/server/pm/PackageProperty;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 978
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 980
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 982
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 1009
    new-instance v2, Lcom/android/server/pm/PackageUsage;

    invoke-direct {v2}, Lcom/android/server/pm/PackageUsage;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 1011
    new-instance v2, Lcom/android/server/pm/CompilerStats;

    invoke-direct {v2}, Lcom/android/server/pm/CompilerStats;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 1072
    new-instance v2, Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    .line 1170
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    .line 1897
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1898
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->bootstrap(Lcom/android/server/pm/PackageManagerService;)V

    .line 1899
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 1900
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 1901
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1902
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1903
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1904
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1905
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1906
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1907
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1908
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1909
    new-instance v2, Lcom/android/server/pm/UserNeedsBadgingCache;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/pm/UserNeedsBadgingCache;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 1910
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1911
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1912
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 1913
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1915
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->apexManager:Lcom/android/server/pm/ApexManager;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 1916
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->artManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 1917
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->availableFeatures:Landroid/util/ArrayMap;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 1918
    iget v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defParseFlags:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 1919
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 1920
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->legacyPermissionManagerInternal:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 1921
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->dexManager:Lcom/android/server/pm/dex/DexManager;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 1922
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->dynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 1923
    iget-boolean v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->factoryTest:Z

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 1924
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incrementalManager:Landroid/os/incremental/IncrementalManager;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 1925
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->installerService:Lcom/android/server/pm/PackageInstallerService;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 1926
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 1927
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->changedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 1928
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 1929
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppResolverSettingsComponent:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 1930
    iget-boolean v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isPreNmr1Upgrade:Z

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    .line 1931
    iget-boolean v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isPreQupgrade:Z

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    .line 1932
    iget v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->priorSdkVersion:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersion:I

    .line 1933
    iget-boolean v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isUpgrade:Z

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    .line 1934
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->Metrics:Landroid/util/DisplayMetrics;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1935
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->moduleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 1936
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->moveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 1937
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->overlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 1938
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 1939
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    .line 1940
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->pendingPackageBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1941
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->testUtilityService:Landroid/content/pm/TestUtilityService;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 1942
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->processLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 1943
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->protectedPackages:Lcom/android/server/pm/ProtectedPackages;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 1944
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->separateProcesses:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 1945
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredVerifierPackages:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 1946
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->optionalVerifierPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 1947
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredInstallerPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 1948
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredUninstallerPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 1949
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredPermissionControllerPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 1950
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->setupWizardPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 1951
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->storageManagerPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 1952
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defaultTextClassifierPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 1953
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->systemTextClassifierPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 1954
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->retailDemoPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 1955
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->recentsPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    .line 1956
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->ambientContextDetectionPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 1957
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->wearableSensingPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    .line 1958
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->configuratorPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    .line 1959
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appPredictionServicePackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 1960
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incidentReportApproverPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 1961
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->servicesExtensionPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 1962
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->sharedSystemSharedLibraryPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 1963
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->overlayConfigSignaturePackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 1964
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->resolveComponentName:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 1965
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredSdkSandboxPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 1966
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->initialNonStoppedSystemPackages:Ljava/util/Set;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 1967
    iget-boolean v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->shouldStopSystemPackagesByDefault:Z

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    .line 1969
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 1970
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 1972
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 1973
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->freeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    .line 1974
    iget v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->sdkVersion:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 1975
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appInstallDir:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 1976
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isEngBuild:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    .line 1977
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isUserDebugBuild:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    .line 1978
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incrementalVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    .line 1979
    new-instance v0, Lcom/android/server/pm/DomainVerificationConnection;

    invoke-direct {v0, p0}, Lcom/android/server/pm/DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 1981
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->broadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1982
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appDataHelper:Lcom/android/server/pm/AppDataHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 1983
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->installPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 1984
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->removePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 1985
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->initAndSystemPackageHelper:Lcom/android/server/pm/InitAppsHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 1986
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->deletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 1987
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->preferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 1988
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->resolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1989
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->dexOptHelper:Lcom/android/server/pm/DexOptHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 1990
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->suspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 1991
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->distractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 1993
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V

    .line 1995
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->storageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 1996
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 1998
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService;->registerObservers(Z)V

    .line 1999
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 2000
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;ZLjava/lang/String;ZZILjava/lang/String;)V
    .locals 43
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "factoryTest"    # Z
    .param p3, "partitionsFingerprint"    # Ljava/lang/String;
    .param p4, "isEngBuild"    # Z
    .param p5, "isUserDebugBuild"    # Z
    .param p6, "sdkVersion"    # I
    .param p7, "incrementalVersion"    # Ljava/lang/String;

    .line 2004
    move-object/from16 v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 661
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 666
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 669
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const-string v4, "PackageManagerService.mPackages"

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 674
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 677
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    const-string v4, "PackageManagerService.mIsolatedOwners"

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 685
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 719
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 721
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    const-string v4, "PackageManagerService.mFrozenPackages"

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 743
    new-instance v0, Lcom/android/server/pm/PackageObserverHelper;

    invoke-direct {v0}, Lcom/android/server/pm/PackageObserverHelper;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 800
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 803
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    const-string v4, "PackageManagerService.mInstrumentation"

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 810
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 813
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 820
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 826
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 838
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 845
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 851
    iput v7, v1, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 857
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 863
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 865
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 872
    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 873
    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 875
    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 876
    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 878
    iput-boolean v7, v1, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 891
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 894
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 895
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 897
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 898
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 907
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 912
    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 924
    new-instance v0, Lcom/android/server/pm/PackageProperty;

    invoke-direct {v0}, Lcom/android/server/pm/PackageProperty;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 978
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 980
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 982
    const/4 v8, 0x1

    iput v8, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 1009
    new-instance v0, Lcom/android/server/pm/PackageUsage;

    invoke-direct {v0}, Lcom/android/server/pm/PackageUsage;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 1011
    new-instance v0, Lcom/android/server/pm/CompilerStats;

    invoke-direct {v0}, Lcom/android/server/pm/CompilerStats;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 1072
    new-instance v0, Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    .line 1170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    .line 2005
    move/from16 v9, p4

    iput-boolean v9, v1, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    .line 2006
    move/from16 v10, p5

    iput-boolean v10, v1, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    .line 2007
    move/from16 v11, p6

    iput v11, v1, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 2008
    move-object/from16 v12, p7

    iput-object v12, v1, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    .line 2009
    move-object/from16 v13, p1

    iput-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2010
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemWrapper()Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;->disablePackageCaches()V

    .line 2012
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v2, "PackageManagerTiming"

    const-wide/32 v3, 0x40000

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    move-object v14, v0

    .line 2014
    .local v14, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v0, Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-direct {v0}, Lcom/android/server/pm/PendingPackageBroadcasts;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 2016
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->bootstrap(Lcom/android/server/pm/PackageManagerService;)V

    .line 2017
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2018
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2019
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2020
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v15, 0x3

    invoke-static {v0, v15}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 2021
    nop

    .line 2022
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2021
    const/16 v0, 0xbf4

    invoke-static {v0, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2024
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2025
    move/from16 v2, p2

    iput-boolean v2, v1, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 2026
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 2027
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2028
    new-instance v0, Lcom/android/server/pm/FreeStorageHelper;

    invoke-direct {v0, v1}, Lcom/android/server/pm/FreeStorageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    .line 2031
    const-string v0, "createSubComponents"

    invoke-virtual {v14, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2034
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-direct {v3, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {v0, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2035
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    new-instance v3, Lcom/android/server/pm/local/PackageManagerLocalImpl;

    invoke-direct {v3, v1}, Lcom/android/server/pm/local/PackageManagerLocalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {v0, v3}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2037
    const-class v0, Landroid/content/pm/TestUtilityService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2038
    const-class v0, Landroid/content/pm/TestUtilityService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/TestUtilityService;

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 2039
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2040
    new-instance v0, Lcom/android/server/pm/UserNeedsBadgingCache;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-direct {v0, v3}, Lcom/android/server/pm/UserNeedsBadgingCache;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 2041
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 2042
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2043
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2044
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 2045
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 2046
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLegacyPermissionManagerInternal()Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 2047
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v3

    .line 2048
    .local v3, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    new-instance v0, Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService$3;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/compat/PlatformCompat;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    .line 2071
    invoke-virtual {v14}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2073
    const-string v0, "get system config"

    invoke-virtual {v14, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2074
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v16

    .line 2075
    .local v16, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v14}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2077
    const-string v0, "addSharedUsers"

    invoke-virtual {v14, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2078
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v4, "android.uid.system"

    const/16 v5, 0x3e8

    const/16 v15, 0x8

    invoke-virtual {v0, v4, v5, v8, v15}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2080
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v4, "android.uid.phone"

    const/16 v5, 0x3e9

    invoke-virtual {v0, v4, v5, v8, v15}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2082
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v4, "android.uid.log"

    const/16 v5, 0x3ef

    invoke-virtual {v0, v4, v5, v8, v15}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2084
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v4, "android.uid.nfc"

    const/16 v5, 0x403

    invoke-virtual {v0, v4, v5, v8, v15}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2086
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v4, "android.uid.bluetooth"

    const/16 v5, 0x3ea

    invoke-virtual {v0, v4, v5, v8, v15}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2088
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v4, "android.uid.shell"

    const/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5, v8, v15}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2090
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v4, "android.uid.se"

    const/16 v5, 0x42c

    invoke-virtual {v0, v4, v5, v8, v15}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2092
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v4, "android.uid.networkstack"

    const/16 v5, 0x431

    invoke-virtual {v0, v4, v5, v8, v15}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2094
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v4, "android.uid.uwb"

    const/16 v5, 0x43b

    invoke-virtual {v0, v4, v5, v8, v15}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2097
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/SystemConfig;->getOemDefinedUids()Landroid/util/ArrayMap;

    move-result-object v4

    .line 2098
    .local v4, "oemDefinedUids":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 2099
    .local v5, "numOemDefinedUids":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 2100
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move/from16 v20, v0

    .end local v0    # "i":I
    .local v20, "i":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v6, v0, v8, v15}, Lcom/android/server/pm/Settings;->addOemSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2099
    add-int/lit8 v0, v20, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .end local v20    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    :cond_0
    move/from16 v20, v0

    .line 2104
    .end local v0    # "i":I
    invoke-virtual {v14}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2106
    const-string v0, "debug.separate_processes"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2108
    .local v6, "separateProcesses":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2109
    const-string v0, "*"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2110
    const/4 v0, 0x2

    iput v0, v1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 2111
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 2112
    const-string v0, "PackageManager"

    const-string v7, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2114
    :cond_1
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 2115
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 2116
    const-string v0, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Running with debug.separate_processes: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2120
    :cond_2
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 2121
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 2124
    :goto_1
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageDexOptimizer()Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 2125
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 2126
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 2127
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 2128
    new-instance v0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 2129
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 2130
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 2132
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2133
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2135
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 2137
    new-instance v0, Lcom/android/server/pm/ProtectedPackages;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/server/pm/ProtectedPackages;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 2139
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 2140
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 2142
    new-instance v0, Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-direct {v0}, Lcom/android/server/pm/ChangedPackagesTracker;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 2144
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string v15, "app"

    invoke-direct {v0, v7, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 2146
    new-instance v0, Lcom/android/server/pm/DomainVerificationConnection;

    invoke-direct {v0, v1}, Lcom/android/server/pm/DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 2147
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2148
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    invoke-interface {v0, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setConnection(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V

    .line 2150
    new-instance v0, Lcom/android/server/pm/BroadcastHelper;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {v0, v7}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 2151
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageMonitorCallbackHelper()Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 2152
    new-instance v0, Lcom/android/server/pm/AppDataHelper;

    invoke-direct {v0, v1}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 2153
    new-instance v0, Lcom/android/server/pm/RemovePackageHelper;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-direct {v0, v1, v7, v15}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 2154
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-direct {v0, v1, v7, v15}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 2156
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    move-object v7, v3

    .end local v3    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .local v7, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    move-object v15, v4

    .end local v4    # "oemDefinedUids":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v15, "oemDefinedUids":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    move/from16 v18, v5

    .end local v5    # "numOemDefinedUids":I
    .local v18, "numOemDefinedUids":I
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 2159
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2160
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/pm/DeletePackageHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2162
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V

    .line 2163
    new-instance v0, Lcom/android/server/pm/PreferredActivityHelper;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2164
    new-instance v20, Lcom/android/server/pm/ResolveIntentHelper;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2165
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v23

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    new-instance v8, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object/from16 v21, v0

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object/from16 v28, v0

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v8

    invoke-direct/range {v20 .. v28}, Lcom/android/server/pm/ResolveIntentHelper;-><init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    move-object/from16 v0, v20

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2167
    new-instance v0, Lcom/android/server/pm/DexOptHelper;

    invoke-direct {v0, v1}, Lcom/android/server/pm/DexOptHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 2168
    new-instance v0, Lcom/android/server/pm/SuspendPackageHelper;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/SuspendPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 2170
    new-instance v0, Lcom/android/server/pm/DistractingPackageHelper;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DistractingPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/SuspendPackageHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 2172
    new-instance v0, Lcom/android/server/pm/StorageEventHelper;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/StorageEventHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/RemovePackageHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 2176
    const-string/jumbo v0, "readListOfTelephonyPackagesToBeDisabled"

    invoke-virtual {v14, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2177
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallPackageHelper;->readListOfTelephonyPackagesToBeDisabled()V

    .line 2178
    invoke-virtual {v14}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2182
    const-string/jumbo v0, "readListOfPackagesToBeDisabled"

    invoke-virtual {v14, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2183
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallPackageHelper;->readListOfPackagesToBeDisabled()V

    .line 2184
    invoke-virtual {v14}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2187
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 2191
    :try_start_0
    new-instance v0, Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {v0}, Lcom/android/server/pm/SnapshotStatistics;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 2192
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2193
    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 2194
    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->registerObservers(Z)V

    .line 2195
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2197
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 2199
    .local v2, "computer":Lcom/android/server/pm/Computer;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3

    .line 2201
    .local v3, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_1
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 2202
    :try_start_2
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2203
    new-instance v0, Lcom/android/server/pm/ProcessLoggingHandler;

    invoke-direct {v0}, Lcom/android/server/pm/ProcessLoggingHandler;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 2204
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object v8, v3

    move-object/from16 v20, v4

    .end local v3    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .local v8, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    const-wide/32 v3, 0x927c0

    :try_start_3
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 2206
    nop

    .line 2207
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/SystemConfig;->getSharedLibraries()Landroid/util/ArrayMap;

    move-result-object v0

    move-object v3, v0

    .line 2208
    .local v3, "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move v4, v0

    .line 2209
    .local v4, "builtInLibCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 2210
    :try_start_4
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v0

    .end local v0    # "i":I
    .local v22, "i":I
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->addBuiltInSharedLibraryLPw(Lcom/android/server/SystemConfig$SharedLibraryEntry;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2209
    add-int/lit8 v0, v22, 0x1

    .end local v22    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 2599
    .end local v0    # "i":I
    .end local v3    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v4    # "builtInLibCount":I
    :catchall_0
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v21, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    goto/16 :goto_1c

    .line 2209
    .restart local v0    # "i":I
    .restart local v3    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .restart local v4    # "builtInLibCount":I
    :cond_3
    move/from16 v22, v0

    .line 2215
    .end local v0    # "i":I
    move-object/from16 v21, v6

    .end local v6    # "separateProcesses":Ljava/lang/String;
    .local v21, "separateProcesses":Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 2216
    .local v5, "undefinedVersion":J
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v4, :cond_6

    .line 2217
    :try_start_5
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v23, v22

    .line 2218
    .local v23, "name":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    move-object/from16 v24, v22

    .line 2219
    .local v24, "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    move/from16 v22, v0

    move-object/from16 v0, v24

    move-object/from16 v24, v3

    .end local v3    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .local v0, "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    .restart local v22    # "i":I
    .local v24, "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    iget-object v3, v0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    array-length v3, v3

    .line 2220
    .local v3, "dependencyCount":I
    const/16 v25, 0x0

    move/from16 v26, v4

    move/from16 v4, v25

    .local v4, "j":I
    .local v26, "builtInLibCount":I
    :goto_4
    if-ge v4, v3, :cond_5

    .line 2221
    move/from16 v25, v3

    .end local v3    # "dependencyCount":I
    .local v25, "dependencyCount":I
    iget-object v3, v0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    aget-object v3, v3, v4

    .line 2222
    invoke-interface {v2, v3, v5, v6}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v3

    .line 2223
    .local v3, "dependency":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v3, :cond_4

    .line 2224
    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v23, v4

    .end local v4    # "j":I
    .local v0, "name":Ljava/lang/String;
    .local v23, "j":I
    .local v27, "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    invoke-interface {v2, v0, v5, v6}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v4

    .line 2225
    invoke-virtual {v4, v3}, Landroid/content/pm/SharedLibraryInfo;->addDependency(Landroid/content/pm/SharedLibraryInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 2599
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .end local v5    # "undefinedVersion":J
    .end local v22    # "i":I
    .end local v23    # "j":I
    .end local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v25    # "dependencyCount":I
    .end local v26    # "builtInLibCount":I
    .end local v27    # "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    :catchall_1
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    goto/16 :goto_1c

    .line 2223
    .local v0, "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    .restart local v3    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .restart local v4    # "j":I
    .restart local v5    # "undefinedVersion":J
    .restart local v22    # "i":I
    .local v23, "name":Ljava/lang/String;
    .restart local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .restart local v25    # "dependencyCount":I
    .restart local v26    # "builtInLibCount":I
    :cond_4
    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v23, v4

    .line 2220
    .end local v3    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .end local v4    # "j":I
    .local v0, "name":Ljava/lang/String;
    .local v23, "j":I
    .restart local v27    # "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    :goto_5
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v23, v0

    move/from16 v3, v25

    move-object/from16 v0, v27

    .end local v23    # "j":I
    .restart local v4    # "j":I
    goto :goto_4

    .end local v25    # "dependencyCount":I
    .end local v27    # "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    .local v0, "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    .local v3, "dependencyCount":I
    .local v23, "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v27, v0

    move/from16 v25, v3

    move-object/from16 v0, v23

    move/from16 v23, v4

    .line 2216
    .end local v0    # "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    .end local v3    # "dependencyCount":I
    .end local v4    # "j":I
    .end local v23    # "name":Ljava/lang/String;
    add-int/lit8 v0, v22, 0x1

    move-object/from16 v3, v24

    move/from16 v4, v26

    .end local v22    # "i":I
    .local v0, "i":I
    goto :goto_3

    .end local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v26    # "builtInLibCount":I
    .local v3, "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .local v4, "builtInLibCount":I
    :cond_6
    move/from16 v22, v0

    move-object/from16 v24, v3

    move/from16 v26, v4

    .line 2230
    .end local v0    # "i":I
    .end local v3    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v4    # "builtInLibCount":I
    .restart local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .restart local v26    # "builtInLibCount":I
    :try_start_6
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy()Z

    .line 2232
    const-string/jumbo v0, "loadFallbacks"

    invoke-virtual {v14, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2233
    invoke-static {}, Landroid/content/pm/FallbackCategoryProvider;->loadFallbacks()V

    .line 2234
    invoke-virtual {v14}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2236
    const-string/jumbo v0, "read user settings"

    invoke-virtual {v14, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2237
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2238
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    move-wide/from16 v22, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    .end local v5    # "undefinedVersion":J
    .local v22, "undefinedVersion":J
    invoke-virtual {v3, v5, v4, v4}, Lcom/android/server/pm/UserManagerInternal;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v3

    .line 2237
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/Settings;->readLPw(Lcom/android/server/pm/Computer;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 2242
    invoke-virtual {v14}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2244
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_8

    .line 2245
    :try_start_7
    const-string/jumbo v0, "setFirstBoot: "

    invoke-virtual {v14, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2247
    :try_start_8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->setFirstBoot()V
    :try_end_8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2250
    goto :goto_7

    .line 2248
    :catch_0
    move-exception v0

    nop

    .line 2249
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_9
    const-string v3, "PackageManager"

    const-string v4, "Could not set First Boot: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2251
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_7
    invoke-virtual {v14}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2254
    :cond_8
    :try_start_a
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-interface {v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 2255
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionStateTEMP()V

    .line 2257
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v0, :cond_9

    .line 2258
    :try_start_b
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->requestCopyPreoptedFiles()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2261
    :cond_9
    :try_start_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1040223

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2263
    .local v0, "customResolverActivityName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-nez v3, :cond_a

    .line 2264
    :try_start_d
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2268
    :cond_a
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2270
    .local v3, "startTime":J
    const/16 v5, 0xbfe

    invoke-static {v5, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2273
    const-string v5, "BOOTCLASSPATH"

    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2274
    .local v5, "bootClassPath":Ljava/lang/String;
    const-string v6, "SYSTEMSERVERCLASSPATH"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 2276
    .local v6, "systemServerClassPath":Ljava/lang/String;
    if-nez v5, :cond_b

    .line 2277
    move-object/from16 v25, v0

    .end local v0    # "customResolverActivityName":Ljava/lang/String;
    .local v25, "customResolverActivityName":Ljava/lang/String;
    :try_start_f
    const-string v0, "PackageManager"

    move-wide/from16 v34, v3

    .end local v3    # "startTime":J
    .local v34, "startTime":J
    const-string v3, "No BOOTCLASSPATH found!"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2276
    .end local v25    # "customResolverActivityName":Ljava/lang/String;
    .end local v34    # "startTime":J
    .restart local v0    # "customResolverActivityName":Ljava/lang/String;
    .restart local v3    # "startTime":J
    :cond_b
    move-object/from16 v25, v0

    move-wide/from16 v34, v3

    .line 2280
    .end local v0    # "customResolverActivityName":Ljava/lang/String;
    .end local v3    # "startTime":J
    .restart local v25    # "customResolverActivityName":Ljava/lang/String;
    .restart local v34    # "startTime":J
    :goto_8
    if-nez v6, :cond_c

    .line 2281
    const-string v0, "PackageManager"

    const-string v3, "No SYSTEMSERVERCLASSPATH found!"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2284
    :cond_c
    :try_start_10
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 2285
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    iget-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 2286
    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    :goto_9
    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    .line 2287
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v3, :cond_e

    .line 2288
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2292
    :cond_e
    :try_start_12
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-eqz v3, :cond_f

    :try_start_13
    iget v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_a

    :cond_f
    const/4 v3, -0x1

    :goto_a
    :try_start_14
    iput v3, v1, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersion:I

    .line 2293
    new-instance v3, Lcom/android/server/pm/InitAppsHelper;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    move-object/from16 v28, v5

    .end local v5    # "bootClassPath":Ljava/lang/String;
    .local v28, "bootClassPath":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    move-object/from16 v36, v6

    .end local v6    # "systemServerClassPath":Ljava/lang/String;
    .local v36, "systemServerClassPath":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2294
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemPartitions()Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/android/server/pm/InitAppsHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 2297
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    if-eqz v3, :cond_10

    :try_start_15
    iget v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    const/16 v4, 0x16

    if-gt v3, v4, :cond_10

    const/4 v3, 0x1

    goto :goto_b

    :cond_10
    const/4 v3, 0x0

    :goto_b
    :try_start_16
    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    .line 2300
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-eqz v3, :cond_11

    :try_start_17
    iget v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    const/16 v4, 0x19

    if-ge v3, v4, :cond_11

    const/4 v3, 0x1

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    :goto_c
    :try_start_18
    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    .line 2301
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    if-eqz v3, :cond_12

    :try_start_19
    iget v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_12

    const/4 v3, 0x1

    goto :goto_d

    :cond_12
    const/4 v3, 0x0

    :goto_d
    :try_start_1a
    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    .line 2303
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2304
    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v32

    move-object/from16 v3, v32

    .line 2306
    .local v3, "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    if-eqz v4, :cond_14

    .line 2309
    :try_start_1b
    new-instance v4, Landroid/util/ArraySet;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 2310
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    .line 2311
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2310
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_13
    nop

    .line 2317
    .end local v4    # "i":I
    const-string v4, "cross profile intent filter update"

    invoke-virtual {v14, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2318
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCrossProfileIntentFilterHelper()Lcom/android/server/pm/CrossProfileIntentFilterHelper;

    move-result-object v4

    .line 2319
    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->updateDefaultCrossProfileIntentFilter()V

    .line 2320
    invoke-virtual {v14}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 2323
    :cond_14
    :try_start_1c
    iget-boolean v4, v1, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    iget-boolean v5, v1, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->preparePackageParserCache(ZZLjava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    .line 2326
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v4

    .line 2327
    invoke-virtual {v4}, Lcom/android/server/SystemConfig;->getInitialNonStoppedSystemPackages()Ljava/util/Set;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 2328
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2329
    const v5, 0x1110259

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    .line 2331
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v33

    .line 2332
    .local v33, "userIds":[I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningCachingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v31

    .line 2333
    .local v31, "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    .end local v3    # "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local v32, "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-virtual/range {v30 .. v35}, Lcom/android/server/pm/InitAppsHelper;->initSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    move-object/from16 v4, v31

    move-object/from16 v31, v8

    move-object v8, v4

    move-object/from16 v30, v7

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move-wide/from16 v4, v34

    .end local v32    # "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v33    # "userIds":[I
    .end local v34    # "startTime":J
    .local v4, "startTime":J
    .local v6, "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local v7, "userIds":[I
    .local v8, "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .local v30, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .local v31, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_1d
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 2335
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    invoke-virtual {v3, v8, v7, v4, v5}, Lcom/android/server/pm/InitAppsHelper;->initNonSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;[IJ)V

    .line 2336
    invoke-virtual {v8}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V

    .line 2338
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredButNotReallyRequiredVerifiersLPr(Lcom/android/server/pm/Computer;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 2339
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredInstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 2340
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredUninstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 2344
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredPermissionControllerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 2347
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getStorageManagerPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 2351
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getSetupWizardPackageNameImpl(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 2352
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    move-wide/from16 v34, v4

    .end local v4    # "startTime":J
    .restart local v34    # "startTime":J
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/resolution/ComponentResolver;->fixProtectedFilterPriorities(Ljava/lang/String;)V

    .line 2354
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2355
    const v4, 0x10402d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2354
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 2356
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2357
    const v4, 0x1040257

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2356
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 2358
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2359
    const v4, 0x104025f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2358
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    .line 2360
    nop

    .line 2361
    const v3, 0x104022c

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v3

    .line 2360
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 2362
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2363
    const v4, 0x104028e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2362
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 2364
    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService;->getRetailDemoPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 2365
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2366
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SystemConfig;->getOverlayConfigSignaturePackage()Ljava/lang/String;

    move-result-object v3

    .line 2365
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 2367
    nop

    .line 2368
    const v3, 0x10402c0

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v3

    .line 2367
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    .line 2369
    nop

    .line 2370
    const v3, 0x104022b

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v3

    .line 2369
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 2372
    nop

    .line 2373
    const v3, 0x104025c

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v3

    .line 2372
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    .line 2378
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2379
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 2378
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v4}, Lcom/android/server/pm/SharedLibrariesImpl;->updateAllSharedLibrariesLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2381
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getAllSharedUsersLPw()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    if-eqz v4, :cond_15

    :try_start_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 2385
    .local v4, "setting":Lcom/android/server/pm/SharedUserSetting;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2388
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object v5

    .line 2389
    move-object/from16 v32, v3

    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v3

    .line 2388
    move-object/from16 v33, v8

    const/4 v8, 0x0

    .end local v8    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .local v33, "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    invoke-interface {v5, v3, v8}, Lcom/android/server/pm/PackageAbiHelper;->getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v3

    .line 2386
    invoke-static {v4, v8, v3}, Lcom/android/server/pm/ScanPackageUtils;->applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2392
    .local v3, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->fixSeInfoLocked()V

    .line 2393
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->updateProcesses()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 2394
    .end local v3    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "setting":Lcom/android/server/pm/SharedUserSetting;
    move-object/from16 v3, v32

    move-object/from16 v8, v33

    goto :goto_f

    .line 2599
    .end local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v6    # "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "userIds":[I
    .end local v22    # "undefinedVersion":J
    .end local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v25    # "customResolverActivityName":Ljava/lang/String;
    .end local v26    # "builtInLibCount":I
    .end local v28    # "bootClassPath":Ljava/lang/String;
    .end local v33    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .end local v34    # "startTime":J
    .end local v36    # "systemServerClassPath":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v39, v2

    goto/16 :goto_1c

    .line 2398
    .restart local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v6    # "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "userIds":[I
    .restart local v8    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .restart local v22    # "undefinedVersion":J
    .restart local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .restart local v25    # "customResolverActivityName":Ljava/lang/String;
    .restart local v26    # "builtInLibCount":I
    .restart local v28    # "bootClassPath":Ljava/lang/String;
    .restart local v34    # "startTime":J
    .restart local v36    # "systemServerClassPath":Ljava/lang/String;
    :cond_15
    move-object/from16 v33, v8

    .end local v8    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .restart local v33    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    :try_start_1f
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    invoke-virtual {v3, v6}, Lcom/android/server/pm/AbstractStatsBase;->read(Ljava/lang/Object;)V

    .line 2399
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v3}, Lcom/android/server/pm/CompilerStats;->read()V

    .line 2401
    nop

    .line 2402
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2401
    const/16 v5, 0xc12

    invoke-static {v5, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2403
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time to scan packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v37

    sub-long v8, v37, v34

    long-to-float v5, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2403
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    if-eqz v3, :cond_16

    .line 2414
    :try_start_20
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Partitions fingerprint changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; regranting permissions for internal storage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 2418
    :cond_16
    :try_start_21
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-boolean v5, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    invoke-interface {v3, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 2420
    iget v3, v1, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 2424
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    if-nez v3, :cond_17

    :try_start_22
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    if-eqz v3, :cond_18

    .line 2425
    :cond_17
    :try_start_23
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 2426
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    if-ge v4, v5, :cond_18

    .line 2427
    :try_start_24
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v8}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 2426
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2436
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "i":I
    :cond_18
    :try_start_25
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    if-eqz v3, :cond_1b

    .line 2437
    :try_start_26
    const-string v3, "PackageManager"

    const-string v4, "Build fingerprint changed; clearing code caches"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a

    .line 2439
    invoke-virtual {v6, v3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2440
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    sget-object v5, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2442
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    const v9, 0x20027

    move/from16 v32, v3

    const/4 v3, -0x1

    .end local v3    # "i":I
    .local v32, "i":I
    invoke-virtual {v5, v8, v3, v9}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    goto :goto_12

    .line 2440
    .end local v32    # "i":I
    .restart local v3    # "i":I
    :cond_19
    move/from16 v32, v3

    .line 2438
    .end local v3    # "i":I
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "i":I
    :goto_12
    add-int/lit8 v3, v32, 0x1

    .end local v32    # "i":I
    .restart local v3    # "i":I
    goto :goto_11

    :cond_1a
    move/from16 v32, v3

    .line 2448
    .end local v3    # "i":I
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 2449
    sget-object v3, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    .line 2453
    :cond_1b
    :try_start_27
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v3}, Lcom/android/server/pm/AppDataHelper;->fixAppsDataOnBoot()Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    .line 2457
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    if-eqz v3, :cond_1d

    .line 2458
    :try_start_28
    const-string v3, "PackageManager"

    const-string v4, "Allowlisting all existing apps to hide their icons"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    .line 2460
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_1d

    .line 2461
    invoke-virtual {v6, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2462
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v8

    const/16 v29, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1c

    .line 2463
    goto :goto_14

    .line 2465
    :cond_1c
    sget-object v8, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/android/server/pm/PackageSetting;->disableComponentLPw(Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    .line 2460
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2471
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_1d
    const/4 v9, 0x0

    :try_start_29
    iput-boolean v9, v1, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    .line 2474
    const/4 v3, 0x3

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 2477
    const-string/jumbo v3, "write settings"

    invoke-virtual {v14, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 2479
    invoke-virtual {v14}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2480
    nop

    .line 2481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2480
    const/16 v5, 0xc1c

    invoke-static {v5, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2483
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getOptionalVerifierLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 2484
    nop

    .line 2485
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getIntentFilterVerifierComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v37, v3

    .line 2486
    .local v37, "intentFilterVerifierComponent":Landroid/content/ComponentName;
    nop

    .line 2487
    const/4 v9, 0x0

    invoke-direct {v1, v2, v9}, Lcom/android/server/pm/PackageManagerService;->getDomainVerificationAgentComponentNameLPr(Lcom/android/server/pm/Computer;I)Landroid/content/ComponentName;

    move-result-object v38

    .line 2489
    .local v38, "domainVerificationAgent":Landroid/content/ComponentName;
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2491
    invoke-interface {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    move-result-object v41

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 2489
    move-object/from16 v39, v3

    move-object/from16 v40, v4

    move-object/from16 v42, v5

    invoke-static/range {v37 .. v42}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->makeProxy(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;)Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v3

    .line 2494
    .local v3, "domainVerificationProxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 2496
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredServicesExtensionPackageLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 2497
    const-string v4, "android.ext.shared"

    const/4 v5, -0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/pm/PackageManagerService;->getRequiredSharedLibrary(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 2501
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 2502
    const-wide/16 v8, 0x0

    move-object/from16 v27, v3

    const/4 v3, 0x0

    .end local v3    # "domainVerificationProxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .local v27, "domainVerificationProxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    invoke-interface {v2, v5, v8, v9, v3}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2503
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    .line 2501
    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/Settings;->setPermissionControllerVersion(J)V

    .line 2506
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredSdkSandboxPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 2509
    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1, v7}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/PackageManagerService;[I)V

    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 2523
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 2524
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    .line 2525
    .local v4, "instantAppResolverComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_1f

    .line 2526
    :try_start_2a
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_1e

    .line 2527
    const-string v5, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set ephemeral resolver: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_1e
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2530
    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstantAppResolverConnection(Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 2531
    nop

    .line 2532
    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolverSettingsLPr(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    const/4 v8, 0x0

    goto :goto_15

    .line 2535
    :cond_1f
    const/4 v8, 0x0

    :try_start_2b
    iput-object v8, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 2536
    iput-object v8, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 2538
    :goto_15
    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 2548
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2549
    .local v5, "userPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    array-length v8, v7
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    :goto_16
    if-ge v3, v8, :cond_20

    :try_start_2c
    aget v9, v7, v3

    .line 2550
    .local v9, "userId":I
    move-object/from16 v17, v0

    .end local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .local v17, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v29, v3

    move-object/from16 v19, v4

    const-wide/16 v3, 0x0

    .end local v4    # "instantAppResolverComponent":Landroid/content/ComponentName;
    .local v19, "instantAppResolverComponent":Landroid/content/ComponentName;
    invoke-interface {v2, v3, v4, v9}, Lcom/android/server/pm/Computer;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v32

    .line 2551
    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 2550
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    .line 2549
    nop

    .end local v9    # "userId":I
    add-int/lit8 v3, v29, 0x1

    move-object/from16 v0, v17

    move-object/from16 v4, v19

    goto :goto_16

    .line 2553
    .end local v17    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v19    # "instantAppResolverComponent":Landroid/content/ComponentName;
    .restart local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v4    # "instantAppResolverComponent":Landroid/content/ComponentName;
    :cond_20
    move-object/from16 v17, v0

    move-object/from16 v19, v4

    .end local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v4    # "instantAppResolverComponent":Landroid/content/ComponentName;
    .restart local v17    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v19    # "instantAppResolverComponent":Landroid/content/ComponentName;
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/dex/DexManager;->load(Ljava/util/Map;)V

    .line 2554
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/dex/DynamicCodeLogger;->load(Ljava/util/Map;)V

    .line 2555
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    if-eqz v0, :cond_21

    .line 2556
    nop

    .line 2559
    :try_start_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v34

    .line 2556
    const/16 v0, 0xef

    const/16 v8, 0xd

    invoke-static {v0, v8, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2

    .line 2564
    :cond_21
    :try_start_2f
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    if-nez v0, :cond_22

    :try_start_30
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    if-eqz v0, :cond_23

    :cond_22
    goto :goto_17

    :cond_23
    move-object/from16 v39, v2

    goto/16 :goto_1b

    .line 2565
    :goto_17
    :try_start_31
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/SystemConfig;->getAppMetadataFilePaths()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2566
    .local v0, "paths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2567
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2568
    .local v8, "pkgName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2569
    .local v9, "path":Ljava/lang/String;
    move-object/from16 v29, v0

    .end local v0    # "paths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v29, "paths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2570
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v32

    if-nez v32, :cond_24

    .line 2571
    const/4 v9, 0x0

    .line 2573
    :cond_24
    move-object/from16 v32, v0

    .end local v0    # "file":Ljava/io/File;
    .local v32, "file":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_4

    .line 2574
    .local v0, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_26

    .line 2575
    move-object/from16 v39, v2

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .local v39, "computer":Lcom/android/server/pm/Computer;
    :try_start_32
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 2576
    .local v2, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_25

    .line 2577
    invoke-virtual {v2, v9}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2578
    nop

    .line 2579
    move-object/from16 v40, v3

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    move-object/from16 v42, v4

    goto :goto_19

    .line 2599
    .end local v0    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "userPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .end local v6    # "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "userIds":[I
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v17    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v19    # "instantAppResolverComponent":Landroid/content/ComponentName;
    .end local v22    # "undefinedVersion":J
    .end local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v25    # "customResolverActivityName":Ljava/lang/String;
    .end local v26    # "builtInLibCount":I
    .end local v27    # "domainVerificationProxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .end local v28    # "bootClassPath":Ljava/lang/String;
    .end local v29    # "paths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v32    # "file":Ljava/io/File;
    .end local v33    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .end local v34    # "startTime":J
    .end local v36    # "systemServerClassPath":Ljava/lang/String;
    .end local v37    # "intentFilterVerifierComponent":Landroid/content/ComponentName;
    .end local v38    # "domainVerificationAgent":Landroid/content/ComponentName;
    :catchall_3
    move-exception v0

    goto/16 :goto_1c

    .line 2583
    .restart local v0    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "userPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .restart local v6    # "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "userIds":[I
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v17    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v19    # "instantAppResolverComponent":Landroid/content/ComponentName;
    .restart local v22    # "undefinedVersion":J
    .restart local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .restart local v25    # "customResolverActivityName":Ljava/lang/String;
    .restart local v26    # "builtInLibCount":I
    .restart local v27    # "domainVerificationProxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .restart local v28    # "bootClassPath":Ljava/lang/String;
    .restart local v29    # "paths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v32    # "file":Ljava/io/File;
    .restart local v33    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .restart local v34    # "startTime":J
    .restart local v36    # "systemServerClassPath":Ljava/lang/String;
    .restart local v37    # "intentFilterVerifierComponent":Landroid/content/ComponentName;
    .restart local v38    # "domainVerificationAgent":Landroid/content/ComponentName;
    :cond_25
    move-object/from16 v40, v3

    const-string v3, "PackageManager"

    move-object/from16 v41, v2

    .end local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v41, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v42, v4

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .local v42, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Cannot set app metadata file for nonexistent package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    .end local v41    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :goto_19
    const/4 v3, 0x3

    goto :goto_1a

    .line 2587
    .end local v39    # "computer":Lcom/android/server/pm/Computer;
    .end local v42    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "computer":Lcom/android/server/pm/Computer;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_26
    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move-object/from16 v42, v4

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v39    # "computer":Lcom/android/server/pm/Computer;
    .restart local v42    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2588
    nop

    .line 2589
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 2593
    .end local v0    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v32    # "file":Ljava/io/File;
    .end local v42    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1a
    move-object/from16 v0, v29

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    goto :goto_18

    .line 2599
    .end local v5    # "userPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .end local v6    # "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "userIds":[I
    .end local v17    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v19    # "instantAppResolverComponent":Landroid/content/ComponentName;
    .end local v22    # "undefinedVersion":J
    .end local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v25    # "customResolverActivityName":Ljava/lang/String;
    .end local v26    # "builtInLibCount":I
    .end local v27    # "domainVerificationProxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .end local v28    # "bootClassPath":Ljava/lang/String;
    .end local v29    # "paths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v33    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .end local v34    # "startTime":J
    .end local v36    # "systemServerClassPath":Ljava/lang/String;
    .end local v37    # "intentFilterVerifierComponent":Landroid/content/ComponentName;
    .end local v38    # "domainVerificationAgent":Landroid/content/ComponentName;
    .end local v39    # "computer":Lcom/android/server/pm/Computer;
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    :catchall_4
    move-exception v0

    move-object/from16 v39, v2

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v39    # "computer":Lcom/android/server/pm/Computer;
    goto/16 :goto_1c

    .line 2566
    .end local v39    # "computer":Lcom/android/server/pm/Computer;
    .local v0, "paths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v5    # "userPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .restart local v6    # "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "userIds":[I
    .restart local v17    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v19    # "instantAppResolverComponent":Landroid/content/ComponentName;
    .restart local v22    # "undefinedVersion":J
    .restart local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .restart local v25    # "customResolverActivityName":Ljava/lang/String;
    .restart local v26    # "builtInLibCount":I
    .restart local v27    # "domainVerificationProxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .restart local v28    # "bootClassPath":Ljava/lang/String;
    .restart local v33    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .restart local v34    # "startTime":J
    .restart local v36    # "systemServerClassPath":Ljava/lang/String;
    .restart local v37    # "intentFilterVerifierComponent":Landroid/content/ComponentName;
    .restart local v38    # "domainVerificationAgent":Landroid/content/ComponentName;
    :cond_27
    move-object/from16 v29, v0

    move-object/from16 v39, v2

    .line 2597
    .end local v0    # "paths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v39    # "computer":Lcom/android/server/pm/Computer;
    :goto_1b
    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 2599
    .end local v5    # "userPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .end local v6    # "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "userIds":[I
    .end local v17    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v19    # "instantAppResolverComponent":Landroid/content/ComponentName;
    .end local v22    # "undefinedVersion":J
    .end local v24    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v25    # "customResolverActivityName":Ljava/lang/String;
    .end local v26    # "builtInLibCount":I
    .end local v27    # "domainVerificationProxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .end local v28    # "bootClassPath":Ljava/lang/String;
    .end local v33    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .end local v34    # "startTime":J
    .end local v36    # "systemServerClassPath":Ljava/lang/String;
    .end local v37    # "intentFilterVerifierComponent":Landroid/content/ComponentName;
    .end local v38    # "domainVerificationAgent":Landroid/content/ComponentName;
    monitor-exit v20
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_3

    :try_start_33
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_5

    .line 2600
    if-eqz v31, :cond_28

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 2603
    .end local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_28
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getModuleInfoProvider()Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 2605
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemWrapper()Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;->enablePackageCaches()V

    .line 2610
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Installer;->setWarnIfHeld(Ljava/lang/Object;)V

    .line 2612
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->readConfigUseRoundIcon(Landroid/content/res/Resources;)V

    .line 2614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/pm/PackageManagerService;->mServiceStartWithDelay:J

    .line 2616
    const-string v0, "PackageManager"

    const-string v2, "Fix for b/169414761 is applied"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    return-void

    .line 2199
    .restart local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_5
    move-exception v0

    move-object v2, v0

    goto :goto_1d

    .line 2599
    .end local v30    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .end local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v39    # "computer":Lcom/android/server/pm/Computer;
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .local v7, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .local v8, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_6
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v7    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .end local v8    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v30    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v39    # "computer":Lcom/android/server/pm/Computer;
    goto :goto_1c

    .end local v21    # "separateProcesses":Ljava/lang/String;
    .end local v30    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .end local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v39    # "computer":Lcom/android/server/pm/Computer;
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .local v6, "separateProcesses":Ljava/lang/String;
    .restart local v7    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v8    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_7
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v21, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v6    # "separateProcesses":Ljava/lang/String;
    .end local v7    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .end local v8    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v21    # "separateProcesses":Ljava/lang/String;
    .restart local v30    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v39    # "computer":Lcom/android/server/pm/Computer;
    goto :goto_1c

    .end local v21    # "separateProcesses":Ljava/lang/String;
    .end local v30    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .end local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v39    # "computer":Lcom/android/server/pm/Computer;
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .local v3, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v6    # "separateProcesses":Ljava/lang/String;
    .restart local v7    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    :catchall_8
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v30, v7

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v3    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v6    # "separateProcesses":Ljava/lang/String;
    .end local v7    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v21    # "separateProcesses":Ljava/lang/String;
    .restart local v30    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v39    # "computer":Lcom/android/server/pm/Computer;
    :goto_1c
    :try_start_34
    monitor-exit v20
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_3

    :try_start_35
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .end local v14    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v15    # "oemDefinedUids":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16    # "systemConfig":Lcom/android/server/SystemConfig;
    .end local v18    # "numOemDefinedUids":I
    .end local v21    # "separateProcesses":Ljava/lang/String;
    .end local v30    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .end local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v39    # "computer":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "injector":Lcom/android/server/pm/PackageManagerServiceInjector;
    .end local p2    # "factoryTest":Z
    .end local p3    # "partitionsFingerprint":Ljava/lang/String;
    .end local p4    # "isEngBuild":Z
    .end local p5    # "isUserDebugBuild":Z
    .end local p6    # "sdkVersion":I
    .end local p7    # "incrementalVersion":Ljava/lang/String;
    throw v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_5

    .line 2199
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v3    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v6    # "separateProcesses":Ljava/lang/String;
    .restart local v7    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v14    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v15    # "oemDefinedUids":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v18    # "numOemDefinedUids":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "injector":Lcom/android/server/pm/PackageManagerServiceInjector;
    .restart local p2    # "factoryTest":Z
    .restart local p3    # "partitionsFingerprint":Ljava/lang/String;
    .restart local p4    # "isEngBuild":Z
    .restart local p5    # "isUserDebugBuild":Z
    .restart local p6    # "sdkVersion":I
    .restart local p7    # "incrementalVersion":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    move-object/from16 v21, v6

    move-object/from16 v30, v7

    move-object v2, v0

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v3    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v6    # "separateProcesses":Ljava/lang/String;
    .end local v7    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v21    # "separateProcesses":Ljava/lang/String;
    .restart local v30    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v39    # "computer":Lcom/android/server/pm/Computer;
    :goto_1d
    if-eqz v31, :cond_29

    :try_start_36
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_a

    goto :goto_1e

    :catchall_a
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_1e
    throw v2

    .line 2195
    .end local v21    # "separateProcesses":Ljava/lang/String;
    .end local v30    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .end local v31    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v39    # "computer":Lcom/android/server/pm/Computer;
    .restart local v6    # "separateProcesses":Ljava/lang/String;
    .restart local v7    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    :catchall_b
    move-exception v0

    move-object/from16 v21, v6

    move-object/from16 v30, v7

    .end local v6    # "separateProcesses":Ljava/lang/String;
    .end local v7    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v21    # "separateProcesses":Ljava/lang/String;
    .restart local v30    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    :goto_1f
    :try_start_37
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_1f
.end method

.method private applyUpdatedSystemOverlayPaths()V
    .locals 2

    .line 7610
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    .line 7611
    const-string v0, "PackageManager"

    const-string v1, "Skipped the AndroidApplication overlay paths update - no app yet"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7613
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 7614
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 7616
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    if-eqz v0, :cond_1

    .line 7617
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 7618
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 7621
    :cond_1
    return-void
.end method

.method public static boostPriorityForPackageManagerTracedLockedSection()V
    .locals 0

    .line 1050
    return-void
.end method

.method private canSetOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;)Z
    .locals 2
    .param p1, "origPaths"    # Landroid/content/pm/overlay/OverlayPaths;
    .param p2, "newPaths"    # Landroid/content/pm/overlay/OverlayPaths;

    .line 7569
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7570
    return v1

    .line 7572
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    .line 7573
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    .line 7574
    :cond_2
    return v1

    .line 7576
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private cleanUpCrossUserSuspension(I)V
    .locals 8
    .param p1, "removedUser"    # I

    .line 4543
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 4544
    .local v0, "computer":Lcom/android/server/pm/Computer;
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v1

    .line 4545
    .local v1, "allPackages":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 4546
    .local v5, "targetUserId":I
    if-ne v5, p1, :cond_0

    goto :goto_1

    .line 4547
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    new-instance v7, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v7, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {v6, v0, v1, v7, v5}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 4545
    .end local v5    # "targetUserId":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4550
    :cond_1
    return-void
.end method

.method private clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;IZ)Z
    .locals 7
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "restorePregrantedPermissions"    # Z

    .line 3557
    const/4 v0, 0x0

    const-string v1, "PackageManager"

    if-nez p2, :cond_0

    .line 3558
    const-string v2, "Attempt to delete null packageName."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    return v0

    .line 3563
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 3564
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v2, :cond_1

    .line 3565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package named \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    return v0

    .line 3568
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, v2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V

    .line 3570
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v1, 0x7

    invoke-virtual {v0, v2, p3, v1}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 3573
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3574
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v1, p3, v0}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V

    .line 3576
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    .line 3577
    .local v1, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal;

    .line 3579
    .local v3, "smInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p3}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3580
    const/4 v4, 0x3

    .local v4, "flags":I
    goto :goto_0

    .line 3581
    .end local v4    # "flags":I
    :cond_2
    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3582
    const/4 v4, 0x1

    .restart local v4    # "flags":I
    goto :goto_0

    .line 3584
    .end local v4    # "flags":I
    :cond_3
    const/4 v4, 0x0

    .line 3586
    .restart local v4    # "flags":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    invoke-virtual {v5, v2, v6, p3, v4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 3589
    const/4 v5, 0x1

    return v5
.end method

.method private createLiveComputer()Lcom/android/server/pm/ComputerLocked;
    .locals 3

    .line 1275
    new-instance v0, Lcom/android/server/pm/ComputerLocked;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$Snapshot;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComputerLocked;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;)V

    return-object v0
.end method

.method private static decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;
    .locals 6
    .param p0, "certs"    # Ljava/util/List;

    .line 1455
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 1456
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    .line 1457
    .local v1, "result":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1458
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1459
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1460
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    aput-object v5, v1, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1463
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "result":[Ljava/security/cert/Certificate;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1457
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "result":[Ljava/security/cert/Certificate;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :cond_0
    nop

    .line 1462
    .end local v2    # "i":I
    .end local v3    # "size":I
    return-object v1

    .line 1463
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "result":[Ljava/security/cert/Certificate;
    :goto_1
    nop

    .line 1464
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private deletePackageIfUnused(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4616
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4617
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_0

    .line 4618
    return-void

    .line 4620
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v1

    .line 4621
    .local v1, "userStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Lcom/android/server/pm/pkg/PackageUserStateInternal;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4622
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4623
    return-void

    .line 4621
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 4629
    .end local v2    # "index":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4632
    return-void
.end method

.method private enforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 7625
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 7628
    const-string v2, "android.permission.UPGRADE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7631
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7635
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceCanSetDistractingPackageRestrictionsAsUser(IILjava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "callingMethod"    # Ljava/lang/String;

    .line 3340
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUSPEND_APPS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3344
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 3345
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cannot call for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3348
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/Computer;ZLandroid/content/pm/UserPackage;IILjava/lang/String;)V
    .locals 7
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "quarantined"    # Z
    .param p3, "suspender"    # Landroid/content/pm/UserPackage;
    .param p4, "callingUid"    # I
    .param p5, "targetUserId"    # I
    .param p6, "callingMethod"    # Ljava/lang/String;

    .line 3259
    if-eqz p4, :cond_7

    .line 3261
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 3265
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 3266
    invoke-virtual {v0, p5}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 3267
    .local v0, "ownerPackage":Ljava/lang/String;
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 3268
    invoke-interface {p1, v0, v1, v2, p5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 3269
    .local v3, "ownerUid":I
    if-ne v3, p4, :cond_1

    .line 3270
    return-void

    .line 3274
    .end local v3    # "ownerUid":I
    :cond_1
    if-eqz p2, :cond_2

    .line 3275
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.QUARANTINE_APPS"

    invoke-virtual {v3, v4, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3278
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SUSPEND_APPS"

    invoke-virtual {v3, v4, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    :goto_0
    nop

    .line 3295
    iget-object v3, p3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 3296
    invoke-interface {p1, v3, v1, v2, p5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 3297
    .local v1, "packageUid":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    .line 3298
    .local v4, "allowedPackageUid":Z
    :goto_1
    const/16 v5, 0x7d0

    if-ne p4, v5, :cond_4

    .line 3299
    invoke-static {v1, p4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    nop

    :goto_2
    nop

    .line 3301
    .local v2, "allowedShell":Z
    if-nez v2, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    goto :goto_3

    .line 3302
    :cond_6
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suspending package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not belong to calling uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3307
    .end local v1    # "packageUid":I
    .end local v2    # "allowedShell":Z
    .end local v4    # "allowedPackageUid":Z
    :goto_3
    return-void

    .line 3262
    .end local v0    # "ownerPackage":Ljava/lang/String;
    :cond_7
    :goto_4
    return-void
.end method

.method private enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .locals 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 3724
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3725
    return-void

    .line 3727
    :cond_0
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3728
    .local v0, "callerPackageNames":[Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3732
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3733
    .local v1, "callingUserId":I
    const-wide/16 v2, 0x0

    invoke-interface {p1, p2, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3734
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    .line 3738
    return-void

    .line 3735
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " on user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3729
    .end local v1    # "callingUserId":I
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not own package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extrasForInstallResult(Lcom/android/server/pm/InstallRequest;)Landroid/os/Bundle;
    .locals 3
    .param p0, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 1469
    const/4 v0, 0x0

    .line 1470
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 1480
    :sswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 1481
    nop

    .line 1482
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1483
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1481
    :goto_0
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1472
    :sswitch_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 1473
    nop

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getOrigPermission()Ljava/lang/String;

    move-result-object v1

    .line 1473
    const-string v2, "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    nop

    .line 1476
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getOrigPackage()Ljava/lang/String;

    move-result-object v1

    .line 1475
    const-string v2, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    nop

    .line 1487
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getWarnings()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1488
    const-string v1, "android.content.pm.extra.WARNINGS"

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getWarnings()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1490
    :cond_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x70 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method private flushPackageRestrictionsAsUserInternalLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 4285
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4286
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 4287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4288
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4289
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 4291
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 4292
    return-void

    .line 4291
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 7695
    .local p1, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 7696
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7697
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 7698
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7696
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 7700
    .end local v1    # "index":I
    return-void
.end method

.method private freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "killReason"    # Ljava/lang/String;
    .param p4, "exitInfoReason"    # I
    .param p5, "request"    # Lcom/android/server/pm/InstallRequest;
    .param p6, "waitAppKilled"    # Z

    .line 4508
    new-instance v0, Lcom/android/server/pm/PackageFreezer;

    move-object v4, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "killReason":Ljava/lang/String;
    .end local p4    # "exitInfoReason":I
    .end local p5    # "request":Lcom/android/server/pm/InstallRequest;
    .end local p6    # "waitAppKilled":Z
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "userId":I
    .local v3, "killReason":Ljava/lang/String;
    .local v5, "exitInfoReason":I
    .local v6, "request":Lcom/android/server/pm/InstallRequest;
    .local v7, "waitAppKilled":Z
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageFreezer;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/InstallRequest;Z)V

    return-object v0
.end method

.method static getDefaultTimeouts()Ljava/lang/String;
    .locals 5

    .line 7837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7839
    .local v0, "token":J
    :try_start_0
    const-string/jumbo v2, "package_manager_service"

    const-string/jumbo v3, "incfs_default_timeouts"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7842
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7839
    return-object v2

    .line 7842
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7843
    throw v2
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 1

    .line 3547
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 3549
    nop

    .line 3550
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3549
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 3552
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getDomainVerificationAgentComponentNameLPr(Lcom/android/server/pm/Computer;I)Landroid/content/ComponentName;
    .locals 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I

    .line 2818
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOMAINS_NEED_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2819
    .local v4, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2820
    const/4 v5, 0x0

    const-wide/32 v6, 0x1c0000

    move-object v3, p1

    move v8, p2

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .end local p2    # "userId":I
    .local v3, "computer":Lcom/android/server/pm/Computer;
    .local v8, "userId":I
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    .line 2823
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 p2, 0x0

    .line 2824
    .local p2, "best":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2825
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-string v2, "PackageManager"

    if-ge v1, v0, :cond_4

    .line 2826
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2827
    .local v5, "cur":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 2828
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "android.permission.DOMAIN_VERIFICATION_AGENT"

    invoke-virtual {p0, v7, v6, v8}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    .line 2831
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Domain verification agent found but does not hold permission: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    goto :goto_1

    .line 2836
    :cond_0
    if-eqz p2, :cond_1

    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v9, p2, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v7, v9, :cond_3

    .line 2837
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    .line 2838
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 2837
    invoke-interface {v3, v7, v9}, Lcom/android/server/pm/Computer;->isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2839
    move-object p2, v5

    goto :goto_1

    .line 2841
    :cond_2
    const-string v7, "Domain verification agent found but not enabled"

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    .end local v5    # "cur":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 2846
    .end local v1    # "i":I
    if-eqz p2, :cond_5

    .line 2847
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 2849
    :cond_5
    const-string v1, "Domain verification agent not found"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    const/4 v1, 0x0

    return-object v1
.end method

.method private getInstantAppInstallerLPr()Landroid/content/pm/ActivityInfo;
    .locals 14

    .line 2911
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    const-string v1, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2912
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE_TEST"

    aput-object v4, v0, v3

    aput-object v1, v0, v2

    goto :goto_0

    .line 2915
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    aput-object v1, v0, v3

    :goto_0
    nop

    .line 2918
    .local v0, "orderedActions":[Ljava/lang/String;
    nop

    .line 2922
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/high16 v1, 0x100000

    :goto_1
    const/high16 v4, -0x7ff40000

    or-int/2addr v1, v4

    .line 2923
    .local v1, "resolveFlags":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 2924
    .local v4, "computer":Lcom/android/server/pm/Computer;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2925
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2926
    new-instance v6, Ljava/io/File;

    const-string v7, "foo.apk"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2927
    const/4 v6, 0x0

    .line 2928
    .local v6, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    array-length v10, v0

    move v12, v3

    move-object v11, v6

    .end local v6    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v11, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_2
    nop

    if-ge v12, v10, :cond_3

    aget-object v13, v0, v12

    .line 2929
    .local v13, "action":Ljava/lang/String;
    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2930
    int-to-long v7, v1

    const/4 v9, 0x0

    const-string v6, "application/vnd.android.package-archive"

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v11

    .line 2932
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2933
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v6, :cond_2

    .line 2934
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instant App installer not found with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    .end local v13    # "action":Ljava/lang/String;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2940
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2941
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2942
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 2943
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v9, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v9, v8, v3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    nop

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-eqz v8, :cond_5

    .line 2946
    goto :goto_3

    .line 2948
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 2949
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_3

    .line 2950
    :cond_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 2951
    const/4 v2, 0x0

    return-object v2

    .line 2952
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v2, :cond_8

    .line 2953
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    return-object v2

    .line 2955
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There must be at most one ephemeral installer; found "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getInstantAppResolverSettingsLPr(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 8
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "resolver"    # Landroid/content/ComponentName;

    .line 2962
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2963
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2964
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 2965
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v0, 0xc0000

    .line 2966
    .local v0, "resolveFlags":I
    const-wide/32 v5, 0xc0000

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .local v2, "computer":Lcom/android/server/pm/Computer;
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p1

    .line 2968
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2969
    const/4 v1, 0x0

    return-object v1

    .line 2971
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private getIntentFilterVerifierComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .locals 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2785
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2787
    .local v4, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2791
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2788
    const-string v5, "application/vnd.android.package-archive"

    const-wide/32 v6, 0x1c0000

    const/4 v8, 0x0

    move-object v3, p1

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .local v3, "computer":Lcom/android/server/pm/Computer;
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    .line 2792
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 2793
    .local v0, "best":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2794
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2795
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2796
    .local v5, "cur":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 2797
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "android.permission.INTENT_FILTER_VERIFICATION_AGENT"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v6, v8}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    .line 2800
    goto :goto_1

    .line 2803
    :cond_0
    if-eqz v0, :cond_1

    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v8, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v7, v8, :cond_2

    .line 2804
    :cond_1
    move-object v0, v5

    .line 2794
    .end local v5    # "cur":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 2808
    .end local v2    # "i":I
    if-eqz v0, :cond_4

    .line 2809
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    .line 2811
    :cond_4
    const-string v2, "PackageManager"

    const-string v5, "Intent filter verifier not found"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const/4 v2, 0x0

    return-object v2
.end method

.method static getKnownDigestersList()Ljava/lang/String;
    .locals 5

    .line 7847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7849
    .local v0, "token":J
    :try_start_0
    const-string/jumbo v2, "package_manager_service"

    const-string/jumbo v3, "known_digesters_list"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7852
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7849
    return-object v2

    .line 7852
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7853
    throw v2
.end method

.method private getOptionalVerifierLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .locals 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.qti.intent.action.PACKAGE_NEEDS_OPTIONAL_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2674
    .local v4, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2674
    const-string v5, "application/vnd.android.package-archive"

    const-wide/32 v6, 0x1c0000

    const/4 v8, 0x0

    move-object v3, p1

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .local v3, "computer":Lcom/android/server/pm/Computer;
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    .line 2678
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 2679
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2680
    .local v0, "optionalVerifierName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2681
    return-object v2

    .line 2682
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 2683
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2684
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 2682
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2688
    .end local v0    # "optionalVerifierName":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    return-object v2
.end method

.method private static getPruneUnusedSharedLibrariesDelay()J
    .locals 3

    .line 1360
    const-string v0, "debug.pm.prune_unused_shared_libraries_delay"

    sget-wide v1, Lcom/android/server/pm/PackageManagerService;->PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRequiredButNotReallyRequiredVerifiersLPr(Lcom/android/server/pm/Computer;)[Ljava/lang/String;
    .locals 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2645
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2647
    .local v4, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2651
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2648
    const-string v5, "application/vnd.android.package-archive"

    const-wide/32 v6, 0x1c0000

    const/4 v8, 0x0

    move-object v3, p1

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .local v3, "computer":Lcom/android/server/pm/Computer;
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    .line 2652
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2653
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 2654
    const-string v1, "PackageManager"

    const-string v2, "There should probably be a verifier, but, none were found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 2656
    :cond_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    .line 2657
    new-array v1, v0, [Ljava/lang/String;

    .line 2658
    .local v1, "verifiers":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2659
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    aput-object v5, v1, v2

    .line 2660
    aget-object v5, v1, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2658
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2661
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid verifier: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2658
    :cond_2
    nop

    .line 2664
    .end local v2    # "i":I
    return-object v1

    .line 2666
    .end local v1    # "verifiers":[Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There must be no more than 2 verifiers; found "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRequiredInstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .locals 8
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2728
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 2729
    .local v3, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2730
    const-string v0, "content://com.example/foo.apk"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2732
    const-wide/32 v5, 0x1c0000

    const/4 v7, 0x0

    const-string v4, "application/vnd.android.package-archive"

    move-object v2, p1

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .local v2, "computer":Lcom/android/server/pm/Computer;
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p1

    .line 2736
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2737
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2738
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2741
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 2739
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "The installer must be a privileged app"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2743
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There must be exactly one installer; found "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRequiredPermissionControllerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .locals 8
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2765
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 2766
    .local v3, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2768
    const-wide/32 v5, 0x1c0000

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .local v2, "computer":Lcom/android/server/pm/Computer;
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p1

    .line 2771
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2772
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2773
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2776
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 2774
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "The permissions manager must be a privileged app"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2778
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There must be exactly one permissions manager; found "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getRequiredSdkSandboxPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .locals 12
    .param p0, "computer"    # Lcom/android/server/pm/Computer;

    .line 3780
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.sdksandbox.SdkSandboxService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 3782
    .local v3, "intent":Landroid/content/Intent;
    nop

    .line 3787
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    .line 3782
    const/4 v4, 0x0

    const-wide/32 v5, 0x1c0000

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    .end local p0    # "computer":Lcom/android/server/pm/Computer;
    .local v2, "computer":Lcom/android/server/pm/Computer;
    invoke-interface/range {v2 .. v11}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object p0

    .line 3791
    .local p0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3792
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 3794
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There should exactly one sdk sandbox package; found "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3795
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": matches="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRequiredServicesExtensionPackageLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .locals 5
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2707
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10402d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2709
    .local v0, "configServicesExtensionPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2714
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2716
    .local v1, "servicesExtensionPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2724
    return-object v1

    .line 2717
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Required services extension package is missing, config_servicesExtensionPackage had defined with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but can not find the package info on the system image, check if the package has a problem."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2710
    .end local v1    # "servicesExtensionPackage":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Required services extension package failed due to config_servicesExtensionPackage is empty."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRequiredSharedLibrary(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .line 2694
    int-to-long v0, p3

    invoke-interface {p1, p2, v0, v1}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    .line 2695
    .local v0, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v0, :cond_1

    .line 2698
    invoke-virtual {v0}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2699
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2702
    return-object v1

    .line 2700
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a package for shared library "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2696
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required shared library:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRequiredUninstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .locals 14
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2748
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2749
    .local v4, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2750
    const-string v0, "foo.bar"

    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2752
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2755
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 2752
    const/4 v5, 0x0

    const-wide/32 v6, 0x1c0000

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .local v3, "computer":Lcom/android/server/pm/Computer;
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 2756
    .local p1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    nop

    nop

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2757
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2761
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 2758
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There must be exactly one uninstaller; found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRetailDemoPackageName()Ljava/lang/String;
    .locals 12

    .line 3801
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10402c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3802
    .local v0, "predefinedPkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10402c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3805
    .local v1, "predefinedSignature":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_3

    .line 3809
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3810
    .local v2, "androidPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v2, :cond_4

    .line 3811
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 3812
    .local v4, "signingDetail":Landroid/content/pm/SigningDetails;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3814
    :try_start_0
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 3815
    .local v5, "msgDigest":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_3

    aget-object v10, v6, v9

    .line 3816
    .local v10, "signature":Landroid/content/pm/Signature;
    nop

    .line 3818
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    .line 3817
    invoke-virtual {v5, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    invoke-static {v11, v8}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v11

    .line 3816
    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_2

    .line 3819
    return-object v0

    .line 3816
    :cond_2
    nop

    .line 3815
    .end local v10    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3822
    .end local v5    # "msgDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 3815
    .restart local v5    # "msgDigest":Ljava/security/MessageDigest;
    :cond_3
    nop

    .line 3827
    .end local v5    # "msgDigest":Ljava/security/MessageDigest;
    goto :goto_2

    .line 3822
    :goto_1
    nop

    .line 3823
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "PackageManager"

    const-string v7, "Unable to verify signatures as getting the retail demo package name"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3831
    .end local v4    # "signingDetail":Landroid/content/pm/SigningDetails;
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_4
    :goto_2
    return-object v3

    .line 3806
    .end local v2    # "androidPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_3
    return-object v3
.end method

.method private getSetupWizardPackageNameImpl(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .locals 8
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 3746
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 3747
    .local v3, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.category.SETUP_WIZARD"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3749
    nop

    .line 3752
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 3749
    const/4 v4, 0x0

    const-wide/32 v5, 0x1c0200

    move-object v2, p1

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .local v2, "computer":Lcom/android/server/pm/Computer;
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p1

    .line 3753
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3754
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 3756
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There should probably be exactly one setup wizard; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": matches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStorageManagerPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .locals 8
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 3763
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 3765
    .local v3, "intent":Landroid/content/Intent;
    nop

    .line 3768
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 3765
    const/4 v4, 0x0

    const-wide/32 v5, 0x1c0200

    move-object v2, p1

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .local v2, "computer":Lcom/android/server/pm/Computer;
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p1

    .line 3769
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3770
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 3772
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There should probably be exactly one storage manager; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3773
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": matches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3772
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    const/4 v0, 0x0

    return-object v0
.end method

.method private installAllowlistedSystemPackages()V
    .locals 4

    .line 1839
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1841
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 1844
    :cond_0
    return-void
.end method

.method public static invalidatePackageInfoCache()V
    .locals 0

    .line 1068
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 1069
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 1070
    return-void
.end method

.method private isDeviceManagementRoleHolder(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3528
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->getDevicePolicyManagementRoleHolderPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isPreapprovalRequestAvailable()Z
    .locals 5

    .line 7857
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7859
    .local v0, "token":J
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 7861
    nop

    .line 7866
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7861
    const/4 v2, 0x0

    return v2

    .line 7863
    :cond_0
    :try_start_1
    const-string/jumbo v2, "package_manager_service"

    const-string/jumbo v3, "is_preapproval_available"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7866
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7863
    return v2

    .line 7866
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7867
    throw v2
.end method

.method private static isSystemOrPhone(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 8379
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 8380
    const/16 v0, 0x3e9

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 8379
    :goto_1
    return v0
.end method

.method static isUpdateOwnershipEnforcementAvailable()Z
    .locals 5

    .line 7871
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7873
    .local v0, "token":J
    :try_start_0
    const-string/jumbo v2, "package_manager_service"

    const-string/jumbo v3, "is_update_ownership_enforcement_available"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7876
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7873
    return v2

    .line 7876
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7877
    throw v2
.end method

.method private static synthetic lambda$cleanUpCrossUserSuspension$52(ILandroid/content/pm/UserPackage;)Z
    .locals 1
    .param p0, "removedUser"    # I
    .param p1, "userPackage"    # Landroid/content/pm/UserPackage;

    .line 4548
    iget v0, p1, Landroid/content/pm/UserPackage;->userId:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$deletePackageIfUnused$53(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4629
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-object v1, p1

    .end local p1    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    return-void
.end method

.method private static synthetic lambda$forEachInstalledPackage$59(ILjava/util/function/Consumer;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 1
    .param p0, "userId"    # I
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 7705
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7706
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7707
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7709
    :cond_0
    return-void
.end method

.method private synthetic lambda$getDevicePolicyManagementRoleHolderPackageName$48(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3534
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 3535
    .local v0, "roleManager":Landroid/app/role/RoleManager;
    nop

    .line 3537
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 3536
    const-string v2, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    invoke-virtual {v0, v2, v1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 3538
    .local v1, "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3539
    const/4 v2, 0x0

    return-object v2

    .line 3541
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private static synthetic lambda$main$10(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/resolution/ComponentResolver;
    .locals 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1717
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/resolution/ComponentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    return-object v0
.end method

.method private static synthetic lambda$main$11(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1718
    nop

    .line 1719
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1718
    invoke-static {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->create(Landroid/content/Context;Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$main$12(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/AppOpsManagerInternal;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1720
    const-class v0, Landroid/app/AppOpsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManagerInternal;

    return-object v0
.end method

.method private static synthetic lambda$main$13(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UserManagerService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Lcom/android/server/pm/PackageManagerTracedLock;
    .param p3, "lock"    # Lcom/android/server/pm/PackageManagerTracedLock;
    .param p4, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p5, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1721
    new-instance v0, Lcom/android/server/pm/UserManagerService;

    new-instance v1, Lcom/android/server/pm/UserDataPreparer;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/server/pm/UserDataPreparer;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V

    invoke-direct {v0, p0, p5, v1, p3}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic lambda$main$14(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/Settings;
    .locals 7
    .param p0, "domainVerificationService"    # Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .param p1, "backgroundHandler"    # Landroid/os/Handler;
    .param p2, "lock"    # Lcom/android/server/pm/PackageManagerTracedLock;
    .param p3, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p4, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1723
    new-instance v0, Lcom/android/server/pm/Settings;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 1724
    invoke-static {}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->createInstance()Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    move-result-object v2

    .line 1725
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .end local p0    # "domainVerificationService":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "backgroundHandler":Landroid/os/Handler;
    .end local p2    # "lock":Lcom/android/server/pm/PackageManagerTracedLock;
    .local v4, "domainVerificationService":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .local v5, "backgroundHandler":Landroid/os/Handler;
    .local v6, "lock":Lcom/android/server/pm/PackageManagerTracedLock;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    .line 1723
    return-object v0
.end method

.method private static synthetic lambda$main$15(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilterImpl;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1728
    nop

    .line 1729
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1728
    invoke-static {p0, v0}, Lcom/android/server/pm/AppsFilterImpl;->create(Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$main$16(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/compat/PlatformCompat;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1730
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    return-object v0
.end method

.method private static synthetic lambda$main$17(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SystemConfig;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1731
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$main$18(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageDexOptimizer;
    .locals 5
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1732
    new-instance v0, Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2

    .line 1733
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "*dexopt*"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V

    .line 1732
    return-object v0
.end method

.method private static synthetic lambda$main$19(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;
    .locals 4
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1734
    new-instance v0, Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageDexOptimizer()Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v2

    .line 1735
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/dex/DexManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/dex/DynamicCodeLogger;)V

    .line 1734
    return-object v0
.end method

.method private static synthetic lambda$main$20(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DynamicCodeLogger;
    .locals 2
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1736
    new-instance v0, Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Lcom/android/server/pm/Installer;)V

    return-object v0
.end method

.method private static synthetic lambda$main$21(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ArtManagerService;
    .locals 4
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1737
    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v2

    .line 1738
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/dex/ArtManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V

    .line 1737
    return-object v0
.end method

.method private static synthetic lambda$main$22(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1739
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$main$23(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;
    .locals 2
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1740
    nop

    .line 1741
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "incremental"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/incremental/IncrementalManager;

    .line 1740
    return-object v0
.end method

.method private static synthetic lambda$main$24(Landroid/content/Context;)Landroid/app/role/RoleManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1742
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    return-object v0
.end method

.method private static synthetic lambda$main$25()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 1743
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    return-object v0
.end method

.method private static synthetic lambda$main$26(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1742
    new-instance v0, Lcom/android/server/pm/DefaultAppProvider;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultAppProvider;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method private static synthetic lambda$main$27(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1744
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$main$28(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 6
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1745
    new-instance v0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object v0
.end method

.method private static synthetic lambda$main$29(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 5
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1748
    new-instance v0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object v0
.end method

.method private static synthetic lambda$main$30(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 5
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1750
    new-instance v0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object v0
.end method

.method private static synthetic lambda$main$31(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageInstallerService;
    .locals 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1754
    new-instance v0, Lcom/android/server/pm/PackageInstallerService;

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/pm/PackageInstallerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/util/function/Supplier;)V

    .line 1754
    return-object v0
.end method

.method private static synthetic lambda$main$32(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .locals 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .line 1756
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection;

    .line 1757
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-direct {v0, v1, p2, v2}, Lcom/android/server/pm/InstantAppResolverConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1756
    return-object v0
.end method

.method private static synthetic lambda$main$33(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;
    .locals 2
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1758
    new-instance v0, Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/ModuleInfoProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$main$34(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1759
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->create(Landroid/content/Context;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$main$35(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .locals 0
    .param p0, "domainVerificationService"    # Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .param p1, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1760
    return-object p0
.end method

.method private static synthetic lambda$main$36(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/Handler;
    .locals 4
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1762
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PackageManager"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1764
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1765
    new-instance v1, Lcom/android/server/pm/PackageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/server/pm/PackageHandler;-><init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V

    return-object v1
.end method

.method private static synthetic lambda$main$37(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1770
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$main$38(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1772
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)V

    return-object v0
.end method

.method private static synthetic lambda$main$39(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/CrossProfileIntentFilterHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1773
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v1

    .line 1774
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    move-object v5, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v5, "context":Landroid/content/Context;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;-><init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/UserManagerInternal;Landroid/content/Context;)V

    .line 1773
    return-object v0
.end method

.method private static synthetic lambda$main$40(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UpdateOwnershipHelper;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1776
    new-instance v0, Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-direct {v0}, Lcom/android/server/pm/UpdateOwnershipHelper;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$main$41(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageMonitorCallbackHelper;
    .locals 1
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1777
    new-instance v0, Lcom/android/server/pm/PackageMonitorCallbackHelper;

    invoke-direct {v0}, Lcom/android/server/pm/PackageMonitorCallbackHelper;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$main$42(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0
    .param p0, "newSeInfo"    # Ljava/lang/String;
    .param p1, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 1813
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method private static synthetic lambda$main$43(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 10
    .param p0, "m"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1789
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1790
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 1791
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    nop

    .line 1792
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 1793
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_0

    .line 1794
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find package setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1816
    .end local v1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1797
    .restart local v1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    .line 1798
    .local v3, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    nop

    .line 1799
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v4

    .line 1798
    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v4

    .line 1800
    .local v4, "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object v5

    .line 1802
    .local v5, "oldSeInfo":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1803
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1806
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1807
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v6

    .line 1806
    invoke-static {v2, v3, v4, v6}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    move-result-object v6

    .line 1809
    .local v6, "newSeInfo":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1810
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating seInfo for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    new-instance v7, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {p0, v8, p1, v7}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 1814
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 1816
    .end local v1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v4    # "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    .end local v5    # "oldSeInfo":Ljava/lang/String;
    .end local v6    # "newSeInfo":Ljava/lang/String;
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1817
    return-void

    .line 1816
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private synthetic lambda$new$44()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 2166
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method private synthetic lambda$new$45()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 2166
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method private synthetic lambda$new$46([ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 6
    .param p1, "userIds"    # [I
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2510
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 2511
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_2

    .line 2514
    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget v3, p1, v2

    .line 2515
    .local v3, "userId":I
    invoke-interface {p2, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2516
    invoke-interface {p2, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2517
    goto :goto_1

    .line 2519
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    .line 2514
    .end local v3    # "userId":I
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2521
    :cond_4
    return-void

    .line 2512
    :goto_2
    return-void
.end method

.method private synthetic lambda$notifyFirstLaunch$47(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "installerPackage"    # Ljava/lang/String;

    .line 3375
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3376
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 3377
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 3378
    .local v2, "installRequest":Lcom/android/server/pm/InstallRequest;
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 3379
    goto :goto_2

    .line 3381
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v3

    .line 3382
    .local v3, "newUsers":[I
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3384
    const/4 v4, 0x0

    .local v4, "uIndex":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 3385
    aget v5, v3, v4

    if-ne p2, v5, :cond_1

    .line 3390
    monitor-exit v0

    return-void

    .line 3395
    .end local v1    # "i":I
    .end local v2    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v3    # "newUsers":[I
    .end local v4    # "uIndex":I
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 3384
    .restart local v1    # "i":I
    .restart local v2    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .restart local v3    # "newUsers":[I
    .restart local v4    # "uIndex":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3376
    .end local v2    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v3    # "newUsers":[I
    .end local v4    # "uIndex":I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 3395
    .end local v1    # "i":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3400
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-interface {v0, p1, p2, v1}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    .line 3402
    .local v0, "isInstantApp":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_3

    :cond_4
    new-array v2, v3, [I

    aput p2, v2, v1

    .line 3403
    .local v2, "userIds":[I
    :goto_3
    if-eqz v0, :cond_5

    new-array v3, v3, [I

    aput p2, v3, v1

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 3404
    .local v3, "instantUserIds":[I
    :goto_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {v1, p1, p3, v2, v3}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    .line 3406
    return-void

    .line 3395
    .end local v0    # "isInstantApp":Z
    .end local v2    # "userIds":[I
    .end local v3    # "instantUserIds":[I
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$requestChecksumsInternal$5()Landroid/content/Context;
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static synthetic lambda$requestChecksumsInternal$6(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .line 1445
    return-object p0
.end method

.method private synthetic lambda$requestChecksumsInternal$7()Landroid/content/pm/PackageManagerInternal;
    .locals 2

    .line 1447
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private synthetic lambda$requestChecksumsInternal$8(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "filesToChecksum"    # Ljava/util/List;
    .param p3, "optional"    # I
    .param p4, "required"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "trustedCerts"    # [Ljava/security/cert/Certificate;
    .param p7, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;

    .line 1443
    new-instance v0, Lcom/android/server/pm/ApkChecksums$Injector;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v2, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda16;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1446
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v4, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    move-object v11, v0

    .line 1448
    .local v11, "injector":Lcom/android/server/pm/ApkChecksums$Injector;
    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    .line 1450
    return-void
.end method

.method private synthetic lambda$requestFileChecksums$1()Landroid/content/Context;
    .locals 1

    .line 1387
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static synthetic lambda$requestFileChecksums$2(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .line 1388
    return-object p0
.end method

.method private synthetic lambda$requestFileChecksums$3()Landroid/content/pm/PackageManagerInternal;
    .locals 2

    .line 1390
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private synthetic lambda$requestFileChecksums$4(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "filesToChecksum"    # Ljava/util/List;
    .param p3, "optional"    # I
    .param p4, "required"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "trustedCerts"    # [Ljava/security/cert/Certificate;
    .param p7, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;

    .line 1386
    new-instance v0, Lcom/android/server/pm/ApkChecksums$Injector;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda27;

    invoke-direct {v2, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda27;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1389
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v4, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda28;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    move-object v11, v0

    .line 1391
    .local v11, "injector":Lcom/android/server/pm/ApkChecksums$Injector;
    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    .line 1393
    return-void
.end method

.method private static synthetic lambda$resetComponentEnabledSettingsIfNeededLPw$49(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .locals 1
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "userId"    # I
    .param p2, "updatedComponents"    # Ljava/util/ArrayList;
    .param p3, "component"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 3609
    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3610
    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3612
    :cond_0
    return-void
.end method

.method private static synthetic lambda$scheduleDeferredNoKillPostDelete$0()Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1335
    const-string v0, "deferred_no_kill_post_delete_delay_ms_extended"

    sget-wide v1, Lcom/android/server/pm/PackageManagerService;->DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:J

    const-string/jumbo v3, "package_manager_service"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$setEnabledOverlayPackages$58(ILandroid/util/ArrayMap;Ljava/util/Set;ILandroid/util/ArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 9
    .param p0, "numberOfPendingChanges"    # I
    .param p1, "pendingChanges"    # Landroid/util/ArrayMap;
    .param p2, "outUpdatedPackageNames"    # Ljava/util/Set;
    .param p3, "userId"    # I
    .param p4, "targetPkgToLibNameToModifiedDependents"    # Landroid/util/ArrayMap;
    .param p5, "mutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 7521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_4

    .line 7522
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7523
    .local v1, "targetPackageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/overlay/OverlayPaths;

    .line 7525
    .local v2, "newOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7526
    goto :goto_3

    .line 7529
    :cond_0
    invoke-virtual {p5, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v3

    .line 7530
    invoke-interface {v3, p3}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v3

    .line 7531
    invoke-interface {v3, v2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 7533
    nop

    .line 7534
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 7536
    .local v3, "libNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez v3, :cond_1

    .line 7537
    goto :goto_3

    .line 7540
    :cond_1
    const/4 v4, 0x0

    .local v4, "mapIndex":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 7542
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7543
    .local v5, "libName":Ljava/lang/String;
    nop

    .line 7544
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 7545
    .local v6, "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "setIndex":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 7546
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p5, v8}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v8

    .line 7547
    invoke-interface {v8, p3}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v8

    .line 7548
    invoke-interface {v8, v5, v2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 7545
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 7541
    .end local v5    # "libName":Ljava/lang/String;
    .end local v6    # "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "setIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7521
    .end local v1    # "targetPackageName":Ljava/lang/String;
    .end local v2    # "newOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    .end local v3    # "libNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "mapIndex":I
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 7552
    .end local v0    # "i":I
    return-void
.end method

.method private static synthetic lambda$setPackageStoppedState$55(IZZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "stopped"    # Z
    .param p2, "wasNotLaunched"    # Z
    .param p3, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 4782
    invoke-interface {p3, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v0

    .line 4783
    .local v0, "userState":Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setStopped(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 4784
    if-eqz p2, :cond_0

    .line 4785
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setNotLaunched(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 4787
    :cond_0
    return-void
.end method

.method private synthetic lambda$setPackageStoppedState$56(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4805
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4806
    const-class v1, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 4807
    .local v0, "ah":Lcom/android/server/apphibernation/AppHibernationManagerInternal;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4808
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 4809
    invoke-virtual {v0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 4811
    :cond_0
    return-void
.end method

.method private synthetic lambda$setPackageStoppedState$57(Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "userIds"    # [I
    .param p4, "broadcastAllowList"    # Landroid/util/SparseArray;

    .line 4825
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v1, "android.intent.action.PACKAGE_UNSTOPPED"

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 4831
    return-void
.end method

.method private static synthetic lambda$setSystemAppHiddenUntilInstalled$54(Ljava/lang/String;ZLcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "hidden"    # Z
    .param p2, "mutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 4660
    invoke-virtual {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v0

    .line 4661
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 4662
    invoke-virtual {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v0

    .line 4663
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 4664
    return-void
.end method

.method private synthetic lambda$systemReady$51(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 4471
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    .line 4472
    .local v0, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "incfs_default_timeouts"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "known_digesters_list"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4474
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 4476
    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateComponentLabelIcon$50(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 1
    .param p0, "userId"    # I
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;
    .param p4, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 3929
    invoke-interface {p4, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v0

    .line 3930
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 3929
    return-void
.end method

.method private static synthetic lambda$writePendingRestrictions$9(I)[Ljava/lang/Integer;
    .locals 1
    .param p0, "x$0"    # I

    .line 1651
    new-array v0, p0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;
    .locals 43
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "domainVerificationService"    # Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .param p3, "factoryTest"    # Z

    .line 1700
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->checkProperties()V

    .line 1701
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v3, "PackageManagerTiming"

    const-wide/32 v4, 0x40000

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 1703
    .local v2, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v3, "create package manager"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1704
    new-instance v3, Lcom/android/server/pm/PackageManagerTracedLock;

    const-string/jumbo v4, "mLock"

    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 1705
    .local v3, "lock":Lcom/android/server/pm/PackageManagerTracedLock;
    new-instance v4, Lcom/android/server/pm/PackageManagerTracedLock;

    const-string/jumbo v5, "mInstallLock"

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 1707
    .local v4, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    new-instance v5, Lcom/android/server/ServiceThread;

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-string v8, "PackageManagerBg"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    move-object/from16 v41, v5

    .line 1709
    .local v41, "backgroundThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v41 .. v41}, Landroid/os/HandlerThread;->start()V

    .line 1710
    new-instance v6, Landroid/os/Handler;

    invoke-virtual/range {v41 .. v41}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v7, Lcom/android/server/pm/PackageManagerService;->BACKGROUND_HANDLER_CALLBACK:Landroid/os/Handler$Callback;

    invoke-direct {v6, v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 1713
    .local v6, "backgroundHandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/server/pm/PackageManagerServiceInjector;

    move-object v7, v5

    new-instance v5, Lcom/android/server/pm/PackageAbiHelperImpl;

    invoke-direct {v5}, Lcom/android/server/pm/PackageAbiHelperImpl;-><init>()V

    move-object v8, v7

    sget-object v7, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    move-object v9, v8

    new-instance v8, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda30;

    invoke-direct {v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda30;-><init>()V

    move-object v10, v9

    new-instance v9, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;

    invoke-direct {v9, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;-><init>(Landroid/content/Context;)V

    move-object v11, v10

    new-instance v10, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;

    invoke-direct {v10}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;-><init>()V

    move-object v12, v11

    new-instance v11, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda56;

    move-object/from16 v13, p1

    invoke-direct {v11, v1, v13, v4, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda56;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerTracedLock;)V

    move-object v14, v12

    new-instance v12, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;

    invoke-direct {v12, v0, v6, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    new-instance v13, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda58;

    invoke-direct {v13}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda58;-><init>()V

    move-object v15, v14

    new-instance v14, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;

    invoke-direct {v14}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;-><init>()V

    move-object/from16 v16, v15

    new-instance v15, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;

    invoke-direct {v15}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;-><init>()V

    move-object/from16 v17, v16

    new-instance v16, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;-><init>()V

    move-object/from16 v18, v17

    new-instance v17, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;-><init>()V

    move-object/from16 v19, v18

    new-instance v18, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda31;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda31;-><init>()V

    move-object/from16 v20, v19

    new-instance v19, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;-><init>()V

    move-object/from16 v21, v20

    new-instance v20, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;-><init>()V

    move-object/from16 v22, v21

    new-instance v21, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;-><init>()V

    move-object/from16 v23, v2

    .end local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v23, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda35;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda35;-><init>(Landroid/content/Context;)V

    move-object/from16 v24, v23

    .end local v23    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v24, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v23, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda36;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda36;-><init>()V

    move-object/from16 v25, v24

    .end local v24    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v25, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v24, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda37;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda37;-><init>()V

    move-object/from16 v26, v25

    .end local v25    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v26, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v25, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda38;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda38;-><init>()V

    move-object/from16 v27, v26

    .end local v26    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v27, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v26, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;-><init>()V

    move-object/from16 v28, v27

    .end local v27    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v28, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v27, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;-><init>()V

    move-object/from16 v29, v28

    .end local v28    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v29, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v28, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;-><init>()V

    move-object/from16 v30, v29

    .end local v29    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v30, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v29, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;-><init>()V

    move-object/from16 v31, v30

    .end local v30    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v31, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v30, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;-><init>()V

    move-object/from16 v32, v2

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V

    move-object/from16 v0, v22

    move-object/from16 v22, v32

    new-instance v32, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;-><init>()V

    move-object/from16 v33, v0

    new-instance v0, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

    move-object/from16 v34, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;-><init>(Lcom/android/server/pm/PackageManagerService-IA;)V

    move-object/from16 v2, v31

    move-object/from16 v31, v34

    .end local v31    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v34, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;

    invoke-direct/range {v34 .. v34}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;-><init>()V

    .line 1769
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v35, v0

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;-><init>(Landroid/content/Context;)V

    new-instance v36, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;

    invoke-direct/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;-><init>()V

    new-instance v37, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda50;

    invoke-direct/range {v37 .. v37}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda50;-><init>()V

    move-object/from16 v38, v0

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda51;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda51;-><init>(Landroid/content/Context;)V

    new-instance v39, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;

    invoke-direct/range {v39 .. v39}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;-><init>()V

    new-instance v40, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda54;

    invoke-direct/range {v40 .. v40}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda54;-><init>()V

    move-object/from16 v42, v38

    move-object/from16 v38, v0

    move-object/from16 v0, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v42

    move-object/from16 v42, v2

    move-object v2, v3

    move-object/from16 v3, p1

    .end local v3    # "lock":Lcom/android/server/pm/PackageManagerTracedLock;
    .local v2, "lock":Lcom/android/server/pm/PackageManagerTracedLock;
    .local v42, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-direct/range {v0 .. v40}, Lcom/android/server/pm/PackageManagerServiceInjector;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageAbiHelper;Landroid/os/Handler;Ljava/util/List;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    move-object v8, v0

    .line 1779
    .local v8, "injector":Lcom/android/server/pm/PackageManagerServiceInjector;
    nop

    .line 1783
    new-instance v7, Lcom/android/server/pm/PackageManagerService;

    sget-object v10, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    sget-boolean v11, Landroid/os/Build;->IS_ENG:Z

    sget-boolean v12, Landroid/os/Build;->IS_USERDEBUG:Z

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v14, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move/from16 v9, p3

    invoke-direct/range {v7 .. v14}, Lcom/android/server/pm/PackageManagerService;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;ZLjava/lang/String;ZZILjava/lang/String;)V

    .line 1786
    .local v7, "m":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual/range {v42 .. v42}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1788
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;

    invoke-direct {v0, v7}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1819
    .local v0, "selinuxChangeListener":Lcom/android/server/compat/CompatChange$ChangeListener;
    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v3

    const-wide/32 v9, 0x88e3d87

    invoke-virtual {v3, v9, v10, v0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 1821
    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v3

    const-wide/32 v9, 0xa0f6c63

    invoke-virtual {v3, v9, v10, v0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 1824
    invoke-direct {v7}, Lcom/android/server/pm/PackageManagerService;->installAllowlistedSystemPackages()V

    .line 1825
    new-instance v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-direct {v3, v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1828
    .local v3, "iPackageManager":Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    sget-object v5, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_PM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v5}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/INtPackageManagerService;

    .line 1829
    invoke-interface {v5, v1, v7, v3}, Lcom/android/server/pm/INtPackageManagerService;->init(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)V

    .line 1831
    const-string/jumbo v5, "package"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1832
    new-instance v5, Lcom/android/server/pm/PackageManagerNative;

    invoke-direct {v5, v7}, Lcom/android/server/pm/PackageManagerNative;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1833
    .local v5, "pmn":Lcom/android/server/pm/PackageManagerNative;
    const-string/jumbo v9, "package_native"

    invoke-static {v9, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1834
    return-object v7
.end method

.method private maybeUpdateSystemOverlays(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)V
    .locals 3
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "newOverlayPaths"    # Landroid/content/pm/overlay/OverlayPaths;

    .line 7580
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 7581
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7582
    if-nez p2, :cond_0

    .line 7583
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 7584
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    goto :goto_0

    .line 7586
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 7588
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 7591
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    goto :goto_2

    .line 7594
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7595
    if-nez p2, :cond_2

    .line 7596
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 7597
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    goto :goto_1

    .line 7599
    :cond_2
    nop

    .line 7600
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 7601
    nop

    .line 7602
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 7604
    :goto_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    .line 7607
    :cond_3
    :goto_2
    return-void
.end method

.method private notifyPackageUseInternal(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 3103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3104
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 3105
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 3106
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_0

    .line 3107
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 3110
    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 3109
    .restart local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 3110
    nop

    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3111
    return-void

    .line 3110
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3
.end method

.method public static onChange(Lcom/android/server/utils/Watchable;)V
    .locals 1
    .param p0, "what"    # Lcom/android/server/utils/Watchable;

    .line 1288
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1289
    return-void
.end method

.method static onChanged()V
    .locals 1

    .line 1296
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->onChange(Lcom/android/server/utils/Watchable;)V

    .line 1297
    return-void
.end method

.method private parsePerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;
    .locals 19
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;

    .line 7894
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v0

    .line 7895
    .local v0, "defaultTimeouts":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v1

    .line 7896
    .local v1, "knownDigestersList":Ljava/lang/String;
    nop

    .line 7897
    invoke-static {v0, v1}, Lcom/android/server/pm/PerPackageReadTimeouts;->parseDigestersList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 7899
    .local v2, "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 7900
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

    return-object v3

    .line 7903
    :cond_0
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    .line 7904
    .local v4, "allUsers":[I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 7905
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/incremental/PerUidReadTimeouts;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v6, v7, :cond_8

    .line 7906
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PerPackageReadTimeouts;

    .line 7907
    .local v8, "perPackage":Lcom/android/server/pm/PerPackageReadTimeouts;
    iget-object v9, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->packageName:Ljava/lang/String;

    .line 7908
    move-object/from16 v10, p1

    invoke-interface {v10, v9}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    .line 7909
    .local v9, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v9, :cond_1

    .line 7914
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_3

    .line 7916
    :cond_1
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    const/16 v12, 0x2710

    if-ge v11, v12, :cond_2

    .line 7921
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_3

    .line 7924
    :cond_2
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    .line 7925
    .local v11, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v12

    iget-object v14, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iget-wide v14, v14, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->minVersionCode:J

    cmp-long v12, v12, v14

    if-ltz v12, :cond_7

    .line 7926
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v12

    iget-object v14, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iget-wide v14, v14, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->maxVersionCode:J

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    .line 7931
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_3

    .line 7933
    :cond_3
    iget-object v12, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    if-eqz v12, :cond_4

    .line 7934
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    invoke-virtual {v12, v13}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v12

    if-nez v12, :cond_4

    .line 7940
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto :goto_3

    .line 7942
    :cond_4
    array-length v12, v4

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_6

    aget v14, v4, v13

    .line 7943
    .local v14, "userId":I
    invoke-interface {v9, v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v15

    if-nez v15, :cond_5

    .line 7944
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto :goto_2

    .line 7946
    :cond_5
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v15

    invoke-static {v14, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 7947
    .local v15, "uid":I
    new-instance v16, Landroid/os/incremental/PerUidReadTimeouts;

    invoke-direct/range {v16 .. v16}, Landroid/os/incremental/PerUidReadTimeouts;-><init>()V

    move-object/from16 v17, v16

    .line 7948
    .local v17, "perUid":Landroid/os/incremental/PerUidReadTimeouts;
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "perUid":Landroid/os/incremental/PerUidReadTimeouts;
    .local v0, "perUid":Landroid/os/incremental/PerUidReadTimeouts;
    .local v16, "defaultTimeouts":Ljava/lang/String;
    iput v15, v0, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    .line 7949
    move-object/from16 v17, v1

    .end local v1    # "knownDigestersList":Ljava/lang/String;
    .local v17, "knownDigestersList":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    move-object/from16 v18, v2

    .end local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .local v18, "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    iget-wide v1, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    iput-wide v1, v0, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    .line 7950
    iget-object v1, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    iget-wide v1, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    iput-wide v1, v0, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    .line 7951
    iget-object v1, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    iget-wide v1, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    iput-wide v1, v0, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    .line 7952
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7942
    .end local v0    # "perUid":Landroid/os/incremental/PerUidReadTimeouts;
    .end local v14    # "userId":I
    .end local v15    # "uid":I
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto :goto_1

    .end local v16    # "defaultTimeouts":Ljava/lang/String;
    .end local v17    # "knownDigestersList":Ljava/lang/String;
    .end local v18    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .local v0, "defaultTimeouts":Ljava/lang/String;
    .restart local v1    # "knownDigestersList":Ljava/lang/String;
    .restart local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v0    # "defaultTimeouts":Ljava/lang/String;
    .end local v1    # "knownDigestersList":Ljava/lang/String;
    .end local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .restart local v16    # "defaultTimeouts":Ljava/lang/String;
    .restart local v17    # "knownDigestersList":Ljava/lang/String;
    .restart local v18    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    goto :goto_3

    .line 7925
    .end local v16    # "defaultTimeouts":Ljava/lang/String;
    .end local v17    # "knownDigestersList":Ljava/lang/String;
    .end local v18    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .restart local v0    # "defaultTimeouts":Ljava/lang/String;
    .restart local v1    # "knownDigestersList":Ljava/lang/String;
    .restart local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 7905
    .end local v0    # "defaultTimeouts":Ljava/lang/String;
    .end local v1    # "knownDigestersList":Ljava/lang/String;
    .end local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .end local v8    # "perPackage":Lcom/android/server/pm/PerPackageReadTimeouts;
    .end local v9    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v16    # "defaultTimeouts":Ljava/lang/String;
    .restart local v17    # "knownDigestersList":Ljava/lang/String;
    .restart local v18    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_0

    .end local v16    # "defaultTimeouts":Ljava/lang/String;
    .end local v17    # "knownDigestersList":Ljava/lang/String;
    .end local v18    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .restart local v0    # "defaultTimeouts":Ljava/lang/String;
    .restart local v1    # "knownDigestersList":Ljava/lang/String;
    .restart local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    :cond_8
    move-object/from16 v16, v0

    .line 7955
    .end local v0    # "defaultTimeouts":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "size":I
    .restart local v16    # "defaultTimeouts":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/incremental/PerUidReadTimeouts;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/incremental/PerUidReadTimeouts;

    return-object v0
.end method

.method private readPermissionStateForUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 4588
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4589
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->writeLegacyPermissionStateTEMP()V

    .line 4590
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->readPermissionStateForUserSyncLPr(I)V

    .line 4591
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionStateTEMP()V

    .line 4592
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4593
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 4592
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4595
    .local v1, "isPermissionUpgradeNeeded":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 4596
    .end local v1    # "isPermissionUpgradeNeeded":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/Computer;
    .locals 9
    .param p1, "oldSnapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "newVersion"    # I

    .line 1259
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    .line 1260
    .local v1, "now":J
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUsed()I

    move-result v0

    goto :goto_0

    .line 1261
    .local v5, "hits":I
    :goto_1
    new-instance v0, Lcom/android/server/pm/PackageManagerService$Snapshot;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    move-object v7, v0

    .line 1262
    .local v7, "args":Lcom/android/server/pm/PackageManagerService$Snapshot;
    new-instance v0, Lcom/android/server/pm/ComputerEngine;

    invoke-direct {v0, v7, p2}, Lcom/android/server/pm/ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V

    move-object v8, v0

    .line 1263
    .local v8, "newSnapshot":Lcom/android/server/pm/ComputerEngine;
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    .line 1265
    .local v3, "done":J
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    if-eqz v0, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    invoke-virtual {v8}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics;->rebuild(JJII)V

    .line 1268
    :cond_1
    return-object v8
.end method

.method private registerObservers(Z)V
    .locals 2
    .param p1, "verify"    # Z

    .line 1850
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1853
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    if-eqz v0, :cond_1

    .line 1854
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1856
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_2

    .line 1857
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1859
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-eqz v0, :cond_3

    .line 1860
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1862
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    if-eqz v0, :cond_4

    .line 1863
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1865
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    if-eqz v0, :cond_5

    .line 1866
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/InstantAppRegistry;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1868
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-eqz v0, :cond_6

    .line 1869
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1871
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    if-eqz v0, :cond_7

    .line 1872
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1874
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    if-eqz v0, :cond_8

    .line 1875
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1877
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_9

    .line 1878
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1880
    :cond_9
    if-eqz p1, :cond_b

    .line 1883
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;Z)V

    .line 1885
    :cond_b
    return-void
.end method

.method static renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .locals 3
    .param p0, "parsedPackage"    # Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 3075
    nop

    .line 3076
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v1

    .line 3075
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->toStaticSharedLibraryPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 3077
    return-void
.end method

.method public static reportSettingsProblem(ILjava/lang/String;)V
    .locals 0
    .param p0, "priority"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 3069
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 3070
    return-void
.end method

.method private resetComponentEnabledSettingsIfNeededLPw(Ljava/lang/String;II)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 3599
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3600
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResetEnabledSettingsOnAppDataCleared()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    goto/16 :goto_5

    .line 3603
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 3604
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_3

    .line 3605
    return-void

    .line 3607
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3608
    .local v2, "updatedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;

    invoke-direct {v3, v1, p2, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;-><init>(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;)V

    .line 3613
    .local v3, "resetSettings":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/internal/pm/pkg/component/ParsedMainComponent;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 3614
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3613
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 3616
    .end local v4    # "i":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 3617
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3616
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    nop

    .line 3619
    .end local v4    # "i":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 3620
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3619
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    nop

    .line 3622
    .end local v4    # "i":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 3623
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3622
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    nop

    .line 3625
    .end local v4    # "i":I
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3627
    return-void

    .line 3630
    :cond_8
    filled-new-array {p2}, [I

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 3631
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 3632
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 3634
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v4, p2, p1, v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponents(ILjava/lang/String;Ljava/util/List;)V

    .line 3635
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3636
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 3637
    const/4 v7, 0x0

    const-string/jumbo v8, "reset_component_state_changed"

    invoke-virtual {v6, v5, p3, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 3636
    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3640
    :cond_9
    return-void

    .line 3601
    .end local v1    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "updatedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "resetSettings":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/internal/pm/pkg/component/ParsedMainComponent;>;"
    :goto_5
    return-void
.end method

.method public static resetPriorityAfterPackageManagerTracedLockedSection()V
    .locals 0

    .line 1061
    return-void
.end method

.method private setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V
    .locals 25
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7442
    .local p2, "pendingChanges":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;>;"
    .local p3, "outUpdatedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "outInvalidPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v6, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v7

    .line 7443
    .local v10, "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 7445
    .local v11, "numberOfPendingChanges":I
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v12

    .line 7446
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 7447
    .local v2, "computer":Lcom/android/server/pm/Computer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v13, 0x0

    if-ge v0, v11, :cond_e

    .line 7448
    :try_start_1
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v14, v3

    .line 7449
    .local v14, "targetPackageName":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/overlay/OverlayPaths;

    move-object v15, v3

    .line 7450
    .local v15, "newOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    invoke-interface {v2, v14}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 7453
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v3, :cond_0

    :goto_1
    goto :goto_2

    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    .line 7454
    .local v13, "targetPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_2
    if-eqz v14, :cond_d

    if-nez v13, :cond_1

    move/from16 v20, v0

    move-object/from16 v23, v2

    move-object v0, v3

    goto/16 :goto_a

    .line 7460
    :cond_1
    :try_start_2
    invoke-interface {v3, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v4

    invoke-static {v4, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7462
    move-object/from16 v8, p4

    move/from16 v20, v0

    move-object/from16 v23, v2

    goto/16 :goto_b

    .line 7465
    :cond_2
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 7467
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v4

    .line 7468
    .local v4, "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_a

    .line 7469
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7470
    .local v7, "libName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 7472
    .local v16, "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v18, "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v3, -0x1

    invoke-interface {v2, v7, v3, v4}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7474
    .local v3, "info":Landroid/content/pm/SharedLibraryInfo;
    if-nez v3, :cond_3

    .line 7475
    move/from16 v20, v0

    move-object/from16 v23, v2

    move/from16 v19, v5

    move-object/from16 v0, v17

    goto/16 :goto_8

    .line 7477
    :cond_3
    move/from16 v19, v5

    .end local v5    # "j":I
    .local v19, "j":I
    const-wide/16 v4, 0x0

    const/16 v6, 0x3e8

    move/from16 v20, v0

    move-object v8, v7

    move-object/from16 v0, v17

    move/from16 v7, p1

    .end local v7    # "libName":Ljava/lang/String;
    .end local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v8, "libName":Ljava/lang/String;
    .local v20, "i":I
    :try_start_3
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v6, v7

    .line 7479
    .local v4, "usingSharedLibraryPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    :try_start_4
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 7480
    .local v5, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    if-nez v5, :cond_4

    .line 7481
    move-object/from16 v23, v2

    goto/16 :goto_8

    .line 7483
    :cond_4
    const/4 v7, 0x0

    move-object/from16 v24, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v24

    .local v3, "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "k":I
    .local v16, "info":Landroid/content/pm/SharedLibraryInfo;
    :goto_4
    move-object/from16 v17, v4

    .end local v4    # "usingSharedLibraryPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    .local v17, "usingSharedLibraryPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_7

    .line 7484
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/VersionedPackage;

    .line 7485
    .local v4, "dependent":Landroid/content/pm/VersionedPackage;
    nop

    .line 7486
    move-object/from16 v21, v4

    .end local v4    # "dependent":Landroid/content/pm/VersionedPackage;
    .local v21, "dependent":Landroid/content/pm/VersionedPackage;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 7487
    .local v4, "dependentState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v4, :cond_5

    .line 7488
    move-object/from16 v23, v2

    goto :goto_7

    .line 7490
    :cond_5
    invoke-interface {v4, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v22

    .line 7491
    move-object/from16 v23, v2

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .local v23, "computer":Lcom/android/server/pm/Computer;
    invoke-interface/range {v22 .. v22}, Lcom/android/server/pm/pkg/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v2

    .line 7492
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/overlay/OverlayPaths;

    .line 7490
    invoke-direct {v1, v2, v15}, Lcom/android/server/pm/PackageManagerService;->canSetOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7493
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7494
    .local v2, "dependentPackageName":Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v22

    .line 7496
    .end local v3    # "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v22

    goto :goto_7

    .line 7553
    .end local v0    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "dependentPackageName":Ljava/lang/String;
    .end local v4    # "dependentState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local v7    # "k":I
    .end local v8    # "libName":Ljava/lang/String;
    .end local v13    # "targetPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v14    # "targetPackageName":Ljava/lang/String;
    .end local v15    # "newOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    .end local v16    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v17    # "usingSharedLibraryPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    .end local v18    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "j":I
    .end local v20    # "i":I
    .end local v21    # "dependent":Landroid/content/pm/VersionedPackage;
    .end local v22    # "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "computer":Lcom/android/server/pm/Computer;
    :catchall_0
    move-exception v0

    :goto_5
    move-object/from16 v4, p2

    move-object/from16 v8, p4

    :goto_6
    move-object v7, v10

    move v3, v11

    goto/16 :goto_f

    .line 7483
    .restart local v0    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local v7    # "k":I
    .restart local v8    # "libName":Ljava/lang/String;
    .restart local v13    # "targetPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v14    # "targetPackageName":Ljava/lang/String;
    .restart local v15    # "newOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    .restart local v16    # "info":Landroid/content/pm/SharedLibraryInfo;
    .restart local v17    # "usingSharedLibraryPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    .restart local v18    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "j":I
    .restart local v20    # "i":I
    .restart local v23    # "computer":Lcom/android/server/pm/Computer;
    :cond_6
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v17

    move-object/from16 v2, v23

    goto :goto_4

    .end local v23    # "computer":Lcom/android/server/pm/Computer;
    .local v2, "computer":Lcom/android/server/pm/Computer;
    :cond_7
    move-object/from16 v23, v2

    .line 7500
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v7    # "k":I
    .restart local v23    # "computer":Lcom/android/server/pm/Computer;
    if-eqz v3, :cond_9

    .line 7501
    nop

    .line 7502
    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 7504
    .local v2, "libNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez v2, :cond_8

    .line 7505
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v4

    .line 7506
    invoke-virtual {v10, v14, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7509
    :cond_8
    invoke-virtual {v2, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7468
    .end local v2    # "libNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local v8    # "libName":Ljava/lang/String;
    .end local v16    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v17    # "usingSharedLibraryPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    :cond_9
    :goto_8
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v8, p2

    move-object v3, v0

    move-object/from16 v4, v18

    move/from16 v0, v20

    move-object/from16 v2, v23

    .end local v19    # "j":I
    .local v5, "j":I
    goto/16 :goto_3

    .line 7553
    .end local v0    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "j":I
    .end local v13    # "targetPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v14    # "targetPackageName":Ljava/lang/String;
    .end local v15    # "newOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    .end local v18    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "i":I
    .end local v23    # "computer":Lcom/android/server/pm/Computer;
    :catchall_1
    move-exception v0

    move v6, v7

    goto :goto_5

    .line 7468
    .local v0, "i":I
    .local v2, "computer":Lcom/android/server/pm/Computer;
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v4, "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "j":I
    .restart local v13    # "targetPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v14    # "targetPackageName":Ljava/lang/String;
    .restart local v15    # "newOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    :cond_a
    move/from16 v20, v0

    move-object/from16 v23, v2

    move-object v0, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "j":I
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v18    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "j":I
    .restart local v20    # "i":I
    .restart local v23    # "computer":Lcom/android/server/pm/Computer;
    goto :goto_9

    .line 7465
    .end local v18    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "j":I
    .end local v20    # "i":I
    .end local v23    # "computer":Lcom/android/server/pm/Computer;
    .local v0, "i":I
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_b
    move/from16 v20, v0

    move-object/from16 v23, v2

    move-object v0, v3

    .line 7514
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v20    # "i":I
    .restart local v23    # "computer":Lcom/android/server/pm/Computer;
    :goto_9
    invoke-interface {v0, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Lcom/android/server/pm/PackageManagerService;->canSetOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 7516
    invoke-interface {v9, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v8, p4

    goto :goto_b

    .line 7514
    :cond_c
    move-object/from16 v8, p4

    goto :goto_b

    .line 7454
    .end local v20    # "i":I
    .end local v23    # "computer":Lcom/android/server/pm/Computer;
    .local v0, "i":I
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_d
    move/from16 v20, v0

    move-object/from16 v23, v2

    move-object v0, v3

    .line 7455
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v20    # "i":I
    .restart local v23    # "computer":Lcom/android/server/pm/Computer;
    :goto_a
    :try_start_5
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 7456
    move-object/from16 v8, p4

    :try_start_6
    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 7457
    nop

    .line 7447
    .end local v0    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "targetPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v14    # "targetPackageName":Ljava/lang/String;
    .end local v15    # "newOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    :goto_b
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v8, p2

    move-object/from16 v2, v23

    .end local v20    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 7553
    .end local v0    # "i":I
    .end local v23    # "computer":Lcom/android/server/pm/Computer;
    :catchall_2
    move-exception v0

    :goto_c
    move-object/from16 v4, p2

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v8, p4

    goto :goto_c

    .line 7447
    .restart local v0    # "i":I
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    :cond_e
    move-object/from16 v8, p4

    move/from16 v20, v0

    move-object/from16 v23, v2

    .line 7520
    .end local v0    # "i":I
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v23    # "computer":Lcom/android/server/pm/Computer;
    :try_start_7
    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda0;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v4, p2

    move-object v5, v9

    move-object v7, v10

    move v3, v11

    .end local v10    # "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    .end local v11    # "numberOfPendingChanges":I
    .local v3, "numberOfPendingChanges":I
    .local v7, "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    :try_start_8
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda0;-><init>(ILandroid/util/ArrayMap;Ljava/util/Set;ILandroid/util/ArrayMap;)V

    invoke-virtual {v1, v13, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 7553
    nop

    .end local v23    # "computer":Lcom/android/server/pm/Computer;
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 7555
    if-nez p1, :cond_f

    .line 7558
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d
    if-ge v0, v3, :cond_f

    .line 7559
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7560
    .local v2, "targetPackageName":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/overlay/OverlayPaths;

    .line 7561
    .local v5, "newOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    invoke-direct {v1, v2, v5}, Lcom/android/server/pm/PackageManagerService;->maybeUpdateSystemOverlays(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)V

    .line 7558
    .end local v2    # "targetPackageName":Ljava/lang/String;
    .end local v5    # "newOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 7565
    .end local v0    # "i":I
    :cond_f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 7566
    return-void

    .line 7553
    :catchall_4
    move-exception v0

    goto :goto_f

    .end local v3    # "numberOfPendingChanges":I
    .end local v7    # "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    .restart local v10    # "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    .restart local v11    # "numberOfPendingChanges":I
    :catchall_5
    move-exception v0

    move-object/from16 v4, p2

    move-object v7, v10

    move v3, v11

    .end local v10    # "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    .end local v11    # "numberOfPendingChanges":I
    .restart local v3    # "numberOfPendingChanges":I
    .restart local v7    # "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    :goto_e
    goto :goto_f

    .end local v3    # "numberOfPendingChanges":I
    .end local v7    # "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    .restart local v10    # "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    .restart local v11    # "numberOfPendingChanges":I
    :catchall_6
    move-exception v0

    move-object v4, v8

    move-object v7, v10

    move v3, v11

    move-object/from16 v8, p4

    goto :goto_e

    .end local v10    # "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    .end local v11    # "numberOfPendingChanges":I
    .restart local v3    # "numberOfPendingChanges":I
    .restart local v7    # "targetPkgToLibNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    :goto_f
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method private setEnabledSettingInternalLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILjava/lang/String;)Z
    .locals 6
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "setting"    # Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 4229
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v0

    .line 4230
    .local v0, "newState":I
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4231
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4232
    .local v2, "success":Z
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4234
    invoke-virtual {p2, v0, p4, p5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 4235
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 4237
    :cond_0
    const-string v3, "android.permission.SUSPEND_APPS"

    invoke-virtual {p0, v3, v1, p4}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 4242
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v1, p4, v3}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)V

    .line 4243
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    .line 4245
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 4248
    :cond_2
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 4249
    .local v3, "className":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 4260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed setComponentEnabledSetting: component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requested an invalid new component state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4254
    :pswitch_0
    invoke-virtual {p2, v3, p4}, Lcom/android/server/pm/PackageSetting;->disableComponentLPw(Ljava/lang/String;I)Z

    move-result v2

    .line 4255
    goto :goto_0

    .line 4251
    :pswitch_1
    invoke-virtual {p2, v3, p4}, Lcom/android/server/pm/PackageSetting;->enableComponentLPw(Ljava/lang/String;I)Z

    move-result v2

    .line 4252
    goto :goto_0

    .line 4257
    :pswitch_2
    invoke-virtual {p2, v3, p4}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(Ljava/lang/String;I)Z

    move-result v2

    .line 4258
    nop

    .line 4266
    .end local v3    # "className":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_3

    .line 4267
    const/4 v3, 0x0

    return v3

    .line 4270
    :cond_3
    filled-new-array {p4}, [I

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 4271
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4273
    .local v3, "callingId":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4275
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4276
    nop

    .line 4278
    const/4 v5, 0x1

    return v5

    .line 4275
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4276
    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEnabledSettings(Ljava/util/List;ILjava/lang/String;)V
    .locals 28
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3943
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 3945
    .local v16, "callingUid":I
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    .line 3946
    .local v8, "preLockSnapshot":Lcom/android/server/pm/Computer;
    const/4 v12, 0x1

    const-string/jumbo v13, "set enabled"

    const/4 v11, 0x0

    move/from16 v10, p2

    move/from16 v9, v16

    .end local v16    # "callingUid":I
    .local v9, "callingUid":I
    invoke-interface/range {v8 .. v13}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3949
    move-object/from16 v17, v8

    move v5, v10

    .end local v8    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .local v17, "preLockSnapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 3950
    .local v8, "targetSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v10, 0x2

    const/4 v2, 0x3

    const/4 v11, 0x1

    if-ge v0, v8, :cond_2

    .line 3951
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v3

    .line 3952
    .local v3, "newState":I
    if-eqz v3, :cond_0

    if-eq v3, v11, :cond_0

    if-eq v3, v10, :cond_0

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_1

    :cond_0
    goto :goto_1

    .line 3957
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid new component state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3950
    .end local v3    # "newState":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 3960
    .end local v0    # "i":I
    if-le v8, v11, :cond_9

    .line 3961
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3962
    .local v0, "checkDuplicatedPackage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3963
    .local v3, "checkDuplicatedComponent":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 3964
    .local v4, "checkConflictFlag":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v8, :cond_8

    .line 3965
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 3966
    .local v12, "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 3967
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3968
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    .line 3969
    .local v14, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 3973
    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3977
    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 3978
    .local v15, "enabledFlags":Ljava/lang/Integer;
    if-nez v15, :cond_3

    .line 3979
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v16

    move/from16 v18, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v13, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3980
    :cond_3
    move/from16 v18, v10

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/2addr v10, v11

    .line 3981
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v16

    and-int/lit8 v2, v16, 0x1

    if-ne v10, v2, :cond_4

    .line 3985
    .end local v14    # "componentName":Landroid/content/ComponentName;
    .end local v15    # "enabledFlags":Ljava/lang/Integer;
    :goto_3
    goto :goto_4

    .line 3982
    .restart local v14    # "componentName":Landroid/content/ComponentName;
    .restart local v15    # "enabledFlags":Ljava/lang/Integer;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "A conflict of the DONT_KILL_APP flag between components in the package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3970
    .end local v15    # "enabledFlags":Ljava/lang/Integer;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The component "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " is duplicated"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3986
    .end local v14    # "componentName":Landroid/content/ComponentName;
    :cond_6
    move/from16 v18, v10

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3990
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3964
    .end local v12    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v13    # "packageName":Ljava/lang/String;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v18

    const/4 v2, 0x3

    goto/16 :goto_2

    .line 3987
    .restart local v12    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is duplicated"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3964
    .end local v12    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_8
    move/from16 v18, v10

    goto :goto_5

    .line 3960
    .end local v0    # "checkDuplicatedPackage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "checkDuplicatedComponent":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v4    # "checkConflictFlag":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    :cond_9
    move/from16 v18, v10

    .line 3995
    :goto_5
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    move v0, v11

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    move/from16 v20, v0

    .line 3997
    .local v20, "allowedByPermission":Z
    new-array v12, v8, [Z

    .line 3998
    .local v12, "updateAllowed":[Z
    invoke-static {v12, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 4000
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v13, v0

    .line 4002
    .local v13, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4003
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 4005
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v8, :cond_18

    .line 4006
    :try_start_1
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4007
    .local v4, "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4008
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v13, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 4010
    move-object/from16 v19, v0

    move/from16 v16, v3

    const/4 v10, 0x3

    const/16 v22, 0x0

    goto/16 :goto_b

    .line 4012
    :cond_b
    nop

    .line 4013
    invoke-interface {v0, v9}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 4012
    invoke-static {v14, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .line 4014
    .local v14, "isCallerTargetApp":Z
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v15, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v15

    .line 4016
    .local v15, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_d

    if-nez v20, :cond_d

    .line 4018
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    .end local v3    # "i":I
    .local v16, "i":I
    const-string v3, "Attempt to change component state; pid="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4019
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4021
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .local v21, "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    const-string v4, ", package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 4088
    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v14    # "isCallerTargetApp":Z
    .end local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "i":I
    .end local v21    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    :catchall_0
    move-exception v0

    move v6, v8

    move-object v7, v12

    move-object/from16 v19, v13

    goto/16 :goto_23

    .line 4022
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v14    # "isCallerTargetApp":Z
    .restart local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "i":I
    :cond_c
    move-object/from16 v21, v4

    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v21    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v8    # "targetSize":I
    .end local v9    # "callingUid":I
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local v20    # "allowedByPermission":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v10

    .line 4016
    .end local v16    # "i":I
    .end local v21    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v3    # "i":I
    .restart local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v8    # "targetSize":I
    .restart local v9    # "callingUid":I
    .restart local v12    # "updateAllowed":[Z
    .restart local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v20    # "allowedByPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_d
    move/from16 v16, v3

    move-object/from16 v21, v4

    .line 4024
    .end local v3    # "i":I
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v16    # "i":I
    .restart local v21    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    if-eqz v15, :cond_16

    invoke-interface {v0, v15, v9, v5}, Lcom/android/server/pm/Computer;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v19, v0

    goto/16 :goto_c

    .line 4031
    :cond_e
    if-nez v14, :cond_10

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 4032
    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_9

    .line 4033
    :cond_f
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot disable a protected package: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v8    # "targetSize":I
    .end local v9    # "callingUid":I
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local v20    # "allowedByPermission":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 4036
    .restart local v8    # "targetSize":I
    .restart local v9    # "callingUid":I
    .restart local v12    # "updateAllowed":[Z
    .restart local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v20    # "allowedByPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_10
    :goto_9
    const/16 v3, 0x7d0

    if-ne v9, v3, :cond_15

    .line 4037
    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_14

    .line 4040
    invoke-virtual {v15, v5}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v3

    .line 4041
    .local v3, "oldState":I
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v4

    .line 4042
    .local v4, "newState":I
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v22

    if-nez v22, :cond_13

    const/4 v10, 0x3

    const/16 v22, 0x0

    if-eq v3, v10, :cond_11

    if-eqz v3, :cond_11

    if-ne v3, v11, :cond_13

    :cond_11
    const/4 v10, 0x3

    if-eq v4, v10, :cond_12

    if-eqz v4, :cond_12

    if-ne v4, v11, :cond_13

    :cond_12
    move-object/from16 v19, v0

    goto :goto_a

    .line 4053
    :cond_13
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .local v19, "snapshot":Lcom/android/server/pm/Computer;
    const-string v0, "Shell cannot change component state for "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4055
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v8    # "targetSize":I
    .end local v9    # "callingUid":I
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local v20    # "allowedByPermission":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v10

    .line 4037
    .end local v3    # "oldState":I
    .end local v4    # "newState":I
    .end local v19    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v8    # "targetSize":I
    .restart local v9    # "callingUid":I
    .restart local v12    # "updateAllowed":[Z
    .restart local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v20    # "allowedByPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_14
    move-object/from16 v19, v0

    const/4 v10, 0x3

    const/16 v22, 0x0

    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v19    # "snapshot":Lcom/android/server/pm/Computer;
    goto :goto_a

    .line 4036
    .end local v19    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_15
    move-object/from16 v19, v0

    const/4 v10, 0x3

    const/16 v22, 0x0

    .line 4058
    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v19    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_a
    invoke-interface {v13, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4005
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v14    # "isCallerTargetApp":Z
    .end local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    :goto_b
    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, v19

    .end local v16    # "i":I
    .local v3, "i":I
    goto/16 :goto_7

    .line 4024
    .end local v3    # "i":I
    .end local v19    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v14    # "isCallerTargetApp":Z
    .restart local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "i":I
    .restart local v21    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    :cond_16
    move-object/from16 v19, v0

    .line 4026
    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v19    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    .line 4028
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_d
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "targetSize":I
    .end local v9    # "callingUid":I
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local v20    # "allowedByPermission":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v0

    .line 4005
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v14    # "isCallerTargetApp":Z
    .end local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "i":I
    .end local v19    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v21    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v3    # "i":I
    .restart local v8    # "targetSize":I
    .restart local v9    # "callingUid":I
    .restart local v12    # "updateAllowed":[Z
    .restart local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v20    # "allowedByPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_18
    move-object/from16 v19, v0

    move/from16 v16, v3

    const/16 v22, 0x0

    .line 4061
    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v3    # "i":I
    .restart local v19    # "snapshot":Lcom/android/server/pm/Computer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v8, :cond_20

    .line 4062
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4064
    .local v3, "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_11

    .line 4068
    :cond_19
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4069
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 4070
    .local v6, "className":Ljava/lang/String;
    if-nez v20, :cond_1b

    sget-object v10, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 4071
    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    goto :goto_f

    .line 4072
    :cond_1a
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "Cannot disable a system-generated component"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v8    # "targetSize":I
    .end local v9    # "callingUid":I
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local v20    # "allowedByPermission":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v10

    .line 4075
    .restart local v8    # "targetSize":I
    .restart local v9    # "callingUid":I
    .restart local v12    # "updateAllowed":[Z
    .restart local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v20    # "allowedByPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_1b
    :goto_f
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v10

    .line 4076
    .local v10, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v10, :cond_1c

    invoke-static {v10, v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1f

    .line 4077
    :cond_1c
    if-eqz v10, :cond_1e

    .line 4078
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v14

    const/16 v15, 0x10

    if-ge v14, v15, :cond_1d

    goto :goto_10

    .line 4079
    :cond_1d
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Component class "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " does not exist in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "targetSize":I
    .end local v9    # "callingUid":I
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local v20    # "allowedByPermission":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v11

    .line 4082
    .restart local v8    # "targetSize":I
    .restart local v9    # "callingUid":I
    .restart local v12    # "updateAllowed":[Z
    .restart local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v17    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v20    # "allowedByPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_1e
    :goto_10
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed setComponentEnabledSetting: component class "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " does not exist in "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    aput-boolean v22, v12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4061
    .end local v3    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v10    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_1f
    :goto_11
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x1

    goto/16 :goto_e

    :cond_20
    nop

    .line 4088
    .end local v0    # "i":I
    .end local v19    # "snapshot":Lcom/android/server/pm/Computer;
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4091
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_12
    if-ge v2, v8, :cond_26

    .line 4092
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4094
    .restart local v3    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_14

    .line 4096
    :cond_21
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 4097
    .local v4, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v6

    .line 4098
    .local v6, "newState":I
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    .line 4099
    :try_start_3
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    if-ne v0, v6, :cond_22

    .line 4101
    aput-boolean v22, v12, v2

    .line 4102
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_14

    .line 4104
    :catchall_1
    move-exception v0

    goto :goto_15

    :cond_22
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4108
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    .line 4109
    .local v0, "deletedPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v0, :cond_23

    .line 4110
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 4111
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v10

    if-eqz v10, :cond_23

    const/4 v10, 0x1

    goto :goto_13

    :cond_23
    move/from16 v10, v22

    :goto_13
    nop

    .line 4112
    .local v10, "isSystemStub":Z
    if-eqz v10, :cond_25

    if-eqz v6, :cond_24

    const/4 v11, 0x1

    if-ne v6, v11, :cond_25

    .line 4115
    :cond_24
    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/PackageManagerService;->enableCompressedPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z

    move-result v11

    if-nez v11, :cond_25

    .line 4116
    const-string v11, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed setApplicationEnabledSetting: failed to enable commpressed package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4117
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4116
    invoke-static {v11, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    aput-boolean v22, v12, v2

    .line 4091
    .end local v0    # "deletedPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v3    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v4    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "newState":I
    .end local v10    # "isSystemStub":Z
    :cond_25
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 4104
    .restart local v3    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v4    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "newState":I
    :goto_15
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4091
    .end local v3    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v4    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "newState":I
    :cond_26
    nop

    .line 4124
    .end local v2    # "i":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v10, v0

    .line 4125
    .local v10, "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 4127
    .local v11, "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v14

    .line 4128
    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 4129
    .local v2, "computer":Lcom/android/server/pm/Computer;
    const/4 v0, 0x0

    .line 4130
    .local v0, "scheduleBroadcastMessage":Z
    const/4 v3, 0x0

    .line 4131
    .local v3, "isSynchronous":Z
    const/4 v4, 0x0

    .line 4133
    .local v4, "anyChanged":Z
    const/4 v6, 0x0

    move v15, v3

    move/from16 v19, v4

    move v3, v6

    .end local v4    # "anyChanged":Z
    .local v3, "i":I
    .local v15, "isSynchronous":Z
    .local v19, "anyChanged":Z
    :goto_16
    if-ge v3, v8, :cond_2f

    .line 4134
    :try_start_7
    aget-boolean v4, v12, v3

    if-nez v4, :cond_27

    .line 4135
    move/from16 v21, v0

    move/from16 v24, v3

    goto :goto_19

    .line 4138
    :cond_27
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4139
    .local v4, "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4140
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v23, v21

    .line 4141
    .local v23, "packageSetting":Lcom/android/server/pm/PackageSetting;
    move/from16 v21, v0

    .end local v0    # "scheduleBroadcastMessage":Z
    .local v21, "scheduleBroadcastMessage":Z
    new-instance v0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4143
    :try_start_8
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-static {v5, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 4144
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v24

    if-eqz v24, :cond_28

    .line 4145
    move/from16 v24, v3

    .end local v3    # "i":I
    .local v24, "i":I
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 4144
    invoke-interface {v2, v3, v9, v5}, Lcom/android/server/pm/Computer;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result v3

    move-object/from16 v25, v2

    move v2, v3

    move-object/from16 v3, v23

    goto :goto_18

    .line 4202
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v15    # "isSynchronous":Z
    .end local v19    # "anyChanged":Z
    .end local v21    # "scheduleBroadcastMessage":Z
    .end local v23    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v24    # "i":I
    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    :goto_17
    move v6, v8

    move-object/from16 v18, v10

    move-object/from16 v21, v11

    move-object v7, v12

    move-object/from16 v19, v13

    goto/16 :goto_22

    .line 4146
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v3    # "i":I
    .restart local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v15    # "isSynchronous":Z
    .restart local v19    # "anyChanged":Z
    .restart local v21    # "scheduleBroadcastMessage":Z
    .restart local v23    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_28
    move/from16 v24, v3

    .end local v3    # "i":I
    .restart local v24    # "i":I
    move-object/from16 v3, v23

    .end local v23    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v3, "packageSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v23

    move-object/from16 v25, v2

    move/from16 v2, v23

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .local v25, "computer":Lcom/android/server/pm/Computer;
    :goto_18
    invoke-direct {v0, v4, v1, v2, v9}, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;-><init>(Landroid/content/pm/PackageManager$ComponentEnabledSetting;III)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4147
    .local v0, "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    move-object/from16 v1, p0

    move-object v7, v6

    move-object/from16 v2, v25

    move-object/from16 v6, p3

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v25    # "computer":Lcom/android/server/pm/Computer;
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .local v7, "packageName":Ljava/lang/String;
    :try_start_9
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettingInternalLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILjava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_29

    .line 4149
    nop

    .line 4133
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v21    # "scheduleBroadcastMessage":Z
    .end local v24    # "i":I
    .local v0, "scheduleBroadcastMessage":Z
    .local v3, "i":I
    :goto_19
    move-object/from16 v23, v2

    move/from16 v0, v21

    .end local v0    # "scheduleBroadcastMessage":Z
    .end local v3    # "i":I
    .restart local v21    # "scheduleBroadcastMessage":Z
    .restart local v24    # "i":I
    goto/16 :goto_1c

    .line 4151
    .local v0, "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    .local v3, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_29
    const/4 v6, 0x1

    .line 4152
    .end local v19    # "anyChanged":Z
    .local v6, "anyChanged":Z
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4154
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_2a

    .line 4155
    const/4 v15, 0x1

    .line 4158
    :cond_2a
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v19

    if-eqz v19, :cond_2b

    .line 4159
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v19

    goto :goto_1a

    .line 4202
    .end local v0    # "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v3    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v6    # "anyChanged":Z
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v15    # "isSynchronous":Z
    .end local v21    # "scheduleBroadcastMessage":Z
    .end local v24    # "i":I
    :catchall_3
    move-exception v0

    goto :goto_17

    .line 4159
    .restart local v0    # "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v3    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v6    # "anyChanged":Z
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v15    # "isSynchronous":Z
    .restart local v21    # "scheduleBroadcastMessage":Z
    .restart local v24    # "i":I
    :cond_2b
    move-object/from16 v19, v7

    :goto_1a
    move-object/from16 v23, v19

    .line 4160
    .local v23, "componentName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v19

    const/16 v16, 0x1

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_2e

    .line 4161
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 4162
    .local v19, "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v19, :cond_2c

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    :cond_2c
    move-object/from16 v25, v19

    :goto_1b
    move-object/from16 v26, v25

    .line 4163
    .end local v19    # "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v26, "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v23, v2

    move-object/from16 v2, v26

    .end local v26    # "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "componentName":Ljava/lang/String;
    .local v2, "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v23, "computer":Lcom/android/server/pm/Computer;
    .local v25, "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2d

    .line 4164
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4166
    :cond_2d
    invoke-virtual {v10, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4169
    move-object/from16 v19, v2

    .end local v2    # "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v2, v5, v7}, Lcom/android/server/pm/PendingPackageBroadcasts;->remove(ILjava/lang/String;)V

    .line 4170
    .end local v19    # "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v19, v6

    move/from16 v0, v21

    goto :goto_1c

    .line 4171
    .end local v25    # "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    .local v0, "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    .local v2, "computer":Lcom/android/server/pm/Computer;
    .local v23, "componentName":Ljava/lang/String;
    :cond_2e
    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v23, v2

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .local v0, "componentName":Ljava/lang/String;
    .local v23, "computer":Lcom/android/server/pm/Computer;
    .restart local v25    # "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v2, v5, v7, v0}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponent(ILjava/lang/String;Ljava/lang/String;)V

    .line 4172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v3

    .end local v3    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v26, "packageSetting":Lcom/android/server/pm/PackageSetting;
    const-string/jumbo v3, "setEnabledSetting broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4173
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4172
    move-object/from16 v27, v4

    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .local v27, "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4174
    const/4 v2, 0x1

    move v0, v2

    move/from16 v19, v6

    .line 4133
    .end local v6    # "anyChanged":Z
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v21    # "scheduleBroadcastMessage":Z
    .end local v25    # "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    .end local v26    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .local v0, "scheduleBroadcastMessage":Z
    .local v19, "anyChanged":Z
    :goto_1c
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v7, p1

    move-object/from16 v2, v23

    .end local v24    # "i":I
    .local v3, "i":I
    goto/16 :goto_16

    .end local v23    # "computer":Lcom/android/server/pm/Computer;
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    :cond_2f
    move/from16 v21, v0

    move-object/from16 v23, v2

    move/from16 v24, v3

    .line 4177
    .end local v0    # "scheduleBroadcastMessage":Z
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v3    # "i":I
    .restart local v21    # "scheduleBroadcastMessage":Z
    .restart local v23    # "computer":Lcom/android/server/pm/Computer;
    if-nez v19, :cond_30

    .line 4179
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 4182
    :cond_30
    if-eqz v15, :cond_31

    .line 4183
    :try_start_a
    invoke-direct {v1, v5}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_1d

    .line 4185
    :cond_31
    :try_start_b
    invoke-virtual {v1, v5}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 4187
    :goto_1d
    if-eqz v21, :cond_34

    .line 4188
    :try_start_c
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 4193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, v1, Lcom/android/server/pm/PackageManagerService;->mServiceStartWithDelay:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_32

    .line 4194
    const-wide/16 v2, 0x3e8

    goto :goto_1e

    .line 4195
    :cond_32
    const-wide/16 v2, 0x2710

    :goto_1e
    nop

    .line 4196
    .local v2, "broadcastDelay":J
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-string v6, "component_state_changed"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 4197
    move/from16 v16, v8

    move/from16 v8, v22

    const/4 v7, 0x1

    .end local v8    # "targetSize":I
    .local v16, "targetSize":I
    :try_start_d
    invoke-virtual {v4, v7, v9, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 4196
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_1f

    .line 4202
    .end local v2    # "broadcastDelay":J
    .end local v15    # "isSynchronous":Z
    .end local v19    # "anyChanged":Z
    .end local v21    # "scheduleBroadcastMessage":Z
    .end local v23    # "computer":Lcom/android/server/pm/Computer;
    :catchall_4
    move-exception v0

    move-object/from16 v18, v10

    move-object/from16 v21, v11

    move-object v7, v12

    move-object/from16 v19, v13

    move/from16 v6, v16

    goto/16 :goto_22

    .end local v16    # "targetSize":I
    .restart local v8    # "targetSize":I
    :catchall_5
    move-exception v0

    move/from16 v16, v8

    move-object/from16 v18, v10

    move-object/from16 v21, v11

    move-object v7, v12

    move-object/from16 v19, v13

    move/from16 v6, v16

    .end local v8    # "targetSize":I
    .restart local v16    # "targetSize":I
    goto/16 :goto_22

    .line 4188
    .end local v16    # "targetSize":I
    .restart local v8    # "targetSize":I
    .restart local v15    # "isSynchronous":Z
    .restart local v19    # "anyChanged":Z
    .restart local v21    # "scheduleBroadcastMessage":Z
    .restart local v23    # "computer":Lcom/android/server/pm/Computer;
    :cond_33
    move/from16 v16, v8

    .end local v8    # "targetSize":I
    .restart local v16    # "targetSize":I
    goto :goto_1f

    .line 4187
    .end local v16    # "targetSize":I
    .restart local v8    # "targetSize":I
    :cond_34
    move/from16 v16, v8

    .line 4202
    .end local v8    # "targetSize":I
    .end local v15    # "isSynchronous":Z
    .end local v19    # "anyChanged":Z
    .end local v21    # "scheduleBroadcastMessage":Z
    .end local v23    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "targetSize":I
    :goto_1f
    :try_start_e
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4205
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-static {v0, v11, v5}, Lcom/android/server/pm/PackageMetrics;->reportComponentStateChanged(Lcom/android/server/pm/Computer;Ljava/util/List;I)V

    .line 4208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4210
    .local v2, "callingId":J
    :try_start_f
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 4211
    .local v0, "newSnapshot":Lcom/android/server/pm/Computer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v4, v6, :cond_35

    .line 4212
    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4213
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 4214
    .local v7, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 4215
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v8

    .line 4214
    invoke-static {v5, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 4216
    .local v8, "packageUid":I
    move-object v14, v13

    move v13, v8

    .end local v8    # "packageUid":I
    .local v13, "packageUid":I
    .local v14, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :try_start_10
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const-string v15, "component_state_changed"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move-object/from16 v18, v11

    .end local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .local v18, "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    const/4 v11, 0x0

    move-object/from16 v19, v14

    .end local v14    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local v19, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    const/4 v14, 0x0

    move-object/from16 v21, v12

    move-object v12, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v18

    move-object/from16 v18, v10

    move-object v10, v6

    move/from16 v6, v16

    move/from16 v16, v9

    move-object v9, v0

    .end local v0    # "newSnapshot":Lcom/android/server/pm/Computer;
    .local v6, "targetSize":I
    .local v7, "updateAllowed":[Z
    .local v9, "newSnapshot":Lcom/android/server/pm/Computer;
    .local v10, "packageName":Ljava/lang/String;
    .local v12, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "callingUid":I
    .local v18, "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v21, "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    :try_start_11
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move/from16 v9, v16

    .line 4211
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "packageUid":I
    .end local v16    # "callingUid":I
    .restart local v0    # "newSnapshot":Lcom/android/server/pm/Computer;
    .local v9, "callingUid":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v16, v6

    move-object v12, v7

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v11, v21

    goto :goto_20

    .line 4221
    .end local v0    # "newSnapshot":Lcom/android/server/pm/Computer;
    .end local v4    # "i":I
    .end local v9    # "callingUid":I
    .restart local v16    # "callingUid":I
    :catchall_6
    move-exception v0

    move/from16 v9, v16

    .end local v16    # "callingUid":I
    .restart local v9    # "callingUid":I
    goto :goto_21

    .end local v6    # "targetSize":I
    .end local v7    # "updateAllowed":[Z
    .end local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .local v10, "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .local v12, "updateAllowed":[Z
    .restart local v14    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local v16, "targetSize":I
    :catchall_7
    move-exception v0

    move-object/from16 v18, v10

    move-object/from16 v21, v11

    move-object v7, v12

    move-object/from16 v19, v14

    move/from16 v6, v16

    .end local v10    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .end local v12    # "updateAllowed":[Z
    .end local v14    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v16    # "targetSize":I
    .restart local v6    # "targetSize":I
    .restart local v7    # "updateAllowed":[Z
    .restart local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    goto :goto_21

    .end local v6    # "targetSize":I
    .end local v7    # "updateAllowed":[Z
    .end local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .restart local v10    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .restart local v12    # "updateAllowed":[Z
    .local v13, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v16    # "targetSize":I
    :catchall_8
    move-exception v0

    move-object/from16 v18, v10

    move-object/from16 v21, v11

    move-object v7, v12

    move-object/from16 v19, v13

    move/from16 v6, v16

    .end local v10    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v16    # "targetSize":I
    .restart local v6    # "targetSize":I
    .restart local v7    # "updateAllowed":[Z
    .restart local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    goto :goto_21

    .line 4211
    .end local v6    # "targetSize":I
    .end local v7    # "updateAllowed":[Z
    .end local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .restart local v0    # "newSnapshot":Lcom/android/server/pm/Computer;
    .restart local v4    # "i":I
    .restart local v10    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .restart local v12    # "updateAllowed":[Z
    .restart local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v16    # "targetSize":I
    :cond_35
    move-object/from16 v18, v10

    move-object/from16 v21, v11

    move-object v7, v12

    move-object/from16 v19, v13

    move/from16 v6, v16

    .line 4221
    .end local v0    # "newSnapshot":Lcom/android/server/pm/Computer;
    .end local v4    # "i":I
    .end local v10    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v16    # "targetSize":I
    .restart local v6    # "targetSize":I
    .restart local v7    # "updateAllowed":[Z
    .restart local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4222
    nop

    .line 4223
    return-void

    .line 4221
    :goto_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4222
    throw v0

    .line 4202
    .end local v2    # "callingId":J
    .end local v6    # "targetSize":I
    .end local v7    # "updateAllowed":[Z
    .end local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .restart local v10    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .restart local v12    # "updateAllowed":[Z
    .restart local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v16    # "targetSize":I
    :catchall_9
    move-exception v0

    move-object/from16 v18, v10

    move-object/from16 v21, v11

    move-object v7, v12

    move-object/from16 v19, v13

    move/from16 v6, v16

    .end local v10    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v16    # "targetSize":I
    .restart local v6    # "targetSize":I
    .restart local v7    # "updateAllowed":[Z
    .restart local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    goto :goto_22

    .end local v6    # "targetSize":I
    .end local v7    # "updateAllowed":[Z
    .end local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .local v8, "targetSize":I
    .restart local v10    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .restart local v12    # "updateAllowed":[Z
    .restart local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :catchall_a
    move-exception v0

    move v6, v8

    move-object/from16 v18, v10

    move-object/from16 v21, v11

    move-object v7, v12

    move-object/from16 v19, v13

    .end local v8    # "targetSize":I
    .end local v10    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v6    # "targetSize":I
    .restart local v7    # "updateAllowed":[Z
    .restart local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    :goto_22
    :try_start_12
    monitor-exit v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_22

    .line 4088
    .end local v6    # "targetSize":I
    .end local v7    # "updateAllowed":[Z
    .end local v18    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v21    # "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    .restart local v8    # "targetSize":I
    .restart local v12    # "updateAllowed":[Z
    .restart local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :catchall_c
    move-exception v0

    move v6, v8

    move-object v7, v12

    move-object/from16 v19, v13

    .end local v8    # "targetSize":I
    .end local v12    # "updateAllowed":[Z
    .end local v13    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v6    # "targetSize":I
    .restart local v7    # "updateAllowed":[Z
    .restart local v19    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :goto_23
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_23
.end method

.method private setUpInstantAppInstallerActivityLP(Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p1, "installerActivity"    # Landroid/content/pm/ActivityInfo;

    .line 3150
    const-string v0, "PackageManager"

    if-nez p1, :cond_1

    .line 3151
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_0

    .line 3152
    const-string v1, "Clear ephemeral installer activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 3155
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 3156
    return-void

    .line 3159
    :cond_1
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_2

    .line 3160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set ephemeral installer activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3161
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3160
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    :cond_2
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 3165
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v1, v1, 0x120

    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3167
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3168
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 3169
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3170
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput v1, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 3171
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput v1, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 3172
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-boolean v1, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 3173
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    const v1, 0x588000

    iput v1, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 3175
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 3176
    return-void
.end method

.method private static toStaticSharedLibraryPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "libraryVersion"    # J

    .line 3081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addAllPackageProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 8008
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageProperty;->addAllProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 8009
    return-void
.end method

.method public addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V
    .locals 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "intentFilter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p3, "ownerPackage"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "targetUserId"    # I
    .param p6, "flags"    # I

    .line 3678
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3681
    .local v1, "callingUid":I
    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 3685
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v2, 0x1

    invoke-virtual {v0, p4, p5, v1, v2}, Lcom/android/server/pm/UserManagerService;->enforceCrossProfileIntentFilterAccess(IIIZ)V

    .line 3688
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    const-string/jumbo v2, "no_debugging_features"

    invoke-static {v0, v2, v1, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 3690
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->checkDataPathAndSchemeSpecificParts()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3695
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result v0

    if-nez v0, :cond_0

    .line 3696
    const-string v0, "PackageManager"

    const-string v2, "Cannot set a crossProfile intent filter with no filter actions"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    return-void

    .line 3699
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 3700
    :try_start_0
    new-instance v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3702
    invoke-virtual {v0, p4, p5}, Lcom/android/server/pm/UserManagerService;->getCrossProfileIntentFilterAccessControl(II)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move v7, p6

    .end local p2    # "intentFilter":Lcom/android/server/pm/WatchedIntentFilter;
    .end local p3    # "ownerPackage":Ljava/lang/String;
    .end local p5    # "targetUserId":I
    .end local p6    # "flags":I
    .local v4, "intentFilter":Lcom/android/server/pm/WatchedIntentFilter;
    .local v5, "ownerPackage":Ljava/lang/String;
    .local v6, "targetUserId":I
    .local v7, "flags":I
    :try_start_1
    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    .line 3703
    .local v3, "newFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3704
    invoke-virtual {p2, p4}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object p2

    .line 3705
    .local p2, "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    invoke-virtual {p2, v4}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object p3

    .line 3707
    .local p3, "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    if-eqz p3, :cond_2

    .line 3708
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    .line 3709
    .local p5, "size":I
    const/4 p6, 0x0

    .local p6, "i":I
    :goto_0
    if-ge p6, p5, :cond_2

    .line 3710
    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/CrossProfileIntentFilter;->equalsIgnoreFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3711
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 3716
    .end local v3    # "newFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local p2    # "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local p3    # "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .end local p5    # "size":I
    .end local p6    # "i":I
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 3709
    .restart local v3    # "newFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    .restart local p2    # "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    .restart local p3    # "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .restart local p5    # "size":I
    .restart local p6    # "i":I
    :cond_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 3715
    .end local p5    # "size":I
    .end local p6    # "i":I
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p5

    invoke-virtual {p2, p5, v3}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3716
    .end local v3    # "newFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local p2    # "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local p3    # "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3717
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 3718
    return-void

    .line 3716
    .end local v4    # "intentFilter":Lcom/android/server/pm/WatchedIntentFilter;
    .end local v5    # "ownerPackage":Ljava/lang/String;
    .end local v6    # "targetUserId":I
    .end local v7    # "flags":I
    .local p2, "intentFilter":Lcom/android/server/pm/WatchedIntentFilter;
    .local p3, "ownerPackage":Ljava/lang/String;
    .local p5, "targetUserId":I
    .local p6, "flags":I
    :catchall_1
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move v7, p6

    move-object p2, v0

    .end local p2    # "intentFilter":Lcom/android/server/pm/WatchedIntentFilter;
    .end local p3    # "ownerPackage":Ljava/lang/String;
    .end local p5    # "targetUserId":I
    .end local p6    # "flags":I
    .restart local v4    # "intentFilter":Lcom/android/server/pm/WatchedIntentFilter;
    .restart local v5    # "ownerPackage":Ljava/lang/String;
    .restart local v6    # "targetUserId":I
    .restart local v7    # "flags":I
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p2

    .line 3691
    .end local v4    # "intentFilter":Lcom/android/server/pm/WatchedIntentFilter;
    .end local v5    # "ownerPackage":Ljava/lang/String;
    .end local v6    # "targetUserId":I
    .end local v7    # "flags":I
    .restart local p2    # "intentFilter":Lcom/android/server/pm/WatchedIntentFilter;
    .restart local p3    # "ownerPackage":Ljava/lang/String;
    .restart local p5    # "targetUserId":I
    .restart local p6    # "flags":I
    :cond_3
    move-object v4, p2

    move-object v5, p3

    .end local p2    # "intentFilter":Lcom/android/server/pm/WatchedIntentFilter;
    .end local p3    # "ownerPackage":Ljava/lang/String;
    .restart local v4    # "intentFilter":Lcom/android/server/pm/WatchedIntentFilter;
    .restart local v5    # "ownerPackage":Ljava/lang/String;
    const-string p2, "246749936"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x534e4554

    invoke-static {p3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3692
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid intent data paths or scheme specific parts in the filter."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method addInstallerPackageName(Lcom/android/server/pm/InstallSource;)V
    .locals 2
    .param p1, "installSource"    # Lcom/android/server/pm/InstallSource;

    .line 8287
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 8288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 8289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 8290
    return-void

    .line 8289
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method addInstrumentation(Landroid/content/ComponentName;Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "instrumentation"    # Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 8012
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8013
    return-void
.end method

.method canHaveOatDir(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7757
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 7758
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 7761
    :cond_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->canHaveOatDir(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    return v1

    .line 7759
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method checkPackageStartable(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .locals 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4732
    .local v1, "callingUid":I
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4735
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4738
    const/4 v4, 0x0

    const-string v5, "checkPackageStartable"

    const/4 v3, 0x0

    move-object v0, p1

    move v2, p3

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p3    # "userId":I
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    .local v2, "userId":I
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4740
    iget-boolean p1, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStartability(ZLjava/lang/String;II)I

    move-result p1

    const-string p3, "Package "

    packed-switch p1, :pswitch_data_0

    .line 4752
    return-void

    .line 4748
    :pswitch_0
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not encryption aware!"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4746
    :pswitch_1
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is currently frozen!"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4744
    :pswitch_2
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not a system app!"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4742
    :pswitch_3
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " was not found!"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4736
    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v2    # "userId":I
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p3    # "userId":I
    :cond_0
    move-object v0, p1

    move v2, p3

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p3    # "userId":I
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v2    # "userId":I
    new-instance p1, Ljava/lang/SecurityException;

    const-string p3, "User doesn\'t exist"

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4733
    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v2    # "userId":I
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p3    # "userId":I
    :cond_1
    move-object v0, p1

    move v2, p3

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p3    # "userId":I
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v2    # "userId":I
    new-instance p1, Ljava/lang/SecurityException;

    const-string p3, "Instant applications don\'t have access to this method"

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3030
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v1, "default:0"

    invoke-interface {v0, p2, p1, v1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "fromCodePath"    # Ljava/lang/String;

    .line 8316
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8317
    return-void
.end method

.method cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "codeFile"    # Ljava/io/File;
    .param p3, "instructionSets"    # [Ljava/lang/String;

    .line 8312
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 8313
    return-void
.end method

.method cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V
    .locals 4
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userId"    # I

    .line 4524
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4525
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4526
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4527
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4528
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserNeedsBadgingCache;->delete(I)V

    .line 4529
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V

    .line 4530
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/Settings;->removeUserLPw(I)V

    .line 4531
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PendingPackageBroadcasts;->remove(I)V

    .line 4532
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/AppsFilterImpl;->onUserDeleted(Lcom/android/server/pm/Computer;I)V

    .line 4533
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onUserRemoved(I)V

    .line 4534
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4535
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->onUserRemoved(I)V

    .line 4536
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->onUserRemoved(I)V

    .line 4537
    nop

    .line 4540
    return-void

    .line 4534
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 4527
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "userManager":Lcom/android/server/pm/UserManagerService;
    .end local p2    # "userId":I
    :try_start_4
    throw v2

    .line 4534
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "userManager":Lcom/android/server/pm/UserManagerService;
    .restart local p2    # "userId":I
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "outUserChanged"    # Landroid/util/SparseBooleanArray;
    .param p3, "userId"    # I

    .line 3646
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/Settings;->clearPackagePreferredActivities(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 3647
    return-void
.end method

.method public commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .locals 4
    .param p1, "initialState"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/mutate/PackageStateWrite;",
            ">;)",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;"
        }
    .end annotation

    .line 8252
    .local p3, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/mutate/PackageStateWrite;>;"
    const/4 v0, 0x0

    .line 8253
    .local v0, "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8256
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 8258
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 8259
    if-nez v0, :cond_1

    .line 8262
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 8263
    invoke-virtual {v3}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result v3

    .line 8262
    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->generateResult(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 8277
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 8265
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eq v0, v2, :cond_2

    .line 8266
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v0

    .line 8269
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    .line 8270
    .local v2, "state":Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    if-nez v2, :cond_3

    .line 8271
    sget-object v3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SPECIFIC_PACKAGE_NULL:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v3

    .line 8273
    :cond_3
    :try_start_2
    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8276
    invoke-interface {v2}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->onChanged()V

    .line 8277
    .end local v2    # "state":Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 8279
    sget-object v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object v1

    .line 8277
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method public commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .locals 3
    .param p1, "initialState"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator;",
            ">;)",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;"
        }
    .end annotation

    .line 8230
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/mutate/PackageStateMutator;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 8231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 8232
    invoke-virtual {v2}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result v2

    .line 8231
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->generateResult(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v1

    .line 8233
    .local v1, "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    sget-object v2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eq v1, v2, :cond_0

    .line 8234
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v1

    .line 8239
    .end local v1    # "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 8237
    .restart local v1    # "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8238
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->onFinished()V

    .line 8239
    .end local v1    # "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 8241
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object v0

    .line 8239
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method createNewUser(ILjava/util/Set;[Ljava/lang/String;)V
    .locals 8
    .param p1, "userId"    # I
    .param p3, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4563
    .local p2, "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 4564
    .local v1, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "userId":I
    .end local p2    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p3    # "disallowedPackages":[Ljava/lang/String;
    .local v5, "userId":I
    .local v6, "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "disallowedPackages":[Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Settings;->createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4566
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 4567
    .end local v1    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_0
    iget-object p1, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 4568
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 4569
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageListLocked(I)V

    .line 4570
    iget-object p2, v3, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    invoke-virtual {p2, p3, v5}, Lcom/android/server/pm/AppsFilterImpl;->onUserCreated(Lcom/android/server/pm/Computer;I)V

    .line 4571
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4572
    return-void

    .line 4571
    :catchall_0
    move-exception v0

    move-object p2, v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p2

    .line 4563
    .restart local v1    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v5    # "userId":I
    .end local v6    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "disallowedPackages":[Ljava/lang/String;
    .restart local p1    # "userId":I
    .restart local p2    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p3    # "disallowedPackages":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object p1, v0

    .end local p1    # "userId":I
    .end local p2    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p3    # "disallowedPackages":[Ljava/lang/String;
    .restart local v5    # "userId":I
    .restart local v6    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "disallowedPackages":[Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
.end method

.method public deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .locals 1
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I

    .line 3424
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/DeletePackageHelper;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 3426
    return-void
.end method

.method deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J
    .locals 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7765
    const-string v0, "PackageManager"

    const-string v1, "Only the system or shell can delete oat artifacts"

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 7770
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v1

    .line 7771
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1

    .line 7773
    .local v1, "filteredSnapshot":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const-wide/16 v2, -0x1

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v4

    invoke-virtual {v4, v1, p2}, Lcom/android/server/art/ArtManagerLocal;->deleteDexoptArtifacts(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)Lcom/android/server/art/model/DeleteResult;

    move-result-object v4

    .line 7775
    .local v4, "res":Lcom/android/server/art/model/DeleteResult;
    invoke-virtual {v4}, Lcom/android/server/art/model/DeleteResult;->getFreedBytes()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7783
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 7775
    :cond_0
    return-wide v2

    .line 7769
    .end local v4    # "res":Lcom/android/server/art/model/DeleteResult;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 7779
    :catch_0
    move-exception v4

    goto :goto_0

    .line 7776
    :catch_1
    move-exception v4

    goto :goto_1

    .line 7779
    :goto_0
    nop

    .line 7780
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7781
    nop

    .line 7783
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 7781
    :cond_1
    return-wide v2

    .line 7776
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    nop

    .line 7777
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7778
    nop

    .line 7783
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 7778
    :cond_2
    return-wide v2

    .line 7769
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
.end method

.method public deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .locals 6
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .param p4, "deleteFlags"    # I

    .line 3438
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    .end local p2    # "observer":Landroid/content/pm/IPackageDeleteObserver2;
    .end local p3    # "userId":I
    .end local p4    # "deleteFlags":I
    .local v1, "versionedPackage":Landroid/content/pm/VersionedPackage;
    .local v2, "observer":Landroid/content/pm/IPackageDeleteObserver2;
    .local v3, "userId":I
    .local v4, "deleteFlags":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    .line 3440
    return-void
.end method

.method public deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;III)V
    .locals 7
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .param p4, "deleteFlags"    # I
    .param p5, "callingUid"    # I

    .line 3431
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    .end local p2    # "observer":Landroid/content/pm/IPackageDeleteObserver2;
    .end local p3    # "userId":I
    .end local p4    # "deleteFlags":I
    .end local p5    # "callingUid":I
    .local v1, "versionedPackage":Landroid/content/pm/VersionedPackage;
    .local v2, "observer":Landroid/content/pm/IPackageDeleteObserver2;
    .local v3, "userId":I
    .local v4, "deleteFlags":I
    .local v5, "callingUid":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIIZ)V

    .line 3434
    return-void
.end method

.method deletePackageX(Ljava/lang/String;JIIZ)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I
    .param p5, "deleteFlags"    # I
    .param p6, "removedBySystem"    # Z

    .line 8373
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-object v1, p1

    .end local p1    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result p1

    return p1
.end method

.method deletePreloadsFileCache()V
    .locals 3

    .line 4635
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const-string v2, "deletePreloadsFileCache"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4637
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 4638
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting preloaded file cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 4640
    return-void
.end method

.method enableCompressedPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p1, "stubPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "stubPs"    # Lcom/android/server/pm/PackageSetting;

    .line 8349
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->enableCompressedPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0
.end method

.method ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3850
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3851
    return-object v0

    .line 3853
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3855
    .local v1, "token":J
    const-wide/32 v3, 0x200000

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1, p2, v3, v4, v5}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3857
    nop

    .line 3858
    const-wide/16 v3, 0x0

    invoke-interface {p1, p2, v3, v4, v5}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 3859
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    .line 3860
    const-string v4, "145981139"

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ""

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x534e4554

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 3868
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 3863
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing required system package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    .line 3864
    const-string v6, ", but found with extended search."

    goto :goto_1

    :cond_2
    const-string v6, "."

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3863
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3865
    nop

    .line 3868
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3865
    return-object v0

    .line 3868
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3869
    nop

    .line 3870
    return-object p2

    .line 3868
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3869
    throw v0
.end method

.method finishPackageInstall(IZ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "didLaunch"    # Z

    .line 4716
    const-string v0, "Only the system is allowed to finish installs"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 4722
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "restore"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 4724
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 4725
    nop

    .line 4724
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4726
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4727
    return-void
.end method

.method forEachInstalledPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;I)V
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 7704
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/util/function/Consumer;)V

    .line 7710
    .local v0, "actionWrapped":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V

    .line 7711
    return-void
.end method

.method forEachPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 7668
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    nop

    .line 7669
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    .line 7670
    .local v0, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 7671
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7672
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 7673
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7674
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7671
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 7677
    .end local v2    # "index":I
    return-void
.end method

.method forEachPackageInternal(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;",
            ">;)V"
        }
    .end annotation

    .line 7681
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;>;"
    nop

    .line 7682
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    .line 7683
    .local v0, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 7684
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7685
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 7686
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7687
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7684
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 7690
    .end local v2    # "index":I
    return-void
.end method

.method forEachPackageSetting(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7655
    .local p1, "actionLocked":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 7656
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    .line 7657
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7658
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7657
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7660
    .end local v1    # "size":I
    .end local v2    # "index":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7657
    .restart local v1    # "size":I
    .restart local v2    # "index":I
    :cond_0
    nop

    .line 7660
    .end local v1    # "size":I
    .end local v2    # "index":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 7661
    return-void

    .line 7660
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 7664
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V

    .line 7665
    return-void
.end method

.method public freeAllAppCacheAboveQuota(Ljava/lang/String;)V
    .locals 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2985
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2989
    .local v0, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const-wide v2, 0x7fffffffffffffffL

    const/16 v4, 0x900

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2991
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v0    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2992
    :cond_0
    :goto_0
    goto :goto_2

    .line 2985
    .restart local v0    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    throw v1
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2993
    .end local v0    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "recommendedInstallLocation"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/parsing/PackageLite;
    .param p3, "resolvedPath"    # Ljava/lang/String;
    .param p4, "mPackageAbiOverride"    # Ljava/lang/String;
    .param p5, "installFlags"    # I

    .line 3006
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "recommendedInstallLocation":I
    .end local p2    # "pkgLite":Landroid/content/pm/parsing/PackageLite;
    .end local p3    # "resolvedPath":Ljava/lang/String;
    .end local p4    # "mPackageAbiOverride":Ljava/lang/String;
    .end local p5    # "installFlags":I
    .local v1, "recommendedInstallLocation":I
    .local v2, "pkgLite":Landroid/content/pm/parsing/PackageLite;
    .local v3, "resolvedPath":Ljava/lang/String;
    .local v4, "mPackageAbiOverride":Ljava/lang/String;
    .local v5, "installFlags":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/FreeStorageHelper;->freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public freeStorage(Ljava/lang/String;JI)V
    .locals 1
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3001
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/FreeStorageHelper;->freeStorage(Ljava/lang/String;JI)V

    .line 3002
    return-void
.end method

.method public freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "killReason"    # Ljava/lang/String;
    .param p4, "exitInfoReason"    # I
    .param p5, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 4502
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "killReason":Ljava/lang/String;
    .end local p4    # "exitInfoReason":I
    .end local p5    # "request":Lcom/android/server/pm/InstallRequest;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "userId":I
    .local v3, "killReason":Ljava/lang/String;
    .local v4, "exitInfoReason":I
    .local v5, "request":Lcom/android/server/pm/InstallRequest;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;

    move-result-object p1

    return-object p1
.end method

.method public freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;I)Lcom/android/server/pm/PackageFreezer;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "deleteFlags"    # I
    .param p4, "killReason"    # Ljava/lang/String;
    .param p5, "exitInfoReason"    # I

    .line 4514
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    .line 4515
    new-instance v0, Lcom/android/server/pm/PackageFreezer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V

    return-object v0

    .line 4517
    :cond_0
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    move v6, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p4    # "killReason":Ljava/lang/String;
    .end local p5    # "exitInfoReason":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "userId":I
    .local v5, "killReason":Ljava/lang/String;
    .local v6, "exitInfoReason":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p1

    return-object p1
.end method

.method getActiveLauncherPackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 8039
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAppInstallDir()Ljava/io/File;
    .locals 1

    .line 8066
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    return-object v0
.end method

.method getArchivedPackageInternal(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1494
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1497
    .local v2, "binderUid":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 1498
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v5, 0x1

    const-string v6, "getArchivedPackage"

    const/4 v4, 0x1

    move v3, p2

    .end local p2    # "userId":I
    .local v3, "userId":I
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1501
    new-instance p2, Landroid/content/pm/ArchivedPackageParcel;

    invoke-direct {p2}, Landroid/content/pm/ArchivedPackageParcel;-><init>()V

    .line 1502
    .local p2, "archPkg":Landroid/content/pm/ArchivedPackageParcel;
    iput-object p1, p2, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    .line 1505
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 1506
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1507
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    goto/16 :goto_2

    .line 1510
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    .line 1511
    .local v6, "psi":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v7

    .line 1512
    .local v7, "archiveState":Lcom/android/server/pm/pkg/ArchiveState;
    if-nez v7, :cond_2

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1513
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v5

    .line 1530
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "psi":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v7    # "archiveState":Lcom/android/server/pm/pkg/ArchiveState;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1516
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "psi":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v7    # "archiveState":Lcom/android/server/pm/pkg/ArchiveState;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    iput-object v5, p2, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 1518
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v8

    .line 1519
    .local v8, "longVersionCode":J
    const/16 v5, 0x20

    shr-long v10, v8, v5

    long-to-int v5, v10

    iput v5, p2, Landroid/content/pm/ArchivedPackageParcel;->versionCodeMajor:I

    .line 1520
    long-to-int v5, v8

    iput v5, p2, Landroid/content/pm/ArchivedPackageParcel;->versionCode:I

    .line 1522
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v5

    iput v5, p2, Landroid/content/pm/ArchivedPackageParcel;->targetSdkVersion:I

    .line 1525
    nop

    .line 1526
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isDefaultToDeviceProtectedStorage()Z

    move-result v5

    .line 1525
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    .line 1527
    nop

    .line 1528
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isRequestLegacyExternalStorage()Z

    move-result v5

    .line 1527
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    .line 1529
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isUserDataFragile()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    .line 1530
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "psi":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v8    # "longVersionCode":J
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1533
    if-eqz v7, :cond_3

    .line 1534
    :try_start_2
    invoke-static {v7}, Lcom/android/server/pm/PackageArchiver;->createArchivedActivities(Lcom/android/server/pm/pkg/ArchiveState;)[Landroid/content/pm/ArchivedActivityParcel;

    move-result-object v0

    iput-object v0, p2, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    goto :goto_0

    .line 1546
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1537
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1538
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    .line 1540
    .local v0, "iconSize":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 1541
    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/PackageArchiver;->getLauncherActivityInfos(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1543
    .local v4, "mainActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageArchiver;->createArchivedActivities(Ljava/util/List;I)[Landroid/content/pm/ArchivedActivityParcel;

    move-result-object v5

    iput-object v5, p2, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1548
    .end local v0    # "iconSize":I
    .end local v4    # "mainActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :goto_0
    nop

    .line 1550
    return-object p2

    .line 1546
    :goto_1
    nop

    .line 1547
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Package does not have a main activity"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1508
    .end local v7    # "archiveState":Lcom/android/server/pm/pkg/ArchiveState;
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v5

    .line 1530
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method getCacheDir()Ljava/io/File;
    .locals 1

    .line 7992
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method getCoreAndroidApplication()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 8154
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method getDefParseFlags()I
    .locals 1

    .line 8074
    iget v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    return v0
.end method

.method getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;
    .locals 1

    .line 7988
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    return-object v0
.end method

.method getDefaultBrowser(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 8050
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePolicyManagementRoleHolderPackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 3533
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getDexManager()Lcom/android/server/pm/dex/DexManager;
    .locals 1

    .line 3114
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    return-object v0
.end method

.method getDexOptHelper()Lcom/android/server/pm/DexOptHelper;
    .locals 1

    .line 3118
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    return-object v0
.end method

.method getDisabledPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7650
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .locals 1

    .line 3122
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object v0
.end method

.method getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .locals 16
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;

    .line 2854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2855
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2856
    .local v1, "packageArray":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    const-string v4, "PackageManager"

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v2, :cond_1

    .line 2857
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_0

    .line 2858
    const-string v2, "Ephemeral resolver NOT found; empty package list"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_0
    return-object v3

    .line 2863
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2864
    .local v11, "callingUid":I
    nop

    .line 2867
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v2, :cond_2

    const/high16 v2, 0x100000

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/high16 v5, 0xc0000

    or-int/2addr v2, v5

    .line 2868
    .local v2, "resolveFlags":I
    new-instance v6, Landroid/content/Intent;

    const-string v5, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2869
    .local v6, "resolverIntent":Landroid/content/Intent;
    int-to-long v8, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v14}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object v7

    .line 2872
    .local v7, "resolvers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2873
    .local v5, "N":I
    if-nez v5, :cond_4

    .line 2874
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v8, :cond_3

    .line 2875
    const-string v8, "Ephemeral resolver NOT found; no matching intent filters"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :cond_3
    return-object v3

    .line 2880
    :cond_4
    new-instance v8, Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2881
    .local v8, "possiblePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_9

    .line 2882
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 2884
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v12, :cond_5

    .line 2885
    goto :goto_2

    .line 2888
    :cond_5
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2889
    .local v12, "packageName":Ljava/lang/String;
    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, ", info:"

    if-nez v13, :cond_7

    sget-boolean v13, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v13, :cond_7

    .line 2890
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v13, :cond_6

    .line 2891
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ephemeral resolver not in allowed package list; pkg: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2897
    .restart local v10    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "packageName":Ljava/lang/String;
    :cond_7
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_8

    .line 2898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ephemeral resolver found; pkg: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :cond_8
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v12, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 2881
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_9
    nop

    .line 2903
    .end local v9    # "i":I
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v9, :cond_a

    .line 2904
    const-string v9, "Ephemeral resolver NOT found"

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    :cond_a
    return-object v3
.end method

.method getInstrumentation()Lcom/android/server/utils/WatchedArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .line 8000
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .locals 19
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "knownPackage"    # I
    .param p3, "userId"    # I

    .line 8017
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/pm/KnownPackages;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v15

    const-string v15, "com.android.companiondevicemanager"

    invoke-direct/range {v1 .. v18}, Lcom/android/server/pm/KnownPackages;-><init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8035
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v1

    .line 8017
    return-object v1
.end method

.method getMimeGroupInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7788
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 7789
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_0

    .line 7790
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 7793
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getMimeGroups()Ljava/util/Map;

    move-result-object v1

    .line 7794
    .local v1, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 7795
    .local v2, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 7799
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3

    .line 7796
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown MIME group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 3011
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v0

    return-object v0
.end method

.method getModuleMetadataPackageName()Ljava/lang/String;
    .locals 1

    .line 8062
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/pm/ModuleInfoProvider;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateCompilerPackageStats(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 7718
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->getOrCreateCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 7722
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/CompilerStats;->getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v0

    return-object v0
.end method

.method getPackageFromComponentString(I)Ljava/lang/String;
    .locals 3
    .param p1, "stringResId"    # I

    .line 3836
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3837
    .local v0, "componentString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3838
    return-object v2

    .line 3840
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 3841
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 3842
    return-object v2

    .line 3844
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getPackageInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 3039
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    return-object v0
.end method

.method getPackageProperty()Lcom/android/server/pm/PackageProperty;
    .locals 1

    .line 7996
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    return-object v0
.end method

.method getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7642
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method getPackageUsage()Lcom/android/server/pm/PackageUsage;
    .locals 1

    .line 8058
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    return-object v0
.end method

.method public getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;
    .locals 1
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;

    .line 7885
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 7886
    .local v0, "result":[Landroid/os/incremental/PerUidReadTimeouts;
    if-nez v0, :cond_0

    .line 7887
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->parsePerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object v0

    .line 7888
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 7890
    :cond_0
    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 2977
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 2978
    invoke-virtual {v0, p1, p2}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    .line 2977
    return-object v0
.end method

.method getPlatformPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 1

    .line 8162
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object v0
.end method

.method getResolveComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 7984
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method getSafeMode()Z
    .locals 1

    .line 7980
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    return v0
.end method

.method public getSdkSandboxPackageName()Ljava/lang/String;
    .locals 1

    .line 3035
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    return-object v0
.end method

.method getSdkVersion()I
    .locals 1

    .line 8004
    iget v0, p0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    return v0
.end method

.method getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3411
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3412
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3413
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    return-object v0

    .line 3415
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    return-object v0

    .line 3418
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method getSystemPackageRescanFlagsAndReparseFlags(Ljava/io/File;II)Landroid/util/Pair;
    .locals 7
    .param p1, "scanFile"    # Ljava/io/File;
    .param p2, "systemScanFlags"    # I
    .param p3, "systemParseFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8192
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 8193
    invoke-virtual {v0}, Lcom/android/server/pm/InitAppsHelper;->getDirsToScanAsSystem()Ljava/util/List;

    move-result-object v0

    .line 8194
    .local v0, "dirsToScanAsSystem":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ScanPartition;>;"
    const/4 v1, 0x0

    .line 8195
    .local v1, "reparseFlags":I
    const/4 v2, 0x0

    .line 8196
    .local v2, "rescanFlags":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i1":I
    :goto_0
    if-ltz v3, :cond_2

    .line 8197
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ScanPartition;

    .line 8198
    .local v4, "partition":Lcom/android/server/pm/ScanPartition;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPrivApp(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8199
    move v1, p3

    .line 8200
    const/high16 v5, 0x20000

    or-int/2addr v5, p2

    iget v6, v4, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v2, v5, v6

    .line 8202
    goto :goto_1

    .line 8204
    :cond_0
    invoke-virtual {v4, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsApp(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8205
    move v1, p3

    .line 8206
    iget v5, v4, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v2, p2, v5

    .line 8207
    goto :goto_1

    .line 8204
    :cond_1
    nop

    .line 8196
    .end local v4    # "partition":Lcom/android/server/pm/ScanPartition;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 8210
    .end local v3    # "i1":I
    :cond_2
    :goto_1
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method getSystemPackageScanFlags(Ljava/io/File;)I
    .locals 5
    .param p1, "codePath"    # Ljava/io/File;

    .line 8174
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 8175
    invoke-virtual {v0}, Lcom/android/server/pm/InitAppsHelper;->getDirsToScanAsSystem()Ljava/util/List;

    move-result-object v0

    .line 8176
    .local v0, "dirsToScanAsSystem":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ScanPartition;>;"
    const/high16 v1, 0x10000

    .line 8177
    .local v1, "scanFlags":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 8178
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ScanPartition;

    .line 8179
    .local v3, "partition":Lcom/android/server/pm/ScanPartition;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8180
    iget v4, v3, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v1, v4

    .line 8181
    invoke-virtual {v3, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPrivApp(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8182
    const/high16 v4, 0x20000

    or-int/2addr v1, v4

    goto :goto_1

    .line 8179
    :cond_0
    nop

    .line 8177
    .end local v3    # "partition":Lcom/android/server/pm/ScanPartition;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8187
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v1
.end method

.method getUidForVerifier(Landroid/content/pm/VerifierInfo;)I
    .locals 1
    .param p1, "verifierInfo"    # Landroid/content/pm/VerifierInfo;

    .line 8368
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallPackageHelper;->getUidForVerifier(Landroid/content/pm/VerifierInfo;)I

    move-result v0

    return v0
.end method

.method grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V
    .locals 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "recipientAppId"    # I
    .param p5, "visibleUid"    # I
    .param p6, "direct"    # Z
    .param p7, "retainOnUpdate"    # Z

    .line 7728
    invoke-interface {p1, p5}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 7729
    .local v0, "visiblePackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-static {p2, p4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 7730
    .local v1, "recipientUid":I
    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_1

    .line 7734
    :cond_1
    nop

    .line 7735
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7734
    invoke-interface {p1, v2, p2, p5}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v2

    .line 7737
    .local v2, "instantApp":Z
    if-eqz v2, :cond_3

    .line 7738
    if-nez p6, :cond_2

    .line 7742
    return-void

    .line 7744
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 7745
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 7744
    invoke-virtual {v3, p2, p3, p4, v4}, Lcom/android/server/pm/InstantAppRegistry;->grantInstantAccess(ILandroid/content/Intent;II)Z

    move-result v3

    .local v3, "accessGranted":Z
    goto :goto_0

    .line 7747
    .end local v3    # "accessGranted":Z
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v3, v1, p5, p7}, Lcom/android/server/pm/AppsFilterImpl;->grantImplicitAccess(IIZ)Z

    move-result v3

    .line 7751
    .restart local v3    # "accessGranted":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 7752
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    .line 7754
    :cond_4
    return-void

    .line 7731
    .end local v2    # "instantApp":Z
    .end local v3    # "accessGranted":Z
    :goto_1
    return-void
.end method

.method handlePackagePostInstall(Lcom/android/server/pm/InstallRequest;Z)V
    .locals 1
    .param p1, "request"    # Lcom/android/server/pm/InstallRequest;
    .param p2, "launchedForRestore"    # Z

    .line 8324
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->handlePackagePostInstall(Lcom/android/server/pm/InstallRequest;Z)V

    .line 8325
    return-void
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 3020
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 3021
    .local v0, "feat":Landroid/content/pm/FeatureInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3022
    return v1

    .line 3024
    :cond_0
    iget v2, v0, Landroid/content/pm/FeatureInfo;->version:I

    if-lt v2, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 1
    .param p1, "scanFile"    # Ljava/io/File;
    .param p2, "parseFlags"    # I
    .param p3, "scanFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 8338
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)Landroid/util/Pair;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "installFlags"    # I
    .param p4, "installReason"    # I
    .param p6, "intentSender"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/IntentSender;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation

    .line 8333
    .local p5, "allowlistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "installFlags":I
    .end local p4    # "installReason":I
    .end local p5    # "allowlistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p6    # "intentSender":Landroid/content/IntentSender;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "userId":I
    .local v3, "installFlags":I
    .local v4, "installReason":I
    .local v5, "allowlistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "intentSender":Landroid/content/IntentSender;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method installPackagesTraced(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V
    .locals 1
    .param p2, "moveInfo"    # Lcom/android/server/pm/MoveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;",
            "Lcom/android/server/pm/MoveInfo;",
            ")V"
        }
    .end annotation

    .line 8353
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesTraced(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 8354
    return-void
.end method

.method isCallerVerifier(Lcom/android/server/pm/Computer;I)Z
    .locals 8
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "callingUid"    # I

    .line 3443
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3444
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 3445
    .local v5, "requiredVerifierPackage":Ljava/lang/String;
    const-wide/16 v6, 0x0

    invoke-interface {p1, v5, v6, v7, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 3446
    const/4 v1, 0x1

    return v1

    .line 3445
    :cond_0
    nop

    .line 3444
    .end local v5    # "requiredVerifierPackage":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3449
    :cond_1
    return v3
.end method

.method public isDeviceUpgrading()Z
    .locals 2

    .line 2639
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "persist.pm.mock-upgrade"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isExpectingBetter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8070
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InitAppsHelper;->isExpectingBetter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFirstBoot()Z
    .locals 1

    .line 2633
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    return v0
.end method

.method isHistoricalPackageUsageAvailable()Z
    .locals 1

    .line 7714
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageUsage;->isHistoricalPackageUsageAvailable()Z

    move-result v0

    return v0
.end method

.method isOverlayMutable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8170
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isPackageDeviceAdmin(Ljava/lang/String;I)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3469
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    .line 3470
    .local v3, "dpm":Landroid/app/admin/IDevicePolicyManager;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3471
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3479
    .local v4, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v5, 0x0

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 3481
    :try_start_0
    invoke-interface {v3, v5}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 3483
    .local v0, "deviceOwnerComponentName":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    .line 3484
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_0
    nop

    .line 3489
    .local v6, "deviceOwnerPackageName":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 3490
    return v8

    .line 3493
    :cond_1
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3495
    .local v7, "allUsers":[I
    const/4 v9, -0x1

    move/from16 v10, p2

    if-ne v10, v9, :cond_2

    .line 3496
    move-object v9, v7

    .local v9, "targetUsers":[I
    goto :goto_1

    .line 3498
    .end local v9    # "targetUsers":[I
    :cond_2
    :try_start_1
    filled-new-array {v10}, [I

    move-result-object v9

    .line 3501
    .restart local v9    # "targetUsers":[I
    :goto_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    array-length v12, v9

    if-ge v11, v12, :cond_4

    .line 3502
    aget v12, v9, v11

    invoke-interface {v3, v2, v12}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3503
    return v8

    .line 3501
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 3522
    .end local v0    # "deviceOwnerComponentName":Landroid/content/ComponentName;
    .end local v6    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v7    # "allUsers":[I
    .end local v9    # "targetUsers":[I
    .end local v11    # "i":I
    :catch_0
    move-exception v0

    goto :goto_5

    .line 3501
    .restart local v0    # "deviceOwnerComponentName":Landroid/content/ComponentName;
    .restart local v6    # "deviceOwnerPackageName":Ljava/lang/String;
    .restart local v7    # "allUsers":[I
    .restart local v9    # "targetUsers":[I
    .restart local v11    # "i":I
    :cond_4
    nop

    .line 3511
    .end local v11    # "i":I
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    invoke-interface {v11, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 3512
    .local v11, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v11, :cond_5

    .line 3513
    return v5

    .line 3515
    :cond_5
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v12, v7

    goto :goto_3

    :cond_6
    move-object v12, v9

    :goto_3
    array-length v13, v12

    move v14, v5

    :goto_4
    if-ge v14, v13, :cond_9

    aget v15, v12, v14

    .line 3516
    .local v15, "user":I
    invoke-direct {v1, v2, v15}, Lcom/android/server/pm/PackageManagerService;->isDeviceManagementRoleHolder(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 3517
    invoke-virtual {v4, v15}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result v16
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v16, :cond_7

    .line 3518
    return v8

    .line 3515
    .end local v15    # "user":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 3522
    .end local v0    # "deviceOwnerComponentName":Landroid/content/ComponentName;
    .end local v6    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v7    # "allUsers":[I
    .end local v9    # "targetUsers":[I
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catch_1
    move-exception v0

    move/from16 v10, p2

    goto :goto_5

    .line 3479
    :cond_8
    move/from16 v10, p2

    .line 3523
    :cond_9
    nop

    .line 3524
    :goto_5
    return v5
.end method

.method public isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .locals 4
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3453
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3454
    .local v0, "callingUid":I
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-interface {p1, v1, v0}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 3460
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3461
    invoke-interface {p1, p2, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3462
    const/4 v1, 0x0

    return v1

    .line 3464
    :cond_0
    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 3456
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    const-string v3, "128599183"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x534e4554

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3457
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "android.permission.MANAGE_USERS permission is required to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method isPreNMR1Upgrade()Z
    .locals 1

    .line 8166
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    return v0
.end method

.method public isStorageLow()Z
    .locals 4

    .line 4601
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4604
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 4605
    .local v2, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v2, :cond_0

    .line 4606
    invoke-interface {v2}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4606
    return v3

    .line 4611
    .end local v2    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 4608
    .restart local v2    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_0
    nop

    .line 4611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4608
    const/4 v3, 0x0

    return v3

    .line 4611
    .end local v2    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4612
    throw v2
.end method

.method isSystemReady()Z
    .locals 1

    .line 8158
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    return v0
.end method

.method isUserRestricted(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "restrictionKey"    # Ljava/lang/String;

    .line 3248
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 3249
    .local v0, "restrictions":Landroid/os/Bundle;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User is restricted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    const/4 v1, 0x1

    return v1

    .line 3253
    :cond_0
    return v1
.end method

.method killApplication(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "exitInfoReason"    # I

    .line 3187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3189
    .local v1, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v0

    .line 3190
    .local v3, "am":Landroid/app/IActivityManager;
    if-eqz v3, :cond_0

    .line 3192
    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "appId":I
    .end local p3    # "userId":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "exitInfoReason":I
    .local v4, "pkgName":Ljava/lang/String;
    .local v5, "appId":I
    .local v6, "userId":I
    .local v7, "reason":Ljava/lang/String;
    .local v8, "exitInfoReason":I
    :try_start_1
    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3194
    goto :goto_0

    .line 3197
    .end local v3    # "am":Landroid/app/IActivityManager;
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 3193
    .restart local v3    # "am":Landroid/app/IActivityManager;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3190
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "appId":I
    .end local v6    # "userId":I
    .end local v7    # "reason":Ljava/lang/String;
    .end local v8    # "exitInfoReason":I
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "appId":I
    .restart local p3    # "userId":I
    .restart local p4    # "reason":Ljava/lang/String;
    .restart local p5    # "exitInfoReason":I
    :cond_0
    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 3197
    .end local v3    # "am":Landroid/app/IActivityManager;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "appId":I
    .end local p3    # "userId":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "exitInfoReason":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "appId":I
    .restart local v6    # "userId":I
    .restart local v7    # "reason":Ljava/lang/String;
    .restart local v8    # "exitInfoReason":I
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3198
    nop

    .line 3199
    return-void

    .line 3197
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "appId":I
    .end local v6    # "userId":I
    .end local v7    # "reason":Ljava/lang/String;
    .end local v8    # "exitInfoReason":I
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "appId":I
    .restart local p3    # "userId":I
    .restart local p4    # "reason":Ljava/lang/String;
    .restart local p5    # "exitInfoReason":I
    :catchall_1
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    move-object p1, v0

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "appId":I
    .end local p3    # "userId":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "exitInfoReason":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "appId":I
    .restart local v6    # "userId":I
    .restart local v7    # "reason":Ljava/lang/String;
    .restart local v8    # "exitInfoReason":I
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3198
    throw p1
.end method

.method killApplication(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "exitInfoReason"    # I

    .line 3179
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "appId":I
    .end local p3    # "reason":Ljava/lang/String;
    .end local p4    # "exitInfoReason":I
    .local v1, "pkgName":Ljava/lang/String;
    .local v2, "appId":I
    .local v4, "reason":Ljava/lang/String;
    .local v5, "exitInfoReason":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    .line 3180
    return-void
.end method

.method killApplicationSync(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "exitInfoReason"    # I

    .line 3203
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 3204
    .local v1, "mAmi":Landroid/app/ActivityManagerInternal;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 3209
    :cond_1
    new-instance v0, Lcom/android/server/pm/KillAppBlocker;

    invoke-direct {v0}, Lcom/android/server/pm/KillAppBlocker;-><init>()V

    move-object v7, v0

    .line 3211
    .local v7, "blocker":Lcom/android/server/pm/KillAppBlocker;
    :try_start_0
    invoke-virtual {v7}, Lcom/android/server/pm/KillAppBlocker;->register()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3212
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "appId":I
    .end local p3    # "userId":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "exitInfoReason":I
    .local v2, "pkgName":Ljava/lang/String;
    .local v3, "appId":I
    .local v4, "userId":I
    .local v5, "reason":Ljava/lang/String;
    .local v6, "exitInfoReason":I
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->killApplicationSync(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3213
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "appId":I
    .end local v4    # "userId":I
    .end local v5    # "reason":Ljava/lang/String;
    .end local v6    # "exitInfoReason":I
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "appId":I
    .restart local p3    # "userId":I
    .restart local p4    # "reason":Ljava/lang/String;
    .restart local p5    # "exitInfoReason":I
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v7, v1, v0, v2, p1}, Lcom/android/server/pm/KillAppBlocker;->waitAppProcessGone(Landroid/app/ActivityManagerInternal;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3215
    invoke-virtual {v7}, Lcom/android/server/pm/KillAppBlocker;->unregister()V

    .line 3216
    goto :goto_2

    .line 3215
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "appId":I
    .end local p3    # "userId":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "exitInfoReason":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "appId":I
    .restart local v4    # "userId":I
    .restart local v5    # "reason":Ljava/lang/String;
    .restart local v6    # "exitInfoReason":I
    :catchall_1
    move-exception v0

    move-object p1, v2

    move p2, v3

    move p3, v4

    move-object p4, v5

    move p5, v6

    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "appId":I
    .end local v4    # "userId":I
    .end local v5    # "reason":Ljava/lang/String;
    .end local v6    # "exitInfoReason":I
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "appId":I
    .restart local p3    # "userId":I
    .restart local p4    # "reason":Ljava/lang/String;
    .restart local p5    # "exitInfoReason":I
    :goto_0
    invoke-virtual {v7}, Lcom/android/server/pm/KillAppBlocker;->unregister()V

    .line 3216
    throw v0

    .line 3206
    .end local v7    # "blocker":Lcom/android/server/pm/KillAppBlocker;
    :goto_1
    const-string v0, "PackageManager"

    const-string v2, "Holds PM\'s lock, unable kill application synchronized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    .line 3218
    :goto_2
    return-void
.end method

.method markPackageAsArchivedIfNeeded(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/ArchivedPackageParcel;Landroid/util/SparseArray;[I)V
    .locals 6
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "archivePackage"    # Landroid/content/pm/ArchivedPackageParcel;
    .param p4, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/content/pm/ArchivedPackageParcel;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    .line 1556
    .local p3, "responsibleInstallerTitles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_1

    :cond_0
    goto :goto_2

    .line 1564
    :cond_1
    nop

    .line 1566
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1568
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;

    .line 1569
    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p4, v2

    .line 1571
    .local v3, "userId":I
    nop

    .line 1572
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v4

    .line 1573
    invoke-virtual {v4, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1569
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1576
    :cond_2
    invoke-static {p1}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, "responsibleInstallerPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1580
    const-string v1, "PackageManager"

    const-string v2, "Can\'t create archive state: responsible installer is empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    return-void

    .line 1583
    :cond_3
    array-length v2, p4

    :goto_1
    if-ge v1, v2, :cond_5

    aget v3, p4, v1

    .line 1584
    .restart local v3    # "userId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 1586
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1584
    invoke-virtual {v4, p2, v3, v0, v5}, Lcom/android/server/pm/PackageArchiver;->createArchiveState(Landroid/content/pm/ArchivedPackageParcel;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v4

    .line 1587
    .local v4, "archiveState":Lcom/android/server/pm/pkg/ArchiveState;
    if-eqz v4, :cond_4

    .line 1588
    nop

    .line 1589
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v5

    .line 1590
    invoke-virtual {v5, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1583
    .end local v3    # "userId":I
    .end local v4    # "archiveState":Lcom/android/server/pm/pkg/ArchiveState;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1593
    :cond_5
    return-void

    .line 1560
    .end local v0    # "responsibleInstallerPackage":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method notifyComponentUsed(Lcom/android/server/pm/Computer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "recentCallingPackage"    # Ljava/lang/String;
    .param p5, "debugInfo"    # Ljava/lang/String;

    .line 4843
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4844
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 4846
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    .line 4847
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 4855
    .end local v1    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 4849
    .restart local v1    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    :try_start_1
    invoke-interface {v1, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4850
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component is quarantined+suspended but being used: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", debugInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    .end local v1    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4856
    nop

    .line 4857
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)V

    .line 4859
    return-void

    .line 4855
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3374
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3407
    return-void
.end method

.method notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V
    .locals 5
    .param p1, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 1310
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getObserver()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1312
    :try_start_0
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/InstallRequest;)Landroid/os/Bundle;

    move-result-object v0

    .line 1313
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getObserver()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1314
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnMsg()Ljava/lang/String;

    move-result-object v4

    .line 1313
    invoke-interface {v1, v2, v3, v4, v0}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    .end local v0    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method notifyInstallObserver(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "killApp"    # Z

    .line 1301
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    goto :goto_0

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    :goto_0
    nop

    .line 1304
    .local v0, "installRequest":Lcom/android/server/pm/InstallRequest;
    if-eqz v0, :cond_1

    .line 1305
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 1307
    :cond_1
    return-void
.end method

.method notifyInstantAppPackageInstalled(Ljava/lang/String;[I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newUsers"    # [I

    .line 8283
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->onPackageInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)V

    .line 8284
    return-void
.end method

.method public notifyPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3222
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyAdded(Ljava/lang/String;I)V

    .line 3226
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 3227
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1

    .line 3228
    .local v1, "info":Landroid/content/pm/InstallSourceInfo;
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3229
    .local v2, "installing":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nothing/utils/NtTrackingUtils;->getInstance(Landroid/content/Context;)Lcom/nothing/utils/NtTrackingUtils;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/nothing/utils/NtTrackingUtils;->recordAppInstall(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3232
    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v1    # "info":Landroid/content/pm/InstallSourceInfo;
    .end local v2    # "installing":Ljava/lang/String;
    goto :goto_0

    .line 3230
    :catch_0
    move-exception v0

    .line 3231
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyPackageAdded Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public notifyPackageChanged(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3238
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyChanged(Ljava/lang/String;I)V

    .line 3239
    return-void
.end method

.method public notifyPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3243
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyRemoved(Ljava/lang/String;I)V

    .line 3244
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/content/pm/UserPackage;->removeFromCache(ILjava/lang/String;)V

    .line 3245
    return-void
.end method

.method onNewUserCreated(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "convertedFromPreCreated"    # Z

    .line 4579
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->readPermissionStateForUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4580
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onUserCreated(I)V

    .line 4581
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissions(I)V

    .line 4582
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V

    .line 4583
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    .line 4585
    :cond_1
    return-void
.end method

.method public performFstrimIfNeeded()V
    .locals 1

    .line 3085
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/FreeStorageHelper;->performFstrimIfNeeded()V

    .line 3086
    return-void
.end method

.method public queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3064
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 3065
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3064
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "flags":J
    .end local p6    # "userId":I
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "resolvedType":Ljava/lang/String;
    .local v5, "flags":J
    .local v7, "userId":I
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public reconcileSdkData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;I)V
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "appId"    # I
    .param p6, "previousAppId"    # I
    .param p7, "seInfo"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8295
    .local p3, "subDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/Installer;->buildReconcileSdkDataArgs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/String;I)Landroid/os/ReconcileSdkDataArgs;

    move-result-object v8

    .line 8298
    .local v8, "args":Landroid/os/ReconcileSdkDataArgs;
    iput p6, v8, Landroid/os/ReconcileSdkDataArgs;->previousAppId:I

    .line 8299
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 8300
    .local v1, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/Installer;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8301
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v1    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 8303
    :cond_0
    :goto_0
    nop

    .line 8304
    return-void

    .line 8299
    .restart local v1    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local v8    # "args":Landroid/os/ReconcileSdkDataArgs;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "subDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "userId":I
    .end local p5    # "appId":I
    .end local p6    # "previousAppId":I
    .end local p7    # "seInfo":Ljava/lang/String;
    .end local p8    # "flags":I
    throw v2
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 8301
    .end local v1    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v8    # "args":Landroid/os/ReconcileSdkDataArgs;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "subDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "userId":I
    .restart local p5    # "appId":I
    .restart local p6    # "previousAppId":I
    .restart local p7    # "seInfo":Ljava/lang/String;
    .restart local p8    # "flags":I
    :goto_2
    nop

    .line 8302
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .locals 2

    .line 8219
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {v1}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->initialState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object v0

    return-object v0
.end method

.method removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I

    .line 3333
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v0

    .line 3334
    .local v0, "allPackages":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    .line 3336
    return-void
.end method

.method removeCodePath(Ljava/io/File;)V
    .locals 1
    .param p1, "codePath"    # Ljava/io/File;

    .line 8307
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 8308
    return-void
.end method

.method requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 16
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "includeSplits"    # Z
    .param p4, "optional"    # I
    .param p5, "required"    # I
    .param p6, "trustedInstallers"    # Ljava/util/List;
    .param p7, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .param p8, "userId"    # I
    .param p9, "executor"    # Ljava/util/concurrent/Executor;
    .param p10, "handler"    # Landroid/os/Handler;

    .line 1401
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1402
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1403
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1404
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1406
    nop

    .line 1407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1406
    const-wide/16 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v5, p8

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1408
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_4

    .line 1412
    move-object/from16 v0, p1

    move/from16 v5, p8

    invoke-interface {v0, v1, v5}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    move-result-object v3

    .line 1415
    .local v3, "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    if-eqz v3, :cond_1

    .line 1416
    invoke-virtual {v3}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1417
    .local v4, "initiatingPackageName":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1418
    move-object v6, v4

    .local v6, "installerPackageName":Ljava/lang/String;
    goto :goto_0

    .line 1420
    .end local v6    # "installerPackageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1422
    .end local v4    # "initiatingPackageName":Ljava/lang/String;
    .restart local v6    # "installerPackageName":Ljava/lang/String;
    :goto_0
    move-object v13, v6

    goto :goto_1

    .line 1423
    .end local v6    # "installerPackageName":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    move-object v13, v6

    .line 1426
    .local v13, "installerPackageName":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    .local v10, "filesToChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    new-instance v4, Ljava/io/File;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v6, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    if-eqz p3, :cond_2

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1433
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    array-length v7, v7

    .local v7, "size":I
    :goto_2
    if-ge v4, v7, :cond_2

    .line 1434
    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v8, v8, v4

    new-instance v9, Ljava/io/File;

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1439
    .end local v4    # "i":I
    .end local v7    # "size":I
    :cond_2
    if-eqz p6, :cond_3

    invoke-static/range {p6 .. p6}, Lcom/android/server/pm/PackageManagerService;->decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;

    move-result-object v6

    move-object v14, v6

    goto :goto_3

    .line 1440
    :cond_3
    move-object v14, v6

    :goto_3
    nop

    .line 1442
    .local v14, "trustedCerts":[Ljava/security/cert/Certificate;
    new-instance v7, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda64;

    move-object/from16 v8, p0

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v15, p7

    move-object/from16 v9, p10

    invoke-direct/range {v7 .. v15}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda64;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    move-object/from16 v4, p9

    invoke-interface {v4, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1451
    return-void

    .line 1409
    .end local v3    # "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    .end local v10    # "filesToChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    .end local v13    # "installerPackageName":Ljava/lang/String;
    .end local v14    # "trustedCerts":[Ljava/security/cert/Certificate;
    :cond_4
    move-object/from16 v0, p1

    move/from16 v5, p8

    move-object/from16 v4, p9

    new-instance v3, Landroid/os/ParcelableException;

    new-instance v6, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v6, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public requestFileChecksums(Ljava/io/File;Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "optional"    # I
    .param p4, "required"    # I
    .param p5, "trustedInstallers"    # Ljava/util/List;
    .param p6, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1373
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    .line 1378
    .local v9, "executor":Ljava/util/concurrent/Executor;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1379
    .local v2, "handler":Landroid/os/Handler;
    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-static {p5}, Lcom/android/server/pm/PackageManagerService;->decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;

    move-result-object v3

    move-object v7, v3

    goto :goto_0

    .line 1380
    :cond_0
    move-object v7, v0

    :goto_0
    nop

    .line 1382
    .local v7, "trustedCerts":[Ljava/security/cert/Certificate;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1383
    .local v3, "filesToChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda13;

    move-object v1, p0

    move-object v6, p2

    move v4, p3

    move v5, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1394
    return-void

    .line 1374
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "filesToChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    .end local v7    # "trustedCerts":[Ljava/security/cert/Certificate;
    .end local v9    # "executor":Ljava/util/concurrent/Executor;
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 13
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "isRequesterInstantApp"    # Z
    .param p7, "verificationBundle"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .line 3046
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/content/pm/InstantAppRequest;

    iget-object v11, p1, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    iget-object v12, p1, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3051
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3052
    return-void
.end method

.method resolveUserIds(I)[I
    .locals 2
    .param p1, "userId"    # I

    .line 3146
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    :goto_0
    return-object v0
.end method

.method restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 8357
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    .line 8358
    return-void
.end method

.method restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V
    .locals 1
    .param p1, "action"    # Lcom/android/server/pm/DeletePackageAction;
    .param p2, "allUserHandles"    # [I
    .param p3, "writeSettings"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/SystemDeleteException;
        }
    .end annotation

    .line 8344
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    .line 8346
    return-void
.end method

.method restorePermissionsAndUpdateRolesForNewUserInstall(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3653
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p1, p2}, Landroid/permission/PermissionManagerInternal;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    .line 3657
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 3658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/Settings;->getPendingDefaultBrowserLPr(I)Ljava/lang/String;

    move-result-object v1

    .line 3659
    .local v1, "defaultBrowser":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3660
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3661
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultBrowser(Ljava/lang/String;I)V

    .line 3662
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 3663
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/Settings;->removePendingDefaultBrowserLPw(I)Ljava/lang/String;

    .line 3664
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2

    .line 3669
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 3670
    return-void

    .line 3659
    .end local v1    # "defaultBrowser":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method scheduleDeferredNoKillInstallObserver(Lcom/android/server/pm/InstallRequest;)V
    .locals 5
    .param p1, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 1322
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1323
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1325
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1326
    return-void
.end method

.method scheduleDeferredNoKillPostDelete(Lcom/android/server/pm/CleanUpArgs;)V
    .locals 5
    .param p1, "args"    # Lcom/android/server/pm/CleanUpArgs;

    .line 1329
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1332
    .local v0, "message":Landroid/os/Message;
    const-wide/16 v1, 0xbb8

    .line 1333
    .local v1, "deleteDelayMillis":J
    nop

    .line 1334
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delaying the deletion of <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/CleanUpArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms or till the next reboot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1343
    return-void
.end method

.method scheduleDeferredPendingKillInstallObserver(Lcom/android/server/pm/InstallRequest;)V
    .locals 5
    .param p1, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 1352
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1356
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1357
    return-void
.end method

.method schedulePruneUnusedStaticSharedLibraries(Z)V
    .locals 4
    .param p1, "delay"    # Z

    .line 1346
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1347
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1348
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getPruneUnusedSharedLibrariesDelay()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 1347
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1349
    return-void
.end method

.method scheduleWritePackageListLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1607
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1608
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1610
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1611
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1613
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method scheduleWritePackageRestrictions(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 1621
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1622
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1623
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 1625
    .local v4, "aUserId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1624
    nop

    .end local v4    # "aUserId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1627
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1630
    return-void

    .line 1632
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1633
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1634
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1636
    :goto_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1637
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 1638
    invoke-virtual {v2, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1637
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1641
    :cond_3
    return-void

    .line 1634
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method scheduleWritePackageRestrictions(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1616
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1617
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 1618
    return-void
.end method

.method scheduleWriteSettings()V
    .locals 4

    .line 1600
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1601
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1604
    :cond_0
    return-void
.end method

.method sendPendingBroadcasts(Ljava/lang/String;I)V
    .locals 1
    .param p1, "reasonForTrace"    # Ljava/lang/String;
    .param p2, "callingUidForTrace"    # I

    .line 8320
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->sendPendingBroadcasts(Ljava/lang/String;I)V

    .line 8321
    return-void
.end method

.method public sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V
    .locals 3
    .param p1, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p2, "userId"    # I

    .line 3741
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/server/pm/BroadcastHelper;->sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V

    .line 3743
    return-void
.end method

.method setActiveLauncherPackage(Ljava/lang/String;ILjava/util/function/Consumer;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 8044
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultHome(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method setDefaultBrowser(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 8054
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultBrowser(Ljava/lang/String;I)V

    .line 8055
    return-void
.end method

.method setEnableRollbackCode(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "enableRollbackCode"    # I

    .line 3351
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3352
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3353
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 3354
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3355
    return-void
.end method

.method setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7959
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7960
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    monitor-enter v0

    .line 7961
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7962
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 7964
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 7965
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 7967
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 7968
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/PackageManagerService;->deletePackageIfUnused(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 7967
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7970
    .end local v1    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7967
    .restart local v1    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 7970
    .end local v1    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    monitor-exit v0

    .line 7971
    return-void

    .line 7970
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPackageStoppedState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)V
    .locals 18
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "userId"    # I

    .line 4756
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v9, p3

    move/from16 v4, p4

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 4757
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4758
    .local v3, "callingUid":I
    const/4 v8, 0x0

    .line 4759
    .local v8, "wasStopped":Z
    invoke-interface {v2, v3}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 4760
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    .line 4762
    .local v10, "permission":I
    if-nez v10, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move v11, v5

    .line 4763
    .local v11, "allowedByPermission":Z
    if-nez v11, :cond_3

    .line 4764
    invoke-interface {v2, v3}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 4765
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4767
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4770
    :cond_3
    :goto_1
    const/4 v6, 0x1

    const-string/jumbo v7, "stop package"

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4773
    move-object v12, v2

    move v14, v3

    move v13, v4

    .line 4774
    .end local v3    # "callingUid":I
    .local v14, "callingUid":I
    invoke-interface {v12, v0, v14, v13}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 4776
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 4777
    move-object v4, v3

    goto :goto_2

    :cond_4
    invoke-interface {v2, v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 4778
    .local v4, "packageUserState":Lcom/android/server/pm/pkg/PackageUserState;
    :goto_2
    if-eqz v2, :cond_7

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v5

    if-eq v5, v9, :cond_7

    .line 4779
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v5

    .line 4780
    .local v5, "wasNotLaunched":Z
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v8

    .line 4781
    new-instance v6, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v6, v13, v9, v5}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda20;-><init>(IZZ)V

    invoke-virtual {v1, v3, v0, v6}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 4789
    if-eqz v5, :cond_5

    .line 4790
    nop

    .line 4791
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 4792
    .local v3, "installerPackageName":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 4793
    invoke-virtual {v1, v0, v3, v13}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4797
    .end local v3    # "installerPackageName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v13}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    move v10, v8

    goto :goto_3

    .line 4759
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserState;
    .end local v5    # "wasNotLaunched":Z
    .end local v10    # "permission":I
    .end local v11    # "allowedByPermission":Z
    .end local v14    # "callingUid":I
    .local v3, "callingUid":I
    :cond_6
    move-object v12, v2

    move v14, v3

    move v13, v4

    .line 4803
    .end local v3    # "callingUid":I
    .restart local v14    # "callingUid":I
    :cond_7
    move v10, v8

    .end local v8    # "wasStopped":Z
    .local v10, "wasStopped":Z
    :goto_3
    if-nez v9, :cond_8

    .line 4804
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v3, v1, v0, v13}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4813
    nop

    nop

    if-eqz v10, :cond_8

    .line 4814
    const-string/jumbo v2, "unstoppedBroadcast"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4815
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4816
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/content/pm/PackageManagerInternal;

    .line 4817
    .local v11, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v1, v13}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v4

    .line 4818
    .local v4, "userIds":[I
    nop

    .line 4819
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v2, v0, v4}, Lcom/android/server/pm/Computer;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object v5

    .line 4820
    .local v5, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4821
    .local v3, "extras":Landroid/os/Bundle;
    const-wide/16 v6, 0x0

    invoke-virtual {v11, v0, v6, v7, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    const-string v6, "android.intent.extra.UID"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4822
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v3, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4823
    const-string v2, "android.intent.extra.TIME"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4824
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V

    move-object/from16 v17, v1

    move-object v1, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4832
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    move-object v0, v1

    const-string v1, "android.intent.action.PACKAGE_UNSTOPPED"

    move-object v6, v5

    .end local v5    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v6, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v5, 0x0

    const-wide/32 v15, 0x40000

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    .line 4835
    move-object v5, v6

    .end local v6    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v5    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 4838
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "userIds":[I
    .end local v5    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v11    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_8
    return-void
.end method

.method setPlatformPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 8111
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 8113
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 8117
    sget-object v5, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-object v7, p2

    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v7, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_1
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 8120
    iget-boolean p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    if-nez p1, :cond_0

    .line 8121
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8122
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const-class p2, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 8123
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 8124
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const-string/jumbo p2, "system:ui"

    iput-object p2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 8125
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 p2, 0x0

    iput p2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 8126
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x3

    iput v0, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 8127
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const v0, 0x11220

    iput v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 8131
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const v0, 0x1030226

    iput v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 8132
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 8133
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v0, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 8134
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x2

    iput v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 8135
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/16 v0, 0xdb0

    iput v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 8141
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 8142
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput p2, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 8143
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput p2, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 8144
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput p2, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 8145
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 8149
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 8148
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 8149
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 8150
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    .line 8151
    return-void

    .line 8149
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v7    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :catchall_1
    move-exception v0

    move-object v2, p1

    move-object v7, p2

    move-object p1, v0

    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v7    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1
.end method

.method setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .line 4644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4645
    .local v0, "callingUid":I
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->isSystemOrPhone(I)Z

    move-result v1

    .line 4646
    .local v1, "calledFromSystemOrPhone":Z
    if-nez v1, :cond_0

    .line 4647
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.SUSPEND_APPS"

    const-string/jumbo v4, "setSystemAppHiddenUntilInstalled"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4651
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 4652
    .local v2, "stateRead":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    goto :goto_1

    .line 4655
    :cond_2
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    goto :goto_0

    .line 4656
    :cond_4
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only system or phone callers can modify core apps"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4659
    :goto_0
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda65;

    invoke-direct {v3, p2, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda65;-><init>(Ljava/lang/String;Z)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 4665
    return-void

    .line 4653
    :goto_1
    return-void
.end method

.method setSystemAppInstallState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)Z
    .locals 14
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "installed"    # Z
    .param p4, "userId"    # I

    .line 4669
    move/from16 v1, p3

    move/from16 v4, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 4670
    .local v9, "callingUid":I
    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->isSystemOrPhone(I)Z

    move-result v10

    .line 4671
    .local v10, "calledFromSystemOrPhone":Z
    if-nez v10, :cond_0

    .line 4672
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SUSPEND_APPS"

    const-string/jumbo v3, "setSystemAppHiddenUntilInstalled"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4676
    :cond_0
    invoke-interface/range {p1 .. p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 4678
    .local v11, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v0, 0x0

    if-eqz v11, :cond_6

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v5, p2

    goto :goto_2

    .line 4681
    :cond_1
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v10, :cond_3

    :cond_2
    goto :goto_0

    .line 4682
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Only system or phone callers can modify core apps"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4685
    :goto_0
    invoke-interface {v11, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-ne v2, v1, :cond_4

    .line 4686
    return v0

    .line 4689
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4691
    .local v12, "callingId":J
    const/4 v0, 0x1

    if-eqz v1, :cond_5

    .line 4693
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v5, 0x400000

    const/4 v6, 0x3

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4700
    nop

    .line 4711
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4700
    return v0

    .line 4711
    :catchall_0
    move-exception v0

    move-object/from16 v5, p2

    goto :goto_1

    .line 4704
    :cond_5
    :try_start_1
    new-instance v2, Landroid/content/pm/VersionedPackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x1

    move-object/from16 v5, p2

    :try_start_2
    invoke-direct {v2, v5, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 4706
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v3

    .line 4704
    const/4 v6, 0x4

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4709
    nop

    .line 4711
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4709
    return v0

    .line 4711
    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4712
    throw v0

    .line 4678
    .end local v12    # "callingId":J
    :cond_6
    move-object/from16 v5, p2

    .line 4679
    :goto_2
    return v0
.end method

.method setUpCustomResolverActivity(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 8078
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 8079
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 8083
    sget-object v5, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-object v7, p2

    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v7, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_1
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 8087
    .local p1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8088
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 8089
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 8090
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 8091
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 8092
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const v4, 0x10320

    iput v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 8096
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput v3, p2, Landroid/content/pm/ActivityInfo;->theme:I

    .line 8097
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v0, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 8098
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v0, p2, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 8099
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 8100
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v3, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 8101
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v3, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 8102
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v3, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 8103
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 8104
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 8105
    const-string p2, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replacing default ResolverActivity with custom activity: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8107
    nop

    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 8108
    return-void

    .line 8107
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v7    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local p1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :catchall_1
    move-exception v0

    move-object v2, p1

    move-object v7, p2

    move-object p1, v0

    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v7    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1
.end method

.method shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7974
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    monitor-enter v0

    .line 7975
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 7976
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown()V
    .locals 3

    .line 3126
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v0}, Lcom/android/server/pm/CompilerStats;->writeNow()V

    .line 3127
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DexManager;->writePackageDexUsageNow()V

    .line 3128
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeNow()V

    .line 3129
    nop

    .line 3133
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 3134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AbstractStatsBase;->writeNow(Ljava/lang/Object;)V

    .line 3136
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 3137
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 3138
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3141
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3139
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->writeSettings(Z)V

    .line 3141
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3142
    return-void

    .line 3141
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method public snapshotComputer()Lcom/android/server/pm/Computer;
    .locals 1

    .line 1186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object v0

    return-object v0
.end method

.method public snapshotComputer(Z)Lcom/android/server/pm/Computer;
    .locals 9
    .param p1, "allowLiveComputer"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1201
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    .line 1202
    .local v0, "isHoldingPackageLock":Z
    if-eqz p1, :cond_0

    .line 1203
    if-eqz v0, :cond_0

    .line 1206
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    return-object v1

    .line 1210
    :cond_0
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Computer;

    .line 1211
    .local v1, "oldSnapshot":Lcom/android/server/pm/Computer;
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1213
    .local v2, "pendingVersion":I
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 1214
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object v3

    return-object v3

    .line 1217
    :cond_1
    if-eqz v0, :cond_2

    .line 1221
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 1222
    .local v3, "newSnapshot":Lcom/android/server/pm/Computer;
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1223
    invoke-interface {v3}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object v4

    return-object v4

    .line 1226
    .end local v3    # "newSnapshot":Lcom/android/server/pm/Computer;
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1228
    :try_start_0
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/Computer;

    .line 1229
    .local v4, "rebuildSnapshot":Lcom/android/server/pm/Computer;
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    .line 1235
    .local v5, "rebuildVersion":I
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 1236
    invoke-interface {v4}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object v6

    monitor-exit v3

    return-object v6

    .line 1254
    .end local v4    # "rebuildSnapshot":Lcom/android/server/pm/Computer;
    .end local v5    # "rebuildVersion":I
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1239
    .restart local v4    # "rebuildSnapshot":Lcom/android/server/pm/Computer;
    .restart local v5    # "rebuildVersion":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    :try_start_1
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/Computer;

    move-object v4, v7

    .line 1244
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move v5, v7

    .line 1245
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 1246
    invoke-interface {v4}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v7

    .line 1253
    :catchall_1
    move-exception v7

    goto :goto_0

    .line 1250
    :cond_4
    :try_start_3
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/PackageManagerService;->rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 1251
    .local v7, "newSnapshot":Lcom/android/server/pm/Computer;
    sget-object v8, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1252
    invoke-interface {v7}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object v8

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v8

    .line 1253
    .end local v7    # "newSnapshot":Lcom/android/server/pm/Computer;
    :goto_0
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .end local v0    # "isHoldingPackageLock":Z
    .end local v1    # "oldSnapshot":Lcom/android/server/pm/Computer;
    .end local v2    # "pendingVersion":I
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "allowLiveComputer":Z
    throw v7

    .line 1254
    .end local v4    # "rebuildSnapshot":Lcom/android/server/pm/Computer;
    .end local v5    # "rebuildVersion":I
    .restart local v0    # "isHoldingPackageLock":Z
    .restart local v1    # "oldSnapshot":Lcom/android/server/pm/Computer;
    .restart local v2    # "pendingVersion":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "allowLiveComputer":Z
    :goto_1
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4
.end method

.method public systemReady()V
    .locals 15

    .line 4312
    const-string v0, "Only the system can claim the system is ready"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 4315
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4316
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4317
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4318
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 4319
    .local v4, "dstCodePath":Ljava/io/File;
    invoke-static {v0, v4}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 4317
    .end local v4    # "dstCodePath":Ljava/io/File;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 4321
    .end local v1    # "i":I
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 4323
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    .line 4324
    new-instance v1, Lcom/android/server/pm/PackageManagerService$4;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v4, v0}, Lcom/android/server/pm/PackageManagerService$4;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 4337
    .local v1, "co":Landroid/database/ContentObserver;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_ephemeral_feature"

    .line 4338
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 4337
    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4340
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "instant_apps_enabled"

    .line 4341
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 4340
    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4342
    invoke-virtual {v1, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4344
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/AppsFilterImpl;->onSystemReady(Landroid/content/pm/PackageManagerInternal;)V

    .line 4348
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4349
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4348
    invoke-static {v4, v6, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;ILandroid/content/Context;)V

    .line 4352
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4353
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "compatibility_mode"

    .line 4352
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v6

    .line 4355
    .local v4, "compatibilityModeEnabled":Z
    :goto_1
    invoke-static {v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setCompatibilityModeEnabled(Z)V

    .line 4361
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 4362
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/Settings;->systemReady(Lcom/android/server/pm/resolution/ComponentResolver;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4363
    .local v7, "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 4364
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4363
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4366
    .end local v7    # "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    :catchall_0
    move-exception v2

    goto/16 :goto_5

    .line 4363
    .restart local v7    # "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "i":I
    :cond_3
    nop

    .line 4366
    .end local v7    # "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4368
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->systemReady()V

    .line 4371
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 4372
    .local v5, "storage":Landroid/os/storage/StorageManager;
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 4374
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerService;->systemReady()V

    .line 4375
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageDexOptimizer;->systemReady()V

    .line 4378
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    sget-object v8, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 4379
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/pm/StorageEventHelper;->reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 4381
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onSystemReady()V

    .line 4383
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 4384
    .local v7, "grantPermissionsUserIds":[I
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v8

    invoke-virtual {v8, v3, v3, v6}, Lcom/android/server/pm/UserManagerInternal;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v8

    .line 4388
    .local v8, "livingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 4389
    .local v9, "livingUserCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v9, :cond_5

    .line 4390
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    .line 4391
    .local v11, "userId":I
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4392
    invoke-interface {v12, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 4391
    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v3

    .line 4394
    .local v12, "isPermissionUpgradeNeeded":Z
    if-eqz v12, :cond_4

    .line 4395
    invoke-static {v7, v11}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    .line 4389
    .end local v11    # "userId":I
    .end local v12    # "isPermissionUpgradeNeeded":Z
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    nop

    .line 4400
    .end local v10    # "i":I
    array-length v10, v7

    move v11, v6

    :goto_4
    if-ge v11, v10, :cond_6

    aget v12, v7, v11

    .line 4401
    .local v12, "userId":I
    iget-object v13, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v13, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissions(I)V

    .line 4402
    iget-object v13, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v14, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v13, v14, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V

    .line 4400
    .end local v12    # "userId":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 4404
    :cond_6
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    if-ne v7, v10, :cond_7

    .line 4408
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->scheduleReadDefaultPermissionExceptions()V

    .line 4411
    :cond_7
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    if-eqz v10, :cond_8

    .line 4412
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/pm/PackageManagerService$5;

    invoke-direct {v11, p0}, Lcom/android/server/pm/PackageManagerService$5;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4421
    :cond_8
    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4422
    .local v10, "overlayFilter":Landroid/content/IntentFilter;
    const-string/jumbo v11, "package"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4423
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/android/server/pm/PackageManagerService$6;

    invoke-direct {v12, p0}, Lcom/android/server/pm/PackageManagerService$6;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v11, v12, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4455
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {v11}, Lcom/android/server/pm/ModuleInfoProvider;->systemReady()V

    .line 4457
    new-instance v11, Landroid/util/BoostFramework;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v3}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;Z)V

    .line 4463
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageInstallerService;->restoreAndApplyStagedSessionIfNeeded()V

    .line 4465
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 4468
    const-string/jumbo v2, "package_manager_service"

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4469
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v11

    new-instance v12, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v12, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 4468
    invoke-static {v2, v11, v12}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 4479
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 4481
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v2

    .line 4482
    .local v2, "dexUseManager":Lcom/android/server/art/DexUseManagerLocal;
    if-eqz v2, :cond_9

    .line 4483
    invoke-virtual {v2}, Lcom/android/server/art/DexUseManagerLocal;->systemReady()V

    .line 4488
    :cond_9
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v6, :cond_a

    .line 4489
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v11, "nt_is_upgrade"

    invoke-static {v6, v11, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4496
    :cond_a
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_PM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/INtPackageManagerService;

    invoke-interface {v3}, Lcom/android/server/pm/INtPackageManagerService;->systemReady()V

    .line 4498
    return-void

    .line 4366
    .end local v2    # "dexUseManager":Lcom/android/server/art/DexUseManagerLocal;
    .end local v5    # "storage":Landroid/os/storage/StorageManager;
    .end local v7    # "grantPermissionsUserIds":[I
    .end local v8    # "livingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "livingUserCount":I
    .end local v10    # "overlayFilter":Landroid/content/IntentFilter;
    :goto_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)V
    .locals 3
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "suspendingPackage"    # Ljava/lang/String;
    .param p3, "suspendingUserId"    # I
    .param p4, "targetUserId"    # I

    .line 3318
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3319
    .local v0, "allPackages":[Ljava/lang/String;
    nop

    .line 3320
    invoke-static {p3, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;-><init>(Landroid/content/pm/UserPackage;)V

    .line 3321
    .local v2, "suspenderPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/UserPackage;>;"
    nop

    .line 3322
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    invoke-virtual {v1, p1, v0, v2, p4}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 3330
    return-void
.end method

.method public updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 17
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;
    .param p4, "userId"    # I

    .line 3876
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    if-eqz v1, :cond_b

    .line 3880
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3881
    .local v5, "callingUid":I
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3883
    .local v6, "componentPkgName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 3885
    .local v7, "computer":Lcom/android/server/pm/Computer;
    const-wide/16 v8, 0x0

    invoke-interface {v7, v6, v8, v9, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    .line 3886
    .local v8, "componentUid":I
    invoke-static {v5, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    const-string v10, "The calling UID ("

    if-eqz v9, :cond_a

    .line 3891
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 3892
    const v11, 0x10402a9

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3893
    .local v9, "allowedCallerPkg":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 3898
    const-wide/32 v11, 0x100000

    invoke-interface {v7, v9, v11, v12, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v11

    .line 3900
    .local v11, "allowedCallerUid":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    invoke-static {v5, v11}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3904
    invoke-interface {v7, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 3905
    .local v10, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_7

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 3906
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v12

    if-nez v12, :cond_1

    .line 3907
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v7

    goto/16 :goto_3

    .line 3912
    :cond_1
    :goto_0
    invoke-interface {v7}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v12

    invoke-interface {v12, v1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->componentExists(Landroid/content/ComponentName;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3916
    invoke-interface {v10, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    .line 3917
    invoke-interface {v12, v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;

    move-result-object v12

    .line 3919
    .local v12, "overrideLabelIcon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    if-nez v12, :cond_2

    move-object v14, v13

    goto :goto_1

    :cond_2
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 3920
    .local v14, "existingLabel":Ljava/lang/String;
    :goto_1
    if-nez v12, :cond_3

    move-object v15, v13

    goto :goto_2

    :cond_3
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    .line 3922
    .local v15, "existingIcon":Ljava/lang/Integer;
    :goto_2
    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 3923
    invoke-static {v15, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 3925
    return-void

    .line 3928
    :cond_4
    move-object/from16 v16, v7

    .end local v7    # "computer":Lcom/android/server/pm/Computer;
    .local v16, "computer":Lcom/android/server/pm/Computer;
    new-instance v7, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v7, v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v13, v6, v7}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 3932
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v4, v6, v13}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponent(ILjava/lang/String;Ljava/lang/String;)V

    .line 3934
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3935
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 3936
    const/4 v0, 0x0

    const-string v2, "component_label_icon_changed"

    const/4 v3, 0x1

    invoke-virtual {v13, v3, v5, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3935
    const-wide/16 v2, 0x3e8

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3939
    :cond_5
    return-void

    .line 3913
    .end local v12    # "overrideLabelIcon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "existingLabel":Ljava/lang/String;
    .end local v15    # "existingIcon":Ljava/lang/Integer;
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v7    # "computer":Lcom/android/server/pm/Computer;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3905
    :cond_7
    move-object/from16 v16, v7

    .line 3908
    .end local v7    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    :goto_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing the label is not allowed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3900
    .end local v10    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v7    # "computer":Lcom/android/server/pm/Computer;
    :cond_8
    move-object/from16 v16, v7

    .line 3901
    .end local v7    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is not allowed to change a component\'s label or icon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3894
    .end local v11    # "allowedCallerUid":I
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v7    # "computer":Lcom/android/server/pm/Computer;
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "There is no package defined as allowed to change a component\'s label or icon"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3887
    .end local v9    # "allowedCallerPkg":Ljava/lang/String;
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") does not match the target UID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3877
    .end local v5    # "callingUid":I
    .end local v6    # "componentPkgName":Ljava/lang/String;
    .end local v7    # "computer":Lcom/android/server/pm/Computer;
    .end local v8    # "componentUid":I
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a component"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateInstantAppInstallerLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "modifiedPackage"    # Ljava/lang/String;

    .line 2623
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 2624
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2625
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2626
    return-void

    .line 2628
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->getInstantAppInstallerLPr()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService;->setUpInstantAppInstallerActivityLP(Landroid/content/pm/ActivityInfo;)V

    .line 2629
    return-void
.end method

.method public updateMetricsIfNeeded()V
    .locals 3

    .line 3093
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 3094
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_0

    .line 3095
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 3096
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 3097
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3100
    .end local v1    # "display":Landroid/view/Display;
    :cond_0
    return-void
.end method

.method public updatePackagesIfNeeded()V
    .locals 1

    .line 3089
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/DexOptHelper;->performPackageDexOptUpgradeIfNeeded()V

    .line 3090
    return-void
.end method

.method updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V
    .locals 2
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userList"    # [I

    .line 3015
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/ChangedPackagesTracker;->updateSequenceNumber(Ljava/lang/String;[I)V

    .line 3016
    return-void
.end method

.method public verifyHoldLockToken(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 7823
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2

    .line 7827
    if-eqz p1, :cond_1

    .line 7831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "holdLock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 7834
    return-void

    .line 7832
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid holdLock() token"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7828
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "null holdLockToken"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7824
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "holdLock requires a debuggable build"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;
    .locals 1
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "requiredInstalledVersionCode"    # J
    .param p4, "installFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfoLite;",
            "JI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8363
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public waitForAppDataPrepared()V
    .locals 2

    .line 4298
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 4299
    return-void

    .line 4301
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    const-string/jumbo v1, "wait for prepareAppData"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 4302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    .line 4306
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_PM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/INtPackageManagerService;

    .line 4307
    invoke-interface {v0}, Lcom/android/server/pm/INtPackageManagerService;->disableNssiSpecificApps()V

    .line 4309
    return-void
.end method

.method writePackageList(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1670
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1671
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1672
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 1673
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1674
    return-void

    .line 1673
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method writePendingRestrictions()V
    .locals 4

    .line 1645
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1646
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1647
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1649
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1654
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1653
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 1651
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda67;

    invoke-direct {v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda67;-><init>()V

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 1652
    .local v2, "dirtyUsers":[Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1653
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1654
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1655
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictions([Ljava/lang/Integer;)V

    .line 1656
    return-void

    .line 1653
    .end local v2    # "dirtyUsers":[Ljava/lang/Integer;
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    :try_start_6
    throw v2

    .line 1654
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method writeSettings(Z)V
    .locals 3
    .param p1, "sync"    # Z

    .line 1659
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1660
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1661
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1662
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 1663
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1664
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1665
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1666
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1667
    return-void

    .line 1666
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1665
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "sync":Z
    :try_start_4
    throw v2

    .line 1666
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "sync":Z
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method writeSettingsLPrTEMP()V
    .locals 1

    .line 7818
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 7819
    return-void
.end method

.method writeSettingsLPrTEMP(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .line 7811
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    .line 7812
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 7813
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;Z)V

    .line 7814
    return-void
.end method
