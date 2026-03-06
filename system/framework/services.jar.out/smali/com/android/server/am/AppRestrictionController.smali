.class public final Lcom/android/server/am/AppRestrictionController;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRestrictionController$Injector;,
        Lcom/android/server/am/AppRestrictionController$RestrictionSettings;,
        Lcom/android/server/am/AppRestrictionController$TrackerInfo;,
        Lcom/android/server/am/AppRestrictionController$BgHandler;,
        Lcom/android/server/am/AppRestrictionController$ConstantsObserver;,
        Lcom/android/server/am/AppRestrictionController$NotificationHelper;,
        Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;,
        Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;,
        Lcom/android/server/am/AppRestrictionController$TrackerType;
    }
.end annotation


# static fields
.field private static final APP_RESTRICTION_SETTINGS_DIRNAME:Ljava/lang/String; = "apprestriction"

.field private static final APP_RESTRICTION_SETTINGS_FILENAME:Ljava/lang/String; = "settings.xml"

.field private static final ATTR_CUR_LEVEL:Ljava/lang/String; = "curlevel"

.field private static final ATTR_LEVEL_TS:Ljava/lang/String; = "levelts"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_REASON:Ljava/lang/String; = "reason"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field static final DEBUG_BG_RESTRICTION_CONTROLLER:Z = false

.field static final DEVICE_CONFIG_SUBNAMESPACE_PREFIX:Ljava/lang/String; = "bg_"

.field private static final ENABLE_SHOW_FGS_MANAGER_ACTION_ON_BG_RESTRICTION:Z = false

.field private static final ENABLE_SHOW_FOREGROUND_SERVICE_MANAGER:Z = true

.field private static final ROLES_IN_INTEREST:[Ljava/lang/String;

.field static final STOCK_PM_FLAGS:I = 0xc8000

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"

.field static final TRACKER_TYPE_BATTERY:I = 0x1

.field static final TRACKER_TYPE_BATTERY_EXEMPTION:I = 0x2

.field static final TRACKER_TYPE_BIND_SERVICE_EVENTS:I = 0x7

.field static final TRACKER_TYPE_BROADCAST_EVENTS:I = 0x6

.field static final TRACKER_TYPE_FGS:I = 0x3

.field static final TRACKER_TYPE_MEDIA_SESSION:I = 0x4

.field static final TRACKER_TYPE_PERMISSION:I = 0x5

.field static final TRACKER_TYPE_UNKNOWN:I


# instance fields
.field private final mActiveUids:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

.field private final mAppStateTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BaseAppStateTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

.field private final mBgExecutor:Landroid/os/HandlerExecutor;

.field private final mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

.field private final mBgHandlerThread:Landroid/os/HandlerThread;

.field mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBootReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCarrierPrivilegedApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCarrierPrivilegedLock:Ljava/lang/Object;

.field private volatile mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleAllowlist:[I

.field private mDeviceIdleExceptIdleAllowlist:[I

.field private final mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

.field private final mExecutor:Landroid/os/HandlerExecutor;

.field private final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

.field private final mLock:Ljava/lang/Object;

.field private volatile mLockedBootCompleted:Z

.field private final mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

.field private final mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;",
            ">;"
        }
    .end annotation
.end field

.field final mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

.field private final mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field private final mSettingsLock:Ljava/lang/Object;

.field private final mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemModulesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidRolesMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$C90gSwy4qIsl8Y3wdIptCUOaeAE(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/AppRestrictionController;->lambda$applyRestrictionLevel$1(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EB-EiOMlR4mEiHsXx47zeZChYJY(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$3(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FtkCfwU6MEYv3FLycKPhyJHp3fA(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IBHoNjdS0p0ljscWEhgRfJKdC1k(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$5(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WVvwlryYxT2AxDDMgtbHDqF9YZo(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$4(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ydL4E-eseJqSvYCC9_LF-yu1d4(ILjava/lang/String;ILandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAppRestrictionLevelChanges$2(ILjava/lang/String;ILandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cCOwIzhwVMmMXJ70sQK3rFQtGL0(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->lambda$onSystemReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$dQlSmja9BFi8lzUkFPpqj6AfbgU(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->lambda$handleUidActive$8(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eI8UzIOTzZzh0kKu72jmLf9aSvE(ZLandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$7(ZLandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oY7vGD6ZBYgVNvNPzUZAGcXnf7g(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/AppRestrictionController;->lambda$handleUidActive$9(ILcom/android/server/usage/AppStandbyInternal;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjNA8_CL3X8l1i-hIsSd-D4C2js(Lcom/android/server/am/AppRestrictionController;Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$6(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierPrivilegedApps(Lcom/android/server/am/AppRestrictionController;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierPrivilegedLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmptyTrackerInfo(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationHelper(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$NotificationHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdispatchAppRestrictionLevelChanges(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->dispatchAppRestrictionLevelChanges(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/am/AppRestrictionController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->dispatchAutoRestrictedBucketFeatureFlagChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAppStandbyBucketChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->handleAppStandbyBucketChanged(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBackgroundRestrictionChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->handleBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLockedBootCompleted(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->onLockedBootCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPropertiesChanged(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onPropertiesChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUidAdded(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUidAdded(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUidRemoved(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUidRemoved(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserAdded(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserAdded(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserInteractionStarted(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onUserInteractionStarted(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserRemoved(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserStarted(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserStarted(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserStopped(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterCarrierPrivilegesCallbacks(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->registerCarrierPrivilegesCallbacks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterCarrierPrivilegesCallbacks(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->unregisterCarrierPrivilegesCallbacks()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 239
    const-string v0, "android.app.role.DIALER"

    const-string v1, "android.app.role.EMERGENCY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 1495
    new-instance v0, Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/AppRestrictionController;-><init>(Lcom/android/server/am/AppRestrictionController$Injector;Lcom/android/server/am/ActivityManagerService;)V

    .line 1496
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppRestrictionController$Injector;Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "injector"    # Lcom/android/server/am/AppRestrictionController$Injector;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 257
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 264
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    .line 273
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    .line 278
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 285
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    .line 292
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 294
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    .line 295
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 299
    new-instance v1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 305
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    .line 324
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    .line 330
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    .line 343
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 347
    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    .line 370
    new-instance v0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 372
    new-instance v0, Lcom/android/server/am/AppRestrictionController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$1;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v0, Lcom/android/server/am/AppRestrictionController$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$2;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1433
    new-instance v0, Lcom/android/server/am/AppRestrictionController$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$3;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    .line 1443
    new-instance v0, Lcom/android/server/am/AppRestrictionController$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$4;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 1459
    new-instance v0, Lcom/android/server/am/AppRestrictionController$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$5;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    .line 1499
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 1500
    invoke-virtual {p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 1501
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1502
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bgres-controller"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 1503
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1504
    new-instance v0, Lcom/android/server/am/AppRestrictionController$BgHandler;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppRestrictionController$BgHandler;-><init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 1505
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    .line 1506
    new-instance v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;-><init>(Lcom/android/server/am/AppRestrictionController;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 1507
    new-instance v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 1508
    invoke-virtual {p1, p0}, Lcom/android/server/am/AppRestrictionController$Injector;->initAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)V

    .line 1509
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getDefaultHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    .line 1510
    return-void
.end method

.method private calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "standbyBucket"    # I
    .param p5, "allowRequestBgRestricted"    # Z
    .param p6, "calcTrackers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "IZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/AppRestrictionController$TrackerInfo;",
            ">;"
        }
    .end annotation

    .line 1730
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppHibernationInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1734
    :cond_0
    const/4 v0, 0x0

    .line 1735
    .local v0, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    .line 1740
    :sswitch_0
    nop

    .line 1750
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object v1

    .line 1751
    invoke-interface {v1, p2, p3}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result v1

    const/16 v2, 0x32

    if-eqz v1, :cond_1

    .line 1752
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 1754
    :cond_1
    const/16 v1, 0x2d

    if-ne p4, v1, :cond_2

    .line 1755
    const/16 v1, 0x28

    goto :goto_1

    .line 1756
    :cond_2
    const/16 v1, 0x1e

    :goto_1
    nop

    .line 1757
    .local v1, "level":I
    if-eqz p6, :cond_6

    .line 1758
    const/16 v3, 0x64

    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object v3

    .line 1760
    .local v3, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1761
    .local v4, "l":I
    const/16 v5, 0x14

    if-ne v4, v5, :cond_3

    .line 1762
    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v2, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1764
    :cond_3
    if-le v4, v1, :cond_4

    .line 1765
    move v1, v4

    .line 1766
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 1768
    :cond_4
    if-ne v1, v2, :cond_6

    .line 1770
    if-eqz p5, :cond_5

    .line 1771
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1772
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1775
    :cond_5
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object v2

    .line 1777
    .end local v3    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .local v2, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1778
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    goto :goto_2

    .line 1737
    .end local v1    # "level":I
    .end local v2    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .end local v4    # "l":I
    :sswitch_1
    const/16 v1, 0x14

    .line 1738
    .restart local v1    # "level":I
    nop

    .line 1783
    :cond_6
    :goto_2
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method private calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "maxLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/AppRestrictionController$TrackerInfo;",
            ">;"
        }
    .end annotation

    .line 1798
    const/4 v0, 0x0

    .line 1799
    .local v0, "level":I
    move v1, v0

    .line 1800
    .local v1, "prevLevel":I
    const/4 v2, 0x0

    .line 1801
    .local v2, "resultTracker":Lcom/android/server/am/BaseAppStateTracker;
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1802
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v4}, Lcom/android/server/am/BaseAppStateTracker;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v4

    .line 1803
    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/am/BaseAppStatePolicy;->getProposedRestrictionLevel(Ljava/lang/String;II)I

    move-result v4

    .line 1804
    .local v4, "l":I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1805
    if-eq v0, v1, :cond_0

    .line 1806
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 1807
    move v1, v0

    .line 1801
    .end local v4    # "l":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1810
    .end local v3    # "i":I
    if-nez v2, :cond_2

    .line 1811
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    goto :goto_1

    .line 1812
    :cond_2
    new-instance v3, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->getType()I

    move-result v4

    .line 1813
    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>(Lcom/android/server/am/AppRestrictionController;I[B)V

    :goto_1
    nop

    .line 1814
    .local v3, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    new-instance v4, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private dispatchAppRestrictionLevelChanges(ILjava/lang/String;I)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "newLevel"    # I

    .line 2300
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 2302
    return-void
.end method

.method private dispatchAutoRestrictedBucketFeatureFlagChanged(Z)V
    .locals 5
    .param p1, "newValue"    # Z

    .line 2305
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    .line 2306
    .local v0, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2307
    .local v1, "pendingTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2308
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v4, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v1, p1, v0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppRestrictionController;Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachUidLocked(Ljava/util/function/Consumer;)V

    .line 2322
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2324
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 2323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2326
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v3, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 2328
    return-void

    .line 2322
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getExemptionReasonStatsd(II)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "level"    # I

    .line 2091
    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    .line 2092
    const/4 v0, 0x1

    return v0

    .line 2095
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v0

    .line 2096
    .local v0, "reasonCode":I
    invoke-static {v0}, Landroid/os/PowerExemptionManager;->getExemptionReasonForStatsd(I)I

    move-result v1

    return v1
.end method

.method private getOptimizationLevelStatsd(I)I
    .locals 1
    .param p1, "level"    # I

    .line 2100
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 2110
    return v0

    .line 2108
    :sswitch_0
    const/4 v0, 0x2

    return v0

    .line 2106
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 2104
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 2102
    :sswitch_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0xa -> :sswitch_2
        0x1e -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method private getRestrictionChangeReasonStatsd(ILjava/lang/String;)I
    .locals 1
    .param p1, "reason"    # I
    .param p2, "subReason"    # Ljava/lang/String;

    .line 2432
    packed-switch p1, :pswitch_data_0

    .line 2446
    const/16 v0, 0x8

    goto :goto_0

    .line 2444
    :pswitch_0
    const/4 v0, 0x7

    goto :goto_0

    .line 2442
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 2440
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 2438
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2436
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 2434
    :pswitch_5
    const/4 v0, 0x1

    .line 2432
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRestrictionLevelStatsd(I)I
    .locals 1
    .param p1, "level"    # I

    .line 2038
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 2054
    return v0

    .line 2052
    :sswitch_0
    const/4 v0, 0x6

    return v0

    .line 2050
    :sswitch_1
    const/4 v0, 0x5

    return v0

    .line 2048
    :sswitch_2
    const/4 v0, 0x4

    return v0

    .line 2046
    :sswitch_3
    const/4 v0, 0x3

    return v0

    .line 2044
    :sswitch_4
    const/4 v0, 0x2

    return v0

    .line 2042
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 2040
    :sswitch_6
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0xa -> :sswitch_5
        0x14 -> :sswitch_4
        0x1e -> :sswitch_3
        0x28 -> :sswitch_2
        0x32 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method private getRestrictionTypeStatsd(I)I
    .locals 1
    .param p1, "level"    # I

    .line 2409
    sparse-switch p1, :sswitch_data_0

    .line 2427
    const/16 v0, 0x8

    goto :goto_0

    .line 2425
    :sswitch_0
    const/4 v0, 0x7

    goto :goto_0

    .line 2423
    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 2421
    :sswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2419
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 2417
    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 2415
    :sswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 2413
    :sswitch_6
    const/4 v0, 0x1

    goto :goto_0

    .line 2411
    :sswitch_7
    const/4 v0, 0x0

    .line 2409
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0xa -> :sswitch_6
        0x14 -> :sswitch_5
        0x1e -> :sswitch_4
        0x28 -> :sswitch_3
        0x32 -> :sswitch_2
        0x3c -> :sswitch_1
        0x46 -> :sswitch_0
    .end sparse-switch
.end method

.method private getTargetSdkStatsd(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2116
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2117
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2118
    return v1

    .line 2121
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2122
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_2

    :cond_1
    goto :goto_0

    .line 2125
    :cond_2
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2126
    .local v3, "targetSdk":I
    const/16 v4, 0x1f

    if-ge v3, v4, :cond_3

    .line 2127
    const/4 v1, 0x1

    return v1

    .line 2128
    :cond_3
    const/16 v4, 0x21

    if-ge v3, v4, :cond_4

    .line 2129
    const/4 v1, 0x2

    return v1

    .line 2130
    :cond_4
    if-ne v3, v4, :cond_5

    .line 2131
    const/4 v1, 0x3

    return v1

    .line 2133
    :cond_5
    return v1

    .line 2135
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "targetSdk":I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2123
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_0
    return v1

    .line 2135
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_1
    nop

    .line 2137
    return v1
.end method

.method private getThresholdStatsd(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 2059
    sparse-switch p1, :sswitch_data_0

    .line 2065
    const/4 v0, 0x0

    return v0

    .line 2061
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 2063
    :sswitch_1
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_1
        0x600 -> :sswitch_0
    .end sparse-switch
.end method

.method private getTrackerTypeStatsd(I)I
    .locals 1
    .param p1, "type"    # I

    .line 2070
    packed-switch p1, :pswitch_data_0

    .line 2086
    const/4 v0, 0x0

    return v0

    .line 2084
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 2082
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 2080
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 2078
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 2076
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 2074
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 2072
    :pswitch_6
    const/4 v0, 0x1

    return v0

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

.method private handleAppStandbyBucketChanged(ILjava/lang/String;I)V
    .locals 12
    .param p1, "bucket"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2333
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    if-nez v0, :cond_0

    return-void

    .line 2335
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0xc8000

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    .line 2337
    .local v5, "uid":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v7, p1

    move-object v6, p2

    move v4, p3

    .end local p1    # "bucket":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .local v4, "userId":I
    .local v6, "packageName":Ljava/lang/String;
    .local v7, "bucket":I
    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object p1

    .line 2339
    move p2, v4

    move-object v4, v6

    .end local v6    # "packageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    .local p1, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .local p2, "userId":I
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object p3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/16 v10, 0x100

    const/4 v11, 0x0

    move v8, v7

    move-object v7, p3

    .end local v7    # "bucket":I
    .local v8, "bucket":I
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 2341
    move v7, v8

    .end local v8    # "bucket":I
    .restart local v7    # "bucket":I
    return-void
.end method

.method private handleBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 2264
    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v9, p3

    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 2265
    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTracker;

    .line 2266
    invoke-virtual {v5, v2, v1, v9}, Lcom/android/server/am/BaseAppStateTracker;->onBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    .line 2264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2269
    .end local v3    # "i":I
    .end local v4    # "size":I
    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v3

    .line 2270
    .local v3, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2271
    .local v5, "userId":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2272
    .local v6, "now":J
    const/4 v8, 0x0

    move-object v4, v1

    invoke-interface/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v1

    .line 2273
    move-object v10, v3

    move v11, v5

    move-wide v12, v6

    .end local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v5    # "userId":I
    .end local v6    # "now":J
    .local v1, "curBucket":I
    .local v10, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v11, "userId":I
    .local v12, "now":J
    if-eqz v9, :cond_1

    .line 2276
    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/16 v7, 0x400

    const/4 v8, 0x2

    const/16 v3, 0x32

    const/4 v6, 0x1

    move v5, v1

    move-object/from16 v1, p2

    .end local v1    # "curBucket":I
    .local v5, "curBucket":I
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 2279
    move v7, v5

    .end local v5    # "curBucket":I
    .local v7, "curBucket":I
    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2280
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    move v5, v7

    goto :goto_3

    .line 2284
    .end local v7    # "curBucket":I
    .restart local v1    # "curBucket":I
    :cond_1
    move v7, v1

    move-object/from16 v1, p2

    .end local v1    # "curBucket":I
    .restart local v7    # "curBucket":I
    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2285
    invoke-static {v3, v2, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->-$$Nest$mgetLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;ILjava/lang/String;)I

    move-result v14

    .line 2286
    .local v14, "lastLevel":I
    const/4 v3, 0x5

    if-ne v7, v3, :cond_2

    .line 2287
    move v4, v3

    goto :goto_2

    .line 2288
    :cond_2
    const/16 v3, 0x28

    if-ne v14, v3, :cond_3

    .line 2289
    const/16 v3, 0x2d

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_3
    goto :goto_1

    :goto_2
    nop

    .line 2290
    .local v4, "tentativeBucket":I
    nop

    .line 2291
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2290
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v15

    .line 2293
    move/from16 v16, v4

    .end local v4    # "tentativeBucket":I
    .local v15, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .local v16, "tentativeBucket":I
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move v5, v7

    .end local v7    # "curBucket":I
    .restart local v5    # "curBucket":I
    const/16 v7, 0x300

    const/4 v8, 0x3

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 2296
    .end local v14    # "lastLevel":I
    .end local v15    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .end local v16    # "tentativeBucket":I
    :goto_3
    return-void
.end method

.method private initBgRestrictionExemptioFromSysConfig()V
    .locals 3

    .line 1553
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 1554
    .local v0, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBgRestrictionExemption()Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    .line 1561
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1563
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1564
    return-void
.end method

.method private initRestrictionStates()V
    .locals 7

    .line 1588
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1589
    .local v0, "allUsers":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 1590
    .local v4, "userId":I
    const/16 v5, 0x400

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(III)V

    .line 1589
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1593
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->isTest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1595
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->scheduleLoadFromXml()V

    .line 1597
    array-length v1, v0

    :goto_1
    nop

    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1598
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 1597
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1601
    :cond_1
    return-void
.end method

.method private initRolesInInterest()V
    .locals 10

    .line 3059
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 3060
    .local v0, "allUsers":[I
    sget-object v1, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 3061
    .local v5, "role":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3062
    array-length v6, v0

    move v7, v3

    :goto_1
    nop

    if-ge v7, v6, :cond_0

    aget v8, v0, v7

    .line 3063
    .local v8, "userId":I
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 3064
    .local v9, "user":Landroid/os/UserHandle;
    invoke-direct {p0, v5, v9}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 3062
    .end local v8    # "userId":I
    .end local v9    # "user":Landroid/os/UserHandle;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3060
    .end local v5    # "role":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3068
    :cond_1
    return-void
.end method

.method private initSystemModuleNames()V
    .locals 8

    .line 1604
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1605
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v1

    .line 1606
    .local v1, "moduleInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    if-nez v1, :cond_0

    .line 1607
    return-void

    .line 1609
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 1610
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ModuleInfo;

    .line 1611
    .local v4, "info":Landroid/content/pm/ModuleInfo;
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    nop

    .end local v4    # "info":Landroid/content/pm/ModuleInfo;
    goto :goto_0

    .line 1613
    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_1
    monitor-exit v2

    .line 1614
    return-void

    .line 1613
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2992
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2993
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 2994
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2995
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2996
    monitor-exit v0

    return v2

    .line 3001
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2994
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3000
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 3001
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isExemptedFromSysConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1583
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    .line 1584
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1583
    :goto_0
    return v0
.end method

.method private isRoleHeldByUid(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3052
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3053
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3054
    .local v1, "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 3055
    .end local v1    # "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3054
    .restart local v1    # "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 3055
    .end local v1    # "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSystemModule(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1617
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 1618
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1619
    .local v1, "val":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 1620
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1622
    .end local v1    # "val":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 1619
    .restart local v1    # "val":Ljava/lang/Boolean;
    :cond_0
    nop

    .line 1622
    .end local v1    # "val":Ljava/lang/Boolean;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1626
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 1628
    .local v0, "isSystemModule":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    move v0, v4

    .line 1630
    goto :goto_1

    .line 1629
    :catch_0
    move-exception v4

    .line 1632
    :goto_1
    if-nez v0, :cond_3

    .line 1634
    :try_start_2
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1639
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1640
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1639
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v5, :cond_2

    goto :goto_2

    .line 1641
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    goto :goto_3

    .line 1639
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    move v2, v3

    :goto_2
    move v0, v2

    .line 1642
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_4

    .line 1645
    :cond_3
    :goto_3
    move v2, v0

    .end local v0    # "isSystemModule":Z
    .local v2, "isSystemModule":Z
    :goto_4
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 1646
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    monitor-exit v3

    .line 1648
    return v2

    .line 1647
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1622
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "isSystemModule":Z
    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private synthetic lambda$applyRestrictionLevel$1(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V
    .locals 8
    .param p1, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "localReason"    # I
    .param p5, "localSubReason"    # I
    .param p6, "curLevel"    # I
    .param p7, "level"    # I
    .param p8, "localTrackerInfo"    # Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 2202
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {p1, p2, v0, p4, p5}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    .line 2204
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v7, p4

    move v4, p6

    move v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    .line 2206
    return-void
.end method

.method private static synthetic lambda$dispatchAppRestrictionLevelChanges$2(ILjava/lang/String;ILandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .locals 0
    .param p0, "uid"    # I
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "newLevel"    # I
    .param p3, "l"    # Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 2301
    invoke-interface {p3, p0, p1, p2}, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;->onRestrictionLevelChanged(ILjava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$3(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/Integer;
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 2312
    nop

    .line 2313
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    .line 2314
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 2312
    invoke-interface {p0, p1, v0, v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method private static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$4(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8
    .param p0, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/Integer;
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 2315
    nop

    .line 2316
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xff00

    and-int v4, v0, v1

    .line 2317
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    .line 2315
    const/16 v6, 0x300

    const/4 v7, 0x6

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local p1    # "pkgName":Ljava/lang/String;
    .local v1, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v2, "pkgName":Ljava/lang/String;
    invoke-interface/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    return-void
.end method

.method private static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$5(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "pendingTasks"    # Ljava/util/ArrayList;
    .param p1, "newValue"    # Z
    .param p2, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p3, "uid"    # Ljava/lang/Integer;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/Integer;
    .param p6, "reason"    # Ljava/lang/Integer;

    .line 2310
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 2311
    if-eqz p1, :cond_0

    .line 2312
    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 2315
    :cond_0
    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2311
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2320
    :cond_1
    return-void
.end method

.method private synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$6(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "pendingTasks"    # Ljava/util/ArrayList;
    .param p2, "newValue"    # Z
    .param p3, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p4, "uid"    # Ljava/lang/Integer;

    .line 2309
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    .line 2321
    return-void
.end method

.method private static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$7(ZLandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .locals 0
    .param p0, "newValue"    # Z
    .param p1, "l"    # Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 2327
    invoke-interface {p1, p0}, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;->onAutoRestrictedBucketFeatureFlagChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$handleUidActive$8(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 2
    .param p0, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 2826
    nop

    .line 2827
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 2826
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method private synthetic lambda$handleUidActive$9(ILcom/android/server/usage/AppStandbyInternal;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p3, "userId"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/Integer;
    .param p6, "reason"    # Ljava/lang/Integer;

    .line 2824
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-eqz v0, :cond_0

    .line 2825
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V

    invoke-virtual {v0, p1, p4, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2829
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p4, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2831
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSystemReady$0()V
    .locals 3

    .line 1530
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1531
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 1530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1533
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method private loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1567
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1568
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1569
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1571
    .local v2, "pkg":Ljava/lang/String;
    const/high16 v3, 0x100000

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1573
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_0

    .line 1574
    goto :goto_1

    .line 1576
    :cond_0
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    nop

    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 1577
    :catch_0
    move-exception v3

    .line 1568
    .end local v2    # "pkg":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1580
    .end local v1    # "i":I
    return-void
.end method

.method private logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V
    .locals 18
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "prevLevel"    # I
    .param p4, "level"    # I
    .param p5, "trackerInfo"    # Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .param p6, "reason"    # I

    .line 2247
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    .line 2248
    invoke-direct {v0, v1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    move-result v5

    .line 2249
    move/from16 v3, p6

    invoke-direct {v0, v3}, Lcom/android/server/am/AppRestrictionController;->getThresholdStatsd(I)I

    move-result v6

    iget v4, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    .line 2250
    invoke-direct {v0, v4}, Lcom/android/server/am/AppRestrictionController;->getTrackerTypeStatsd(I)I

    move-result v7

    .line 2251
    iget v4, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-ne v4, v8, :cond_0

    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    move-object v8, v4

    goto :goto_0

    :cond_0
    move-object v8, v9

    .line 2252
    :goto_0
    iget v4, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_1

    iget-object v4, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    goto :goto_1

    :cond_1
    move-object v4, v9

    .line 2253
    :goto_1
    iget v10, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_2

    iget-object v10, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    goto :goto_2

    :cond_2
    move-object v10, v9

    .line 2254
    :goto_2
    iget v11, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v12, 0x7

    if-ne v11, v12, :cond_3

    iget-object v9, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    :cond_3
    move-object v11, v9

    .line 2255
    move/from16 v9, p2

    invoke-direct {v0, v9, v1}, Lcom/android/server/am/AppRestrictionController;->getExemptionReasonStatsd(II)I

    move-result v12

    .line 2256
    invoke-direct {v0, v1}, Lcom/android/server/am/AppRestrictionController;->getOptimizationLevelStatsd(I)I

    move-result v13

    .line 2257
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppRestrictionController;->getTargetSdkStatsd(Ljava/lang/String;)I

    move-result v14

    .line 2258
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v15

    .line 2259
    move/from16 v3, p3

    invoke-direct {v0, v3}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    move-result v16

    .line 2247
    const/16 v3, 0x1b9

    move/from16 v17, v9

    move-object v9, v4

    move/from16 v4, v17

    invoke-static/range {v3 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    .line 2260
    return-void
.end method

.method private onLockedBootCompleted()V
    .locals 3

    .line 3494
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3495
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->onLockedBootCompleted()V

    .line 3494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3497
    .end local v0    # "i":I
    .end local v1    # "size":I
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    .line 3498
    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3483
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removePackage(Ljava/lang/String;I)V

    .line 3484
    return-void
.end method

.method private onPropertiesChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 3505
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3506
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onPropertiesChanged(Ljava/lang/String;)V

    .line 3505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3508
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method private onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 3071
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 3073
    .local v0, "rolePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 3074
    .local v1, "roleUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 3075
    .local v2, "userId":I
    if-eqz v0, :cond_0

    .line 3076
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    .line 3077
    .local v3, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3078
    .local v5, "pkg":Ljava/lang/String;
    const-wide/32 v6, 0xc8000

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3079
    .end local v5    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 3081
    .end local v3    # "pm":Landroid/content/pm/PackageManagerInternal;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3082
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_4

    .line 3083
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3084
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq v6, v2, :cond_1

    .line 3085
    goto :goto_2

    .line 3087
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3088
    .local v6, "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 3089
    .local v7, "index":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 3090
    .local v8, "isRole":Z
    if-ltz v7, :cond_2

    .line 3091
    if-nez v8, :cond_3

    .line 3092
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3093
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3094
    iget-object v9, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_2

    .line 3107
    .end local v4    # "i":I
    .end local v5    # "uid":I
    .end local v6    # "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "index":I
    .end local v8    # "isRole":Z
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 3097
    .restart local v4    # "i":I
    .restart local v5    # "uid":I
    .restart local v6    # "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "index":I
    .restart local v8    # "isRole":Z
    :cond_2
    if-eqz v8, :cond_3

    .line 3098
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3099
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3082
    .end local v5    # "uid":I
    .end local v6    # "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "index":I
    .end local v8    # "isRole":Z
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    nop

    .line 3102
    .end local v4    # "i":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "i":I
    :goto_3
    if-ltz v4, :cond_5

    .line 3103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3104
    .local v5, "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3105
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3102
    .end local v5    # "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    nop

    .line 3107
    .end local v4    # "i":I
    monitor-exit v3

    .line 3108
    return-void

    .line 3107
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private onUidAdded(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 3475
    const/16 v0, 0x600

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 3477
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3478
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidAdded(I)V

    .line 3477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3480
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method private onUidRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 3487
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3488
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidRemoved(I)V

    .line 3487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3490
    .end local v0    # "i":I
    .end local v1    # "size":I
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUid(I)V

    .line 3491
    return-void
.end method

.method private onUserAdded(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 3448
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3449
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserAdded(I)V

    .line 3448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3451
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method private onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3511
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 3512
    const-wide/32 v1, 0xc8000

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 3513
    .local v0, "uid":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3514
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/am/BaseAppStateTracker;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 3513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3516
    .end local v1    # "i":I
    .end local v2    # "size":I
    return-void
.end method

.method private onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 3468
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3469
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserRemoved(I)V

    .line 3468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3471
    .end local v0    # "i":I
    .end local v1    # "size":I
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUser(I)V

    .line 3472
    return-void
.end method

.method private onUserStarted(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 3454
    const/16 v0, 0x400

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(III)V

    .line 3456
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3457
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStarted(I)V

    .line 3456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3459
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method private onUserStopped(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 3462
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3463
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStopped(I)V

    .line 3462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3465
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method private refreshAppRestrictionLevelForUser(III)V
    .locals 14
    .param p1, "userId"    # I
    .param p2, "reason"    # I
    .param p3, "subReason"    # I

    .line 1674
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v2

    .line 1675
    invoke-interface {v2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v9

    .line 1676
    .local v9, "appStandbyInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1677
    return-void

    .line 1683
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v10

    .line 1684
    .local v10, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/app/usage/AppStandbyInfo;

    .line 1685
    .local v12, "info":Landroid/app/usage/AppStandbyInfo;
    iget-object v2, v12, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    const-wide/32 v3, 0xc8000

    invoke-virtual {v10, v2, v3, v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 1686
    .local v2, "uid":I
    if-gez v2, :cond_1

    .line 1688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    goto :goto_0

    .line 1691
    :cond_1
    iget-object v3, v12, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget v4, v12, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v13

    .line 1699
    .local v13, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    iget-object v1, v12, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    iget v5, v12, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/4 v6, 0x1

    move-object v0, p0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 1701
    .end local v2    # "uid":I
    .end local v12    # "info":Landroid/app/usage/AppStandbyInfo;
    .end local v13    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    goto :goto_0

    .line 1702
    :cond_2
    return-void
.end method

.method private registerCarrierPrivilegesCallbacks()V
    .locals 6

    .line 3005
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 3006
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 3007
    return-void

    .line 3010
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    .line 3011
    .local v1, "numPhones":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3012
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 3013
    new-instance v4, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;

    invoke-direct {v4, p0, v3}, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;-><init>(Lcom/android/server/am/AppRestrictionController;I)V

    .line 3014
    .local v4, "callback":Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3015
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {v0, v3, v5, v4}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 3012
    .end local v4    # "callback":Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3017
    .end local v3    # "i":I
    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 3018
    return-void
.end method

.method private registerForSystemBroadcasts()V
    .locals 11

    .line 3417
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3418
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3419
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3420
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3421
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3422
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3423
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3424
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3425
    const-string v2, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3426
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3427
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v2

    .line 3428
    .local v8, "bootFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3429
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3431
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3433
    .local v2, "telFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3434
    return-void
.end method

.method private registerForUidObservers()V
    .locals 5

    .line 1653
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    const-string v2, "android"

    const/16 v3, 0xf

    const/4 v4, 0x4

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    goto :goto_0

    .line 1656
    :catch_0
    move-exception v0

    .line 1659
    :goto_0
    return-void
.end method

.method private static standbyBucketToRestrictionLevel(I)I
    .locals 1
    .param p0, "standbyBucket"    # I

    .line 1819
    sparse-switch p0, :sswitch_data_0

    .line 1834
    const/4 v0, 0x0

    return v0

    .line 1823
    :sswitch_0
    goto :goto_0

    .line 1832
    :sswitch_1
    const/16 v0, 0x28

    return v0

    .line 1830
    :goto_0
    :sswitch_2
    const/16 v0, 0x1e

    return v0

    .line 1821
    :sswitch_3
    const/16 v0, 0x14

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0x14 -> :sswitch_2
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x2d -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method private unregisterCarrierPrivilegesCallbacks()V
    .locals 4

    .line 3021
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 3022
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 3023
    return-void

    .line 3025
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 3026
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;>;"
    if-eqz v1, :cond_2

    .line 3027
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3028
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 3027
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 3030
    .end local v2    # "i":I
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 3032
    :cond_2
    return-void
.end method

.method private unregisterForSystemBroadcasts()V
    .locals 2

    .line 3437
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3438
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3439
    return-void
.end method

.method private unregisterForUidObservers()V
    .locals 2

    .line 1663
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    goto :goto_0

    .line 1664
    :catch_0
    move-exception v0

    .line 1667
    :goto_0
    return-void
.end method


# virtual methods
.method public addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 1491
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1492
    return-void
.end method

.method addAppStateTracker(Lcom/android/server/am/BaseAppStateTracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/android/server/am/BaseAppStateTracker;

    .line 3134
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3135
    return-void
.end method

.method applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V
    .locals 19
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "level"    # I
    .param p4, "trackerInfo"    # Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .param p5, "curBucket"    # I
    .param p6, "allowUpdateBucket"    # Z
    .param p7, "reason"    # I
    .param p8, "subReason"    # I

    .line 2145
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v8

    .line 2146
    .local v8, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    if-nez p4, :cond_0

    .line 2147
    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move-object v10, v0

    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .local v0, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    goto :goto_0

    .line 2146
    .end local v0    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :cond_0
    move-object/from16 v10, p4

    .line 2149
    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .local v10, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :goto_0
    iget-object v9, v1, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2150
    :try_start_0
    invoke-virtual {v1, v4, v2}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(ILjava/lang/String;)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move v11, v7

    .line 2151
    .local v11, "curLevel":I
    if-ne v11, v5, :cond_1

    .line 2153
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 2174
    .end local v11    # "curLevel":I
    :catchall_0
    move-exception v0

    move/from16 v5, p7

    move/from16 v15, p8

    move-object v11, v8

    move-object v6, v10

    goto/16 :goto_a

    .line 2155
    .restart local v11    # "curLevel":I
    :cond_1
    :try_start_2
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/AppRestrictionController;->standbyBucketToRestrictionLevel(I)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 2156
    .local v0, "levelOfBucket":I
    const v12, 0xff00

    if-ne v0, v5, :cond_2

    .line 2158
    nop

    .line 2159
    :try_start_3
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2158
    invoke-interface {v8, v2, v3, v6, v7}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucketReason(Ljava/lang/String;IJ)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2160
    .local v3, "bucketReason":I
    if-eqz v3, :cond_2

    .line 2161
    and-int v6, v3, v12

    .line 2162
    .end local p7    # "reason":I
    .local v6, "reason":I
    and-int/lit16 v7, v3, 0xff

    .end local p8    # "subReason":I
    .local v7, "subReason":I
    goto :goto_1

    .line 2172
    .end local v3    # "bucketReason":I
    .end local v6    # "reason":I
    .end local v7    # "subReason":I
    .restart local p7    # "reason":I
    .restart local p8    # "subReason":I
    :cond_2
    move/from16 v6, p7

    move/from16 v7, p8

    .end local p7    # "reason":I
    .end local p8    # "subReason":I
    .restart local v6    # "reason":I
    .restart local v7    # "subReason":I
    :goto_1
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getReason(Ljava/lang/String;I)I

    move-result v3

    move v13, v3

    .line 2173
    .local v13, "prevReason":I
    iget-object v2, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->update(Ljava/lang/String;IIII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-object v2, v3

    move v14, v6

    move v15, v7

    .line 2174
    .end local v6    # "reason":I
    .end local v7    # "subReason":I
    .local v14, "reason":I
    .local v15, "subReason":I
    nop

    .end local v0    # "levelOfBucket":I
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 2176
    nop

    .line 2181
    const/16 v16, 0x1

    .line 2182
    .local v16, "doItNow":Z
    const/16 v0, 0x28

    if-lt v5, v0, :cond_8

    if-ge v11, v0, :cond_8

    .line 2190
    const/16 v3, 0x2d

    move/from16 v12, p5

    if-eq v12, v3, :cond_7

    iget-object v3, v1, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v3, v3, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-nez v3, :cond_3

    if-ne v5, v0, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move v9, v4

    move-object/from16 p4, v10

    move v10, v11

    move v6, v14

    move-object v11, v8

    move-object v8, v1

    goto/16 :goto_8

    .line 2194
    :goto_2
    iget-object v3, v1, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2195
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move/from16 v17, v0

    .line 2196
    .local v17, "index":I
    if-ltz v17, :cond_5

    .line 2198
    move v5, v14

    .line 2199
    .local v5, "localReason":I
    move v6, v15

    .line 2200
    .local v6, "localSubReason":I
    move-object v9, v10

    .line 2201
    .local v9, "localTrackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    move-object v7, v0

    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 p4, v10

    move-object v10, v7

    move v7, v11

    move-object v11, v3

    move-object v3, v2

    move-object v2, v8

    move/from16 v8, p3

    .end local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local v11    # "curLevel":I
    .local v2, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v7, "curLevel":I
    .restart local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :try_start_8
    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move/from16 v18, v7

    move-object v7, v0

    move-object v0, v9

    move v9, v4

    move/from16 v4, v18

    move/from16 v18, v8

    move-object v8, v1

    move/from16 v1, v18

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    .end local v2    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v7    # "curLevel":I
    .end local v9    # "localTrackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .local v0, "localTrackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .local v3, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v4, "curLevel":I
    :try_start_9
    invoke-virtual {v10, v9, v2, v7}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2207
    const/16 v16, 0x0

    goto :goto_4

    .line 2209
    .end local v0    # "localTrackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local v5    # "localReason":I
    .end local v6    # "localSubReason":I
    .end local v17    # "index":I
    :catchall_1
    move-exception v0

    goto :goto_5

    .end local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v4    # "curLevel":I
    .restart local v2    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v7    # "curLevel":I
    :catchall_2
    move-exception v0

    move v9, v8

    move-object v8, v1

    move v1, v9

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    move v9, v4

    move v4, v7

    .end local v2    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v7    # "curLevel":I
    .restart local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v4    # "curLevel":I
    goto :goto_5

    .end local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v4    # "curLevel":I
    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v11    # "curLevel":I
    :catchall_3
    move-exception v0

    move v9, v4

    move-object/from16 p4, v10

    move v4, v11

    move-object v11, v3

    move-object v3, v8

    move-object v8, v1

    move/from16 v1, p3

    .end local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local v11    # "curLevel":I
    .restart local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v4    # "curLevel":I
    .restart local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :goto_3
    goto :goto_5

    .line 2196
    .end local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v4    # "curLevel":I
    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v11    # "curLevel":I
    .restart local v17    # "index":I
    :cond_5
    move v9, v4

    move-object/from16 p4, v10

    move v4, v11

    move-object v11, v3

    move-object v3, v8

    move-object v8, v1

    move v1, v5

    .line 2209
    .end local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local v11    # "curLevel":I
    .end local v17    # "index":I
    .restart local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v4    # "curLevel":I
    .restart local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :goto_4
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2210
    if-eqz v16, :cond_6

    .line 2211
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v3, v2, v0, v14, v15}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    .line 2213
    nop

    .line 2237
    :cond_6
    move-object v11, v3

    move v10, v4

    move v6, v14

    goto/16 :goto_8

    .line 2209
    .end local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v4    # "curLevel":I
    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v11    # "curLevel":I
    :catchall_4
    move-exception v0

    move v9, v4

    move-object/from16 p4, v10

    move v4, v11

    move-object v11, v3

    move-object v3, v8

    move-object v8, v1

    move v1, v5

    goto :goto_3

    .end local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local v11    # "curLevel":I
    .restart local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v4    # "curLevel":I
    .restart local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :goto_5
    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    .line 2190
    .end local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v4    # "curLevel":I
    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v11    # "curLevel":I
    :cond_7
    move v9, v4

    move-object v3, v8

    move-object/from16 p4, v10

    move v4, v11

    move-object v8, v1

    move v1, v5

    .end local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local v11    # "curLevel":I
    .restart local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v4    # "curLevel":I
    .restart local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    move-object v11, v3

    move v10, v4

    move v6, v14

    goto :goto_8

    .line 2182
    .end local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v4    # "curLevel":I
    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v11    # "curLevel":I
    :cond_8
    move v9, v4

    move-object v3, v8

    move-object/from16 p4, v10

    move v4, v11

    move-object v8, v1

    move v1, v5

    .line 2219
    .end local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local v11    # "curLevel":I
    .restart local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v4    # "curLevel":I
    .restart local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    if-lt v4, v0, :cond_a

    if-ge v1, v0, :cond_a

    .line 2222
    iget-object v5, v8, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2223
    :try_start_b
    iget-object v0, v8, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 2224
    .local v0, "index":I
    if-ltz v0, :cond_9

    .line 2225
    :try_start_c
    iget-object v6, v8, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v2, v7}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_6

    .line 2227
    .end local v0    # "index":I
    :catchall_5
    move-exception v0

    move-object v11, v3

    move v10, v4

    move v6, v14

    goto :goto_7

    :cond_9
    :goto_6
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 2228
    move-object v1, v3

    .end local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v1, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    and-int v0, v13, v12

    and-int/lit16 v5, v13, 0xff

    move v10, v4

    move v6, v14

    move v7, v15

    move v4, v0

    .end local v4    # "curLevel":I
    .end local v14    # "reason":I
    .end local v15    # "subReason":I
    .local v6, "reason":I
    .local v7, "subReason":I
    .local v10, "curLevel":I
    invoke-interface/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    .line 2231
    move-object v11, v1

    .end local v1    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v7    # "subReason":I
    .local v11, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v15    # "subReason":I
    goto :goto_8

    .line 2227
    .end local v6    # "reason":I
    .end local v10    # "curLevel":I
    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v4    # "curLevel":I
    .restart local v14    # "reason":I
    :catchall_6
    move-exception v0

    move-object v11, v3

    move v10, v4

    move v6, v14

    .end local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v4    # "curLevel":I
    .end local v14    # "reason":I
    .restart local v6    # "reason":I
    .restart local v10    # "curLevel":I
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :goto_7
    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_7

    .line 2219
    .end local v6    # "reason":I
    .end local v10    # "curLevel":I
    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v4    # "curLevel":I
    .restart local v14    # "reason":I
    :cond_a
    move-object v11, v3

    move v10, v4

    move v6, v14

    .line 2237
    .end local v3    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v4    # "curLevel":I
    .end local v14    # "reason":I
    .restart local v6    # "reason":I
    .restart local v10    # "curLevel":I
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :goto_8
    if-eqz v16, :cond_b

    if-eqz v10, :cond_b

    .line 2239
    move-object/from16 v2, p1

    move/from16 v5, p3

    move v7, v6

    move-object v1, v8

    move v3, v9

    move v4, v10

    move-object/from16 v6, p4

    .end local v10    # "curLevel":I
    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v4    # "curLevel":I
    .local v6, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .local v7, "reason":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    move v5, v7

    .end local v7    # "reason":I
    .local v5, "reason":I
    goto :goto_9

    .line 2237
    .end local v4    # "curLevel":I
    .end local v5    # "reason":I
    .local v6, "reason":I
    .restart local v10    # "curLevel":I
    .restart local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :cond_b
    move v5, v6

    move v4, v10

    move-object/from16 v6, p4

    .line 2242
    .end local v10    # "curLevel":I
    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v4    # "curLevel":I
    .restart local v5    # "reason":I
    .local v6, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :goto_9
    return-void

    .line 2174
    .end local v4    # "curLevel":I
    .end local v5    # "reason":I
    .end local v6    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v13    # "prevReason":I
    .end local v16    # "doItNow":Z
    .restart local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v10, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v14    # "reason":I
    :catchall_8
    move-exception v0

    move-object v11, v8

    move-object v6, v10

    move v5, v14

    .end local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local v14    # "reason":I
    .restart local v5    # "reason":I
    .restart local v6    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    goto :goto_a

    .end local v5    # "reason":I
    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v15    # "subReason":I
    .local v6, "reason":I
    .local v7, "subReason":I
    .restart local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :catchall_9
    move-exception v0

    move v5, v6

    move v15, v7

    move-object v11, v8

    move-object v6, v10

    .end local v7    # "subReason":I
    .end local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v5    # "reason":I
    .local v6, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v15    # "subReason":I
    goto :goto_a

    .end local v5    # "reason":I
    .end local v6    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v15    # "subReason":I
    .restart local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local p7    # "reason":I
    .restart local p8    # "subReason":I
    :catchall_a
    move-exception v0

    move-object v11, v8

    move-object v6, v10

    move/from16 v5, p7

    move/from16 v15, p8

    .end local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v10    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local p7    # "reason":I
    .end local p8    # "subReason":I
    .restart local v5    # "reason":I
    .restart local v6    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v15    # "subReason":I
    :goto_a
    :try_start_f
    monitor-exit v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_a
.end method

.method cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3154
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V

    .line 3155
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2018
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2019
    const-string v0, "APP BACKGROUND RESTRICTIONS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2021
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2022
    const-string v0, "BACKGROUND RESTRICTION LEVEL SETTINGS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2025
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2026
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2027
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2025
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2029
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "uid"    # I

    .line 2032
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2033
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V

    .line 2032
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2035
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method forEachTracker(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/BaseAppStateTracker;",
            ">;)V"
        }
    .end annotation

    .line 3442
    .local p1, "sink":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/BaseAppStateTracker;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3443
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3445
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method getAppStateTracker(Ljava/lang/Class;)Lcom/android/server/am/BaseAppStateTracker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/BaseAppStateTracker;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3141
    .local p1, "trackerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateTracker;

    .line 3142
    .local v1, "tracker":Lcom/android/server/am/BaseAppStateTracker;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3143
    return-object v1

    .line 3142
    :cond_0
    nop

    .line 3145
    .end local v1    # "tracker":Lcom/android/server/am/BaseAppStateTracker;
    goto :goto_0

    .line 3146
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    .line 3114
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    return-object v0
.end method

.method getBackgroundHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    .line 3122
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method getBackgroundRestrictionExemptionReason(I)I
    .locals 7
    .param p1, "uid"    # I

    .line 2864
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(I)I

    move-result v0

    .line 2865
    .local v0, "reason":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2866
    return v0

    .line 2868
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2869
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2871
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 2872
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, v6}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(ILjava/lang/String;)I

    move-result v0

    .line 2873
    if-eq v0, v1, :cond_1

    .line 2874
    return v0

    .line 2873
    :cond_1
    nop

    .line 2871
    .end local v6    # "pkg":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2878
    :cond_2
    array-length v3, v2

    :goto_1
    nop

    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 2879
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/AppRestrictionController;->getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I

    move-result v0

    .line 2880
    if-eq v0, v1, :cond_3

    .line 2881
    return v0

    .line 2880
    :cond_3
    nop

    .line 2878
    .end local v5    # "pkg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2885
    :cond_4
    return v1
.end method

.method getCompositeMediaPlaybackDurations(IJJ)J
    .locals 11
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .param p4, "window"    # J

    .line 1957
    const-wide/16 v0, 0x0

    sub-long v2, p2, p4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1958
    .local v6, "since":J
    nop

    .line 1959
    move-object v4, p0

    move v5, p1

    move-wide v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/AppRestrictionController;->getMediaSessionTotalDurationsSince(IJJ)J

    move-result-wide v0

    .line 1960
    const/4 v10, 0x2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(IJJI)J

    move-result-wide v2

    .line 1958
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1962
    .local v0, "mediaPlaybackDuration":J
    return-wide v0
.end method

.method getCompositeMediaPlaybackDurations(Ljava/lang/String;IJJ)J
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J
    .param p5, "window"    # J

    .line 1944
    const-wide/16 v0, 0x0

    sub-long v2, p3, p5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1945
    .local v7, "since":J
    nop

    .line 1946
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v9, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/AppRestrictionController;->getMediaSessionTotalDurationsSince(Ljava/lang/String;IJJ)J

    move-result-wide v0

    .line 1947
    const/4 v11, 0x2

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide v2

    .line 1945
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1949
    .local v0, "mediaPlaybackDuration":J
    return-wide v0
.end method

.method getForegroundServiceTotalDurations(IJI)J
    .locals 2
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .param p4, "serviceType"    # I

    .line 1884
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    .line 1885
    invoke-static {p4}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v1

    .line 1884
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getForegroundServiceTotalDurations(Ljava/lang/String;IJI)J
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J
    .param p5, "serviceType"    # I

    .line 1874
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v1

    .line 1875
    invoke-static {p5}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v6

    .line 1874
    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "now":J
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "uid":I
    .local v4, "now":J
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(Ljava/lang/String;IJI)J

    move-result-wide p1

    return-wide p1
.end method

.method getForegroundServiceTotalDurationsSince(IJJI)J
    .locals 8
    .param p1, "uid"    # I
    .param p2, "since"    # J
    .param p4, "now"    # J
    .param p6, "serviceType"    # I

    .line 1905
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v1

    .line 1906
    invoke-static {p6}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v7

    .line 1905
    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "uid":I
    .end local p2    # "since":J
    .end local p4    # "now":J
    .local v2, "uid":I
    .local v3, "since":J
    .local v5, "now":J
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IJJI)J

    move-result-wide p1

    return-wide p1
.end method

.method getForegroundServiceTotalDurationsSince(Ljava/lang/String;IJJI)J
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "since"    # J
    .param p5, "now"    # J
    .param p7, "serviceType"    # I

    .line 1895
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v1

    .line 1896
    invoke-static/range {p7 .. p7}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v8

    .line 1895
    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getLock()Ljava/lang/Object;
    .locals 1

    .line 3129
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method getMediaSessionTotalDurations(IJ)J
    .locals 2
    .param p1, "uid"    # I
    .param p2, "now"    # J

    .line 1920
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getMediaSessionTotalDurations(Ljava/lang/String;IJ)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J

    .line 1913
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(Ljava/lang/String;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getMediaSessionTotalDurationsSince(IJJ)J
    .locals 7
    .param p1, "uid"    # I
    .param p2, "since"    # J
    .param p4, "now"    # J

    .line 1936
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "uid":I
    .end local p2    # "since":J
    .end local p4    # "now":J
    .local v2, "uid":I
    .local v3, "since":J
    .local v5, "now":J
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method getMediaSessionTotalDurationsSince(Ljava/lang/String;IJJ)J
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "since"    # J
    .param p5, "now"    # J

    .line 1928
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "since":J
    .end local p5    # "now":J
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "uid":I
    .local v4, "since":J
    .local v6, "now":J
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(Ljava/lang/String;IJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method getPackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I

    .line 3158
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPotentialSystemExemptionReason(I)I
    .locals 4
    .param p1, "uid"    # I

    .line 2895
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2896
    const/16 v0, 0x33

    return v0

    .line 2898
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->isOnSystemDeviceIdleAllowlist(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2899
    const/16 v0, 0x12c

    return v0

    .line 2901
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2902
    const/16 v0, 0x3f

    return v0

    .line 2904
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2905
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    .line 2906
    const-string/jumbo v2, "no_control_apps"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2907
    const/16 v1, 0x143

    return v1

    .line 2909
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    .line 2910
    .local v1, "am":Landroid/app/ActivityManagerInternal;
    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2911
    const/16 v2, 0x37

    return v2

    .line 2913
    :cond_4
    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->isProfileOwner(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2914
    const/16 v2, 0x38

    return v2

    .line 2916
    :cond_5
    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    .line 2917
    .local v2, "uidProcState":I
    if-gtz v2, :cond_6

    .line 2918
    const/16 v3, 0xa

    return v3

    .line 2919
    :cond_6
    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    .line 2920
    const/16 v3, 0xb

    return v3

    .line 2922
    :cond_7
    const/4 v3, -0x1

    return v3
.end method

.method getPotentialSystemExemptionReason(ILjava/lang/String;)I
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 2933
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 2934
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    .line 2935
    .local v1, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    .line 2936
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    .line 2937
    .local v3, "activityManagerService":Lcom/android/server/am/ActivityManagerService;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2938
    .local v4, "userId":I
    invoke-direct {p0, p2}, Lcom/android/server/am/AppRestrictionController;->isSystemModule(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2939
    const/16 v5, 0x140

    return v5

    .line 2940
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/am/AppRestrictionController;->isCarrierApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2941
    const/16 v5, 0x141

    return v5

    .line 2942
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/am/AppRestrictionController;->isExemptedFromSysConfig(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x12c

    if-eqz v5, :cond_2

    .line 2943
    return v6

    .line 2944
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-object v5, v5, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    invoke-interface {v5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2945
    return v6

    .line 2946
    :cond_3
    invoke-virtual {v0, p2, v4}, Landroid/content/pm/PackageManagerInternal;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2947
    const/16 v5, 0x142

    return v5

    .line 2948
    :cond_4
    invoke-interface {v1, p2, v4}, Lcom/android/server/usage/AppStandbyInternal;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2949
    const/16 v5, 0x144

    return v5

    .line 2950
    :cond_5
    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    nop

    if-eqz v5, :cond_6

    .line 2951
    const/16 v5, 0x80

    invoke-virtual {v2, v5, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 2954
    const/16 v5, 0x147

    return v5

    .line 2956
    :cond_6
    const/4 v5, -0x1

    return v5
.end method

.method getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 2967
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    .line 2968
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2970
    const/16 v1, 0x44

    return v1

    .line 2971
    :cond_0
    const/16 v1, 0x5e

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2973
    const/16 v1, 0x45

    return v1

    .line 2975
    :cond_1
    const-string v1, "android.app.role.DIALER"

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2976
    const/16 v1, 0x13e

    return v1

    .line 2978
    :cond_2
    const-string v1, "android.app.role.EMERGENCY"

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2979
    const/16 v1, 0x13f

    return v1

    .line 2981
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->isOnDeviceIdleAllowlist(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2982
    const/16 v1, 0x41

    return v1

    .line 2984
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    .line 2985
    .local v1, "am":Landroid/app/ActivityManagerInternal;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/ActivityManagerInternal;->isAssociatedCompanionApp(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2986
    const/16 v2, 0x39

    return v2

    .line 2988
    :cond_5
    const/4 v2, -0x1

    return v2
.end method

.method getRestrictionLevel(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 1843
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result v0

    return v0
.end method

.method getRestrictionLevel(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1850
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method getRestrictionLevel(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1857
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "since"    # J
    .param p4, "now"    # J
    .param p6, "types"    # I

    .line 1999
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppBatteryExemptionTracker()Lcom/android/server/am/AppBatteryExemptionTracker;

    move-result-object v1

    .line 2000
    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    .end local p1    # "uid":I
    .end local p2    # "since":J
    .end local p4    # "now":J
    .end local p6    # "types":I
    .local v2, "uid":I
    .local v3, "since":J
    .local v5, "now":J
    .local v7, "types":I
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppBatteryExemptionTracker;->getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p1

    .line 1999
    return-object p1
.end method

.method getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 1
    .param p1, "uid"    # I

    .line 2007
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUidBatteryUsageProvider()Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;->getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v0

    return-object v0
.end method

.method handleCancelRequestBgRestricted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2356
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    .line 2357
    return-void
.end method

.method handleRequestBgRestricted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2348
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    .line 2349
    return-void
.end method

.method handleUidActive(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 2820
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2821
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    .line 2822
    .local v1, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2823
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v4, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;I)V

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    .line 2832
    .end local v1    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v2    # "userId":I
    monitor-exit v0

    .line 2833
    return-void

    .line 2832
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleUidGone(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 2366
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2367
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidGone(I)V

    .line 2366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2369
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method handleUidInactive(IZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 2798
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    .line 2799
    .local v0, "pendingTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2800
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v2

    .line 2801
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 2802
    monitor-exit v1

    return-void

    .line 2812
    .end local v2    # "index":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 2804
    .restart local v2    # "index":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    .line 2805
    .local v3, "numPackages":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 2806
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 2807
    .local v5, "pendingTask":Ljava/lang/Runnable;
    if-eqz v5, :cond_1

    .line 2808
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    .end local v5    # "pendingTask":Ljava/lang/Runnable;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 2811
    .end local v4    # "i":I
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 2812
    .end local v2    # "index":I
    .end local v3    # "numPackages":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2813
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 2814
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 2813
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 2816
    .end local v1    # "i":I
    .end local v2    # "size":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2817
    return-void

    .line 2812
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method handleUidProcStateChanged(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 2360
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2361
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->onUidProcStateChanged(II)V

    .line 2360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2363
    .end local v0    # "i":I
    .end local v1    # "size":I
    return-void
.end method

.method hasForegroundServiceNotifications(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 1990
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotifications(I)Z

    move-result v0

    return v0
.end method

.method hasForegroundServiceNotifications(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1983
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotifications(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method hasForegroundServices(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 1976
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServices(I)Z

    move-result v0

    return v0
.end method

.method hasForegroundServices(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1969
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServices(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isAutoRestrictAbusiveAppEnabled()Z
    .locals 1

    .line 1865
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    return v0
.end method

.method isBgAutoRestrictedBucketFeatureFlagEnabled()Z
    .locals 1

    .line 3501
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    return v0
.end method

.method isOnDeviceIdleAllowlist(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 2836
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2838
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    nop

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 2839
    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2838
    :goto_1
    return v1
.end method

.method isOnSystemDeviceIdleAllowlist(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 2843
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2845
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 2846
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2845
    :goto_1
    return v1
.end method

.method public noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "restrictionType"    # I
    .param p4, "enabled"    # Z
    .param p5, "reason"    # I
    .param p6, "subReason"    # Ljava/lang/String;
    .param p7, "source"    # I
    .param p8, "threshold"    # J

    .line 2393
    move-object/from16 v0, p6

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    .line 2394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subReason is too long, truncating "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .end local p6    # "subReason":Ljava/lang/String;
    .local v0, "subReason":Ljava/lang/String;
    goto :goto_0

    .line 2399
    .end local v0    # "subReason":Ljava/lang/String;
    .restart local p6    # "subReason":Ljava/lang/String;
    :cond_0
    move-object v6, v0

    .end local p6    # "subReason":Ljava/lang/String;
    .local v6, "subReason":Ljava/lang/String;
    :goto_0
    nop

    .line 2400
    invoke-direct {p0, p3}, Lcom/android/server/am/AppRestrictionController;->getRestrictionTypeStatsd(I)I

    move-result v3

    .line 2402
    invoke-direct {p0, p5, v6}, Lcom/android/server/am/AppRestrictionController;->getRestrictionChangeReasonStatsd(ILjava/lang/String;)I

    move-result v5

    .line 2399
    const/16 v1, 0x362

    move v2, p2

    move v4, p4

    move/from16 v9, p7

    move-wide/from16 v7, p8

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZILjava/lang/String;JI)V

    .line 2406
    return-void
.end method

.method onSystemReady()V
    .locals 4

    .line 1513
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1515
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->start()V

    .line 1516
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->initBgRestrictionExemptioFromSysConfig()V

    .line 1517
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    .line 1518
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->initSystemModuleNames()V

    .line 1519
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->initRolesInInterest()V

    .line 1520
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->registerForUidObservers()V

    .line 1521
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->registerForSystemBroadcasts()V

    .line 1522
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->registerCarrierPrivilegesCallbacks()V

    .line 1523
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->onSystemReady()V

    .line 1524
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    invoke-interface {v0, v1}, Lcom/android/server/AppStateTracker;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    .line 1526
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1527
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 1529
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController$Injector;->scheduleInitTrackers(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1534
    return-void
.end method

.method postLongRunningFgsIfNecessary(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3150
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postLongRunningFgsIfNecessary(Ljava/lang/String;I)V

    .line 3151
    return-void
.end method

.method refreshAppRestrictionLevelForUid(IIIZ)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "reason"    # I
    .param p3, "subReason"    # I
    .param p4, "allowRequestBgRestricted"    # Z

    .line 1706
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1707
    .local v9, "packages":[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1708
    return-void

    .line 1710
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v3

    .line 1711
    .local v3, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1712
    .local v1, "userId":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1713
    .local v6, "now":J
    array-length v10, v9

    const/4 v4, 0x0

    move v11, v4

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v4, v9, v11

    .line 1714
    .local v4, "pkg":Ljava/lang/String;
    const/4 v8, 0x0

    move v5, v1

    .end local v1    # "userId":I
    .local v5, "userId":I
    invoke-interface/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v1

    .line 1715
    move-object v12, v3

    move-object v3, v4

    move-wide v13, v6

    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "now":J
    .local v1, "curBucket":I
    .local v3, "pkg":Ljava/lang/String;
    .local v12, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v13, "now":J
    const/4 v6, 0x1

    move v4, v1

    move v1, v5

    move/from16 v5, p4

    .end local v5    # "userId":I
    .local v1, "userId":I
    .local v4, "curBucket":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v15

    .line 1722
    move/from16 v16, v1

    .end local v1    # "userId":I
    .local v15, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .local v16, "userId":I
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move/from16 v2, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move v5, v4

    move-object v4, v1

    move-object v1, v3

    move v3, v0

    move-object/from16 v0, p0

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "curBucket":I
    .local v1, "pkg":Ljava/lang/String;
    .local v5, "curBucket":I
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 1713
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v5    # "curBucket":I
    .end local v15    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    add-int/lit8 v11, v11, 0x1

    move-object v3, v12

    move-wide v6, v13

    move/from16 v1, v16

    goto :goto_0

    .line 1725
    .end local v12    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v13    # "now":J
    .end local v16    # "userId":I
    .local v1, "userId":I
    .local v3, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v6    # "now":J
    :cond_1
    return-void
.end method

.method resetRestrictionSettings()V
    .locals 2

    .line 1538
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1539
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->reset()V

    .line 1540
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    .line 1542
    return-void

    .line 1540
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setDeviceIdleAllowlist([I[I)V
    .locals 0
    .param p1, "allAppids"    # [I
    .param p2, "exceptIdleAppids"    # [I

    .line 2850
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    .line 2851
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 2852
    return-void
.end method

.method tearDown()V
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1547
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->unregisterForUidObservers()V

    .line 1548
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->unregisterForSystemBroadcasts()V

    .line 1549
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeXml()V

    .line 1550
    return-void
.end method
