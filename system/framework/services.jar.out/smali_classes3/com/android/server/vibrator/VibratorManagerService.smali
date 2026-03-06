.class public Lcom/android/server/vibrator/VibratorManagerService;
.super Landroid/os/IVibratorManagerService$Stub;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;,
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;,
        Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;,
        Lcom/android/server/vibrator/VibratorManagerService$Injector;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;,
        Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;,
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;,
        Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;,
        Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTRIBUTES_ALL_BYPASS_FLAGS:I = 0x3

.field private static final BATTERY_STATS_REPEATING_VIBRATION_DURATION:J = 0x1388L

.field private static final DEBUG:Z = true

.field private static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

.field private static final RICHTAP_JAVA_TO_HIDL:Z = true

.field private static final TAG:Ljava/lang/String; = "VibratorManagerService"

.field private static final VIBRATION_CANCEL_WAIT_MILLIS:J = 0x1388L

.field private static final VIBRATOR_CONTROL_SERVICE:Ljava/lang/String; = "android.frameworks.vibrator.IVibratorControlService/default"


# instance fields
.field private final mAlwaysOnEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field final mAppOpsChangeListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mCapabilities:J

.field private mCombinedVibratorInfo:Landroid/os/VibratorInfo;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

.field private final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field private final mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

.field private final mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field private final mHandler:Landroid/os/Handler;

.field private mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

.field private final mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

.field private final mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

.field private mNextSession:Lcom/android/server/vibrator/VibrationSession;

.field private mServiceReady:Z

.field private final mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

.field private final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field private final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field private final mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

.field private final mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

.field private final mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

.field private final mVibratorIds:[I

.field private mVibratorInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

.field private final mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$9C5qR-p6NGG3nM1ySJAO3subppM(ILcom/android/server/vibrator/VibratorController;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->lambda$setAlwaysOnEffect$0(ILcom/android/server/vibrator/VibratorController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dPajBvP8G0Ta9blw1JsgCuv-t5A(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->lambda$fixupAlwaysOnEffectsLocked$1(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapabilities(Lcom/android/server/vibrator/VibratorManagerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExternalVibrationCallbacks(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameworkStatsLogger(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrationScaler(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCurrentSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService;->clearCurrentSessionLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSessionVibrationStepConductor(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;)Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->createSessionVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateVibrationAttemptDebugInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishAppOpModeLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfixupVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCombinedVibratorInfo(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/VibratorInfo;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getCombinedVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmaybeClearCurrentAndNextSessionsLocked(Lcom/android/server/vibrator/VibratorManagerService;Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->maybeClearCurrentAndNextSessionsLocked(Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeStartNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService;->maybeStartNextSessionLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSyncedVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->onSyncedVibrationComplete(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/vibrator/VibratorManagerService;->onVibrationComplete(IJJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monVibrationSessionComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->onVibrationSessionComplete(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;ZLcom/android/server/vibrator/VibrationStats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldCancelAppOpModeChangedLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelAppOpModeChangedLocked(Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldCancelOnFgUserRequest(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelOnFgUserRequest(Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisEffectValid(Landroid/os/CombinedVibration;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 137
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 136
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/vibrator/VibratorManagerService$Injector;

    .line 284
    invoke-direct {p0}, Landroid/os/IVibratorManagerService$Stub;-><init>()V

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 189
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 191
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    .line 193
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 223
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$2;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOpsChangeListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    .line 285
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 286
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

    .line 287
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 288
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getFrameworkStatsLogger(Landroid/os/Handler;)Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 290
    new-instance v0, Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 291
    new-instance v0, Lcom/android/server/vibrator/VibrationSettings;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 292
    new-instance v0, Lcom/android/server/vibrator/VibrationScaler;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {v0, v2, v3}, Lcom/android/server/vibrator/VibrationScaler;-><init>(Landroid/os/vibrator/VibrationConfig;Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 293
    new-instance v4, Lcom/android/server/vibrator/VibratorControlService;

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createVibratorControllerHolder()Lcom/android/server/vibrator/VibratorControllerHolder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iget-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    invoke-direct/range {v4 .. v10}, Lcom/android/server/vibrator/VibratorControlService;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorControllerHolder;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    .line 296
    new-instance v0, Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lcom/android/server/vibrator/InputDeviceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 298
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 299
    .local v0, "listener":Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getNativeWrapper()Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 300
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->init(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;)V

    .line 302
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 304
    .local v2, "recentDumpSizeLimit":I
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e010c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 306
    .local v3, "dumpSizeLimit":I
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e010b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 309
    .local v4, "dumpAggregationTimeLimit":I
    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;-><init>(III)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 312
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 314
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/AppOpsManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 315
    nop

    .line 316
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOpsChangeListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-virtual {v5, v6, v1, v7}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 319
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 320
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v5, "*vibrator*"

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 321
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 322
    new-instance v5, Lcom/android/server/vibrator/VibrationThread;

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    invoke-direct {v5, v6, v7}, Lcom/android/server/vibrator/VibrationThread;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 323
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 328
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getCapabilities()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    .line 329
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getVibratorIds()[I

    move-result-object v5

    .line 330
    .local v5, "vibratorIds":[I
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 331
    new-array v7, v6, [I

    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 332
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    goto :goto_1

    .line 335
    :cond_0
    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 336
    new-instance v7, Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    array-length v8, v8

    invoke-direct {v7, v8}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 337
    array-length v7, v5

    :goto_0
    nop

    if-ge v6, v7, :cond_1

    aget v8, v5, v6

    .line 338
    .local v8, "vibratorId":I
    nop

    .line 339
    invoke-virtual {p2, v8, v0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createVibratorController(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)Lcom/android/server/vibrator/VibratorController;

    move-result-object v9

    .line 340
    .local v9, "vibratorController":Lcom/android/server/vibrator/VibratorController;
    iget-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v10, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    .end local v8    # "vibratorId":I
    .end local v9    # "vibratorController":Lcom/android/server/vibrator/VibratorController;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 345
    :cond_1
    :goto_1
    new-instance v6, Lcom/android/server/vibrator/DeviceAdapter;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-direct {v6, v7, v8}, Lcom/android/server/vibrator/DeviceAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V

    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 349
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    .line 350
    nop

    .line 351
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->clearSessions()V

    .line 353
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 354
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v7}, Lcom/android/server/vibrator/VibratorController;->reset()V

    .line 353
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 357
    .end local v6    # "i":I
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 358
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/android/server/pm/UserManagerInternal;->shouldShowNotificationForBackgroundUserSounds()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 360
    const-string v7, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    :cond_3
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x4

    invoke-virtual {p1, v7, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 364
    new-instance v7, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    invoke-direct {v7, p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    const-string v8, "external_vibrator_service"

    invoke-virtual {p2, v8, v7}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 365
    const-string v7, "android.frameworks.vibrator.IVibratorControlService/default"

    invoke-virtual {p2, v7}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->isServiceDeclared(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 366
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    invoke-virtual {p2, v7, v8}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 368
    :cond_4
    return-void
.end method

.method private checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I
    .locals 5
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 1679
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 1680
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v1

    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    .line 1679
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 1682
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    .line 1684
    .local v1, "opMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check AppOp mode VIBRATE for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returned audio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", op="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibratorManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    .end local v1    # "opMode":I
    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result v1

    .line 1689
    .local v1, "fixedMode":I
    if-eq v0, v1, :cond_0

    if-nez v1, :cond_0

    .line 1693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bypassing DND for vibrate from uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_0
    return v1
.end method

.method private clearCurrentSessionLocked()V
    .locals 1

    .line 2510
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_0

    .line 2511
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->unlinkToDeath()V

    .line 2512
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 2513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 2514
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2516
    :cond_0
    return-void
.end method

.method private clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 1
    .param p1, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 2490
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 2491
    return-void
.end method

.method private clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 2
    .param p1, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;
    .param p2, "endedBy"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 2496
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_0

    .line 2498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping pending vibration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 2503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 2505
    :cond_0
    return-void
.end method

.method private createSessionVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;)Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 1
    .param p1, "vib"    # Lcom/android/server/vibrator/HalVibration;
    .param p2, "deviceAdapter"    # Lcom/android/server/vibrator/DeviceAdapter;

    .line 1316
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    return-object v0
.end method

.method private createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 9
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .param p2, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .param p3, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1373
    new-instance v0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    .line 1374
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->findVibrationType(Landroid/os/CombinedVibration;)I

    move-result v3

    new-instance v4, Lcom/android/server/vibrator/VibrationStats;

    invoke-direct {v4}, Lcom/android/server/vibrator/VibrationStats;-><init>()V

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v5, p1

    move-object v2, p2

    move-object v1, p3

    .end local p1    # "effect":Landroid/os/CombinedVibration;
    .end local p2    # "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .end local p3    # "status":Lcom/android/server/vibrator/VibrationSession$Status;
    .local v1, "status":Lcom/android/server/vibrator/VibrationSession$Status;
    .local v2, "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .local v5, "effect":Landroid/os/CombinedVibration;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V

    .line 1373
    return-object v0
.end method

.method private createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 2
    .param p1, "vib"    # Lcom/android/server/vibrator/HalVibration;

    .line 1311
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    return-object v0
.end method

.method private createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 10
    .param p1, "vib"    # Lcom/android/server/vibrator/HalVibration;
    .param p2, "deviceAdapter"    # Lcom/android/server/vibrator/DeviceAdapter;
    .param p3, "isInSession"    # Z

    .line 1321
    const/4 v0, 0x0

    .line 1323
    .local v0, "requestVibrationParamsFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 1325
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    .line 1324
    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/VibratorControlService;->shouldRequestVibrationParams(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1326
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v3, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 1328
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 1329
    invoke-virtual {v4}, Lcom/android/server/vibrator/VibrationSettings;->getRequestVibrationParamsTimeoutMs()I

    move-result v4

    .line 1327
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/vibrator/VibratorControlService;->triggerVibrationParamsRequest(III)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 1332
    :cond_0
    move-object v8, v0

    .end local v0    # "requestVibrationParamsFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local v8, "requestVibrationParamsFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :goto_0
    new-instance v1, Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    move-object v2, p1

    move-object v5, p2

    move v3, p3

    .end local p1    # "vib":Lcom/android/server/vibrator/HalVibration;
    .end local p2    # "deviceAdapter":Lcom/android/server/vibrator/DeviceAdapter;
    .end local p3    # "isInSession":Z
    .local v2, "vib":Lcom/android/server/vibrator/HalVibration;
    .local v3, "isInSession":Z
    .local v5, "deviceAdapter":Lcom/android/server/vibrator/DeviceAdapter;
    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/VibrationStepConductor;-><init>(Lcom/android/server/vibrator/HalVibration;ZLcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceAdapter;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/util/concurrent/CompletableFuture;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V

    return-object v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1111
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1113
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-string v1, "VibratorManagerService"

    const-string v2, "Dumping vibrator manager service to proto..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1116
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationSettings;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1117
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationScaler;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1118
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v2, :cond_0

    .line 1119
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-interface {v2, v0, v3, v4}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    .line 1125
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1122
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1123
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const-wide v4, 0x20500000001L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1122
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 1125
    .end local v2    # "i":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1127
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibratorControlService;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1128
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1129
    return-void

    .line 1125
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dumpText(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "w"    # Ljava/io/PrintWriter;

    .line 1060
    const-string v0, "VibratorManagerService"

    const-string v1, "Dumping vibrator manager service to text..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1063
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1064
    :try_start_0
    const-string v2, "VibratorManagerService:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1067
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationSettings;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1068
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1070
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationScaler;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1071
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1073
    const-string v2, "Vibrators:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1075
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1076
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v3, v0}, Lcom/android/server/vibrator/VibratorController;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1075
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1099
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1075
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 1078
    .end local v2    # "i":I
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1079
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1081
    const-string v2, "CurrentVibration:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1083
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v2, :cond_1

    .line 1084
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_1

    .line 1086
    :cond_1
    const-string v2, "null"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    :goto_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1089
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1091
    const-string v2, "NextVibration:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1093
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v2, :cond_2

    .line 1094
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_2

    .line 1096
    :cond_2
    const-string v2, "null"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    :goto_2
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1099
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1102
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1103
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1105
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1106
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1107
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibratorControlService;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1108
    return-void

    .line 1099
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/vibrator/VibrationSession;
    .param p2, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1301
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1302
    return-void
.end method

.method private endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/vibrator/VibrationSession;
    .param p2, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;
    .param p3, "endedBy"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 1306
    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, v0}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    .line 1307
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 1308
    return-void
.end method

.method private enforceUpdateAppOpsStatsPermission(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 1728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1729
    return-void

    .line 1731
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1732
    return-void

    .line 1734
    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 1735
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1734
    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1736
    return-void
.end method

.method private static extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;
    .locals 3
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 1827
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    nop

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 1828
    .local v0, "composed":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1829
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 1830
    .local v1, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v2, v1, Landroid/os/vibrator/PrebakedSegment;

    nop

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    .line 1831
    .local v2, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    return-object v2

    .line 1835
    .end local v0    # "composed":Landroid/os/VibrationEffect$Composed;
    .end local v1    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v2    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 4
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish AppOp mode VIBRATE for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1721
    return-void
.end method

.method private fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;
    .locals 9
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CombinedVibration;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/os/vibrator/PrebakedSegment;",
            ">;"
        }
    .end annotation

    .line 1797
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1798
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 1799
    .local v0, "syncedEffect":Landroid/os/VibrationEffect;
    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/os/VibrationEffect;)V

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v0

    .line 1800
    .local v0, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    goto :goto_0

    .end local v0    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_5

    .line 1801
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v0

    .line 1806
    .restart local v0    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    :goto_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1807
    .local v2, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1808
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v4

    .line 1809
    .local v4, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    if-nez v4, :cond_1

    .line 1810
    const-string v5, "VibratorManagerService"

    const-string v6, "Only prebaked effects supported for always-on."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    return-object v1

    .line 1813
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1814
    .local v5, "vibratorId":I
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/vibrator/VibratorController;

    .line 1815
    .local v6, "vibrator":Lcom/android/server/vibrator/VibratorController;
    if-eqz v6, :cond_2

    const-wide/16 v7, 0x40

    invoke-virtual {v6, v7, v8}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1816
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1807
    .end local v4    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .end local v5    # "vibratorId":I
    .end local v6    # "vibrator":Lcom/android/server/vibrator/VibratorController;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 1819
    .end local v3    # "i":I
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1820
    return-object v1

    .line 1822
    :cond_4
    return-object v2

    .line 1804
    .end local v0    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .end local v2    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    :cond_5
    return-object v1
.end method

.method private fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "attrs"    # Landroid/os/VibrationAttributes;

    .line 1844
    const/4 v0, 0x1

    nop

    if-ne p1, v0, :cond_0

    .line 1845
    invoke-virtual {p2, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    const/4 v0, 0x0

    return v0

    .line 1848
    :cond_0
    return p1
.end method

.method private fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .locals 4
    .param p1, "attrs"    # Landroid/os/VibrationAttributes;
    .param p2, "effect"    # Landroid/os/CombinedVibration;

    .line 1767
    if-nez p1, :cond_0

    .line 1768
    sget-object p1, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 1770
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 1771
    .local v0, "usage":I
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1772
    invoke-virtual {p2}, Landroid/os/CombinedVibration;->isHapticFeedbackCandidate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1773
    const/16 v0, 0x12

    .line 1775
    :cond_1
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v1

    .line 1776
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_2

    .line 1777
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    nop

    if-nez v2, :cond_2

    .line 1778
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    nop

    if-nez v2, :cond_2

    .line 1779
    const-string v2, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1781
    and-int/lit8 v1, v1, -0x4

    .line 1784
    :cond_2
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1785
    return-object p1

    .line 1787
    :cond_3
    new-instance v2, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v2, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 1788
    invoke-virtual {v2, v0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v2

    .line 1789
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object v2

    .line 1790
    invoke-virtual {v2}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v2

    .line 1787
    return-object v2
.end method

.method private getCombinedVibratorInfo()Landroid/os/VibratorInfo;
    .locals 2

    .line 2585
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2587
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 2588
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
    .locals 4

    .line 2568
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2570
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    if-eqz v1, :cond_0

    .line 2571
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    monitor-exit v0

    return-object v1

    .line 2580
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2573
    :cond_0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getCombinedVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    .line 2574
    .local v1, "combinedVibratorInfo":Landroid/os/VibratorInfo;
    if-nez v1, :cond_1

    .line 2575
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 2577
    :cond_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 2579
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2578
    invoke-virtual {v2, v3, v1}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createHapticFeedbackVibrationProvider(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    monitor-exit v0

    .line 2577
    return-object v2

    .line 2580
    .end local v1    # "combinedVibratorInfo":Landroid/os/VibratorInfo;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I
    .locals 2
    .param p0, "session"    # Lcom/android/server/vibrator/VibrationSession;

    .line 1558
    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 1559
    .local v0, "usage":I
    if-nez v0, :cond_1

    .line 1560
    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1561
    const/16 v0, 0x21

    goto :goto_0

    .line 1563
    :cond_0
    const/16 v0, 0x12

    .line 1567
    :cond_1
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 1583
    const/4 v1, 0x0

    return v1

    .line 1576
    :sswitch_0
    const/4 v1, 0x2

    return v1

    .line 1573
    :sswitch_1
    const/4 v1, 0x3

    return v1

    .line 1579
    :sswitch_2
    const/4 v1, 0x1

    return v1

    .line 1569
    :sswitch_3
    const/4 v1, 0x5

    return v1

    .line 1571
    :sswitch_4
    const/4 v1, 0x4

    return v1

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_3
        0x22 -> :sswitch_2
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x41 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 1852
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isEffectValid(Landroid/os/CombinedVibration;)Z
    .locals 5
    .param p0, "effect"    # Landroid/os/CombinedVibration;

    .line 1747
    const/4 v0, 0x0

    const-string v1, "VibratorManagerService"

    if-nez p0, :cond_0

    .line 1748
    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    return v0

    .line 1752
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    nop

    .line 1757
    const/4 v0, 0x1

    return v0

    .line 1753
    :catch_0
    move-exception v2

    .line 1754
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered issue when verifying vibration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1755
    return v0
.end method

.method private static synthetic lambda$fixupAlwaysOnEffectsLocked$1(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;
    .locals 0
    .param p0, "syncedEffect"    # Landroid/os/VibrationEffect;
    .param p1, "unused"    # Lcom/android/server/vibrator/VibratorController;

    .line 1799
    return-object p0
.end method

.method private static synthetic lambda$setAlwaysOnEffect$0(ILcom/android/server/vibrator/VibratorController;)V
    .locals 2
    .param p0, "alwaysOnId"    # I
    .param p1, "v"    # Lcom/android/server/vibrator/VibratorController;

    .line 483
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    .line 486
    :cond_0
    return-void
.end method

.method private logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1346
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 1347
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "uid":I
    .end local p2    # "deviceId":I
    .end local p3    # "opPkg":Ljava/lang/String;
    .end local p4    # "reason":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "deviceId":I
    .local v4, "opPkg":Ljava/lang/String;
    .local v5, "reason":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 1349
    .local v0, "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, p5}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 1350
    return-void
.end method

.method private logAndRecordSessionAttempt(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 15
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .param p2, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1358
    new-instance v0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;

    .line 1360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v14}, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;JJJJJZLjava/util/List;)V

    .line 1358
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 1363
    return-void
.end method

.method private logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    .line 1366
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-interface {p1, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V

    .line 1367
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 1368
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 1369
    return-void
.end method

.method private logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 1
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .param p2, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .param p3, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1354
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 1355
    return-void
.end method

.method private logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "attrs"    # Landroid/os/VibrationAttributes;
    .param p3, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1380
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$3;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "VibratorManagerService"

    packed-switch v0, :pswitch_data_0

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration for uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and with attrs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ended with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1412
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring incoming vibration because it came from a virtual device, attrs= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    goto :goto_0

    .line 1406
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring incoming vibration because of ringer mode, attrs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    goto :goto_0

    .line 1401
    :pswitch_2
    const-string v0, "Ignoring incoming vibration in favor of repeating vibration"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    goto :goto_0

    .line 1395
    :pswitch_3
    const-string v0, "Ignoring incoming vibration in favor of ongoing vibration with higher importance"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    goto :goto_0

    .line 1390
    :pswitch_4
    const-string v0, "Ignoring incoming vibration for current external vibration"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    goto :goto_0

    .line 1386
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Would be an error: vibrate from uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    goto :goto_0

    .line 1382
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is background, attrs= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    nop

    .line 1422
    :goto_0
    return-void

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

.method private maybeClearCurrentAndNextSessionsLocked(Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 1
    .param p2, "endStatus"    # Lcom/android/server/vibrator/VibrationSession$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/vibrator/VibrationSession;",
            ">;",
            "Lcom/android/server/vibrator/VibrationSession$Status;",
            ")V"
        }
    .end annotation

    .line 2521
    .local p1, "shouldEndSessionPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/vibrator/VibrationSession;>;"
    nop

    .line 2529
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v0, v0, Lcom/android/server/vibrator/ExternalVibrationSession;

    nop

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 2530
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2531
    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2533
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v0, v0, Lcom/android/server/vibrator/ExternalVibrationSession;

    nop

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 2534
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2535
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v0, p2}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2538
    :cond_1
    return-void
.end method

.method private maybeStartNextSessionLocked()V
    .locals 6

    .line 1278
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v1, v0, Lcom/android/server/vibrator/SingleVibrationSession;

    const-string v2, "VibratorManagerService"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/server/vibrator/SingleVibrationSession;

    .line 1279
    .local v0, "session":Lcom/android/server/vibrator/SingleVibrationSession;
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1280
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    .line 1281
    .local v1, "errorStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    if-eqz v1, :cond_0

    .line 1283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting next vibration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 1287
    .end local v1    # "errorStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    :cond_0
    goto :goto_0

    .end local v0    # "session":Lcom/android/server/vibrator/SingleVibrationSession;
    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v1, v0, Lcom/android/server/vibrator/VendorVibrationSession;

    nop

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/server/vibrator/VendorVibrationSession;

    .line 1288
    .local v0, "session":Lcom/android/server/vibrator/VendorVibrationSession;
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1289
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    .line 1290
    .restart local v1    # "errorStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    if-eqz v1, :cond_2

    .line 1292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting next session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 1297
    .end local v0    # "session":Lcom/android/server/vibrator/VendorVibrationSession;
    .end local v1    # "errorStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    :cond_2
    :goto_0
    return-void
.end method

.method static native nativeCancelSynced(J)V
.end method

.method static native nativeClearSessions(J)V
.end method

.method static native nativeEndSession(JJZ)V
.end method

.method static native nativeGetCapabilities(J)J
.end method

.method static native nativeGetFinalizer()J
.end method

.method static native nativeGetVibratorIds(J)[I
.end method

.method static native nativeInit(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;)J
.end method

.method static native nativePrepareSynced(J[I)Z
.end method

.method static native nativeStartSession(JJ[I)Z
.end method

.method static native nativeTriggerSynced(JJ)Z
.end method

.method private onAllVibratorsLocked(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;)V"
        }
    .end annotation

    .line 1882
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/vibrator/VibratorController;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1882
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1885
    .end local v0    # "i":I
    return-void
.end method

.method private onSyncedVibrationComplete(J)V
    .locals 4
    .param p1, "vibrationId"    # J

    .line 1440
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_0

    .line 1443
    const-string v1, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Synced vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " complete, notifying thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v1, p1, p2}, Lcom/android/server/vibrator/VibrationSession;->notifySyncedVibratorsCallback(J)V

    goto :goto_0

    .line 1447
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 1448
    return-void

    .line 1447
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onVibrationComplete(IJJ)V
    .locals 9
    .param p1, "vibratorId"    # I
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 1453
    const-string v0, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrators released after finished vibration mVibrators size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1455
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController;->off()V

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1459
    .end local v0    # "i":I
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1460
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_1

    .line 1462
    const-string v0, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " on vibrator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " complete, notifying thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    .end local p1    # "vibratorId":I
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    .local v4, "vibratorId":I
    .local v5, "vibrationId":J
    .local v7, "stepId":J
    :try_start_1
    invoke-interface/range {v3 .. v8}, Lcom/android/server/vibrator/VibrationSession;->notifyVibratorCallback(IJJ)V

    goto :goto_1

    .line 1467
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .end local v4    # "vibratorId":I
    .end local v5    # "vibrationId":J
    .end local v7    # "stepId":J
    .restart local p1    # "vibratorId":I
    .restart local p2    # "vibrationId":J
    .restart local p4    # "stepId":J
    :catchall_1
    move-exception v0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-object p1, v0

    .end local p1    # "vibratorId":I
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    .restart local v4    # "vibratorId":I
    .restart local v5    # "vibrationId":J
    .restart local v7    # "stepId":J
    goto :goto_2

    .line 1460
    .end local v4    # "vibratorId":I
    .end local v5    # "vibrationId":J
    .end local v7    # "stepId":J
    .restart local p1    # "vibratorId":I
    .restart local p2    # "vibrationId":J
    .restart local p4    # "stepId":J
    :cond_1
    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 1467
    .end local p1    # "vibratorId":I
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    .restart local v4    # "vibratorId":I
    .restart local v5    # "vibrationId":J
    .restart local v7    # "stepId":J
    :goto_1
    monitor-exit v1

    .line 1468
    return-void

    .line 1467
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onVibrationSessionComplete(J)V
    .locals 4
    .param p1, "sessionId"    # J

    .line 1425
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1426
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getSessionId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 1433
    :cond_1
    const-string v1, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " complete, notifying session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->notifySessionCallback()V

    .line 1436
    monitor-exit v0

    .line 1437
    return-void

    .line 1436
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1428
    :goto_0
    const-string v1, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " callback ignored"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    monitor-exit v0

    return-void

    .line 1436
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;
    .locals 15
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "constant"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "effect"    # Landroid/os/VibrationEffect;
    .param p8, "attrs"    # Landroid/os/VibrationAttributes;

    .line 661
    move/from16 v0, p4

    if-nez p7, :cond_0

    .line 662
    sget-object v6, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performHapticFeedbackWithEffect; vibration absent for constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v1, 0x0

    return-object v1

    .line 668
    :cond_0
    invoke-static/range {p7 .. p7}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v11

    .line 669
    .local v11, "vib":Landroid/os/CombinedVibration;
    move/from16 v8, p1

    invoke-static {v8, v0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logPerformHapticsFeedbackIfKeyboard(II)V

    .line 670
    move-object v7, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v12, p8

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithoutPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object v1

    return-object v1
.end method

.method private setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V
    .locals 2
    .param p1, "externalControl"    # Z
    .param p2, "vibrationStats"    # Lcom/android/server/vibrator/VibrationStats;

    .line 1177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    .line 1179
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibrationStats;->reportSetExternalControl()V

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1181
    .end local v0    # "i":I
    return-void
.end method

.method private shouldCancelAppOpModeChangedLocked(Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 2
    .param p1, "session"    # Lcom/android/server/vibrator/VibrationSession;

    .line 1867
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1868
    return v0

    .line 1870
    :cond_0
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private shouldCancelOnFgUserRequest(Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 3
    .param p1, "session"    # Lcom/android/server/vibrator/VibrationSession;

    .line 1874
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1875
    return v0

    .line 1877
    :cond_0
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsageClass()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method private shouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibrationSession;)Z
    .locals 4
    .param p1, "session"    # Lcom/android/server/vibrator/VibrationSession;

    .line 1858
    if-nez p1, :cond_0

    .line 1859
    const/4 v0, 0x0

    return v0

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    .line 1862
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCreateUptimeMillis()J

    move-result-wide v2

    .line 1861
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/vibrator/VibrationSettings;->shouldCancelVibrationOnScreenOff(Lcom/android/server/vibrator/VibrationSession$CallerInfo;J)Z

    move-result v0

    return v0
.end method

.method private shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z
    .locals 4
    .param p1, "session"    # Lcom/android/server/vibrator/VibrationSession;
    .param p2, "usageFilter"    # I
    .param p3, "tokenFilter"    # Landroid/os/IBinder;

    .line 1652
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1653
    return v0

    .line 1655
    :cond_0
    instance-of v1, p1, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v1, :cond_1

    .line 1657
    return v0

    .line 1659
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq p3, v1, :cond_2

    .line 1661
    return v0

    .line 1663
    :cond_2
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    .line 1664
    .local v1, "usage":I
    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 1667
    if-eqz p2, :cond_3

    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    return v0

    .line 1670
    :cond_5
    and-int v3, p2, v1

    if-ne v3, v1, :cond_6

    move v0, v2

    :cond_6
    return v0
.end method

.method private static shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 5
    .param p0, "newSession"    # Lcom/android/server/vibrator/VibrationSession;
    .param p1, "ongoingSession"    # Lcom/android/server/vibrator/VibrationSession;

    .line 1525
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I

    move-result v0

    .line 1526
    .local v0, "newSessionImportance":I
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I

    move-result v1

    .line 1528
    .local v1, "ongoingSessionImportance":I
    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1530
    return-object v2

    .line 1533
    :cond_0
    if-le v1, v0, :cond_1

    .line 1535
    new-instance v2, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1536
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1535
    return-object v2

    .line 1540
    :cond_1
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1542
    new-instance v2, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1543
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1542
    return-object v2

    .line 1547
    :cond_2
    return-object v2
.end method

.method private shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 8
    .param p1, "session"    # Lcom/android/server/vibrator/VibrationSession;

    .line 1480
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/nothing/server/ext/INtVibratorManager;

    .line 1481
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    .line 1482
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 1483
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v7

    .line 1484
    :goto_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v7

    .line 1481
    :goto_1
    invoke-interface/range {v1 .. v6}, Lcom/nothing/server/ext/INtVibratorManager;->nTshouldIgnoreForOngoingLocked(Ljava/lang/String;Ljava/lang/String;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v0

    .line 1485
    .local v0, "ntShouldIgonore":I
    if-lez v0, :cond_3

    .line 1486
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1487
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object v1

    .line 1489
    :cond_2
    return-object v7

    .line 1493
    :cond_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_4

    .line 1494
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-static {p1, v1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v1

    .line 1496
    .local v1, "vibrationEndInfo":Lcom/android/server/vibrator/Vibration$EndInfo;
    if-eqz v1, :cond_4

    .line 1499
    return-object v1

    .line 1503
    .end local v1    # "vibrationEndInfo":Lcom/android/server/vibrator/Vibration$EndInfo;
    :cond_4
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_6

    .line 1504
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->wasEndRequested()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1506
    return-object v7

    .line 1509
    :cond_5
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-static {p1, v1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v1

    return-object v1

    .line 1512
    :cond_6
    return-object v7
.end method

.method private shouldIgnoreHapticFeedback(ILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 3
    .param p1, "constant"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "hapticVibrationProvider"    # Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 1629
    const-string v0, "VibratorManagerService"

    if-nez p3, :cond_0

    .line 1630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; haptic vibration provider not ready."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v0

    .line 1633
    :cond_0
    invoke-virtual {p3, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->isRestrictedHapticFeedback(I)Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    .line 1634
    const-string v1, "android.permission.VIBRATE_SYSTEM_CONSTANTS"

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; no permission for system constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v0

    .line 1638
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 3
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 1607
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->shouldIgnoreVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0

    .line 1608
    .local v0, "statusFromSettings":Lcom/android/server/vibrator/VibrationSession$Status;
    if-eqz v0, :cond_0

    .line 1609
    return-object v0

    .line 1612
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result v1

    .line 1613
    .local v1, "mode":I
    if-eqz v1, :cond_2

    .line 1614
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1617
    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v2

    .line 1619
    :cond_1
    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v2

    .line 1623
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private shouldPipelineVibrationLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/HalVibration;)Z
    .locals 4
    .param p1, "currentSession"    # Lcom/android/server/vibrator/VibrationSession;
    .param p2, "nextVibration"    # Lcom/android/server/vibrator/HalVibration;

    .line 1591
    instance-of v0, p1, Lcom/android/server/vibrator/SingleVibrationSession;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/vibrator/SingleVibrationSession;

    .line 1595
    .local v0, "currentVibration":Lcom/android/server/vibrator/SingleVibrationSession;
    invoke-virtual {v0}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 1596
    invoke-virtual {v3}, Landroid/os/vibrator/VibrationConfig;->getVibrationPipelineMaxDurationMs()I

    move-result v3

    .line 1595
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/server/vibrator/HalVibration;->canPipelineWith(Lcom/android/server/vibrator/HalVibration;Landroid/util/SparseArray;I)Z

    move-result v1

    return v1

    .line 1593
    .end local v0    # "currentVibration":Lcom/android/server/vibrator/SingleVibrationSession;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I
    .locals 4
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 1701
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1704
    .local v0, "mode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start AppOp mode VIBRATE for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result v1

    return v1
.end method

.method private startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 10
    .param p1, "session"    # Lcom/android/server/vibrator/VendorVibrationSession;

    .line 991
    const-string v0, "VibratorManagerService"

    const-string v1, "startSessionLocked"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 993
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v4

    .line 995
    .local v4, "sessionId":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting session "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " in HAL"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 999
    return-object v0

    .line 1031
    .end local v4    # "sessionId":J
    :catchall_0
    move-exception v0

    goto/16 :goto_0

    .line 1001
    .restart local v4    # "sessionId":J
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    .line 1002
    .local v1, "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result v6

    .line 1003
    .local v6, "mode":I
    packed-switch v6, :pswitch_data_0

    .line 1028
    :pswitch_0
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1028
    return-object v0

    .line 1025
    :pswitch_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start AppOpsManager operation errored for uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1031
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1026
    return-object v0

    .line 1005
    :pswitch_2
    :try_start_3
    const-string v7, "vibration"

    const/4 v8, 0x0

    invoke-static {v2, v3, v7, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1007
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1008
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->linkToDeath()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    .line 1010
    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1011
    iput-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1012
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1031
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1012
    return-object v0

    .line 1014
    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getVibratorIds()[I

    move-result-object v9

    invoke-virtual {v7, v4, v5, v9}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->startSession(J[I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1015
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error starting session "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " on vibrators "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getVibratorIds()[I

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1015
    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->unlinkToDeath()V

    .line 1018
    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1019
    iput-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1020
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1031
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1020
    return-object v0

    .line 1022
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyStart()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1023
    nop

    .line 1031
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1023
    return-object v8

    .line 1031
    .end local v1    # "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .end local v4    # "sessionId":J
    .end local v6    # "mode":I
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1032
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startVibrationLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 6
    .param p1, "session"    # Lcom/android/server/vibrator/SingleVibrationSession;

    .line 1205
    const-string v0, "startVibrationLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1209
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/HalVibration;->getEffectToPlay()Landroid/os/CombinedVibration;

    move-result-object v0

    .line 1210
    .local v0, "combEffect":Landroid/os/CombinedVibration;
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nothing/server/ext/INtVibratorManager;

    .line 1211
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-interface {v3, v0, v4, v5}, Lcom/nothing/server/ext/INtVibratorManager;->doAacVibrate(Landroid/os/CombinedVibration;ILandroid/os/VibrationAttributes;)I

    move-result v3

    .line 1212
    .local v3, "doAacVibrate":I
    if-lez v3, :cond_1

    .line 1213
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1214
    sget-object v4, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1214
    return-object v4

    .line 1234
    .end local v0    # "combEffect":Landroid/os/CombinedVibration;
    .end local v3    # "doAacVibrate":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1216
    .restart local v0    # "combEffect":Landroid/os/CombinedVibration;
    .restart local v3    # "doAacVibrate":I
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1216
    return-object v4

    .line 1220
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-virtual {v4}, Lcom/android/server/vibrator/InputDeviceDelegate;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1221
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnInputDevicesLocked(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1234
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1221
    return-object v4

    .line 1223
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v4, :cond_3

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1234
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1224
    return-object v4

    .line 1230
    :cond_3
    :try_start_4
    sget-object v4, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1231
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1232
    nop

    .line 1234
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1232
    const/4 v1, 0x0

    return-object v1

    .line 1234
    .end local v0    # "combEffect":Landroid/os/CombinedVibration;
    .end local v3    # "doAacVibrate":I
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1235
    throw v0
.end method

.method private startVibrationOnInputDevicesLocked(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 3
    .param p1, "vib"    # Lcom/android/server/vibrator/HalVibration;

    .line 1339
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/HalVibration;->scaleEffects(Lcom/android/server/vibrator/VibrationScaler;)V

    .line 1340
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p1}, Lcom/android/server/vibrator/HalVibration;->getEffectToPlay()Landroid/os/CombinedVibration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;->vibrateIfAvailable(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)Z

    .line 1341
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v0
.end method

.method private startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 7
    .param p1, "session"    # Lcom/android/server/vibrator/SingleVibrationSession;

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting vibration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " on thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    .line 1245
    .local v0, "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/SingleVibrationSession;->setVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)V

    .line 1246
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v2

    .line 1247
    .local v2, "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result v3

    .line 1248
    .local v3, "mode":I
    packed-switch v3, :pswitch_data_0

    .line 1272
    :pswitch_0
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v1

    .line 1269
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start AppOpsManager operation errored for uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v1

    .line 1250
    :pswitch_2
    const-string v1, "vibration"

    const/4 v4, 0x0

    const-wide/32 v5, 0x800000

    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1252
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1253
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->linkToDeath()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 1255
    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1256
    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1257
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v1

    .line 1259
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationThread;->runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1261
    invoke-virtual {p1, v4}, Lcom/android/server/vibrator/SingleVibrationSession;->setVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)V

    .line 1262
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->unlinkToDeath()V

    .line 1263
    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1264
    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1265
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v1

    .line 1267
    :cond_1
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/vibrator/VibratorController;",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1889
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/vibrator/VibratorController;TT;>;"
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 1890
    .local v0, "ret":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1891
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1893
    .end local v1    # "i":I
    return-object v0
.end method

.method private updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V
    .locals 6
    .param p1, "vib"    # Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    .line 1185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1186
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 1187
    .local v1, "vibrator":Lcom/android/server/vibrator/VibratorController;
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    .line 1188
    .local v2, "effect":Landroid/os/vibrator/PrebakedSegment;
    if-nez v1, :cond_0

    .line 1189
    goto :goto_2

    .line 1191
    :cond_0
    iget-object v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v3

    .line 1192
    .local v3, "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    if-nez v3, :cond_1

    .line 1193
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/vibrator/PrebakedSegment;I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v2

    goto :goto_1

    .line 1196
    :cond_1
    const/4 v2, 0x0

    .line 1198
    :goto_1
    iget v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    .line 1185
    .end local v1    # "vibrator":Lcom/android/server/vibrator/VibratorController;
    .end local v2    # "effect":Landroid/os/vibrator/PrebakedSegment;
    .end local v3    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1200
    .end local v0    # "i":I
    return-void
.end method

.method private vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .locals 17
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "effect"    # Landroid/os/CombinedVibration;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "token"    # Landroid/os/IBinder;

    .line 700
    move-object/from16 v1, p0

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v3, p5

    move-object/from16 v9, p7

    const-string v0, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrate uid ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", opPkg = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", reason = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", attrs = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0, v8, v6}, Lcom/nothing/server/ext/INtVibratorManager;->isNeedToSkipVibrate(Landroid/os/CombinedVibration;Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 703
    return-object v10

    .line 707
    :cond_0
    new-instance v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 708
    .local v2, "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    if-nez v9, :cond_1

    .line 709
    const-string v0, "VibratorManagerService"

    const-string v4, "token must not be null"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {v1, v8, v2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 711
    return-object v10

    .line 713
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    .line 714
    invoke-static {v8}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 715
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {v1, v8, v2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 716
    return-object v10

    .line 721
    :cond_2
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0, v8, v6}, Lcom/nothing/server/ext/INtVibratorManager;->disposeRichtapEffectParams(Landroid/os/CombinedVibration;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    return-object v10

    .line 726
    :cond_3
    invoke-virtual {v8}, Landroid/os/CombinedVibration;->hasVendorEffects()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    nop

    .line 732
    const-string v0, "android.permission.VIBRATE_VENDOR_EFFECTS"

    invoke-direct {v1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 733
    const-string v0, "VibratorManagerService"

    const-string v4, "vibrate; no permission for vendor effects"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {v1, v8, v2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 735
    return-object v10

    .line 739
    :cond_4
    new-instance v0, Lcom/android/server/vibrator/SingleVibrationSession;

    invoke-direct {v0, v9, v2, v8}, Lcom/android/server/vibrator/SingleVibrationSession;-><init>(Landroid/os/IBinder;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V

    move-object v4, v0

    .line 740
    .local v4, "session":Lcom/android/server/vibrator/SingleVibrationSession;
    invoke-virtual {v4}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v5

    .line 741
    .local v5, "vib":Lcom/android/server/vibrator/HalVibration;
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    invoke-virtual {v5, v7}, Lcom/android/server/vibrator/HalVibration;->fillFallbacks(Ljava/util/function/IntFunction;)V

    .line 743
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 746
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 749
    :cond_5
    iget-object v7, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 751
    :try_start_0
    const-string v0, "VibratorManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting vibrate for vibration "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v5, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-direct {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0

    .line 756
    .local v0, "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    const/4 v11, 0x0

    .line 759
    .local v11, "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    if-nez v0, :cond_6

    .line 760
    invoke-direct {v1, v4}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v12

    .line 761
    .local v12, "vibrationEndInfo":Lcom/android/server/vibrator/Vibration$EndInfo;
    if-eqz v12, :cond_6

    .line 762
    iget-object v13, v12, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    move-object v0, v13

    .line 763
    iget-object v13, v12, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-object v11, v13

    move-object v12, v11

    move-object v11, v0

    goto :goto_0

    .line 823
    .end local v0    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .end local v11    # "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .end local v12    # "vibrationEndInfo":Lcom/android/server/vibrator/Vibration$EndInfo;
    :catchall_0
    move-exception v0

    move-object v10, v7

    goto/16 :goto_6

    .line 768
    .restart local v0    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .restart local v11    # "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    :cond_6
    move-object v12, v11

    move-object v11, v0

    .end local v0    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .local v11, "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .local v12, "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    :goto_0
    if-nez v11, :cond_d

    .line 770
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    .local v13, "ident":J
    :try_start_1
    instance-of v0, v8, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_a

    .line 775
    move-object v0, v8

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 776
    .local v0, "vibrEffect":Landroid/os/VibrationEffect;
    sget-object v15, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v15}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v15, v0}, Lcom/nothing/server/ext/INtVibratorManager;->checkIfEffectHe2_0(Landroid/os/VibrationEffect;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 777
    sget-object v15, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v15}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v15, v0}, Lcom/nothing/server/ext/INtVibratorManager;->isSameSender(Landroid/os/VibrationEffect;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 778
    sget-object v15, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v15}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v15, v0}, Lcom/nothing/server/ext/INtVibratorManager;->checkIfFirstHe2_0Package(Landroid/os/VibrationEffect;)Z

    move-result v15

    .line 779
    .local v15, "firstPackage":Z
    if-nez v15, :cond_7

    .line 781
    move-object/from16 v16, v10

    const-string v10, "VibratorManagerService"

    const-string v3, "Ignoring interrupted package,just abbandon"

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 782
    nop

    .line 814
    :try_start_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 782
    return-object v16

    .line 814
    .end local v0    # "vibrEffect":Landroid/os/VibrationEffect;
    .end local v15    # "firstPackage":Z
    :catchall_1
    move-exception v0

    move-object v10, v7

    goto/16 :goto_4

    .line 784
    .restart local v0    # "vibrEffect":Landroid/os/VibrationEffect;
    .restart local v15    # "firstPackage":Z
    :cond_7
    :try_start_3
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v3}, Lcom/nothing/server/ext/INtVibratorManager;->doStopVibrateLocked()V

    .line 785
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v3, v0}, Lcom/nothing/server/ext/INtVibratorManager;->setCurrentSenderId(Landroid/os/VibrationEffect;)V

    .line 786
    .end local v15    # "firstPackage":Z
    goto :goto_1

    .line 788
    :cond_8
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v3}, Lcom/nothing/server/ext/INtVibratorManager;->doStopVibrateLocked()V

    .line 789
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v3}, Lcom/nothing/server/ext/INtVibratorManager;->resetCurrentSenderId()V

    .line 791
    .end local v0    # "vibrEffect":Landroid/os/VibrationEffect;
    :cond_9
    :goto_1
    goto :goto_2

    .line 792
    :cond_a
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0}, Lcom/nothing/server/ext/INtVibratorManager;->doStopVibrateLocked()V

    .line 795
    :goto_2
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_c

    .line 796
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-direct {v1, v0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->shouldPipelineVibrationLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/HalVibration;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 802
    const-string v0, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pipelining vibration "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v10, v7

    :try_start_4
    iget-wide v6, v5, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 814
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 805
    :cond_b
    move-object v10, v7

    iget-object v0, v5, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 806
    invoke-interface {v3}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v3

    .line 805
    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 807
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v6, 0x0

    invoke-interface {v0, v3, v2, v6}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    goto :goto_3

    .line 795
    :cond_c
    move-object v10, v7

    .line 811
    :goto_3
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {v1, v0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 812
    invoke-direct {v1, v4}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v11, v0

    .line 814
    :try_start_5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    goto :goto_5

    .line 823
    .end local v11    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .end local v12    # "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .end local v13    # "ident":J
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 814
    .restart local v11    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .restart local v12    # "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .restart local v13    # "ident":J
    :goto_4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    nop

    .end local v2    # "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .end local v4    # "session":Lcom/android/server/vibrator/SingleVibrationSession;
    .end local v5    # "vib":Lcom/android/server/vibrator/HalVibration;
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "deviceId":I
    .end local p3    # "opPkg":Ljava/lang/String;
    .end local p4    # "effect":Landroid/os/CombinedVibration;
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "token":Landroid/os/IBinder;
    throw v0

    .line 768
    .end local v13    # "ident":J
    .restart local v2    # "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .restart local v4    # "session":Lcom/android/server/vibrator/SingleVibrationSession;
    .restart local v5    # "vib":Lcom/android/server/vibrator/HalVibration;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "deviceId":I
    .restart local p3    # "opPkg":Ljava/lang/String;
    .restart local p4    # "effect":Landroid/os/CombinedVibration;
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "token":Landroid/os/IBinder;
    :cond_d
    move-object v10, v7

    .line 819
    :goto_5
    if-eqz v11, :cond_e

    .line 820
    invoke-direct {v1, v4, v11, v12}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 822
    :cond_e
    monitor-exit v10

    return-object v5

    .line 823
    .end local v11    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .end local v12    # "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    :goto_6
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method


# virtual methods
.method public canVibrateDuringCall()Z
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->canVibrateDuringCall()Z

    move-result v0

    return v0
.end method

.method public canVibrateWhenNofication()Z
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->canVibrateWhenNofication()Z

    move-result v0

    return v0
.end method

.method public canVibrateWhenRinging()Z
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->canVibrateWhenRinging()Z

    move-result v0

    return v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 8
    .param p1, "usageFilter"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 828
    const-string v0, "cancelVibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 830
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string v4, "cancelVibrate"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 836
    :try_start_1
    const-string v3, "VibratorManagerService"

    const-string v4, "Canceling vibration"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 843
    .local v3, "ident":J
    :try_start_2
    sget-object v5, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v5}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v5}, Lcom/nothing/server/ext/INtVibratorManager;->doStopVibrateLocked()V

    .line 847
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v5, v5, Lcom/android/server/vibrator/ExternalVibrationSession;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    move-object v5, p2

    .line 848
    .local v5, "cancelToken":Landroid/os/IBinder;
    :goto_0
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-direct {p0, v7, p1, v5}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 849
    sget-object v7, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {p0, v7}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;)V

    goto :goto_1

    .line 857
    .end local v5    # "cancelToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 852
    .restart local v5    # "cancelToken":Landroid/os/IBinder;
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v7, v7, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, p2

    .line 853
    .end local v5    # "cancelToken":Landroid/os/IBinder;
    .local v6, "cancelToken":Landroid/os/IBinder;
    :goto_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 854
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v7, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {v5, v7}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 857
    .end local v6    # "cancelToken":Landroid/os/IBinder;
    :cond_3
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 858
    nop

    .line 859
    .end local v3    # "ident":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 861
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 862
    nop

    .line 863
    return-void

    .line 859
    :catchall_1
    move-exception v3

    goto :goto_4

    .line 857
    .restart local v3    # "ident":J
    :goto_3
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 858
    nop

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "usageFilter":I
    .end local p2    # "token":Landroid/os/IBinder;
    throw v5

    .line 859
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "usageFilter":I
    .restart local p2    # "token":Landroid/os/IBinder;
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "usageFilter":I
    .end local p2    # "token":Landroid/os/IBinder;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 861
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "usageFilter":I
    .restart local p2    # "token":Landroid/os/IBinder;
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 862
    throw v0
.end method

.method public clearAlarmOrRingtonePid(I)V
    .locals 1
    .param p1, "pid"    # I

    .line 574
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0, p1}, Lcom/nothing/server/ext/INtVibratorManager;->clearAlarmOrRingtonePid(I)V

    .line 575
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1037
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1039
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1041
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 1042
    .local v2, "isDumpProto":Z
    array-length v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p3, v4

    .line 1043
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1044
    const/4 v2, 0x1

    .line 1042
    .end local v5    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1048
    :cond_2
    if-eqz v2, :cond_3

    .line 1049
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 1054
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1051
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->dumpText(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1055
    nop

    .line 1056
    return-void

    .line 1054
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1055
    throw v3
.end method

.method public getCallState()I
    .locals 1

    .line 528
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0}, Lcom/nothing/server/ext/INtVibratorManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCapabilities()I
    .locals 2

    .line 418
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    long-to-int v0, v0

    return v0
.end method

.method public getCurrentMaxVibPriorityPkg()Ljava/lang/String;
    .locals 1

    .line 556
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0}, Lcom/nothing/server/ext/INtVibratorManager;->getCurrentMaxVibPriorityPkg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVibraterPriority(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 551
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0, p1}, Lcom/nothing/server/ext/INtVibratorManager;->getCurrentVibraterPriority(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEnableDoVibrate(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 564
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0, p1}, Lcom/nothing/server/ext/INtVibratorManager;->getEnableDoVibrate(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVibratorIds()[I
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getVibratorInfo(I)Landroid/os/VibratorInfo;
    .locals 5
    .param p1, "vibratorId"    # I

    .line 424
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 425
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 426
    return-object v1

    .line 428
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v2

    .line 429
    .local v2, "info":Landroid/os/VibratorInfo;
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 430
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    if-eqz v4, :cond_1

    .line 431
    monitor-exit v3

    return-object v2

    .line 433
    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->isVibratorInfoLoadSuccessful()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1

    .line 433
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isVibrating(I)Z
    .locals 2
    .param p1, "vibratorId"    # I

    .line 442
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->isVibrating_enforcePermission()V

    .line 443
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 444
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->isVibrating()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "cb"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1134
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {p5}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    .line 1135
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "cb":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    .local v2, "in":Ljava/io/FileDescriptor;
    .local v3, "out":Ljava/io/FileDescriptor;
    .local v4, "err":Ljava/io/FileDescriptor;
    .local v5, "args":[Ljava/lang/String;
    .local v6, "cb":Landroid/os/ShellCallback;
    .local v7, "resultReceiver":Landroid/os/ResultReceiver;
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1136
    return-void
.end method

.method public performHapticFeedback(IILjava/lang/String;ILjava/lang/String;II)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "constant"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p7, "privFlags"    # I

    .line 582
    const-string v0, "performHapticFeedback"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 588
    move-object v9, p0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    :try_start_0
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackInternal(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 592
    nop

    .line 593
    return-void

    .line 591
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 592
    throw v0
.end method

.method public performHapticFeedbackForInputDevice(IILjava/lang/String;IIILjava/lang/String;II)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "constant"    # I
    .param p5, "inputDeviceId"    # I
    .param p6, "inputSource"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "privFlags"    # I

    .line 599
    const-string v0, "performHapticFeedbackForInputDevice"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 601
    move-object v11, p0

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    move/from16 v13, p9

    :try_start_0
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackForInputDeviceInternal(IILjava/lang/String;IIILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    nop

    .line 607
    return-void

    .line 605
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    throw v0
.end method

.method performHapticFeedbackForInputDeviceInternal(IILjava/lang/String;IIILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    .locals 17
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "constant"    # I
    .param p5, "inputDeviceId"    # I
    .param p6, "inputSource"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "token"    # Landroid/os/IBinder;
    .param p9, "flags"    # I
    .param p10, "privFlags"    # I

    .line 644
    move/from16 v4, p4

    move/from16 v9, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performHapticFeedbackForInputDevice(constant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inputDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inputSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 646
    .end local p7    # "reason":Ljava/lang/String;
    .local v5, "reason":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService;->getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object v0

    .line 647
    .local v0, "hapticVibrationProvider":Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
    move-object/from16 v11, p0

    invoke-direct {v11, v4, v5, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreHapticFeedback(ILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v16

    .line 648
    .local v16, "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    if-eqz v16, :cond_0

    .line 649
    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object v15, v5

    .end local v5    # "reason":Ljava/lang/String;
    .local v15, "reason":Ljava/lang/String;
    invoke-direct/range {v11 .. v16}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 650
    .end local v15    # "reason":Ljava/lang/String;
    .restart local v5    # "reason":Ljava/lang/String;
    const/4 v1, 0x0

    return-object v1

    .line 652
    :cond_0
    nop

    .line 653
    invoke-virtual {v0, v4, v9}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(II)Landroid/os/VibrationEffect;

    move-result-object v7

    .line 654
    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual {v0, v4, v9, v11, v12}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributes(IIII)Landroid/os/VibrationAttributes;

    move-result-object v8

    .line 652
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p8

    move-object v13, v0

    move-object/from16 v0, p0

    .end local v0    # "hapticVibrationProvider":Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
    .local v13, "hapticVibrationProvider":Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;

    move-result-object v7

    return-object v7
.end method

.method performHapticFeedbackInternal(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    .locals 14
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "constant"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "flags"    # I
    .param p8, "privFlags"    # I

    .line 620
    move/from16 v4, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performHapticFeedback(constant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 621
    .end local p5    # "reason":Ljava/lang/String;
    .local v9, "reason":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object v11

    .line 622
    .local v11, "hapticVibrationProvider":Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
    invoke-direct {p0, v4, v9, v11}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreHapticFeedback(ILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v10

    .line 623
    .local v10, "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    if-eqz v10, :cond_0

    .line 624
    move-object v5, p0

    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 625
    const/4 v0, 0x0

    return-object v0

    .line 627
    :cond_0
    nop

    .line 628
    invoke-virtual {v11, v4}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(I)Landroid/os/VibrationEffect;

    move-result-object v7

    .line 629
    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual {v11, v4, v12, v13}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributes(III)Landroid/os/VibrationAttributes;

    move-result-object v8

    .line 627
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p6

    move-object v5, v9

    .end local v9    # "reason":Ljava/lang/String;
    .local v5, "reason":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;

    move-result-object v7

    .end local v5    # "reason":Ljava/lang/String;
    .restart local v9    # "reason":Ljava/lang/String;
    return-object v7
.end method

.method public registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 2
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 450
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->registerVibratorStateListener_enforcePermission()V

    .line 451
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 452
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    if-nez v0, :cond_0

    .line 453
    const/4 v1, 0x0

    return v1

    .line 455
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorController;->registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result v1

    return v1
.end method

.method public setAlarmOrRingtonePid(ILjava/lang/String;I)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 569
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/nothing/server/ext/INtVibratorManager;->setAlarmOrRingtonePid(ILjava/lang/String;I)V

    .line 570
    return-void
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .locals 14
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/CombinedVibration;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 473
    move/from16 v1, p3

    move-object/from16 v2, p4

    const-string v0, "setAlwaysOnEffect"

    const-wide/32 v3, 0x800000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.VIBRATE_ALWAYS_ON"

    const-string v6, "setAlwaysOnEffect"

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x1

    if-nez v2, :cond_0

    .line 480
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 481
    :try_start_1
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 482
    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->onAllVibratorsLocked(Ljava/util/function/Consumer;)V

    .line 487
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    nop

    .line 509
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 488
    return v0

    .line 487
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "alwaysOnId":I
    .end local p4    # "effect":Landroid/os/CombinedVibration;
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    :try_start_3
    throw v0

    .line 509
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "alwaysOnId":I
    .restart local p4    # "effect":Landroid/os/CombinedVibration;
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_1
    move-exception v0

    move-object/from16 v5, p5

    goto :goto_1

    .line 490
    :cond_0
    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 491
    nop

    .line 509
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 491
    return v6

    .line 493
    :cond_1
    move-object/from16 v5, p5

    :try_start_4
    invoke-direct {p0, v5, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v9, v7

    .line 494
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v9, "attrs":Landroid/os/VibrationAttributes;
    :try_start_5
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 495
    :try_start_6
    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;

    move-result-object v7

    .line 496
    .local v7, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    if-nez v7, :cond_2

    .line 499
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 509
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 499
    return v6

    .line 506
    .end local v7    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 501
    .restart local v7    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    :cond_2
    :try_start_7
    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    new-instance v8, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move v10, p1

    move-object/from16 v12, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v1, v8, v7}, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;-><init>(ILcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/util/SparseArray;)V

    .line 504
    .local v6, "alwaysOnVibration":Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 505
    invoke-direct {p0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 506
    .end local v6    # "alwaysOnVibration":Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;
    .end local v7    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 507
    nop

    .line 509
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 507
    return v0

    .line 506
    :goto_0
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v9    # "attrs":Landroid/os/VibrationAttributes;
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "alwaysOnId":I
    .end local p4    # "effect":Landroid/os/CombinedVibration;
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 509
    .restart local v9    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "alwaysOnId":I
    .restart local p4    # "effect":Landroid/os/CombinedVibration;
    :catchall_3
    move-exception v0

    move-object v5, v9

    goto :goto_1

    .end local v9    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_4
    move-exception v0

    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v5, "attrs":Landroid/os/VibrationAttributes;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 510
    throw v0
.end method

.method public setCurrentVibraterPriority(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "tempPriority"    # I

    .line 547
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0, p1, p2}, Lcom/nothing/server/ext/INtVibratorManager;->setCurrentVibraterPriority(Ljava/lang/String;I)V

    .line 548
    return-void
.end method

.method public setEnableDoVibrate(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 560
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v0, p1, p2}, Lcom/nothing/server/ext/INtVibratorManager;->setEnableDoVibrate(Ljava/lang/String;I)V

    .line 561
    return-void
.end method

.method public startVendorVibrationSession(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Landroid/os/ICancellationSignal;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "vibratorIds"    # [I
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "callback"    # Landroid/os/vibrator/IVibrationSessionCallback;

    .line 874
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->startVendorVibrationSession_enforcePermission()V

    .line 875
    const-string v0, "startVibrationSession"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 877
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorVibrationSessionInternal(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Lcom/android/server/vibrator/VendorVibrationSession;

    move-result-object v0

    .line 879
    .local v0, "session":Lcom/android/server/vibrator/VendorVibrationSession;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/vibrator/VendorVibrationSession;->getCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 879
    return-object v3

    .line 881
    .end local v0    # "session":Lcom/android/server/vibrator/VendorVibrationSession;
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 882
    throw v0
.end method

.method startVendorVibrationSessionInternal(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Lcom/android/server/vibrator/VendorVibrationSession;
    .locals 14
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "vibratorIds"    # [I
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "callback"    # Landroid/os/vibrator/IVibrationSessionCallback;

    .line 888
    nop

    .line 891
    const/4 v0, 0x0

    move-object/from16 v1, p5

    invoke-direct {p0, v1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v2

    .line 892
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v2, "attrs":Landroid/os/VibrationAttributes;
    new-instance v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    .line 893
    .local v4, "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    if-nez p7, :cond_0

    .line 894
    const-string v1, "VibratorManagerService"

    const-string v3, "session callback must not be null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {p0, v4, v1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordSessionAttempt(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 896
    return-object v0

    .line 898
    :cond_0
    const/4 v0, 0x0

    if-nez p4, :cond_1

    .line 899
    new-array v1, v0, [I

    .end local p4    # "vibratorIds":[I
    .local v1, "vibratorIds":[I
    goto :goto_0

    .line 898
    .end local v1    # "vibratorIds":[I
    .restart local p4    # "vibratorIds":[I
    :cond_1
    move-object/from16 v1, p4

    .line 901
    .end local p4    # "vibratorIds":[I
    .restart local v1    # "vibratorIds":[I
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    .line 904
    new-instance v3, Landroid/util/SparseArray;

    array-length v5, v1

    invoke-direct {v3, v5}, Landroid/util/SparseArray;-><init>(I)V

    move-object v9, v3

    .line 905
    .local v9, "sessionVibrators":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/vibrator/VibratorController;>;"
    array-length v3, v1

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_3

    aget v6, v1, v5

    .line 906
    .local v6, "vibratorId":I
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/vibrator/VibratorController;

    .line 907
    .local v7, "controller":Lcom/android/server/vibrator/VibratorController;
    if-eqz v7, :cond_2

    .line 908
    invoke-virtual {v9, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 905
    .end local v6    # "vibratorId":I
    .end local v7    # "controller":Lcom/android/server/vibrator/VibratorController;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 911
    :cond_3
    new-instance v7, Lcom/android/server/vibrator/DeviceAdapter;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {v7, v3, v9}, Lcom/android/server/vibrator/DeviceAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V

    .line 912
    .local v7, "deviceAdapter":Lcom/android/server/vibrator/DeviceAdapter;
    new-instance v3, Lcom/android/server/vibrator/VendorVibrationSession;

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    move-object/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/android/server/vibrator/VendorVibrationSession;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/Handler;Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;Lcom/android/server/vibrator/DeviceAdapter;Landroid/os/vibrator/IVibrationSessionCallback;)V

    .line 915
    .local v3, "session":Lcom/android/server/vibrator/VendorVibrationSession;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 918
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 921
    :cond_4
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 923
    :try_start_0
    const-string v6, "VibratorManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting vendor session "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v6, 0x0

    .line 927
    .local v6, "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    const/4 v8, 0x0

    .line 930
    .local v8, "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    iget-wide v10, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    const-wide/16 v12, 0x100

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 932
    const-string v10, "VibratorManagerService"

    const-string v11, "Missing capability to start sessions, ignoring request"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    sget-object v10, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    move-object v6, v10

    goto :goto_2

    .line 985
    .end local v6    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .end local v8    # "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 938
    .restart local v6    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .restart local v8    # "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    :cond_5
    :goto_2
    if-nez v6, :cond_7

    .line 939
    array-length v10, v1

    if-eqz v10, :cond_6

    array-length v10, v1

    .line 940
    invoke-virtual {v7}, Lcom/android/server/vibrator/DeviceAdapter;->getAvailableVibratorIds()[I

    move-result-object v11

    array-length v11, v11

    if-eq v10, v11, :cond_7

    .line 941
    :cond_6
    const-string v10, "VibratorManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad vibrator ids to start session, ignoring request. requested="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " available="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 943
    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 941
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    sget-object v10, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    move-object v6, v10

    .line 949
    :cond_7
    if-nez v6, :cond_8

    .line 950
    invoke-direct {p0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v10

    move-object v6, v10

    .line 954
    :cond_8
    if-nez v6, :cond_9

    .line 955
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v10

    .line 956
    .local v10, "vibrationEndInfo":Lcom/android/server/vibrator/Vibration$EndInfo;
    if-eqz v10, :cond_9

    .line 957
    iget-object v11, v10, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    move-object v6, v11

    .line 958
    iget-object v11, v10, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-object v8, v11

    .line 962
    .end local v10    # "vibrationEndInfo":Lcom/android/server/vibrator/Vibration$EndInfo;
    :cond_9
    if-nez v6, :cond_b

    .line 964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    .local v10, "ident":J
    :try_start_1
    sget-object v12, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {p0, v12, v4}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 968
    iget-object v12, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v12, :cond_a

    .line 969
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 970
    iget-object v12, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v13, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {v12, v13, v4, v0}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    goto :goto_3

    .line 976
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 973
    :cond_a
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v0

    .line 976
    :goto_3
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 977
    goto :goto_5

    .line 976
    :goto_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 977
    nop

    .end local v1    # "vibratorIds":[I
    .end local v2    # "attrs":Landroid/os/VibrationAttributes;
    .end local v3    # "session":Lcom/android/server/vibrator/VendorVibrationSession;
    .end local v4    # "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .end local v7    # "deviceAdapter":Lcom/android/server/vibrator/DeviceAdapter;
    .end local v9    # "sessionVibrators":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/vibrator/VibratorController;>;"
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "deviceId":I
    .end local p3    # "opPkg":Ljava/lang/String;
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "callback":Landroid/os/vibrator/IVibrationSessionCallback;
    throw v0

    .line 981
    .end local v10    # "ident":J
    .restart local v1    # "vibratorIds":[I
    .restart local v2    # "attrs":Landroid/os/VibrationAttributes;
    .restart local v3    # "session":Lcom/android/server/vibrator/VendorVibrationSession;
    .restart local v4    # "callerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .restart local v7    # "deviceAdapter":Lcom/android/server/vibrator/DeviceAdapter;
    .restart local v9    # "sessionVibrators":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/vibrator/VibratorController;>;"
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "deviceId":I
    .restart local p3    # "opPkg":Ljava/lang/String;
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "callback":Landroid/os/vibrator/IVibrationSessionCallback;
    :cond_b
    :goto_5
    if-eqz v6, :cond_c

    .line 982
    invoke-direct {p0, v3, v6, v8}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 984
    :cond_c
    monitor-exit v5

    return-object v3

    .line 985
    .end local v6    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .end local v8    # "ignoredBy":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    :goto_6
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method systemReady()V
    .locals 7

    .line 373
    const-string v0, "VibratorManagerService"

    const-string v1, "Initializing VibratorManager service..."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v0, "systemReady"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 378
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->reloadVibratorInfoIfNeeded()V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 377
    .restart local v0    # "i":I
    :cond_0
    nop

    .line 381
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :try_start_1
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    .line 383
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/VibratorInfo;

    .line 384
    .local v4, "infos":[Landroid/os/VibratorInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 385
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibratorInfo;

    aput-object v6, v4, v5

    .line 384
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 388
    .end local v4    # "infos":[Landroid/os/VibratorInfo;
    .end local v5    # "i":I
    :catchall_1
    move-exception v4

    goto :goto_2

    .line 384
    .restart local v4    # "infos":[Landroid/os/VibratorInfo;
    .restart local v5    # "i":I
    :cond_1
    nop

    .line 387
    .end local v5    # "i":I
    const/4 v5, -0x1

    invoke-static {v5, v4}, Landroid/os/vibrator/VibratorInfoFactory;->create(I[Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    .line 388
    .end local v4    # "infos":[Landroid/os/VibratorInfo;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    :try_start_2
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V

    .line 391
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-virtual {v0}, Lcom/android/server/vibrator/InputDeviceDelegate;->onSystemReady()V

    .line 393
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    invoke-virtual {v0, v4}, Lcom/android/server/vibrator/VibrationSettings;->addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V

    .line 400
    sget-object v0, Lcom/nothing/INtExtFactory$ExtType;->NT_AAC_VIBRATOR:Lcom/nothing/INtExtFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/NtExtFactory;->create(Lcom/nothing/INtExtFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/ext/INtAacVibrator;

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/nothing/ext/INtAacVibrator;->init(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 405
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 406
    const-string v0, "VibratorManagerService"

    const-string v3, "VibratorManager service initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 408
    nop

    .line 409
    return-void

    .line 405
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 388
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 403
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    :goto_3
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 404
    :try_start_7
    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 405
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 406
    const-string v3, "VibratorManagerService"

    const-string v4, "VibratorManager service initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 408
    throw v0

    .line 405
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 2
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 462
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->unregisterVibratorStateListener_enforcePermission()V

    .line 463
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 464
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    if-nez v0, :cond_0

    .line 465
    const/4 v1, 0x0

    return v1

    .line 467
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorController;->unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result v1

    return v1
.end method

.method updateServiceState()V
    .locals 6

    .line 1140
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    :try_start_0
    const-string v1, "VibratorManagerService"

    const-string v2, "Updating device state..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 1145
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateInputDevices()Z

    move-result v2

    .line 1144
    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDeviceVibrators(Z)Z

    move-result v1

    .line 1147
    .local v1, "inputDevicesChanged":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1148
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 1147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1173
    .end local v1    # "inputDevicesChanged":Z
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1147
    .restart local v1    # "inputDevicesChanged":Z
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 1153
    .end local v2    # "i":I
    sget-object v2, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v2}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nothing/server/ext/INtVibratorManager;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/nothing/server/ext/INtVibratorManager;->setCurrentIntensity(I)V

    .line 1156
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v2, :cond_1

    .line 1157
    monitor-exit v0

    return-void

    .line 1160
    :cond_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v2, v2, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v2, :cond_2

    .line 1162
    monitor-exit v0

    return-void

    .line 1165
    :cond_2
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    .line 1166
    .local v2, "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    .line 1168
    :cond_3
    const-string v3, "VibratorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling vibration because settings changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    if-nez v2, :cond_4

    const-string v5, "input devices changed"

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1168
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v4, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {v3, v4}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 1173
    .end local v1    # "inputDevicesChanged":Z
    .end local v2    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    :cond_5
    monitor-exit v0

    .line 1174
    return-void

    .line 1173
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "effect"    # Landroid/os/CombinedVibration;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "token"    # Landroid/os/IBinder;

    .line 516
    const-string v0, "vibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 518
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 521
    nop

    .line 522
    return-void

    .line 520
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 521
    throw v0
.end method

.method vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "effect"    # Landroid/os/CombinedVibration;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "token"    # Landroid/os/IBinder;

    .line 683
    invoke-direct {p0, p5, p4}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v5

    .line 684
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v5, "attrs":Landroid/os/VibrationAttributes;
    iget-object p5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.VIBRATE"

    const-string v1, "vibrate"

    invoke-virtual {p5, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "uid":I
    .end local p2    # "deviceId":I
    .end local p3    # "opPkg":Ljava/lang/String;
    .end local p4    # "effect":Landroid/os/CombinedVibration;
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "token":Landroid/os/IBinder;
    .local v1, "uid":I
    .local v2, "deviceId":I
    .local v3, "opPkg":Ljava/lang/String;
    .local v4, "effect":Landroid/os/CombinedVibration;
    .local v6, "reason":Ljava/lang/String;
    .local v7, "token":Landroid/os/IBinder;
    invoke-direct/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p1

    return-object p1
.end method

.method vibrateWithoutPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "effect"    # Landroid/os/CombinedVibration;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "token"    # Landroid/os/IBinder;

    .line 692
    invoke-direct/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object v0

    return-object v0
.end method

.method public waitForCurrentSessionEnd(J)Z
    .locals 8
    .param p1, "maxWaitMillis"    # J

    .line 2547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2548
    .local v0, "now":J
    add-long v2, v0, p1

    .line 2549
    .local v2, "deadline":J
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2551
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v5, :cond_0

    .line 2552
    monitor-exit v4

    const/4 v4, 0x1

    return v4

    .line 2564
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 2554
    :cond_0
    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    .line 2555
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    return v4

    .line 2558
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2561
    goto :goto_1

    .line 2559
    :catch_0
    move-exception v5

    nop

    .line 2560
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v6, "VibratorManagerService"

    const-string v7, "VibratorManagerService interrupted waiting to stop, continuing"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-wide v0, v5

    goto :goto_0

    .line 2564
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
