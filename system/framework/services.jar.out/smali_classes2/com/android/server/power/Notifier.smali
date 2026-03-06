.class public Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$Interactivity;,
        Lcom/android/server/power/Notifier$RealInjector;,
        Lcom/android/server/power/Notifier$Injector;,
        Lcom/android/server/power/Notifier$NotifierHandler;,
        Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    }
.end annotation


# static fields
.field private static final CHARGING_VIBRATION_AMPLITUDE:[I

.field private static final CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field private static final CHARGING_VIBRATION_TIME:[J

.field private static final DEBUG:Z = false

.field private static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_BROADCAST_ENHANCED_PREDICTION:I = 0x4

.field private static final MSG_PROFILE_TIMED_OUT:I = 0x5

.field private static final MSG_SCREEN_POLICY:I = 0x7

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRED_CHARGING_STARTED:I = 0x6

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final PATH_HE_FILE_SWITCH:Ljava/lang/String; = "/vendor/etc/richtapresources/NT_charge.he"

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private mAACHapticUtils:Lcom/sysaac/haptic/AACHapticUtils;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private mDisplayInteractivities:Landroid/util/SparseBooleanArray;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

.field private final mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field private final mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

.field private final mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field private mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

.field private final mGoToSleepBroadcastDone:Landroid/content/IIntentReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInjector:Lcom/android/server/power/Notifier$Injector;

.field private final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field private final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private final mInteractivityByGroupId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/Notifier$Interactivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLock:Ljava/lang/Object;

.field private mNtCharge:Lcom/android/server/charge/INtCharge;

.field private final mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingInteractiveState:I

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mRingtone:Landroid/media/Ringtone;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mScreenOnOffOptions:Landroid/os/Bundle;

.field private final mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

.field private final mShowWirelessChargingAnimationConfig:Z

.field private final mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mSupportRichTap:Z

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mSuspendWhenScreenOffDueToProximityConfig:Z

.field private final mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserActivityPending:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mWakeUpBroadcastDone:Landroid/content/IIntentReceiver;

.field private final mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public static synthetic $r8$lambda$JPimfzsYkXWexBDnIhDxNZnALw4(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleEarlyInteractiveChange$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$NfLwjQ1rEoAdiv20_xGg1-SMd6o(Lcom/android/server/power/Notifier;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lcom/android/server/power/Notifier;->lambda$notifyWakelockChanging$10(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QTIfwUkFSEuVLy0XrFJFdtz0REM(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->lambda$handleEarlyGlobalInteractiveChange$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$QUpiaPNPRkwU8U2MGuOtntv2mQ4(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleLateInteractiveChange$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rb9qlD2tgScsj7p88_DorCc8zYI(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lcom/android/server/power/Notifier;->lambda$notifyWakeLockListener$9(ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SCBmQ4zv_u2tzxzELhkoGuGYMPs(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleEarlyInteractiveChange$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$SkDw-9Ah-PeuwEpn0oKEUC_Tixs(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleLateGlobalInteractiveChange$5(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$YuWSecaCBIZkdw6vgJo0U2_0waI(Lcom/android/server/power/Notifier;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$playChargingStartedFeedback$8(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gr4Sg-fuhq8LQTf-FG_LHQ6nfuE(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->lambda$handleLateGlobalInteractiveChange$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-pS0TGPyPNM3uy9iTCbhgXMEzY(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleLateInteractiveChange$7(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$twGPsuehH4Hy48BoSYCiwKEMjdU(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->lambda$handleEarlyGlobalInteractiveChange$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBroadcastStartTime(Lcom/android/server/power/Notifier;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlockProfile(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->lockProfile(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscreenPolicyChanging(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->screenPolicyChanging(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEnhancedDischargePredictionBroadcast(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendEnhancedDischargePredictionBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendNextBroadcast(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendUserActivity(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->sendUserActivity(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowWiredChargingStarted(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->showWiredChargingStarted(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowWirelessChargingStarted(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->showWirelessChargingStarted(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 140
    const/16 v0, 0x10

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_TIME:[J

    .line 144
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_AMPLITUDE:[I

    .line 148
    sget-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_TIME:[J

    sget-object v1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_AMPLITUDE:[I

    .line 149
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 151
    nop

    .line 152
    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 151
    return-void

    nop

    :array_0
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
        0xb
        0x19
        0x2c
        0x43
        0x5b
        0x72
        0x7b
        0x67
        0x4f
        0x37
        0x22
        0x11
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;Lcom/android/server/power/feature/PowerManagerFlags;Lcom/android/server/power/Notifier$Injector;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p5, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p6, "faceDownDetector"    # Lcom/android/server/power/FaceDownDetector;
    .param p7, "screenUndimDetector"    # Lcom/android/server/power/ScreenUndimDetector;
    .param p8, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "powerManagerFlags"    # Lcom/android/server/power/feature/PowerManagerFlags;
    .param p10, "injector"    # Lcom/android/server/power/Notifier$Injector;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 200
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    .line 201
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    .line 207
    new-instance v0, Lcom/android/server/power/Notifier$Interactivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/Notifier$Interactivity;-><init>(Lcom/android/server/power/Notifier-IA;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 237
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 239
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mNtCharge:Lcom/android/server/charge/INtCharge;

    .line 1145
    new-instance v0, Lcom/android/server/power/Notifier$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/IIntentReceiver;

    .line 1174
    new-instance v0, Lcom/android/server/power/Notifier$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/IIntentReceiver;

    .line 253
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 254
    if-nez p10, :cond_0

    new-instance v0, Lcom/android/server/power/Notifier$RealInjector;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$RealInjector;-><init>(Lcom/android/server/power/Notifier;)V

    goto :goto_0

    :cond_0
    move-object v0, p10

    :goto_0
    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    .line 255
    iput-object p9, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 256
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 257
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {v0, p2}, Lcom/android/server/power/Notifier$Injector;->getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 258
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 259
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 260
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    .line 261
    iput-object p7, p0, Lcom/android/server/power/Notifier;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    .line 262
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 263
    const-class v0, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 264
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 265
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 266
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 267
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 268
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    .line 269
    new-instance v0, Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/WakefulnessSessionObserver;-><init>(Landroid/content/Context;Lcom/android/server/power/WakefulnessSessionObserver$Injector;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 271
    new-instance v0, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 272
    iput-object p8, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 274
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 v2, 0x50200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 278
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->createScreenOnOffBroadcastOptions()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    .line 283
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110276

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 285
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111023a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    .line 288
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {v0, p2}, Lcom/android/server/power/Notifier$Injector;->getWakeLockLog(Landroid/content/Context;)Lcom/android/server/power/WakeLockLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 289
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {v0, p2}, Lcom/android/server/power/Notifier$Injector;->getWakeLockLog(Landroid/content/Context;)Lcom/android/server/power/WakeLockLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 293
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 295
    :goto_2
    const/16 v2, 0x21

    invoke-static {v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 299
    const-string/jumbo v0, "ro.product.vendor.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "projectName":Ljava/lang/String;
    const-string v2, "Spacewar"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    sget-object v2, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_CHARGE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v2}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/charge/INtCharge;

    iput-object v2, p0, Lcom/android/server/power/Notifier;->mNtCharge:Lcom/android/server/charge/INtCharge;

    .line 302
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mNtCharge:Lcom/android/server/charge/INtCharge;

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mNtCharge:Lcom/android/server/charge/INtCharge;

    invoke-interface {v2}, Lcom/android/server/charge/INtCharge;->ntGetScreenThermalConfig()V

    .line 307
    :cond_1
    invoke-static {}, Lcom/sysaac/haptic/AACHapticUtils;->getInstance()Lcom/sysaac/haptic/AACHapticUtils;

    move-result-object v2

    .line 308
    .local v2, "instance":Lcom/sysaac/haptic/AACHapticUtils;
    iput-object v2, p0, Lcom/android/server/power/Notifier;->mAACHapticUtils:Lcom/sysaac/haptic/AACHapticUtils;

    .line 309
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sysaac/haptic/AACHapticUtils;->init(Landroid/content/Context;)Lcom/sysaac/haptic/AACHapticUtils;

    .line 310
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mAACHapticUtils:Lcom/sysaac/haptic/AACHapticUtils;

    invoke-virtual {v3}, Lcom/sysaac/haptic/AACHapticUtils;->isSupportedRichTap()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mSupportRichTap:Z

    .line 312
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v3}, Lcom/android/server/power/feature/PowerManagerFlags;->isMoveWscLoggingToNotifierEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {v1}, Lcom/android/server/power/Notifier$Injector;->getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 314
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {v1}, Lcom/android/server/power/Notifier$Injector;->getFrameworkStatsLogger()Lcom/android/server/power/FrameworkStatsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    goto :goto_3

    .line 316
    :cond_2
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 317
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    .line 319
    :goto_3
    return-void
.end method

.method private createScreenOnOffBroadcastOptions()Landroid/os/Bundle;
    .locals 3

    .line 326
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 329
    .local v0, "options":Landroid/app/BroadcastOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 334
    nop

    .line 335
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 338
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 339
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private finishPendingBroadcastLocked()V
    .locals 1

    .line 1044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 1045
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 1046
    return-void
.end method

.method private getBatteryStatsWakeLockMonitorType(I)I
    .locals 3
    .param p1, "flags"    # I

    .line 540
    const v0, 0xffff

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    .line 565
    return v2

    .line 556
    :sswitch_0
    const/16 v0, 0x12

    return v0

    .line 562
    :sswitch_1
    return v2

    .line 550
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v0, :cond_0

    .line 551
    return v2

    .line 553
    :cond_0
    return v1

    .line 547
    :sswitch_3
    const/4 v0, 0x1

    return v0

    .line 542
    :sswitch_4
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x6 -> :sswitch_3
        0xa -> :sswitch_3
        0x1a -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private getUidForWakeLockLog(ILandroid/os/WorkSource;)I
    .locals 2
    .param p1, "ownerUid"    # I
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 1520
    const/4 v0, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1521
    .local v1, "attributionUid":I
    :goto_0
    if-eq v1, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    return v0
.end method

.method private getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;
    .locals 1
    .param p1, "flags"    # I

    .line 1516
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    :goto_0
    return-object v0
.end method

.method private handleEarlyGlobalInteractiveChange()V
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v1, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 707
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 708
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 709
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_0

    .line 717
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 717
    :goto_0
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleEarlyInteractiveChange(I)V
    .locals 5
    .param p1, "groupId"    # I

    .line 678
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$Interactivity;

    .line 680
    .local v1, "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    if-nez v1, :cond_0

    .line 681
    const-string v2, "PowerManagerNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no Interactivity entry for groupId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    monitor-exit v0

    return-void

    .line 690
    .end local v1    # "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 684
    .restart local v1    # "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    :cond_0
    iget v2, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 685
    .local v2, "changeReason":I
    iget-boolean v3, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v3, :cond_1

    .line 686
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 688
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    .end local v1    # "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    .end local v2    # "changeReason":I
    :goto_0
    monitor-exit v0

    .line 691
    return-void

    .line 690
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleLateGlobalInteractiveChange()V
    .locals 6

    .line 725
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 727
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-wide v3, v3, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 728
    .local v1, "interactiveChangeLatency":I
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v2, v2, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v2, :cond_0

    .line 730
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 778
    .end local v1    # "interactiveChangeLatency":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 751
    .restart local v1    # "interactiveChangeLatency":I
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 752
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 753
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v2, v2, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v2

    .line 759
    .local v2, "offReason":I
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v5, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 774
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 775
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 776
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 778
    .end local v1    # "interactiveChangeLatency":I
    .end local v2    # "offReason":I
    :goto_0
    monitor-exit v0

    .line 779
    return-void

    .line 778
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleLateInteractiveChange(I)V
    .locals 5
    .param p1, "groupId"    # I

    .line 787
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$Interactivity;

    .line 789
    .local v1, "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    if-nez v1, :cond_0

    .line 790
    const-string v2, "PowerManagerNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no Interactivity entry for groupId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    monitor-exit v0

    return-void

    .line 799
    .end local v1    # "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 793
    .restart local v1    # "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    :cond_0
    iget v2, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 794
    .local v2, "changeReason":I
    iget-boolean v3, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v3, :cond_1

    .line 795
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 797
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    .end local v1    # "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    .end local v2    # "changeReason":I
    :goto_0
    monitor-exit v0

    .line 800
    return-void

    .line 799
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isChargingFeedbackEnabled(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 1269
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1271
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1274
    .local v3, "dndOff":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    return v2
.end method

.method private synthetic lambda$handleEarlyGlobalInteractiveChange$2()V
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    .line 703
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->startedWakingUpGlobal(I)V

    .line 704
    return-void
.end method

.method private synthetic lambda$handleEarlyGlobalInteractiveChange$3()V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    .line 714
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->startedGoingToSleepGlobal(I)V

    .line 715
    return-void
.end method

.method private synthetic lambda$handleEarlyInteractiveChange$0(II)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "changeReason"    # I

    .line 686
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->startedWakingUp(II)V

    return-void
.end method

.method private synthetic lambda$handleEarlyInteractiveChange$1(II)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "changeReason"    # I

    .line 688
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->startedGoingToSleep(II)V

    return-void
.end method

.method private synthetic lambda$handleLateGlobalInteractiveChange$4(I)V
    .locals 9
    .param p1, "interactiveChangeLatency"    # I

    .line 731
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 732
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 733
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-static {v1}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 735
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 736
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 737
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 736
    const/16 v2, 0x69e

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 738
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 739
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v8, p1

    .end local p1    # "interactiveChangeLatency":I
    .local v8, "interactiveChangeLatency":I
    invoke-static/range {v3 .. v8}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 741
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy;->finishedWakingUpGlobal(I)V

    .line 742
    return-void
.end method

.method private synthetic lambda$handleLateGlobalInteractiveChange$5(II)V
    .locals 9
    .param p1, "offReason"    # I
    .param p2, "interactiveChangeLatency"    # I

    .line 760
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 761
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 762
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 763
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 764
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 765
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 764
    const/16 v2, 0x69f

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 766
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 767
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v8, p2

    .end local p1    # "offReason":I
    .end local p2    # "interactiveChangeLatency":I
    .local v4, "offReason":I
    .local v8, "interactiveChangeLatency":I
    invoke-static/range {v3 .. v8}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 770
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget p2, p2, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->finishedGoingToSleepGlobal(I)V

    .line 771
    return-void
.end method

.method private synthetic lambda$handleLateInteractiveChange$6(II)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "changeReason"    # I

    .line 795
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->finishedWakingUp(II)V

    return-void
.end method

.method private synthetic lambda$handleLateInteractiveChange$7(II)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "changeReason"    # I

    .line 797
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->finishedGoingToSleep(II)V

    return-void
.end method

.method private synthetic lambda$notifyWakeLockListener$9(ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V
    .locals 12
    .param p1, "isEnabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "flags"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "historyTag"    # Ljava/lang/String;
    .param p9, "currentTime"    # J
    .param p11, "callback"    # Landroid/os/IWakeLockCallback;

    .line 1282
    move-object/from16 v1, p11

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    if-eqz p1, :cond_0

    .line 1284
    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v2 .. v11}, Lcom/android/server/power/Notifier;->notifyWakelockAcquisition(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 1287
    :cond_0
    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v2 .. v11}, Lcom/android/server/power/Notifier;->notifyWakelockRelease(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1292
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1294
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/IWakeLockCallback;->onStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    goto :goto_1

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wakelock.mCallback ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] is already dead."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PowerManagerNotifier"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1299
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$notifyWakelockChanging$10(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 12
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "ownerPid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "historyTag"    # Ljava/lang/String;
    .param p5, "monitorType"    # I
    .param p6, "newWorkSource"    # Landroid/os/WorkSource;
    .param p7, "newOwnerPid"    # I
    .param p8, "newTag"    # Ljava/lang/String;
    .param p9, "newHistoryTag"    # Ljava/lang/String;
    .param p10, "newMonitorType"    # I
    .param p11, "unimportantForLogging"    # Z

    .line 1364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    goto :goto_0

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify the wakelock changing from source via Notifier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1368
    const-string v2, "PowerManagerNotifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private synthetic lambda$playChargingStartedFeedback$8(IZ)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "wireless"    # Z

    .line 1198
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_vibration_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1200
    .local v0, "vibrate":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1202
    iget-boolean v3, p0, Lcom/android/server/power/Notifier;->mSupportRichTap:Z

    if-eqz v3, :cond_1

    .line 1203
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$4;

    invoke-direct {v4, p0}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1212
    const-string v3, "PowerManagerNotifier"

    const-string/jumbo v4, "playSwitchVibrate"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1214
    :cond_1
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    const-string v9, "Charging started"

    sget-object v10, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v6, 0x3e8

    invoke-virtual/range {v5 .. v10}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 1222
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1223
    if-eqz p2, :cond_3

    const-string/jumbo v4, "wireless_charging_started_sound"

    goto :goto_2

    .line 1224
    :cond_3
    const-string v4, "charging_started_sound"

    .line 1222
    :goto_2
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    .local v3, "soundPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1226
    .local v4, "soundUri":Landroid/net/Uri;
    if-eqz v4, :cond_5

    .line 1227
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    .line 1230
    .local v5, "sfx":Landroid/media/Ringtone;
    iget-object v6, p0, Lcom/android/server/power/Notifier;->mRingtone:Landroid/media/Ringtone;

    if-eqz v6, :cond_4

    .line 1231
    iget-object v6, p0, Lcom/android/server/power/Notifier;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->stop()V

    .line 1233
    :cond_4
    iput-object v5, p0, Lcom/android/server/power/Notifier;->mRingtone:Landroid/media/Ringtone;

    .line 1235
    if-eqz v5, :cond_5

    .line 1236
    invoke-virtual {v5, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1237
    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    .line 1240
    .end local v5    # "sfx":Landroid/media/Ringtone;
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1241
    return-void
.end method

.method private lockProfile(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1265
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 1266
    return-void
.end method

.method private logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V
    .locals 10
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "workSource"    # Landroid/os/WorkSource;
    .param p5, "eventType"    # Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    .line 1565
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    if-nez v0, :cond_0

    .line 1566
    return-void

    .line 1568
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->getWakelockMonitorTypeForLogging(I)I

    move-result v0

    .line 1569
    .local v0, "type":I
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_3

    .line 1573
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1574
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {p4, v1}, Landroid/os/WorkSource;->getUid(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result v2

    .line 1575
    .local v2, "mappedUid":I
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    invoke-virtual {v3, v2, p2, v0, p5}, Lcom/android/server/power/FrameworkStatsLogger;->wakelockStateChanged(ILjava/lang/String;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    .line 1573
    .end local v2    # "mappedUid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 1578
    .end local v1    # "i":I
    invoke-virtual {p4}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v1

    .line 1579
    .local v1, "workChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v1, :cond_5

    .line 1580
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    .line 1581
    .local v3, "workChain":Landroid/os/WorkSource$WorkChain;
    new-instance v4, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v4}, Landroid/os/WorkSource$WorkChain;-><init>()V

    .line 1583
    .local v4, "mappedWorkChain":Landroid/os/WorkSource$WorkChain;
    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v5

    .line 1584
    .local v5, "uids":[I
    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v6

    .line 1586
    .local v6, "tags":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 1587
    iget-object v8, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    aget v9, v5, v7

    invoke-virtual {v8, v9}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result v8

    .line 1588
    .local v8, "mappedUid":I
    aget-object v9, v6, v7

    invoke-virtual {v4, v8, v9}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 1586
    .end local v8    # "mappedUid":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 1590
    .end local v7    # "i":I
    iget-object v7, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    invoke-virtual {v7, p2, v4, v0, p5}, Lcom/android/server/power/FrameworkStatsLogger;->wakelockStateChanged(Ljava/lang/String;Landroid/os/WorkSource$WorkChain;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    .line 1592
    .end local v3    # "workChain":Landroid/os/WorkSource$WorkChain;
    .end local v4    # "mappedWorkChain":Landroid/os/WorkSource$WorkChain;
    .end local v5    # "uids":[I
    .end local v6    # "tags":[Ljava/lang/String;
    goto :goto_1

    .line 1570
    .end local v1    # "workChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    :goto_3
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {v1, p3}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result v1

    .line 1571
    .local v1, "mappedUid":I
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    invoke-virtual {v2, v1, p2, v0, p5}, Lcom/android/server/power/FrameworkStatsLogger;->wakelockStateChanged(ILjava/lang/String;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    .line 1572
    .end local v1    # "mappedUid":I
    nop

    .line 1595
    :cond_5
    return-void
.end method

.method private notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZIIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "callback"    # Landroid/os/IWakeLockCallback;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "isEnabled"    # Z
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "flags"    # I
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "packageName"    # Ljava/lang/String;
    .param p9, "historyTag"    # Ljava/lang/String;

    .line 1280
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {v0}, Lcom/android/server/power/Notifier$Injector;->currentTimeMillis()J

    move-result-wide v11

    .line 1281
    .local v11, "currentTime":J
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v1, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v13, p1

    move-object/from16 v4, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v13}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1300
    return-void
.end method

.method private notifyWakelockAcquisition(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 17
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "ownerPid"    # I
    .param p4, "flags"    # I
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "currentTime"    # J

    .line 1305
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v9, p4

    invoke-direct {v1, v9}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v7

    .line 1306
    .local v7, "monitorType":I
    if-ltz v7, :cond_2

    .line 1308
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v9

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1310
    .local v8, "unimportantForLogging":Z
    :goto_1
    if-eqz p5, :cond_1

    .line 1311
    :try_start_0
    iget-object v10, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v13, p1

    move/from16 v12, p3

    move-object/from16 v11, p5

    move-object/from16 v14, p7

    move v15, v7

    move/from16 v16, v8

    .end local v7    # "monitorType":I
    .end local v8    # "unimportantForLogging":Z
    .local v15, "monitorType":I
    .local v16, "unimportantForLogging":Z
    :try_start_1
    invoke-interface/range {v10 .. v16}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v15    # "monitorType":I
    .end local v16    # "unimportantForLogging":Z
    .restart local v7    # "monitorType":I
    .restart local v8    # "unimportantForLogging":Z
    move v8, v3

    move v15, v7

    goto :goto_2

    .line 1321
    .end local v7    # "monitorType":I
    .end local v8    # "unimportantForLogging":Z
    .restart local v15    # "monitorType":I
    :catch_0
    move-exception v0

    move v7, v15

    move v8, v3

    .end local v15    # "monitorType":I
    .restart local v7    # "monitorType":I
    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v11, p5

    move v8, v3

    move v15, v7

    goto :goto_3

    .line 1314
    .restart local v8    # "unimportantForLogging":Z
    :cond_1
    move-object/from16 v11, p5

    :try_start_2
    iget-object v2, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v5, p1

    move/from16 v4, p3

    move-object/from16 v6, p7

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    move v15, v7

    move/from16 v16, v8

    .line 1317
    .end local v7    # "monitorType":I
    .end local v8    # "unimportantForLogging":Z
    .restart local v15    # "monitorType":I
    .restart local v16    # "unimportantForLogging":Z
    :try_start_3
    iget-object v2, v1, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x28

    const/4 v6, 0x0

    move/from16 v4, p2

    move-object/from16 v5, p6

    :try_start_4
    invoke-virtual/range {v2 .. v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move v8, v4

    .line 1323
    .end local v16    # "unimportantForLogging":Z
    :goto_2
    goto :goto_3

    .line 1321
    :catch_2
    move-exception v0

    move v8, v4

    goto :goto_3

    :catch_3
    move-exception v0

    move/from16 v8, p2

    goto :goto_3

    .end local v15    # "monitorType":I
    .restart local v7    # "monitorType":I
    :catch_4
    move-exception v0

    move v8, v3

    move v15, v7

    .end local v7    # "monitorType":I
    .restart local v15    # "monitorType":I
    goto :goto_3

    .line 1306
    .end local v15    # "monitorType":I
    .restart local v7    # "monitorType":I
    :cond_2
    move-object/from16 v11, p5

    move v8, v3

    move v15, v7

    .line 1326
    .end local v7    # "monitorType":I
    .restart local v15    # "monitorType":I
    :goto_3
    invoke-direct {v1, v9}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object v2

    invoke-direct {v1, v8, v11}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result v4

    move-object/from16 v3, p1

    move-wide/from16 v6, p8

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/WakeLockLog;->onWakeLockAcquired(Ljava/lang/String;IIJ)V

    .line 1328
    return-void
.end method

.method private notifyWakelockChanging(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 14
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "ownerPid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "historyTag"    # Ljava/lang/String;
    .param p5, "monitorType"    # I
    .param p6, "newWorkSource"    # Landroid/os/WorkSource;
    .param p7, "newOwnerPid"    # I
    .param p8, "newTag"    # Ljava/lang/String;
    .param p9, "newHistoryTag"    # Ljava/lang/String;
    .param p10, "newMonitorType"    # I
    .param p11, "unimportantForLogging"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1362
    :cond_0
    iget-object v13, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1373
    :goto_0
    return-void
.end method

.method private notifyWakelockRelease(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "ownerPid"    # I
    .param p4, "flags"    # I
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "currentTime"    # J

    .line 1333
    invoke-direct {p0, p4}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 1334
    .local v5, "monitorType":I
    if-ltz v5, :cond_1

    .line 1336
    if-eqz p5, :cond_0

    .line 1337
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, p1

    move v2, p3

    move-object v1, p5

    move-object v4, p7

    .end local p1    # "tag":Ljava/lang/String;
    .end local p3    # "ownerPid":I
    .end local p5    # "workSource":Landroid/os/WorkSource;
    .end local p7    # "historyTag":Ljava/lang/String;
    .local v1, "workSource":Landroid/os/WorkSource;
    .local v2, "ownerPid":I
    .local v3, "tag":Ljava/lang/String;
    .local v4, "historyTag":Ljava/lang/String;
    :try_start_1
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v1

    .end local v1    # "workSource":Landroid/os/WorkSource;
    .local p1, "workSource":Landroid/os/WorkSource;
    move v1, p2

    goto :goto_0

    .line 1344
    .end local p1    # "workSource":Landroid/os/WorkSource;
    .restart local v1    # "workSource":Landroid/os/WorkSource;
    :catch_0
    move-exception v0

    move-object p1, v1

    move v1, p2

    .end local v1    # "workSource":Landroid/os/WorkSource;
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    goto :goto_1

    .end local v2    # "ownerPid":I
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "historyTag":Ljava/lang/String;
    .local p1, "tag":Ljava/lang/String;
    .restart local p3    # "ownerPid":I
    .restart local p5    # "workSource":Landroid/os/WorkSource;
    .restart local p7    # "historyTag":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v3, p1

    move v2, p3

    move-object p1, p5

    move-object v4, p7

    move v1, p2

    .end local p3    # "ownerPid":I
    .end local p5    # "workSource":Landroid/os/WorkSource;
    .end local p7    # "historyTag":Ljava/lang/String;
    .restart local v2    # "ownerPid":I
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "historyTag":Ljava/lang/String;
    .local p1, "workSource":Landroid/os/WorkSource;
    goto :goto_1

    .line 1340
    .end local v2    # "ownerPid":I
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "historyTag":Ljava/lang/String;
    .local p1, "tag":Ljava/lang/String;
    .restart local p3    # "ownerPid":I
    .restart local p5    # "workSource":Landroid/os/WorkSource;
    .restart local p7    # "historyTag":Ljava/lang/String;
    :cond_0
    move-object v3, p1

    move v2, p3

    move-object p1, p5

    move-object v4, p7

    .end local p3    # "ownerPid":I
    .end local p5    # "workSource":Landroid/os/WorkSource;
    .end local p7    # "historyTag":Ljava/lang/String;
    .restart local v2    # "ownerPid":I
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "historyTag":Ljava/lang/String;
    .local p1, "workSource":Landroid/os/WorkSource;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move v1, p2

    .end local p2    # "ownerUid":I
    .local v1, "ownerUid":I
    :try_start_3
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1342
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p3, 0x28

    const/4 p5, 0x0

    invoke-virtual {p2, p3, v1, p6, p5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1346
    :goto_0
    goto :goto_1

    .line 1344
    :catch_2
    move-exception v0

    goto :goto_1

    .end local v1    # "ownerUid":I
    .restart local p2    # "ownerUid":I
    :catch_3
    move-exception v0

    move v1, p2

    .end local p2    # "ownerUid":I
    .restart local v1    # "ownerUid":I
    goto :goto_1

    .line 1334
    .end local v1    # "ownerUid":I
    .end local v2    # "ownerPid":I
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "historyTag":Ljava/lang/String;
    .local p1, "tag":Ljava/lang/String;
    .restart local p2    # "ownerUid":I
    .restart local p3    # "ownerPid":I
    .restart local p5    # "workSource":Landroid/os/WorkSource;
    .restart local p7    # "historyTag":Ljava/lang/String;
    :cond_1
    move-object v3, p1

    move v1, p2

    move v2, p3

    move-object p1, p5

    move-object v4, p7

    .line 1348
    .end local p2    # "ownerUid":I
    .end local p3    # "ownerPid":I
    .end local p5    # "workSource":Landroid/os/WorkSource;
    .end local p7    # "historyTag":Ljava/lang/String;
    .restart local v1    # "ownerUid":I
    .restart local v2    # "ownerPid":I
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "historyTag":Ljava/lang/String;
    .local p1, "workSource":Landroid/os/WorkSource;
    :goto_1
    invoke-direct {p0, p4}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object p2

    invoke-direct {p0, v1, p1}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result p3

    invoke-virtual {p2, v3, p3, p8, p9}, Lcom/android/server/power/WakeLockLog;->onWakeLockReleased(Ljava/lang/String;IJ)V

    .line 1350
    return-void
.end method

.method private playChargingStartedFeedback(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "wireless"    # Z

    .line 1185
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    return-void

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    return-void

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/Notifier;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1242
    return-void
.end method

.method private resetDisplayInteractivities()V
    .locals 11

    .line 816
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 817
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsByGroupsIds()Landroid/util/SparseArray;

    move-result-object v0

    .line 818
    .local v0, "displaysByGroupId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 819
    .local v1, "newDisplayInteractivities":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 820
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 821
    .local v3, "groupId":I
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    nop

    if-ge v7, v5, :cond_3

    aget v8, v4, v7

    .line 823
    .local v8, "displayId":I
    iget-object v9, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v9

    if-lez v9, :cond_0

    .line 824
    iget-object v9, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    .line 825
    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    .line 824
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_4

    .line 827
    :cond_0
    iget-object v9, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/Notifier$Interactivity;

    .line 829
    .local v9, "groupInteractivity":Lcom/android/server/power/Notifier$Interactivity;
    if-eqz v9, :cond_1

    iget-boolean v10, v9, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v10, :cond_2

    :cond_1
    goto :goto_2

    :cond_2
    move v10, v6

    goto :goto_3

    :goto_2
    const/4 v10, 0x1

    .line 831
    .local v10, "groupInteractive":Z
    :goto_3
    invoke-virtual {v1, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 821
    .end local v8    # "displayId":I
    .end local v9    # "groupInteractivity":Lcom/android/server/power/Notifier$Interactivity;
    .end local v10    # "groupInteractive":Z
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 819
    .end local v3    # "groupId":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 835
    .end local v2    # "i":I
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    .line 836
    return-void
.end method

.method private screenPolicyChanging(II)V
    .locals 1
    .param p1, "displayGroupId"    # I
    .param p2, "screenPolicy"    # I

    .line 1261
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/ScreenUndimDetector;->recordScreenPolicy(II)V

    .line 1262
    return-void
.end method

.method private sendEnhancedDischargePredictionBroadcast()V
    .locals 3

    .line 1068
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.ENHANCED_DISCHARGE_PREDICTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1070
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1071
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .locals 9

    .line 1160
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mNtCharge:Lcom/android/server/charge/INtCharge;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mNtCharge:Lcom/android/server/charge/INtCharge;

    invoke-interface {v0}, Lcom/android/server/charge/INtCharge;->nTsendGoToSleepThermalCtrl()V

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/IIntentReceiver;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    goto :goto_0

    .line 1169
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1170
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 1172
    :goto_0
    return-void
.end method

.method private sendNextBroadcast()V
    .locals 5

    .line 1075
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 1079
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    packed-switch v1, :pswitch_data_0

    .line 1087
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 1088
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 1089
    goto :goto_2

    .line 1115
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 1081
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 1082
    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 1083
    goto :goto_2

    .line 1091
    :cond_0
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-ne v1, v4, :cond_3

    .line 1093
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v2, :cond_2

    :cond_1
    goto :goto_0

    .line 1098
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 1099
    monitor-exit v0

    return-void

    .line 1095
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 1096
    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_2

    .line 1103
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_5

    :cond_4
    goto :goto_1

    .line 1108
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 1109
    monitor-exit v0

    return-void

    .line 1105
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 1106
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 1113
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 1114
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 1115
    .local v1, "powerState":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    const/16 v0, 0xaa5

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1119
    if-ne v1, v4, :cond_6

    .line 1120
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    goto :goto_3

    .line 1122
    :cond_6
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    .line 1124
    :goto_3
    return-void

    .line 1115
    .end local v1    # "powerState":I
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private sendUserActivity(II)V
    .locals 2
    .param p1, "displayGroupId"    # I
    .param p2, "event"    # I

    .line 1049
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1050
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_0

    .line 1051
    monitor-exit v0

    return-void

    .line 1054
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1053
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 1054
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1056
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->notifyUserActivity()V

    .line 1057
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerInternal;->notifyUserActivity()V

    .line 1058
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->userActivity(II)V

    .line 1059
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    invoke-virtual {v1, p2}, Lcom/android/server/power/FaceDownDetector;->userActivity(I)V

    .line 1060
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    invoke-virtual {v1, p1}, Lcom/android/server/power/ScreenUndimDetector;->userActivity(I)V

    .line 1061
    return-void

    .line 1054
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendWakeUpBroadcast()V
    .locals 9

    .line 1131
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mNtCharge:Lcom/android/server/charge/INtCharge;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mNtCharge:Lcom/android/server/charge/INtCharge;

    invoke-interface {v0}, Lcom/android/server/charge/INtCharge;->sendWakeUpThermalCtrl()V

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/IIntentReceiver;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    goto :goto_0

    .line 1140
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1141
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 1143
    :goto_0
    return-void
.end method

.method private showWiredChargingStarted(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 1257
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 1258
    return-void
.end method

.method private showWirelessChargingStarted(II)V
    .locals 1
    .param p1, "batteryLevel"    # I
    .param p2, "userId"    # I

    .line 1246
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 1249
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showChargingAnimation(I)V

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 1253
    return-void
.end method

.method private updateDisplayInteractivities(IZ)V
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "interactive"    # Z

    .line 808
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsForGroup(I)[I

    move-result-object v0

    .line 809
    .local v0, "displayIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 810
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 809
    .end local v3    # "displayId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 813
    :cond_0
    return-void
.end method

.method private updatePendingBroadcastLocked()V
    .locals 3

    .line 1031
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v0, v1, :cond_1

    .line 1035
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 1036
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1037
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1038
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1039
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1041
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method addScreenTimeoutPolicyListener(IILandroid/os/IScreenTimeoutPolicyListener;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "screenTimeoutPolicy"    # I
    .param p3, "listener"    # Landroid/os/IScreenTimeoutPolicyListener;

    .line 1383
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1384
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 1385
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    .line 1386
    .local v1, "listenersContainer":Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    if-nez v1, :cond_0

    .line 1387
    new-instance v2, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    invoke-direct {v2, p0, p2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;-><init>(Lcom/android/server/power/Notifier;I)V

    move-object v1, v2

    .line 1389
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    goto :goto_0

    .line 1393
    .end local v1    # "listenersContainer":Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1392
    .restart local v1    # "listenersContainer":Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    :cond_0
    :goto_0
    invoke-virtual {v1, p3}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->addListener(Landroid/os/IScreenTimeoutPolicyListener;)V

    .line 1393
    .end local v1    # "listenersContainer":Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    monitor-exit v0

    .line 1394
    return-void

    .line 1393
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearScreenTimeoutPolicyListeners(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1423
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1424
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1425
    monitor-exit v0

    .line 1426
    return-void

    .line 1425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1016
    const-string v0, "Notifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1019
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "Partial Wakelock Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    invoke-virtual {v1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;)V

    .line 1022
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    const-string v2, "Full Wakelock Log:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    invoke-virtual {v2, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;)V

    .line 1026
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-virtual {v1, v0}, Lcom/android/server/power/WakefulnessSessionObserver;->dump(Ljava/io/PrintWriter;)V

    .line 1028
    return-void
.end method

.method getWakelockMonitorTypeForLogging(I)I
    .locals 3
    .param p1, "flags"    # I

    .line 571
    const v0, 0xffff

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    .line 590
    return v2

    .line 576
    :sswitch_0
    const/16 v0, 0x80

    return v0

    .line 588
    :sswitch_1
    return v2

    .line 578
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v0, :cond_0

    .line 579
    return v2

    .line 581
    :cond_0
    return v1

    .line 574
    :sswitch_3
    const/16 v0, 0x1a

    return v0

    .line 583
    :sswitch_4
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x6 -> :sswitch_3
        0xa -> :sswitch_3
        0x1a -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method notifyScreenTimeoutPolicyChanges(II)V
    .locals 4
    .param p1, "displayGroupId"    # I
    .param p2, "screenTimeoutPolicy"    # I

    .line 1436
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1437
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1438
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1439
    .local v2, "displayId":I
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal;->getGroupIdForDisplay(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1440
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 1441
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    .line 1442
    .local v3, "container":Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    invoke-virtual {v3, p2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->updateScreenTimeoutPolicyAndNotifyIfNeeded(I)V

    goto :goto_1

    .line 1445
    .end local v1    # "idx":I
    .end local v2    # "displayId":I
    .end local v3    # "container":Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1437
    .restart local v1    # "idx":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1445
    .end local v1    # "idx":I
    monitor-exit v0

    .line 1446
    return-void

    .line 1445
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onGlobalWakefulnessChangeStarted(IIJ)V
    .locals 7
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I
    .param p3, "eventTime"    # J

    .line 602
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 610
    .local v0, "interactive":Z
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 619
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v1, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eq v1, v0, :cond_4

    .line 621
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v1, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v1, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateGlobalInteractiveChange()V

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 627
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 630
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 631
    .local v1, "displayInteractivities":Landroid/util/SparseBooleanArray;
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIds()Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    .line 632
    .local v3, "displayIds":[I
    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    .line 633
    .local v6, "displayId":I
    invoke-virtual {v1, v6, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 632
    .end local v6    # "displayId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 635
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v4, v1}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    .line 640
    .end local v1    # "displayInteractivities":Landroid/util/SparseBooleanArray;
    .end local v3    # "displayIds":[I
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    .line 642
    :goto_2
    nop

    .line 643
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_3

    .line 644
    :cond_3
    nop

    .line 642
    :goto_3
    const/16 v3, 0x21

    invoke-static {v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 647
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iput-boolean v0, v2, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 648
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iput-boolean v1, v2, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 649
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iput p2, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 650
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iput-wide p3, v1, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    .line 651
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleEarlyGlobalInteractiveChange()V

    .line 653
    :cond_4
    return-void
.end method

.method public onGroupChanged()V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->resetDisplayInteractivities()V

    .line 895
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    .line 897
    :cond_0
    return-void
.end method

.method public onGroupRemoved(I)V
    .locals 2
    .param p1, "groupId"    # I

    .line 881
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 882
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->removePowerGroup(I)V

    .line 883
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->resetDisplayInteractivities()V

    .line 885
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    .line 887
    :cond_0
    return-void
.end method

.method public onGroupWakefulnessChangeStarted(IIIJ)V
    .locals 10
    .param p1, "groupId"    # I
    .param p2, "wakefulness"    # I
    .param p3, "changeReason"    # I
    .param p4, "eventTime"    # J

    .line 843
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 845
    .local v0, "isInteractive":Z
    const/4 v1, 0x0

    .line 846
    .local v1, "isNewGroup":Z
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/Notifier$Interactivity;

    .line 847
    .local v2, "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    if-nez v2, :cond_0

    .line 848
    const/4 v1, 0x1

    .line 849
    new-instance v3, Lcom/android/server/power/Notifier$Interactivity;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/power/Notifier$Interactivity;-><init>(Lcom/android/server/power/Notifier-IA;)V

    move-object v2, v3

    .line 850
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 852
    :cond_0
    if-nez v1, :cond_1

    iget-boolean v3, v2, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eq v3, v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move v5, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    goto :goto_1

    .line 854
    :goto_0
    iget-boolean v3, v2, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v3, :cond_3

    .line 855
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange(I)V

    .line 859
    :cond_3
    iput-boolean v0, v2, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 860
    iput p3, v2, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 861
    iput-wide p4, v2, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    .line 862
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 863
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange(I)V

    .line 864
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    move v5, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    .end local p1    # "groupId":I
    .end local p2    # "wakefulness":I
    .end local p3    # "changeReason":I
    .end local p4    # "eventTime":J
    .local v5, "groupId":I
    .local v6, "wakefulness":I
    .local v7, "changeReason":I
    .local v8, "eventTime":J
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakefulnessSessionObserver;->onWakefulnessChangeStarted(IIIJ)V

    .line 868
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 869
    invoke-direct {p0, v5, v0}, Lcom/android/server/power/Notifier;->updateDisplayInteractivities(IZ)V

    .line 870
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object p2, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    .line 873
    :cond_4
    :goto_1
    return-void
.end method

.method public onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "historyTag"    # Ljava/lang/String;

    .line 417
    if-eqz p3, :cond_0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 419
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-static {v0, p3, p1, p4, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, p1

    move v2, p2

    move-object v5, p4

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    move-object v4, p1

    move v2, p2

    move-object v5, p4

    goto :goto_1

    .line 423
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 424
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v1, 0xb

    move-object v4, p1

    move v2, p2

    move-object v5, p4

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "ownerUid":I
    .end local p4    # "historyTag":Ljava/lang/String;
    .local v2, "ownerUid":I
    .local v4, "tag":Ljava/lang/String;
    .local v5, "historyTag":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 431
    :goto_0
    goto :goto_1

    .line 429
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v2    # "ownerUid":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "historyTag":Ljava/lang/String;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "ownerUid":I
    .restart local p4    # "historyTag":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v4, p1

    move v2, p2

    move-object v5, p4

    .line 432
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "ownerUid":I
    .end local p4    # "historyTag":Ljava/lang/String;
    .restart local v2    # "ownerUid":I
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "historyTag":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "historyTag"    # Ljava/lang/String;

    .line 392
    if-eqz p3, :cond_0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 394
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-static {v0, p3, p1, p4, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, p1

    move v2, p2

    move-object v5, p4

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    move-object v4, p1

    move v2, p2

    move-object v5, p4

    goto :goto_1

    .line 398
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 399
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v1, 0xb

    move-object v4, p1

    move v2, p2

    move-object v5, p4

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "ownerUid":I
    .end local p4    # "historyTag":Ljava/lang/String;
    .local v2, "ownerUid":I
    .local v4, "tag":Ljava/lang/String;
    .local v5, "historyTag":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 406
    :goto_0
    goto :goto_1

    .line 404
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v2    # "ownerUid":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "historyTag":Ljava/lang/String;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "ownerUid":I
    .restart local p4    # "historyTag":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v4, p1

    move v2, p2

    move-object v5, p4

    .line 407
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "ownerUid":I
    .end local p4    # "historyTag":Ljava/lang/String;
    .restart local v2    # "ownerUid":I
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "historyTag":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public onProfileTimeout(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 954
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 955
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 956
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 957
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 958
    return-void
.end method

.method public onScreenPolicyUpdate(II)V
    .locals 3
    .param p1, "displayGroupId"    # I
    .param p2, "newPolicy"    # I

    .line 998
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 999
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 998
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/WakefulnessSessionObserver;->onScreenPolicyUpdate(JII)V

    .line 1001
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1003
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1004
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1005
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1006
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1007
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 1008
    return-void

    .line 1007
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserActivity(III)V
    .locals 3
    .param p1, "displayGroupId"    # I
    .param p2, "event"    # I
    .param p3, "uid"    # I

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p3, p2}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V

    .line 910
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 911
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 910
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/WakefulnessSessionObserver;->notifyUserActivity(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 916
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_0

    .line 918
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 919
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 920
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 921
    iput p2, v2, Landroid/os/Message;->arg2:I

    .line 922
    invoke-virtual {v2, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 923
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 925
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v0

    .line 926
    return-void

    .line 925
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .locals 11
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "callback"    # Landroid/os/IWakeLockCallback;

    .line 355
    sget-object v6, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    .line 356
    const/4 v4, 0x1

    move v7, p1

    move-object v9, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move-object/from16 v2, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/Notifier;->notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZIIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v0

    if-nez v0, :cond_3

    .line 359
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 360
    .local v5, "monitorType":I
    if-ltz v5, :cond_2

    .line 362
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    .local v6, "unimportantForLogging":Z
    :goto_1
    if-eqz p6, :cond_1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, p2

    move/from16 v2, p5

    move-object/from16 v1, p6

    move-object/from16 v4, p7

    :try_start_1
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v1

    move v8, v5

    goto :goto_3

    .line 374
    .end local v6    # "unimportantForLogging":Z
    :catch_0
    move-exception v0

    move-object v9, v1

    :goto_2
    move v8, v5

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v9, p6

    goto :goto_2

    .line 368
    .restart local v6    # "unimportantForLogging":Z
    :cond_1
    move-object/from16 v9, p6

    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v3, p2

    move v1, p4

    move/from16 v2, p5

    move-object/from16 v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move v8, v5

    move v10, v6

    .line 371
    .end local v5    # "monitorType":I
    .end local v6    # "unimportantForLogging":Z
    .local v8, "monitorType":I
    .local v10, "unimportantForLogging":Z
    :try_start_3
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x28

    const/4 v4, 0x0

    move-object v3, p3

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 376
    .end local v10    # "unimportantForLogging":Z
    :goto_3
    goto :goto_4

    .line 374
    :catch_2
    move-exception v0

    goto :goto_4

    .end local v8    # "monitorType":I
    .restart local v5    # "monitorType":I
    :catch_3
    move-exception v0

    move v8, v5

    .end local v5    # "monitorType":I
    .restart local v8    # "monitorType":I
    goto :goto_4

    .line 360
    .end local v8    # "monitorType":I
    .restart local v5    # "monitorType":I
    :cond_2
    move-object/from16 v9, p6

    move v8, v5

    .line 378
    .end local v5    # "monitorType":I
    .restart local v8    # "monitorType":I
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object v0

    .line 379
    invoke-direct {p0, p4, v9}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result v2

    .line 378
    const-wide/16 v4, -0x1

    move v3, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/WakeLockLog;->onWakeLockAcquired(Ljava/lang/String;IIJ)V

    goto :goto_5

    .line 358
    .end local v8    # "monitorType":I
    :cond_3
    move-object/from16 v9, p6

    .line 381
    :goto_5
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->onWakeLockAcquired(I)V

    .line 382
    return-void
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .locals 23
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "callback"    # Landroid/os/IWakeLockCallback;
    .param p9, "newFlags"    # I
    .param p10, "newTag"    # Ljava/lang/String;
    .param p11, "newPackageName"    # Ljava/lang/String;
    .param p12, "newOwnerUid"    # I
    .param p13, "newOwnerPid"    # I
    .param p14, "newWorkSource"    # Landroid/os/WorkSource;
    .param p15, "newHistoryTag"    # Ljava/lang/String;
    .param p16, "newCallback"    # Landroid/os/IWakeLockCallback;

    .line 448
    move/from16 v2, p9

    move-object/from16 v0, p14

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 449
    .end local p14    # "newWorkSource":Landroid/os/WorkSource;
    .local v7, "newWorkSource":Landroid/os/WorkSource;
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v13

    .line 450
    .local v13, "monitorType":I
    move-object/from16 v1, p0

    invoke-direct {v1, v2}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v8

    .line 451
    .local v8, "newMonitorType":I
    if-eqz p6, :cond_2

    if-eqz v7, :cond_2

    if-ltz v13, :cond_2

    if-ltz v8, :cond_2

    .line 460
    sget-object v19, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move/from16 v15, p1

    move-object/from16 v16, p2

    move/from16 v17, p4

    move-object/from16 v18, p6

    move-object v14, v1

    invoke-direct/range {v14 .. v19}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    .line 461
    sget-object v6, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object/from16 v1, p0

    move-object/from16 v3, p10

    move/from16 v4, p12

    move-object v5, v7

    .end local v7    # "newWorkSource":Landroid/os/WorkSource;
    .local v5, "newWorkSource":Landroid/os/WorkSource;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    .line 464
    .end local v5    # "newWorkSource":Landroid/os/WorkSource;
    .restart local v7    # "newWorkSource":Landroid/os/WorkSource;
    const/16 v0, 0x3e8

    move/from16 v5, p12

    if-ne v5, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    and-int v0, p9, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    move/from16 v19, v0

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 467
    .local v19, "unimportantForLogging":Z
    :goto_3
    move-object/from16 v11, p2

    move/from16 v10, p5

    move-object/from16 v9, p6

    move-object/from16 v12, p7

    move-object/from16 v16, p10

    move/from16 v15, p13

    move-object/from16 v17, p15

    move-object v14, v7

    move/from16 v18, v8

    move-object/from16 v8, p0

    .end local v7    # "newWorkSource":Landroid/os/WorkSource;
    .end local v8    # "newMonitorType":I
    .local v14, "newWorkSource":Landroid/os/WorkSource;
    .local v18, "newMonitorType":I
    :try_start_0
    invoke-direct/range {v8 .. v19}, Lcom/android/server/power/Notifier;->notifyWakelockChanging(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v10, v18

    .line 472
    .end local v14    # "newWorkSource":Landroid/os/WorkSource;
    .end local v18    # "newMonitorType":I
    .restart local v7    # "newWorkSource":Landroid/os/WorkSource;
    .local v10, "newMonitorType":I
    goto :goto_4

    .line 470
    .end local v7    # "newWorkSource":Landroid/os/WorkSource;
    .end local v10    # "newMonitorType":I
    .restart local v14    # "newWorkSource":Landroid/os/WorkSource;
    .restart local v18    # "newMonitorType":I
    :catch_0
    move-exception v0

    move-object v7, v14

    move/from16 v10, v18

    .line 473
    .end local v14    # "newWorkSource":Landroid/os/WorkSource;
    .end local v18    # "newMonitorType":I
    .end local v19    # "unimportantForLogging":Z
    .restart local v7    # "newWorkSource":Landroid/os/WorkSource;
    .restart local v10    # "newMonitorType":I
    :goto_4
    move-object/from16 v11, p8

    goto :goto_5

    .line 451
    .end local v10    # "newMonitorType":I
    .restart local v8    # "newMonitorType":I
    :cond_2
    move/from16 v5, p12

    move v10, v8

    .line 473
    .end local v8    # "newMonitorType":I
    .restart local v10    # "newMonitorType":I
    move-object/from16 v11, p8

    move-object/from16 v9, p16

    invoke-static {v11, v9}, Lcom/android/server/power/PowerManagerService;->isSameCallback(Landroid/os/IWakeLockCallback;Landroid/os/IWakeLockCallback;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 474
    const/16 v22, 0x0

    move-object/from16 v14, p0

    move/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    invoke-virtual/range {v14 .. v22}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 476
    move-object/from16 v1, p0

    move/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move/from16 v6, p13

    move-object/from16 v8, p15

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    goto :goto_5

    .line 479
    :cond_3
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 481
    move-object/from16 v1, p0

    move/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 484
    :goto_5
    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .locals 10
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "callback"    # Landroid/os/IWakeLockCallback;

    .line 492
    const/4 v9, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V

    .line 494
    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V
    .locals 11
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "callback"    # Landroid/os/IWakeLockCallback;
    .param p9, "releaseReason"    # I

    .line 509
    sget-object v6, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    .line 510
    const/4 v4, 0x0

    move v7, p1

    move-object v9, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move-object/from16 v2, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/Notifier;->notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZIIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 514
    .local v5, "monitorType":I
    if-ltz v5, :cond_1

    .line 516
    if-eqz p6, :cond_0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, p2

    move/from16 v2, p5

    move-object/from16 v1, p6

    move-object/from16 v4, p7

    :try_start_1
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    move-object v8, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v8, p6

    goto :goto_1

    .line 520
    :cond_0
    move-object/from16 v8, p6

    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v3, p2

    move v1, p4

    move/from16 v2, p5

    move-object/from16 v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 522
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p4, p3, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 526
    :goto_0
    goto :goto_1

    .line 524
    :catch_2
    move-exception v0

    goto :goto_1

    .line 514
    :cond_1
    move-object/from16 v8, p6

    .line 528
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object v0

    .line 529
    invoke-direct {p0, p4, v8}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result v2

    .line 528
    const-wide/16 v3, -0x1

    invoke-virtual {v0, p2, v2, v3, v4}, Lcom/android/server/power/WakeLockLog;->onWakeLockReleased(Ljava/lang/String;IJ)V

    goto :goto_2

    .line 512
    .end local v5    # "monitorType":I
    :cond_2
    move-object/from16 v8, p6

    .line 531
    :goto_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    move/from16 v3, p9

    invoke-virtual {v0, p1, v3}, Lcom/android/server/power/WakefulnessSessionObserver;->onWakeLockReleased(II)V

    .line 532
    return-void
.end method

.method public onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "details"    # Ljava/lang/String;
    .param p3, "reasonUid"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "opUid"    # I

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    .line 941
    if-eqz p4, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1, p5, p4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 944
    :catch_0
    move-exception v0

    goto :goto_1

    .line 946
    :cond_0
    :goto_0
    nop

    .line 947
    :goto_1
    const/16 v0, 0x11a

    invoke-static {v0, p1, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 948
    return-void
.end method

.method public onWakefulnessChangeFinished()V
    .locals 5

    .line 662
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 664
    .local v1, "groupId":I
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/Notifier$Interactivity;

    .line 665
    .local v3, "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    iget-boolean v4, v3, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v4, :cond_0

    .line 666
    iput-boolean v2, v3, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 667
    invoke-direct {p0, v1}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange(I)V

    .line 662
    .end local v1    # "groupId":I
    .end local v3    # "interactivity":Lcom/android/server/power/Notifier$Interactivity;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 670
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v0, v0, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iput-boolean v2, v0, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 672
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateGlobalInteractiveChange()V

    .line 674
    :cond_2
    return-void
.end method

.method public onWiredChargingStarted(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 984
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 985
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 986
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 987
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 988
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 989
    return-void
.end method

.method public onWirelessChargingStarted(II)V
    .locals 2
    .param p1, "batteryLevel"    # I
    .param p2, "userId"    # I

    .line 968
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 969
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 970
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 971
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 972
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 973
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 974
    return-void
.end method

.method postEnhancedDischargePredictionBroadcast(J)V
    .locals 2
    .param p1, "delayMs"    # J

    .line 1064
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1065
    return-void
.end method

.method removeScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "listener"    # Landroid/os/IScreenTimeoutPolicyListener;

    .line 1403
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1404
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 1405
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    .line 1406
    .local v1, "listenersContainer":Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    if-nez v1, :cond_0

    .line 1407
    monitor-exit v0

    return-void

    .line 1415
    .end local v1    # "listenersContainer":Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1410
    .restart local v1    # "listenersContainer":Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->removeListener(Landroid/os/IScreenTimeoutPolicyListener;)V

    .line 1412
    invoke-virtual {v1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1413
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1415
    .end local v1    # "listenersContainer":Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    :cond_1
    monitor-exit v0

    .line 1416
    return-void

    .line 1415
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showDismissibleKeyguard()V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showDismissibleKeyguard()V

    .line 537
    return-void
.end method
