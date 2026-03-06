.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;,
        Lcom/android/server/display/DisplayPowerController$Injector;,
        Lcom/android/server/display/DisplayPowerController$Clock;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_CHANGE_STATSD_REPORT_INTERVAL_MS:I = 0x1f4

.field private static final BRIGHTNESS_DARK_THRESHOLD:F = 0.3f

.field private static final BRIGHTNESS_RAMP_RATE_FAST_DECREASE:F = 0.2f

.field private static final BRIGHTNESS_RAMP_RATE_FAST_INCREASE:F = 0.7f

.field private static final BRIGHTNESS_RAMP_RATE_SLOW_DECREASE:F = 0.04f

.field private static final BRIGHTNESS_RAMP_RATE_SLOW_INCREASE:F = 0.2f

.field private static final BRIGHTNESS_RANGE_BOUNDARIES:[F

.field private static final BRIGHTNESS_RANGE_INDEX:[I

.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.nothing.camera"

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final DEBUG:Z

.field private static final MSG_BOOT_COMPLETED:I = 0xd

.field private static final MSG_BRIGHTNESS_RAMP_DONE:I = 0xa

.field private static final MSG_CAMERA_BOOST_BRIGHTNESS:I = 0x64

.field private static final MSG_CONFIGURE_BRIGHTNESS:I = 0x4

.field private static final MSG_OFFLOADING_SCREEN_ON_UNBLOCKED:I = 0x12

.field private static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x3

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x2

.field private static final MSG_SET_BRIGHTNESS_FROM_OFFLOAD:I = 0x11

.field private static final MSG_SET_DWBC_COLOR_OVERRIDE:I = 0xf

.field private static final MSG_SET_DWBC_LOGGING_ENABLED:I = 0x10

.field private static final MSG_SET_STYLUS_BEING_USED:I = 0x13

.field private static final MSG_SET_STYLUS_USE_ENDED:I = 0x14

.field private static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x6

.field private static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x5

.field private static final MSG_SET_WINDOW_MANAGER_BRIGHTNESS_OVERRIDE:I = 0x15

.field private static final MSG_STATSD_HBM_BRIGHTNESS:I = 0xb

.field private static final MSG_STOP:I = 0x7

.field private static final MSG_SWITCH_AUTOBRIGHTNESS_MODE:I = 0xe

.field private static final MSG_SWITCH_USER:I = 0xc

.field private static final MSG_UPDATE_BRIGHTNESS:I = 0x8

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final MSG_UPDATE_RBC:I = 0x9

.field private static final NANO_SECONDS_TO_MILLI_SECONDS_RATIO:I = 0xf4240

.field private static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field private static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field private static final RAMP_STATE_SKIP_NONE:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final REPORTED_TO_POLICY_UNREPORTED:I = -0x1

.field private static final RINGBUFFER_MAX:I = 0x64

.field private static final RINGBUFFER_RBC_MAX:I = 0x14

.field private static final SCREEN_ANIMATION_RATE_MINIMUM:F = 0.0f

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_BY_DISPLAYOFFLOAD_TRACE_NAME:Ljava/lang/String; = "Screen on blocked by displayoffload"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final STYLUS_USAGE_DEBOUNCE_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z = false

.field private static final VND_UDLIGHT_SENSOR_SUPPORT_TRACK:Ljava/lang/String; = "ro.vendor.sensor.udlight_sensor_support"

.field private static final mSupportUDLightSensor:Z


# instance fields
.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBootCompleted:Z

.field private final mBrightnessBucketsInDozeConfig:Z

.field private final mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

.field private mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/display/brightness/BrightnessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessExtensionSupport:Z

.field private mBrightnessExtensionTimeout:Z

.field private mBrightnessRampDecreaseMaxTimeIdleMillis:J

.field private mBrightnessRampDecreaseMaxTimeMillis:J

.field private mBrightnessRampIncreaseMaxTimeIdleMillis:J

.field private mBrightnessRampIncreaseMaxTimeMillis:J

.field private mBrightnessRampRateFastDecrease:F

.field private mBrightnessRampRateFastIncrease:F

.field private mBrightnessRampRateSlowDecrease:F

.field private mBrightnessRampRateSlowDecreaseIdle:F

.field private mBrightnessRampRateSlowIncrease:F

.field private mBrightnessRampRateSlowIncreaseIdle:F

.field private final mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

.field final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field private final mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

.field private final mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

.field private final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field private final mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

.field private final mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private final mClock:Lcom/android/server/display/DisplayPowerController$Clock;

.field private final mColorFadeEnabled:Z

.field private final mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBrightnessStrategy:Ljava/lang/String;

.field private mCurrentCameraBoostFactor:F

.field private mCurrentUserSerial:I

.field private final mDisplayBlanksAfterDozeConfig:Z

.field private final mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

.field private final mDisplayBrightnessFollowers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayPowerController;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private final mDisplayId:I

.field private mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

.field private final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field private mDisplayReadyLocked:Z

.field private final mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

.field private mDisplayStatsId:I

.field private final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field private final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field private mDozeScaleFactor:F

.field private mDozing:Z

.field private final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field private mHBMTracking:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mHdrBrightnessAnimating:Z

.field private mIdleStylusTimeoutMillisConfig:J

.field private mInitialAutoBrightness:F

.field private final mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

.field private mIsDisplayInternal:Z

.field private mIsEnabled:Z

.field private mIsInTransition:Z

.field private mIsRbcActive:Z

.field private mIsWearBedtimeModeEnabled:Z

.field private final mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field private mLastBrightnessStrategy:Ljava/lang/String;

.field private mLastCameraBoostFactor:F

.field private mLastScreenBrightness:F

.field private mLastSdrBrightness:F

.field private mLastStatsBrightness:F

.field private mLastStylusUsageEventTime:J

.field private mLeadDisplayId:I

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLock:Ljava/lang/Object;

.field private final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field private mNitsRange:[F

.field private mNothSensorHelper:Lcom/android/server/sensors/NothSensorHelper;

.field private final mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

.field private final mNtGlyphService:Lcom/android/server/lights/INtGlyphService;

.field private mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

.field private final mNtSensorMonitor:Lcom/android/server/sensorextension/INtSensorMonitor;

.field private final mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field private mPendingOverrideDozeScreenStateLocked:I

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenOff:Z

.field private mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPhysicalDisplayName:Ljava/lang/String;

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/display/brightness/BrightnessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedScreenStateToPolicy:I

.field private mResetBrightness:F

.field private mScreenBrightnessDozeConfig:F

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator$DualRampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffBlockStartRealTime:J

.field private mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

.field private mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

.field private mScreenOnBlockByDisplayOffloadStartRealTime:J

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOverrideBrightnessMax:F

.field private mScreenTurningOnWasBlockedByDisplayOffload:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field private mSkipRampState:I

.field private final mSkipScreenOnBrightnessRamp:Z

.field private mStopped:Z

.field private mSupportSdrHdrMixCompose:Z

.field private final mTag:Ljava/lang/String;

.field private final mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field private mTempSetBrightness:Z

.field private mUniqueDisplayId:Ljava/lang/String;

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private final mWakelockController:Lcom/android/server/display/WakelockController;

.field private final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private prebrightnessMode:I


# direct methods
.method public static synthetic $r8$lambda$1gBt-fVuNJ2V9Ws1vCqP1XNR8S0(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$clearDisplayBrightnessFollowersLocked$14(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$30HWghqlQZA0g20IDRjkr5kFQAU(Lcom/android/server/display/DisplayPowerController;FF)F
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->lambda$createHbmControllerLocked$7(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3lWZJ4BpIHcX_GeenBdRfMVq_oU(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public static synthetic $r8$lambda$4wzh83OLrlUC67SkxnhrwPBU_Zw(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$removeDisplayBrightnessFollower$13(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$63T-Yu8ufrfP-8yRbjY4l6Jjk44(Lcom/android/server/display/DisplayPowerController;ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Lcom/android/server/display/DisplayPowerController;->lambda$onDisplayChanged$5(ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BXfY8MndYUv4bCT4Ejqire2mx98(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$createNtBrightnessControllerLocked$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$LGJTR1nb8d6HRqY-qjpCU1j3oMc(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$dump$15(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Of5jU0hnghjfdycwM-knSqVuQLQ(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$blockScreenOnByDisplayOffload$12(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SuWf1yk5lu2qnPpoUMKnLNPfmmM(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$VMJnJ5Wxiyyw2N54ppd2NhJ4JCs(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$createNtBrightnessControllerLocked$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$VkeH_dpkq8ekwizFlDrhaPmB5N8(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZFPhLbQvTzph4eOkWY2hWLOLrk8(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$bbTOWaFyGEkbAqp3qaTHo-LS-sA(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$overrideDozeScreenState$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$feaEjj907OaKBuWsQCQwqVyf9Tw(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$createNtBrightnessControllerLocked$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$k0HmZSrGB-KtT2Iykpp8D7dTYcY(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$createNtBrightnessControllerLocked$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$onba_eZvTvD4rf-4_YaLjH9-7Ws(Lcom/android/server/display/DisplayPowerController;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$initialize$6(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXyXreW1R3kjxH0P4c6yBnBeLYg(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutomaticBrightnessStrategy(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBrightnessTracker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$Clock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserSerial(Lcom/android/server/display/DisplayPowerController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentUserSerial:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/DisplayBrightnessController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayDevice(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/display/DisplayPowerController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayOffloadSession(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHdrBrightnessAnimating(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mHdrBrightnessAnimating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdleStylusTimeoutMillisConfig(Lcom/android/server/display/DisplayPowerController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWearBedtimeModeEnabled(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNtBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/INtDisplayBrightnessController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingScreenOffUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingScreenOnUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprebrightnessMode(Lcom/android/server/display/DisplayPowerController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->prebrightnessMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentCameraBoostFactor(Lcom/android/server/display/DisplayPowerController;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHdrBrightnessAnimating(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mHdrBrightnessAnimating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWearBedtimeModeEnabled(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempSetBrightness(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mTempSetBrightness:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprebrightnessMode(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->prebrightnessMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupHandlerThreadAfterStop(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->cleanupHandlerThreadAfterStop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBrightnessModeChange(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnSwitchUser(Lcom/android/server/display/DisplayPowerController;IIF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleOnSwitchUser(IIF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRbcChanged(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->handleRbcChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogHbmBrightnessStats(Lcom/android/server/display/DisplayPowerController;FI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->logHbmBrightnessStats(FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportStats(Lcom/android/server/display/DisplayPowerController;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAnimatorRampSpeeds(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDwbcLoggingEnabled(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDwbcLoggingEnabled(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDwbcOverride(Lcom/android/server/display/DisplayPowerController;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDwbcOverride(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDwbcStrongMode(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDwbcStrongMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUpAutoBrightness(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munblockScreenOff(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munblockScreenOn(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munblockScreenOnByDisplayOffload(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 179
    const-string v0, "DisplayPowerController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 267
    const/16 v0, 0x26

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    .line 275
    const/4 v1, 0x0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    .line 596
    const-string/jumbo v0, "ro.vendor.sensor.udlight_sensor_support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mSupportUDLightSensor:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
        0x42200000    # 40.0f
        0x42480000    # 50.0f
        0x42700000    # 60.0f
        0x428c0000    # 70.0f
        0x42a00000    # 80.0f
        0x42b40000    # 90.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x43960000    # 300.0f
        0x43c80000    # 400.0f
        0x43fa0000    # 500.0f
        0x44160000    # 600.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x44610000    # 900.0f
        0x447a0000    # 1000.0f
        0x44960000    # 1200.0f
        0x44af0000    # 1400.0f
        0x44c80000    # 1600.0f
        0x44e10000    # 1800.0f
        0x44fa0000    # 2000.0f
        0x450ca000    # 2250.0f
        0x451c4000    # 2500.0f
        0x452be000    # 2750.0f
        0x453b8000    # 3000.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/display/DisplayPowerController$Injector;
    .param p3, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p6, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p7, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;
    .param p8, "brightnessTracker"    # Lcom/android/server/display/BrightnessTracker;
    .param p9, "brightnessSetting"    # Lcom/android/server/display/BrightnessSetting;
    .param p10, "onBrightnessChangeRunnable"    # Ljava/lang/Runnable;
    .param p11, "hbmMetadata"    # Lcom/android/server/display/HighBrightnessModeMetadata;
    .param p12, "bootCompleted"    # Z
    .param p13, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 620
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 220
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    .line 221
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastCameraBoostFactor:F

    .line 222
    const v2, 0x3ecccccd    # 0.4f

    iput v2, v1, Lcom/android/server/display/DisplayPowerController;->mResetBrightness:F

    .line 223
    const-string v2, ""

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    .line 224
    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessStrategy:Ljava/lang/String;

    .line 225
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mTempSetBrightness:Z

    .line 255
    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessExtensionSupport:Z

    .line 256
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOverrideBrightnessMax:F

    .line 257
    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mHdrBrightnessAnimating:Z

    .line 258
    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mSupportSdrHdrMixCompose:Z

    .line 259
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->prebrightnessMode:I

    .line 260
    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentUserSerial:I

    .line 264
    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessExtensionTimeout:Z

    .line 318
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 345
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 367
    new-instance v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 449
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 462
    new-instance v2, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v2}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 464
    new-instance v2, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v2}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 476
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 511
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v4, Lcom/android/server/display/brightness/BrightnessEvent;

    const/16 v5, 0x14

    invoke-direct {v2, v4, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 530
    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 564
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 579
    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mHBMTracking:Z

    .line 604
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    .line 607
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    .line 1437
    new-instance v2, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1456
    new-instance v2, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 3021
    new-instance v2, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 621
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 623
    .local v12, "resources":Landroid/content/res/Resources;
    move-object/from16 v7, p13

    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 624
    if-eqz p2, :cond_0

    move-object/from16 v2, p2

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/display/DisplayPowerController$Injector;

    invoke-direct {v2}, Lcom/android/server/display/DisplayPowerController$Injector;-><init>()V

    :goto_0
    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 625
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController$Injector;->getClock()Lcom/android/server/display/DisplayPowerController$Clock;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 626
    move-object/from16 v2, p7

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 627
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v4

    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 628
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 629
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v19

    .line 630
    .local v19, "displayToken":Landroid/os/IBinder;
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    .line 631
    .local v4, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    move-object/from16 v5, p5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 632
    new-instance v6, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v6, v1, v8}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 633
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 634
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->getIdleStylusTimeoutMillis()I

    move-result v6

    int-to-long v8, v6

    iput-wide v8, v1, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    .line 635
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 636
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 637
    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v11

    :goto_1
    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 638
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    move-object/from16 v10, p3

    invoke-virtual {v6, v9, v10}, Lcom/android/server/display/DisplayPowerController$Injector;->getWakelockController(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)Lcom/android/server/display/WakelockController;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 639
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 640
    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v23

    new-instance v14, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    invoke-direct {v14, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget v15, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 639
    move-object/from16 v26, v0

    move-object/from16 v20, v6

    move-object/from16 v21, v9

    move-object/from16 v22, v13

    move-object/from16 v24, v14

    move/from16 v25, v15

    invoke-virtual/range {v20 .. v26}, Lcom/android/server/display/DisplayPowerController$Injector;->getDisplayPowerProximityStateController(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;)Lcom/android/server/display/DisplayPowerProximityStateController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 642
    new-instance v0, Lcom/android/server/display/state/DisplayStateController;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 644
    const v9, 0x1110248

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-direct {v0, v6, v9}, Lcom/android/server/display/state/DisplayStateController;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;Z)V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DisplayPowerController["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 647
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 648
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 649
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    .line 651
    new-instance v0, Lcom/android/server/display/brightness/BrightnessEvent;

    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-direct {v0, v6}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 652
    new-instance v0, Lcom/android/server/display/brightness/BrightnessEvent;

    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-direct {v0, v6}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 654
    invoke-virtual {v7}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBatteryStatsEnabledForAllDisplays()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 655
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->isDisplaySupportedForBatteryStats(Lcom/android/server/display/DisplayDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_2

    .line 657
    :cond_2
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_3

    .line 658
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_2

    .line 660
    :cond_3
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 663
    :goto_2
    new-instance v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, v1, v9}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 664
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 665
    move-object/from16 v9, p6

    iput-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 666
    iput-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 667
    move-object/from16 v13, p8

    iput-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 668
    move-object/from16 v14, p10

    iput-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 670
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v15, "bedtime_mode"

    invoke-static {v0, v15, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_4

    move v0, v8

    goto :goto_3

    :cond_4
    move v0, v11

    :goto_3
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    .line 672
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 673
    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 672
    const/4 v8, -0x1

    invoke-virtual {v0, v15, v11, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 677
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 678
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultDozeBrightness()F

    move-result v0

    .line 677
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 679
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 680
    const v0, 0x1110249

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    .line 682
    const v0, 0x1130007

    const/4 v6, 0x1

    invoke-virtual {v12, v0, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    .line 685
    new-instance v15, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;

    invoke-direct {v15, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 694
    .local v15, "modeChangeCallback":Ljava/lang/Runnable;
    move-object/from16 v8, p11

    invoke-direct {v1, v8, v15}, Lcom/android/server/display/DisplayPowerController;->createHbmControllerLocked(Lcom/android/server/display/HighBrightnessModeMetadata;Ljava/lang/Runnable;)Lcom/android/server/display/HighBrightnessModeController;

    move-result-object v14

    .line 697
    .local v14, "hbmController":Lcom/android/server/display/HighBrightnessModeController;
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-object/from16 v16, v0

    move-object/from16 v20, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v4    # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .local v20, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/display/DisplayPowerController$Injector;->getBrightnessRangeController(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)Lcom/android/server/display/BrightnessRangeController;

    move-result-object v0

    move-object/from16 v23, v14

    move-object v14, v15

    move-object/from16 v13, v20

    .end local v15    # "modeChangeCallback":Ljava/lang/Runnable;
    .end local v20    # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .local v13, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .local v14, "modeChangeCallback":Ljava/lang/Runnable;
    .local v23, "hbmController":Lcom/android/server/display/HighBrightnessModeController;
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 701
    new-instance v2, Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 703
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v6, v0, Landroid/view/DisplayInfo;->brightnessDefault:F

    new-instance v8, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-direct {v8, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    new-instance v9, Landroid/os/HandlerExecutor;

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v9, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const/4 v4, 0x0

    move-object/from16 v7, p9

    move-object/from16 v10, p13

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/display/brightness/DisplayBrightnessController;-><init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;IFLcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    move-object v10, v3

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 707
    nop

    .line 708
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v15, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 709
    .local v15, "thermalBrightnessThrottlingDataId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 710
    new-instance v4, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;

    invoke-direct {v4, v14}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;)V

    new-instance v5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    move-object v6, v14

    .end local v14    # "modeChangeCallback":Ljava/lang/Runnable;
    .local v6, "modeChangeCallback":Ljava/lang/Runnable;
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 714
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getPowerThrottlingDataIdLocked()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v7, v13, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v8, v13, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    move-object/from16 v17, v0

    move-object/from16 v25, v6

    move/from16 v18, v7

    move-object/from16 v24, v13

    move-object/from16 v20, v19

    move-object v13, v5

    move/from16 v19, v8

    move-object/from16 v5, v21

    move/from16 v21, v9

    .end local v6    # "modeChangeCallback":Ljava/lang/Runnable;
    .end local v13    # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .end local v19    # "displayToken":Landroid/os/IBinder;
    .local v20, "displayToken":Landroid/os/IBinder;
    .local v24, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .local v25, "modeChangeCallback":Ljava/lang/Runnable;
    invoke-direct/range {v13 .. v21}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;IILandroid/os/IBinder;I)V

    move-object/from16 v19, v20

    .end local v20    # "displayToken":Landroid/os/IBinder;
    .restart local v19    # "displayToken":Landroid/os/IBinder;
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 717
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v9

    .line 709
    move-object v7, v13

    move-object v13, v5

    move-object v5, v7

    move-object/from16 v7, p13

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/display/DisplayPowerController$Injector;->getBrightnessClamperController(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 720
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->createNtBrightnessControllerLocked()Lcom/android/server/display/INtDisplayBrightnessController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 722
    move-object/from16 v7, p9

    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 726
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(F)Z

    .line 727
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 728
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 730
    const/4 v2, 0x0

    .line 731
    .local v2, "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    const/4 v3, 0x0

    .line 732
    .local v3, "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_5

    .line 734
    :try_start_0
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4, v5, v12}, Lcom/android/server/display/DisplayPowerController$Injector;->getDisplayWhiteBalanceController(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-result-object v0

    move-object v3, v0

    .line 736
    new-instance v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, v4, v5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v2, v0

    .line 737
    invoke-virtual {v2, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z

    .line 738
    invoke-virtual {v3, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    goto :goto_4

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set up display white-balance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 744
    iput-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 746
    invoke-direct {v1, v12}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 748
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_6

    .line 749
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    goto :goto_5

    .line 775
    :cond_6
    iput-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 778
    :goto_5
    move-object/from16 v4, p4

    invoke-direct {v1, v10, v4}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 780
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$Injector;->isColorFadeEnabled()Z

    move-result v0

    nop

    if-eqz v0, :cond_7

    .line 781
    const v0, 0x1110148

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_7

    move/from16 v11, v22

    goto :goto_6

    :cond_7
    nop

    :goto_6
    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 783
    const v0, 0x1110034

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 786
    const v0, 0x1110146

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 789
    const v0, 0x1110147

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 792
    move/from16 v5, p12

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    .line 796
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POWER_BEHAVIOR_TRACKER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tracker/INtPowerBehavior;

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    .line 801
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_SENSOR_MONITOR:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sensorextension/INtSensorMonitor;

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtSensorMonitor:Lcom/android/server/sensorextension/INtSensorMonitor;

    .line 802
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtSensorMonitor:Lcom/android/server/sensorextension/INtSensorMonitor;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v6}, Lcom/android/server/sensorextension/INtSensorMonitor;->init(Landroid/content/Context;)V

    .line 807
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_GLYPH_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/INtGlyphService;

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtGlyphService:Lcom/android/server/lights/INtGlyphService;

    .line 812
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSupportUDLightSensor: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/android/server/display/DisplayPowerController;->mSupportUDLightSensor:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->mSupportUDLightSensor:Z

    if-eqz v0, :cond_8

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_8

    .line 814
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/sensors/NothSensorHelper;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNothSensorHelper:Lcom/android/server/sensors/NothSensorHelper;

    .line 818
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightness:F

    .line 819
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightness:F

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastSdrBrightness:F

    .line 820
    const/16 v0, 0x36

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mSupportSdrHdrMixCompose:Z

    .line 821
    const/16 v0, 0x32

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessExtensionSupport:Z

    .line 822
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessExtensionSupport:Z

    if-eqz v0, :cond_9

    .line 823
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    new-instance v6, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda14;

    invoke-direct {v6, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-interface {v0, v6}, Lcom/android/server/display/INtDisplayBrightnessController;->setBrightnessExtensionRunnable(Ljava/lang/Runnable;)V

    .line 828
    :cond_9
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v0}, Lcom/android/server/display/INtDisplayBrightnessController;->getNormalBrightnessMax()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOverrideBrightnessMax:F

    .line 830
    return-void
.end method

.method private adujstBrightnessRampRate(FFZ)F
    .locals 9
    .param p1, "animateTo"    # F
    .param p2, "rampRate"    # F
    .param p3, "slowChange"    # Z

    .line 3450
    if-nez p3, :cond_0

    .line 3451
    return p2

    .line 3454
    :cond_0
    move v0, p2

    .line 3455
    .local v0, "adjustRate":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3456
    .local v1, "coeff":F
    const v2, 0x3e4ccccd    # 0.2f

    .line 3457
    .local v2, "minThreshold":F
    const v3, 0x3ecccccd    # 0.4f

    .line 3458
    .local v3, "maxThreshold":F
    const v4, 0x3ecccccd    # 0.4f

    .line 3459
    .local v4, "mincoeff":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 3460
    .local v5, "maxcoeff":F
    const v6, 0x3e99999a    # 0.3f

    cmpg-float v7, p1, v6

    if-gez v7, :cond_1

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightness:F

    cmpg-float v6, v7, v6

    if-gez v6, :cond_1

    .line 3462
    const v1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    .line 3464
    :cond_1
    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightness:F

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightness:F

    div-float/2addr v6, v7

    .line 3465
    .local v6, "gap":F
    invoke-static {v4, v5, v2, v3, v6}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v1

    .line 3468
    .end local v6    # "gap":F
    :goto_0
    mul-float v6, p2, v1

    const v7, 0x3c23d70a    # 0.01f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 3469
    return v0
.end method

.method private animateScreenBrightness(FFF)V
    .locals 1
    .param p1, "target"    # F
    .param p2, "sdrTarget"    # F
    .param p3, "rate"    # F

    .line 2834
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZ)V

    .line 2835
    return-void
.end method

.method private animateScreenBrightness(FFFZ)V
    .locals 6
    .param p1, "target"    # F
    .param p2, "sdrTarget"    # F
    .param p3, "rate"    # F
    .param p4, "ignoreAnimationLimits"    # Z

    .line 2839
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2840
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sdrTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->animateTo(FFFZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2845
    const-string v0, "TargetScreenBrightness"

    float-to-int v1, p1

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2847
    const-string v0, "debug.tracing.screen_brightness"

    .line 2848
    .local v0, "propertyKey":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 2851
    .local v1, "propertyValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    const-string v2, "debug.nt.screen_brightness"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2858
    goto :goto_0

    .line 2855
    :catch_0
    move-exception v2

    .line 2856
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set a system property: key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2856
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    if-eqz v2, :cond_1

    .line 2863
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    invoke-interface {v2, p1}, Lcom/android/server/tracker/INtPowerBehavior;->noteScreenBrightness(F)V

    .line 2867
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 2869
    .end local v0    # "propertyKey":Ljava/lang/String;
    .end local v1    # "propertyValue":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private animateScreenStateChange(IIZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "reason"    # I
    .param p3, "performScreenOffTransition"    # Z

    .line 2874
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    nop

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2875
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2876
    :cond_0
    if-eq p1, v2, :cond_1

    .line 2877
    return-void

    .line 2880
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2883
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    nop

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2884
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2885
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2888
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2889
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v1

    .line 2888
    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2890
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 2891
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2898
    :cond_4
    if-eq p1, v3, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-direct {p0, v3, p2, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 2904
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_7

    if-eq p1, v3, :cond_7

    .line 2905
    invoke-direct {p0, v3, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2906
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2907
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 2910
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_9

    .line 2914
    invoke-direct {p0, v2, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2915
    return-void

    .line 2930
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2931
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2933
    :cond_9
    const/4 v4, 0x3

    if-ne p1, v4, :cond_c

    .line 2938
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v1

    nop

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2939
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 2940
    return-void

    .line 2944
    :cond_a
    invoke-direct {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2945
    return-void

    .line 2949
    :cond_b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2950
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2951
    :cond_c
    const/4 v5, 0x4

    if-ne p1, v5, :cond_10

    .line 2955
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v1

    nop

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2956
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_d

    .line 2957
    return-void

    .line 2962
    :cond_d
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_f

    .line 2963
    invoke-direct {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2964
    return-void

    .line 2966
    :cond_e
    invoke-direct {p0, v5, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2970
    :cond_f
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2971
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2972
    :cond_10
    const/4 v4, 0x6

    if-ne p1, v4, :cond_14

    .line 2976
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v1

    nop

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2977
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_11

    .line 2978
    return-void

    .line 2983
    :cond_11
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_13

    .line 2984
    invoke-direct {p0, v2, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2985
    return-void

    .line 2987
    :cond_12
    invoke-direct {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2991
    :cond_13
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2992
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_3

    .line 2995
    :cond_14
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2996
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v4, 0x0

    if-nez v0, :cond_15

    .line 2997
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3000
    :cond_15
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_16

    .line 3003
    invoke-direct {p0, v3, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 3004
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 3005
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_3

    .line 3006
    :cond_16
    nop

    nop

    if-eqz p3, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 3008
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_17

    .line 3009
    goto :goto_2

    :cond_17
    move v2, v3

    .line 3007
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    nop

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3010
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_18

    .line 3012
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    .line 3016
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 3019
    :goto_3
    return-void
.end method

.method private applyReduceBrightColorsSplineAdjustment()V
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 834
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 835
    return-void
.end method

.method private blockScreenOff()V
    .locals 4

    .line 2597
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_0

    .line 2598
    const-string v0, "Screen off blocked"

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2599
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2600
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 2601
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :cond_0
    return-void
.end method

.method private blockScreenOn()V
    .locals 4

    .line 2579
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 2580
    const-string v0, "Screen on blocked"

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2581
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 2583
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    :cond_0
    return-void
.end method

.method private blockScreenOnByDisplayOffload(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 9
    .param p1, "displayOffloadSession"    # Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 2615
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    .line 2618
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 2620
    const-wide/32 v0, 0x20000

    const-string v2, "Screen on blocked by displayoffload"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2622
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    .line 2624
    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    .line 2626
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    invoke-interface {p1, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->blockScreenOn(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2627
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    .line 2629
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    sub-long/2addr v4, v6

    .line 2630
    .local v4, "delay":J
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tried blocking screen on for offloading but failed. So, end trace after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2634
    return-void

    .line 2636
    .end local v4    # "delay":J
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v1, "Blocking screen on for offloading."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    return-void

    .line 2616
    :goto_0
    return-void
.end method

.method private brightnessExtensionTimeout()V
    .locals 4

    .line 3473
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v0}, Lcom/android/server/display/INtDisplayBrightnessController;->getBrightnessExtensionSafeValue()F

    move-result v0

    .line 3474
    .local v0, "safeBrightness":F
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOverrideBrightnessMax:F

    .line 3475
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->prebrightnessMode:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3476
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessExtensionTimeout:Z

    .line 3477
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    goto :goto_0

    .line 3479
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 3480
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessExtensionTimeout:Z

    .line 3481
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    .line 3484
    :cond_1
    :goto_0
    return-void
.end method

.method private cameraExitForeground()V
    .locals 3

    .line 3489
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 3490
    const-string v0, "DisplayPowerController"

    const-string v2, "camera exit abnormal, reset boost brightness factor"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mTempSetBrightness:Z

    .line 3492
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3493
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3494
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3495
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3497
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private cancelUnblockScreenOnByDisplayOffload()V
    .locals 1

    .line 2657
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-nez v0, :cond_0

    .line 2658
    return-void

    .line 2660
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 2662
    return-void

    .line 2664
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->cancelBlockScreenOn()V

    .line 2665
    return-void
.end method

.method private clampScreenBrightness(F)F
    .locals 2
    .param p1, "value"    # F

    .line 2822
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2823
    const/4 p1, 0x0

    .line 2828
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v0}, Lcom/android/server/display/INtDisplayBrightnessController;->getCurrentBrightnessMin()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 2829
    invoke-interface {v1}, Lcom/android/server/display/INtDisplayBrightnessController;->getCurrentBrightnessMax()F

    move-result v1

    .line 2828
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private cleanupHandlerThreadAfterStop()V
    .locals 3

    .line 1473
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->cleanup()V

    .line 1474
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessRangeController;->stop()V

    .line 1475
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->stop()V

    .line 1476
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1479
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {v0}, Lcom/android/server/display/WakelockController;->releaseAll()V

    .line 1481
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    goto :goto_0

    .line 1483
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 1484
    .local v0, "brightness":F
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    .line 1486
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v2, :cond_1

    .line 1487
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->stop()V

    .line 1488
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1491
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v1, :cond_2

    .line 1493
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-virtual {v1}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->stop()V

    .line 1496
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v1, :cond_3

    .line 1497
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1499
    :cond_3
    return-void
.end method

.method private clearDisplayBrightnessFollowersLocked()V
    .locals 6

    .line 3180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3181
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 3182
    .local v1, "follower":Lcom/android/server/display/DisplayPowerController;
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v3, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 3184
    invoke-interface {v4}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v4

    .line 3182
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 3180
    .end local v1    # "follower":Lcom/android/server/display/DisplayPowerController;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3186
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3187
    return-void
.end method

.method private convertBrightnessReasonToStatsEnum(I)I
    .locals 1
    .param p1, "brightnessReason"    # I

    .line 3519
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3554
    return v0

    .line 3551
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 3548
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 3545
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 3542
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 3539
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 3536
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 3533
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 3530
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 3527
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 3524
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 3521
    :pswitch_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private createHbmControllerLocked(Lcom/android/server/display/HighBrightnessModeMetadata;Ljava/lang/Runnable;)Lcom/android/server/display/HighBrightnessModeController;
    .locals 16
    .param p1, "hbmMetadata"    # Lcom/android/server/display/HighBrightnessModeMetadata;
    .param p2, "modeChangeCallback"    # Ljava/lang/Runnable;

    .line 2525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    .line 2526
    .local v1, "ddConfig":Lcom/android/server/display/DisplayDeviceConfig;
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    .line 2527
    .local v7, "displayToken":Landroid/os/IBinder;
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    .line 2529
    .local v8, "displayUniqueId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v2

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2530
    .local v11, "hbmData":Lcom/android/server/display/config/HighBrightnessModeData;
    :goto_1
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    .line 2531
    .local v2, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    new-instance v12, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;

    invoke-direct {v12, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/display/DisplayPowerController$Injector;->getHighBrightnessModeController(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)Lcom/android/server/display/HighBrightnessModeController;

    move-result-object v3

    return-object v3
.end method

.method private createNtBrightnessControllerLocked()Lcom/android/server/display/INtDisplayBrightnessController;
    .locals 15

    .line 2541
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_0

    .line 2542
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DISPLAY_CONTROLLER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 2543
    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/display/INtDisplayBrightnessController;

    .line 2545
    .local v1, "INtController":Lcom/android/server/display/INtDisplayBrightnessController;
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 2546
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2547
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v4

    .line 2548
    .local v4, "displayToken":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2549
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    .line 2550
    .local v5, "displayUniqueId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v14

    .line 2551
    .local v14, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v2, v14, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v3, v14, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    new-instance v9, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    new-instance v10, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    new-instance v11, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;

    invoke-direct {v11, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface/range {v1 .. v13}, Lcom/android/server/display/INtDisplayBrightnessController;->init(IILandroid/os/IBinder;Ljava/lang/String;IFFLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Landroid/content/Context;)V

    .line 2570
    .end local v0    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v4    # "displayToken":Landroid/os/IBinder;
    .end local v5    # "displayUniqueId":Ljava/lang/String;
    .end local v14    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    goto :goto_0

    .line 2571
    .end local v1    # "INtController":Lcom/android/server/display/INtDisplayBrightnessController;
    :cond_0
    sget-object v1, Lcom/android/server/display/INtDisplayBrightnessController;->DEFAULT:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 2574
    .restart local v1    # "INtController":Lcom/android/server/display/INtDisplayBrightnessController;
    :goto_0
    return-object v1
.end method

.method private dumpBrightnessEvents(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3358
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    .line 3359
    .local v0, "size":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3360
    const-string v1, "No Automatic Brightness Adjustments"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3361
    return-void

    .line 3364
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automatic Brightness Adjustments Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3365
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/display/brightness/BrightnessEvent;

    .line 3366
    .local v1, "eventArray":[Lcom/android/server/display/brightness/BrightnessEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/android/server/display/brightness/BrightnessEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3366
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3369
    .end local v2    # "i":I
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3240
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3241
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 3252
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3251
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsRbcActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3254
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3255
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->dump(Ljava/io/PrintWriter;)V

    .line 3257
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v1, :cond_0

    .line 3258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 3259
    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3258
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3262
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 3263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 3264
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3263
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    .line 3267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 3268
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3267
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3271
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3272
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v1, :cond_3

    .line 3273
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 3276
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3277
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    if-eqz v1, :cond_4

    .line 3278
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 3281
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3282
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    if-eqz v1, :cond_5

    .line 3283
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->dump(Ljava/io/PrintWriter;)V

    .line 3286
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3287
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    if-eqz v1, :cond_6

    .line 3288
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/BrightnessRangeController;->dump(Ljava/io/PrintWriter;)V

    .line 3291
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3292
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_7

    .line 3293
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 3294
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpBrightnessEvents(Ljava/io/PrintWriter;)V

    .line 3296
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpRbcEvents(Ljava/io/PrintWriter;)V

    .line 3298
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3299
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v1, :cond_8

    .line 3300
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->dump(Ljava/io/PrintWriter;)V

    .line 3303
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3304
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v1, :cond_9

    .line 3305
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    .line 3306
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    .line 3309
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3310
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    if-eqz v1, :cond_a

    .line 3311
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/WakelockController;->dumpLocal(Ljava/io/PrintWriter;)V

    .line 3314
    :cond_a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3315
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    if-eqz v1, :cond_b

    .line 3316
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/state/DisplayStateController;->dump(Ljava/io/PrintWriter;)V

    .line 3318
    :cond_b
    return-void
.end method

.method private dumpRbcEvents(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3372
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    .line 3373
    .local v0, "size":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3374
    const-string v1, "No Reduce Bright Colors Adjustments"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3375
    return-void

    .line 3378
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reduce Bright Colors Adjustments Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3379
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/display/brightness/BrightnessEvent;

    .line 3380
    .local v1, "eventArray":[Lcom/android/server/display/brightness/BrightnessEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3383
    .end local v2    # "i":I
    return-void
.end method

.method private handleBrightnessModeChange()V
    .locals 4

    .line 3047
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 3048
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3047
    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3051
    .local v0, "screenBrightnessModeSetting":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setUseAutoBrightness(Z)V

    .line 3054
    if-nez v0, :cond_1

    .line 3056
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->saveBrightnessIfNeeded()V

    .line 3058
    :cond_1
    return-void
.end method

.method private handleOnSwitchUser(IIF)V
    .locals 4
    .param p1, "newUserId"    # I
    .param p2, "userSerial"    # I
    .param p3, "newBrightness"    # F

    .line 884
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching user newUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userSerial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 892
    .local v0, "autoBrightnessPreset":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->getPreset()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 897
    .end local v0    # "autoBrightnessPreset":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    .line 898
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    .line 901
    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/android/server/display/DisplayPowerController;->setBrightness(FI)V

    .line 904
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0, p3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setAndNotifyCurrentScreenBrightness(F)V

    .line 906
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->onUserSwitch()V

    .line 910
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 912
    iput p2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentUserSerial:I

    .line 914
    return-void
.end method

.method private handleRbcChanged()V
    .locals 4

    .line 838
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_0

    .line 839
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v0, v0

    if-nez v0, :cond_1

    .line 844
    return-void

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v0, v0

    new-array v0, v0, [F

    .line 849
    .local v0, "adjustedNits":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 850
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsAdjustedBrightnessNits(F)F

    move-result v2

    aput v2, v0, v1

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 852
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    .line 853
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/AutomaticBrightnessController;->recalculateSplines(Z[F)V

    .line 854
    return-void
.end method

.method private handleSettingsChange()V
    .locals 2

    .line 3039
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3041
    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v1

    .line 3040
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setPendingScreenBrightness(F)V

    .line 3042
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updatePendingAutoBrightnessAdjustments()V

    .line 3043
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3044
    return-void
.end method

.method private initialize(I)V
    .locals 7
    .param p1, "displayState"    # I

    .line 1166
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 1167
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/server/display/ColorFade;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-direct {v3, v4}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 1166
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/display/DisplayPowerController$Injector;->getDisplayPowerState(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;II)Lcom/android/server/display/DisplayPowerState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1169
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1170
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v3, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1172
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1173
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1175
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v3, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v1, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 1177
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1178
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    sget-object v4, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/display/DisplayPowerController$Injector;->getDualRampAnimator(Lcom/android/server/display/DisplayPowerState;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)Lcom/android/server/display/RampAnimator$DualRampAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 1184
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v1, 0x1

    const/4 v3, 0x0

    nop

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1185
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 1184
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 1186
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 1188
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    .line 1189
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 1192
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1193
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v1

    .line 1192
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v0

    .line 1194
    .local v0, "brightness":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v1, :cond_3

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_3

    .line 1195
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 1198
    :cond_3
    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 1202
    .local v1, "brightnessSettingListener":Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1203
    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->registerBrightnessSettingChangeListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 1205
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1206
    const-string/jumbo v4, "screen_auto_brightness_adj"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1205
    const/4 v6, -0x1

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1208
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1209
    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1208
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1211
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1212
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1213
    const-string/jumbo v4, "screen_brightness_for_als"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1212
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1216
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    .line 1217
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static isDisplaySupportedForBatteryStats(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .locals 1
    .param p0, "displayDeviceInfo"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 3348
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 3353
    const/4 v0, 0x0

    return v0

    .line 3351
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$blockScreenOnByDisplayOffload$12(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 0
    .param p1, "displayOffloadSession"    # Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 2625
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->onDisplayOffloadUnblockScreenOn(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    return-void
.end method

.method private static synthetic lambda$clearDisplayBrightnessFollowersLocked$14(Lcom/android/server/display/DisplayPowerController;)V
    .locals 4
    .param p0, "follower"    # Lcom/android/server/display/DisplayPowerController;

    .line 3182
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    return-void
.end method

.method private synthetic lambda$createHbmControllerLocked$7(FF)F
    .locals 1
    .param p1, "sdrBrightness"    # F
    .param p2, "maxDesiredHdrSdrRatio"    # F

    .line 2534
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FF)F

    move-result v0

    return v0
.end method

.method private synthetic lambda$createNtBrightnessControllerLocked$10()V
    .locals 2

    .line 2560
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2565
    return-void
.end method

.method private synthetic lambda$createNtBrightnessControllerLocked$11()V
    .locals 0

    .line 2567
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->cameraExitForeground()V

    .line 2568
    return-void
.end method

.method private synthetic lambda$createNtBrightnessControllerLocked$8()V
    .locals 1

    .line 2554
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 2555
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 2556
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->update()V

    .line 2558
    :cond_0
    return-void
.end method

.method private synthetic lambda$createNtBrightnessControllerLocked$9()V
    .locals 1

    .line 2561
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAdaptiveBrightness()V

    .line 2564
    :cond_0
    return-void
.end method

.method private synthetic lambda$dump$15(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3236
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$initialize$6(F)V
    .locals 4
    .param p1, "brightnessValue"    # F

    .line 1199
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1200
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1201
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 641
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 686
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 687
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 689
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->update()V

    .line 692
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 0

    .line 704
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 0

    .line 825
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->brightnessExtensionTimeout()V

    .line 826
    return-void
.end method

.method private synthetic lambda$onDisplayChanged$5(ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "isEnabled"    # Z
    .param p2, "isInTransition"    # Z
    .param p3, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p4, "uniqueId"    # Ljava/lang/String;
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "config"    # Lcom/android/server/display/DisplayDeviceConfig;
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "info"    # Lcom/android/server/display/DisplayDeviceInfo;
    .param p9, "hbmMetadata"    # Lcom/android/server/display/HighBrightnessModeMetadata;
    .param p10, "isDisplayInternal"    # Z
    .param p11, "thermalBrightnessThrottlingDataId"    # Ljava/lang/String;
    .param p12, "powerThrottlingDataId"    # Ljava/lang/String;

    .line 1068
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v8, p6

    move-object/from16 v13, p8

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v4, :cond_0

    .line 1070
    return-void

    .line 1073
    :cond_0
    const/4 v4, 0x0

    .line 1075
    .local v4, "changed":Z
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    if-ne v5, v1, :cond_1

    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    if-eq v5, v2, :cond_2

    .line 1076
    :cond_1
    const/4 v4, 0x1

    .line 1077
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 1078
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 1081
    :cond_2
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eq v5, v3, :cond_3

    .line 1082
    const/4 v4, 0x1

    .line 1083
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1084
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 1085
    move-object/from16 v14, p5

    iput-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    .line 1086
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 1087
    iput-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1088
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->getIdleStylusTimeoutMillis()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    .line 1089
    move-object/from16 v11, p7

    move-object/from16 v15, p9

    invoke-direct {v0, v11, v13, v15}, Lcom/android/server/display/DisplayPowerController;->loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;)V

    .line 1090
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayPowerProximityStateController;->notifyDisplayDeviceChanged(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 1095
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayPowerState;->resetScreenState()V

    move/from16 v16, v4

    goto :goto_0

    .line 1081
    :cond_3
    move-object/from16 v5, p4

    move-object/from16 v14, p5

    move-object/from16 v11, p7

    move-object/from16 v15, p9

    move/from16 v16, v4

    .line 1098
    .end local v4    # "changed":Z
    .local v16, "changed":Z
    :goto_0
    move/from16 v4, p10

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 1100
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    iget v9, v13, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v10, v13, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v12, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    move-object/from16 v7, p12

    move-object v0, v6

    move-object/from16 v6, p11

    invoke-direct/range {v4 .. v12}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;IILandroid/os/IBinder;I)V

    invoke-virtual {v0, v4}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    .line 1105
    if-eqz v16, :cond_4

    .line 1106
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 1108
    :cond_4
    return-void
.end method

.method private synthetic lambda$overrideDozeScreenState$4(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 1001
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingOverrideDozeScreenStateLocked:I

    .line 1003
    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/state/DisplayStateController;->overrideDozeScreenState(II)V

    .line 1004
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 1006
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isOffloadDozeOverrideHoldsWakelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    .line 1010
    :cond_0
    return-void

    .line 1004
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$removeDisplayBrightnessFollower$13(Lcom/android/server/display/DisplayPowerController;)V
    .locals 4
    .param p0, "follower"    # Lcom/android/server/display/DisplayPowerController;

    .line 3172
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    return-void
.end method

.method private loadAmbientLightSensor()V
    .locals 3

    .line 2810
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_0

    .line 2811
    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2812
    .local v0, "fallbackType":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2813
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v2

    .line 2812
    invoke-static {v1, v2, v0}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 2814
    return-void
.end method

.method private loadBrightnessRampRates()V
    .locals 4

    .line 1364
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 1365
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    .line 1366
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    .line 1367
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    .line 1368
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1369
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowDecreaseIdle()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    .line 1370
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1371
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowIncreaseIdle()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    .line 1372
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1373
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampDecreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 1374
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1375
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampIncreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    .line 1376
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1377
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampDecreaseMaxIdleMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    .line 1378
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1379
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampIncreaseMaxIdleMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    .line 1383
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    .line 1384
    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    .line 1386
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    .line 1387
    iput-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    .line 1389
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 1390
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    .line 1391
    const v1, 0x3d23d70a    # 0.04f

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    .line 1392
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    .line 1393
    iput-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 1394
    iput-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    .line 1396
    return-void
.end method

.method private loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Lcom/android/server/display/DisplayDeviceInfo;
    .param p3, "hbmMetadata"    # Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 1139
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1140
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultDozeBrightness()F

    move-result v0

    .line 1139
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 1141
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 1142
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 1143
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1144
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->reloadReduceBrightColours()V

    .line 1145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 1147
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/android/server/display/BrightnessRangeController;->loadFromConfig(Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 1148
    return-void
.end method

.method private loadNitsRange(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 1399
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    goto :goto_0

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v1, "Screen brightness nits configuration is unavailable; falling back"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    nop

    .line 1404
    const v0, 0x10700c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1403
    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    .line 1406
    :goto_0
    return-void
.end method

.method private loadScreenOffBrightnessSensor()V
    .locals 3

    .line 2817
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2818
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v1

    .line 2817
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    .line 2819
    return-void
.end method

.method private logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;FLcom/android/server/display/DisplayBrightnessState;)V
    .locals 32
    .param p1, "event"    # Lcom/android/server/display/brightness/BrightnessEvent;
    .param p2, "unmodifiedBrightness"    # F
    .param p3, "brightnessState"    # Lcom/android/server/display/DisplayBrightnessState;

    .line 3559
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v1

    .line 3560
    .local v1, "modifier":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v2

    .line 3563
    .local v2, "flags":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMax()F

    move-result v3

    cmpl-float v3, p2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move/from16 v20, v3

    .line 3564
    .local v20, "brightnessIsMax":Z
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3565
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v8

    .line 3566
    .local v8, "brightnessInNits":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isLowPowerModeSet()Z

    move-result v3

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPowerFactor()F

    move-result v3

    move v12, v3

    goto :goto_1

    :cond_1
    move v12, v6

    .line 3567
    .local v12, "appliedLowPowerMode":F
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getRbcStrength()I

    move-result v3

    :goto_2
    move v13, v3

    goto :goto_3

    :cond_2
    const/4 v3, -0x1

    goto :goto_2

    .line 3569
    .local v13, "appliedRbcStrength":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 3570
    move v14, v6

    goto :goto_4

    :cond_3
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMax()F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v3

    move v14, v3

    .line 3573
    .local v14, "appliedHbmMaxNits":F
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getThermalMax()F

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    .line 3574
    nop

    :goto_5
    move v15, v6

    goto :goto_6

    :cond_4
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getThermalMax()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v6

    goto :goto_5

    .line 3575
    .local v15, "appliedThermalCapNits":F
    :goto_6
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    if-eqz v3, :cond_e

    .line 3576
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3578
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getInitialBrightness()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v7

    .line 3580
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getLux()F

    move-result v9

    .line 3581
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPhysicalDisplayId()Ljava/lang/String;

    move-result-object v10

    .line 3582
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->wasShortTermModelActive()Z

    move-result v11

    .line 3587
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isAutomaticBrightnessEnabled()Z

    move-result v16

    .line 3589
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/server/display/DisplayPowerController;->convertBrightnessReasonToStatsEnum(I)I

    move-result v18

    .line 3590
    invoke-direct {v0, v8}, Lcom/android/server/display/DisplayPowerController;->nitsToRangeIndex(F)I

    move-result v19

    .line 3592
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v3

    if-ne v3, v5, :cond_5

    move/from16 v21, v5

    goto :goto_7

    :cond_5
    move/from16 v21, v4

    .line 3593
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    move/from16 v22, v5

    goto :goto_8

    :cond_6
    move/from16 v22, v4

    :goto_8
    and-int/lit8 v3, v1, 0x2

    if-lez v3, :cond_7

    move/from16 v23, v5

    goto :goto_9

    :cond_7
    move/from16 v23, v4

    .line 3595
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result v24

    and-int/lit8 v3, v1, 0x1

    if-lez v3, :cond_8

    move/from16 v25, v5

    goto :goto_a

    :cond_8
    move/from16 v25, v4

    .line 3598
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v26

    and-int/lit8 v3, v2, 0x2

    if-lez v3, :cond_9

    move/from16 v27, v5

    goto :goto_b

    :cond_9
    move/from16 v27, v4

    :goto_b
    and-int/lit8 v3, v2, 0x4

    if-lez v3, :cond_a

    move/from16 v28, v5

    goto :goto_c

    :cond_a
    move/from16 v28, v4

    :goto_c
    and-int/lit8 v3, v2, 0x8

    if-lez v3, :cond_b

    move/from16 v29, v5

    goto :goto_d

    :cond_b
    move/from16 v29, v4

    .line 3602
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getAutoBrightnessMode()I

    move-result v3

    if-ne v3, v5, :cond_c

    move/from16 v30, v5

    goto :goto_e

    :cond_c
    move/from16 v30, v4

    :goto_e
    and-int/lit8 v3, v2, 0x20

    if-lez v3, :cond_d

    move/from16 v31, v5

    goto :goto_f

    :cond_d
    move/from16 v31, v4

    .line 3576
    :goto_f
    const/16 v6, 0x1ee

    const/16 v17, 0x1

    invoke-static/range {v6 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->write(IFFFLjava/lang/String;ZFIFFZIIIZZZZIZZZZZZZ)V

    .line 3605
    :cond_e
    return-void
.end method

.method private logDisplayPolicyChanged(I)V
    .locals 2
    .param p1, "newPolicy"    # I

    .line 3032
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 3033
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 3034
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 3035
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 3036
    return-void
.end method

.method private logHbmBrightnessStats(FI)V
    .locals 2
    .param p1, "brightness"    # F
    .param p2, "displayStatsId"    # I

    .line 3501
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    monitor-enter v0

    .line 3502
    const/16 v1, 0x1a1

    :try_start_0
    invoke-static {v1, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    .line 3504
    monitor-exit v0

    .line 3505
    return-void

    .line 3504
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private nitsToRangeIndex(F)I
    .locals 2
    .param p1, "nits"    # F

    .line 3510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3511
    sget-object v1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    aget v1, v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 3512
    sget-object v1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    aget v1, v1, v0

    return v1

    .line 3510
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3515
    .end local v0    # "i":I
    const/16 v0, 0x26

    return v0
.end method

.method private noteScreenBrightness(F)V
    .locals 3
    .param p1, "brightness"    # F

    .line 3401
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_1

    .line 3404
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBrightnessIntRangeUserPerceptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3405
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntSetting(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    .line 3408
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3406
    :cond_0
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    :goto_0
    nop

    .line 3407
    .local v0, "brightnessInt":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v1, v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3410
    .end local v0    # "brightnessInt":I
    nop

    .line 3412
    :cond_1
    :goto_1
    return-void
.end method

.method private noteScreenState(II)V
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "reason"    # I

    .line 3388
    const/16 v0, 0x24d

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 3390
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 3392
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3395
    goto :goto_0

    .line 3393
    :catch_0
    move-exception v0

    .line 3397
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyBrightnessTrackerChanged(FZZZZZ)V
    .locals 10
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "wasShortTermModelActive"    # Z
    .param p4, "autobrightnessEnabled"    # Z
    .param p5, "brightnessIsTemporary"    # Z
    .param p6, "shouldUseAutoBrightness"    # Z

    .line 3124
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3125
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v2

    .line 3132
    .local v2, "brightnessInNits":F
    if-nez p5, :cond_5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3134
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    :cond_0
    goto :goto_2

    .line 3142
    :cond_1
    nop

    nop

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    nop

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3143
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3146
    :cond_2
    const/4 p2, 0x0

    move v3, p2

    goto :goto_0

    .line 3152
    :cond_3
    move v3, p2

    .end local p2    # "userInitiated":Z
    .local v3, "userInitiated":Z
    :goto_0
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz p2, :cond_4

    .line 3153
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    move v4, p2

    goto :goto_1

    .line 3154
    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    move v4, p2

    :goto_1
    nop

    .line 3155
    .local v4, "powerFactor":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3157
    invoke-virtual {p2}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3158
    invoke-virtual {p2}, Lcom/android/server/display/AutomaticBrightnessController;->getLastSensorValues()[F

    move-result-object v8

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3159
    invoke-virtual {p2}, Lcom/android/server/display/AutomaticBrightnessController;->getLastSensorTimestamps()[J

    move-result-object v9

    .line 3155
    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZLjava/lang/String;[F[J)V

    .line 3160
    return-void

    .line 3139
    .end local v3    # "userInitiated":Z
    .end local v4    # "powerFactor":F
    .restart local p2    # "userInitiated":Z
    :cond_5
    :goto_2
    return-void
.end method

.method private onDisplayOffloadUnblockScreenOn(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 4
    .param p1, "displayOffloadSession"    # Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 2640
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2642
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2643
    return-void
.end method

.method private readyToUpdateDisplayState()Z
    .locals 1

    .line 3615
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

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

.method private reloadReduceBrightColours()V
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    .line 1412
    :cond_0
    return-void
.end method

.method private reportStats(F)V
    .locals 9
    .param p1, "brightness"    # F

    .line 3415
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 3416
    return-void

    .line 3419
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3420
    .local v0, "hbmTransitionPoint":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    .line 3421
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    if-nez v2, :cond_1

    .line 3422
    monitor-exit v1

    return-void

    .line 3425
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 3424
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    move v0, v2

    .line 3425
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3427
    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 3428
    .local v1, "aboveTransition":Z
    :goto_0
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_3

    move v2, v3

    .line 3430
    .local v2, "oldAboveTransition":Z
    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    .line 3431
    :cond_4
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 3432
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3433
    if-eq v1, v2, :cond_5

    .line 3435
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/display/DisplayPowerController;->logHbmBrightnessStats(FI)V

    goto :goto_1

    .line 3438
    :cond_5
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 3439
    .local v3, "msg":Landroid/os/Message;
    iput v4, v3, Landroid/os/Message;->what:I

    .line 3440
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 3441
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 3442
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v5}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    add-long/2addr v5, v7

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3446
    .end local v3    # "msg":Landroid/os/Message;
    :cond_6
    :goto_1
    return-void

    .line 3425
    .end local v1    # "aboveTransition":Z
    .end local v2    # "oldAboveTransition":Z
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 3322
    packed-switch p0, :pswitch_data_0

    .line 3330
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3328
    :pswitch_0
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 3326
    :pswitch_1
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 3324
    :pswitch_2
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveBrightnessInfo(F)Z
    .locals 1
    .param p1, "brightness"    # F

    .line 2447
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v0

    return v0
.end method

.method private saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z
    .locals 11
    .param p1, "brightness"    # F
    .param p2, "adjustedBrightness"    # F
    .param p3, "state"    # Lcom/android/server/display/DisplayBrightnessState;

    .line 2456
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    .line 2457
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v2

    goto :goto_0

    .line 2514
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 2457
    :cond_0
    move v2, v1

    .line 2458
    .local v2, "stateMax":F
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v1

    :cond_1
    nop

    .line 2460
    .local v1, "stateMin":F
    const/4 v3, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result v4

    goto :goto_1

    .line 2461
    :cond_2
    move v4, v3

    :goto_1
    nop

    .line 2462
    .local v4, "maxReason":I
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v3

    goto :goto_2

    .line 2463
    :cond_3
    new-instance v5, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v5, v3}, Lcom/android/server/display/brightness/BrightnessReason;-><init>(I)V

    move-object v3, v5

    :goto_2
    nop

    .line 2472
    .local v3, "brightnessReason":Lcom/android/server/display/brightness/BrightnessReason;
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 2473
    invoke-interface {v5}, Lcom/android/server/display/INtDisplayBrightnessController;->getCurrentBrightnessMin()F

    move-result v5

    .line 2472
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2474
    .local v5, "minBrightness":F
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 2475
    invoke-interface {v6}, Lcom/android/server/display/INtDisplayBrightnessController;->getNormalBrightnessMax()F

    move-result v6

    .line 2474
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2477
    .local v6, "maxBrightness":F
    const/4 v7, 0x0

    .line 2479
    .local v7, "changed":Z
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, v9, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 2480
    invoke-virtual {v8, v9, p1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v8

    or-int/2addr v7, v8

    .line 2482
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, v9, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 2483
    invoke-virtual {v8, v9, p2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v8

    or-int/2addr v7, v8

    .line 2485
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, v9, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 2486
    invoke-virtual {v8, v9, v5}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v8

    or-int/2addr v7, v8

    .line 2488
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, v9, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 2489
    invoke-virtual {v8, v9, v6}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v8

    or-int/2addr v7, v8

    .line 2500
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, v9, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 2502
    invoke-interface {v10}, Lcom/android/server/display/INtDisplayBrightnessController;->getHighBrightnessMode()I

    move-result v10

    .line 2501
    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result v8

    or-int/2addr v7, v8

    .line 2503
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, v9, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 2505
    invoke-interface {v10}, Lcom/android/server/display/INtDisplayBrightnessController;->getTransitionPoint()F

    move-result v10

    .line 2504
    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v8

    or-int/2addr v7, v8

    .line 2507
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, v9, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 2508
    invoke-virtual {v8, v9, v4}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result v8

    or-int/2addr v7, v8

    .line 2510
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v9, v9, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    .line 2512
    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v10

    .line 2511
    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result v8

    or-int/2addr v7, v8

    .line 2513
    monitor-exit v0

    return v7

    .line 2514
    .end local v1    # "stateMin":F
    .end local v2    # "stateMax":F
    .end local v3    # "brightnessReason":Lcom/android/server/display/brightness/BrightnessReason;
    .end local v4    # "maxReason":I
    .end local v5    # "minBrightness":F
    .end local v6    # "maxBrightness":F
    .end local v7    # "changed":Z
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z
    .locals 1
    .param p1, "brightness"    # F
    .param p2, "state"    # Lcom/android/server/display/DisplayBrightnessState;

    .line 2451
    invoke-direct {p0, p1, p1, p2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v0

    return v0
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 3

    .line 3024
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    move-result v0

    .line 3026
    .local v0, "wakeLockAcquired":Z
    if-eqz v0, :cond_0

    .line 3027
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {v2}, Lcom/android/server/display/WakelockController;->getOnStateChangedRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3029
    :cond_0
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1152
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1153
    monitor-exit v0

    .line 1154
    return-void

    .line 1153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 4

    .line 1158
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_0

    .line 1159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1160
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1161
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1163
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setAnimatorRampSpeeds(Z)V
    .locals 5
    .param p1, "isIdle"    # Z

    .line 1423
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-nez v0, :cond_0

    .line 1424
    return-void

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAdaptiveTone1Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1427
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    iget-wide v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    goto :goto_0

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    .line 1435
    :goto_0
    return-void
.end method

.method private setDwbcLoggingEnabled(I)V
    .locals 2
    .param p1, "arg"    # I

    .line 2340
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_1

    .line 2341
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2342
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    .line 2343
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    .line 2345
    .end local v0    # "enabled":Z
    :cond_1
    return-void
.end method

.method private setDwbcOverride(F)V
    .locals 1
    .param p1, "cct"    # F

    .line 2322
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    .line 2328
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 2330
    :cond_0
    return-void
.end method

.method private setDwbcStrongMode(I)V
    .locals 2
    .param p1, "arg"    # I

    .line 2333
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_1

    .line 2334
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2335
    .local v0, "isIdle":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setStrongModeEnabled(Z)V

    .line 2337
    .end local v0    # "isIdle":Z
    :cond_1
    return-void
.end method

.method private setReportedScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 2802
    const-wide/32 v0, 0x20000

    const-string v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2803
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2804
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 2807
    :cond_0
    return-void
.end method

.method private setScreenState(II)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .line 2668
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IIZ)Z
    .locals 16
    .param p1, "state"    # I
    .param p2, "reason"    # I
    .param p3, "reportOnly"    # Z

    .line 2672
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v5, v0

    .line 2673
    .local v5, "isOff":Z
    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    move v7, v0

    .line 2674
    .local v7, "isOn":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    move v8, v0

    .line 2678
    .local v8, "changed":Z
    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    if-nez v0, :cond_3

    .line 2679
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOnByDisplayOffload(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    goto :goto_3

    .line 2680
    :cond_3
    if-nez v7, :cond_5

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    if-eqz v0, :cond_5

    .line 2682
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isOffloadSessionCancelBlockScreenOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2683
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->cancelUnblockScreenOnByDisplayOffload()V

    .line 2685
    :cond_4
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 2686
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 2689
    :cond_5
    :goto_3
    const/4 v9, -0x1

    const/4 v10, 0x3

    if-nez v8, :cond_6

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v0, v9, :cond_7

    :cond_6
    goto :goto_4

    :cond_7
    move/from16 v13, p2

    goto/16 :goto_9

    .line 2692
    :goto_4
    if-eqz v5, :cond_a

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2693
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eq v0, v6, :cond_8

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v0, v9, :cond_9

    :cond_8
    goto :goto_5

    .line 2698
    :cond_9
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_a

    .line 2700
    return v3

    .line 2695
    :goto_5
    invoke-direct {v1, v10}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2696
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 2697
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v0, v11, v12}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 2704
    :cond_a
    if-nez p3, :cond_c

    if-eqz v8, :cond_c

    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->readyToUpdateDisplayState()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 2707
    const-wide/32 v11, 0x20000

    const-string v0, "ScreenState"

    invoke-static {v11, v12, v0, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2709
    const-string v11, "debug.tracing.screen_state"

    .line 2710
    .local v11, "propertyKey":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 2713
    .local v12, "propertyValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2715
    const-string v0, "debug.nt.screen_state"

    if-ne v10, v2, :cond_b

    .line 2716
    :try_start_1
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AOD debug.nt.screen_state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2722
    :catch_0
    move-exception v0

    goto :goto_7

    .line 2719
    :cond_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2725
    :goto_6
    goto :goto_8

    .line 2722
    :goto_7
    nop

    .line 2723
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to set a system property: key="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2724
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2723
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_8
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move/from16 v13, p2

    invoke-virtual {v0, v2, v13}, Lcom/android/server/display/DisplayPowerState;->setScreenState(II)V

    .line 2729
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    goto :goto_9

    .line 2704
    .end local v11    # "propertyKey":Ljava/lang/String;
    .end local v12    # "propertyValue":Ljava/lang/String;
    :cond_c
    move/from16 v13, p2

    .line 2739
    :goto_9
    if-eqz v5, :cond_d

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 2740
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2741
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2742
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2743
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    invoke-interface {v0, v10, v11}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(IZ)V

    goto :goto_a

    .line 2744
    :cond_d
    if-nez v5, :cond_e

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v0, v10, :cond_e

    .line 2749
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 2750
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    invoke-interface {v0, v10, v11}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(IZ)V

    .line 2751
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2753
    :cond_e
    :goto_a
    if-nez v5, :cond_11

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v0, :cond_f

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v0, v9, :cond_11

    .line 2756
    :cond_f
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2757
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    if-nez v0, :cond_10

    .line 2758
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_b

    .line 2760
    :cond_10
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2762
    :goto_b
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v0, v9, v10}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 2763
    const-string v0, "DisplayPowerController"

    const-string v9, "Window Manager Policy screenTurningOn complete"

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    :cond_11
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    if-eqz v0, :cond_13

    .line 2769
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    if-ne v2, v6, :cond_12

    move v9, v4

    goto :goto_c

    :cond_12
    move v9, v3

    :goto_c
    invoke-interface {v0, v9}, Lcom/android/server/tracker/INtPowerBehavior;->notifyScreenState(Z)V

    .line 2775
    :cond_13
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtGlyphService:Lcom/android/server/lights/INtGlyphService;

    if-eqz v0, :cond_15

    .line 2776
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtGlyphService:Lcom/android/server/lights/INtGlyphService;

    if-ne v2, v6, :cond_14

    move v6, v4

    goto :goto_d

    :cond_14
    move v6, v3

    :goto_d
    invoke-interface {v0, v6}, Lcom/android/server/lights/INtGlyphService;->notifyScreenState(Z)V

    .line 2782
    :cond_15
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->mSupportUDLightSensor:Z

    if-eqz v0, :cond_17

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_17

    .line 2783
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNothSensorHelper:Lcom/android/server/sensors/NothSensorHelper;

    if-nez v0, :cond_16

    .line 2784
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/sensors/NothSensorHelper;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNothSensorHelper:Lcom/android/server/sensors/NothSensorHelper;

    .line 2785
    :cond_16
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNothSensorHelper:Lcom/android/server/sensors/NothSensorHelper;

    if-eqz v0, :cond_17

    .line 2786
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNothSensorHelper:Lcom/android/server/sensors/NothSensorHelper;

    invoke-virtual {v0, v7}, Lcom/android/server/sensors/NothSensorHelper;->notifyScreenState(Z)V

    .line 2793
    :cond_17
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_APP_USAGE_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtAppUsageManager;

    invoke-interface {v0, v5}, Lcom/nothing/server/ext/INtAppUsageManager;->setScreenState(Z)V

    .line 2797
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_18

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v0, :cond_18

    move v3, v4

    :cond_18
    return v3
.end method

.method private setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 37
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1220
    move-object/from16 v2, p0

    move-object/from16 v0, p1

    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->isAutoBrightnessAvailable()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 1222
    iget-boolean v1, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-nez v1, :cond_0

    .line 1223
    return-void

    .line 1226
    :cond_0
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1228
    .local v6, "brightnessMappers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/BrightnessMappingStrategy;>;"
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 1229
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/display/DisplayPowerController$Injector;->getDefaultModeBrightnessMapper(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    .line 1231
    .local v1, "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    const/4 v3, 0x0

    invoke-virtual {v6, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1234
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111017c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v34

    .line 1236
    .local v34, "isIdleScreenBrightnessEnabled":Z
    if-eqz v34, :cond_1

    .line 1237
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 1238
    const/4 v7, 0x1

    invoke-static {v0, v4, v7, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    .line 1241
    .local v4, "idleModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    if-eqz v4, :cond_1

    .line 1242
    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1247
    .end local v4    # "idleModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    :cond_1
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 1248
    const/4 v7, 0x2

    invoke-static {v0, v4, v7, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    .line 1250
    .local v4, "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 1251
    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1254
    :cond_2
    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v5

    nop

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1255
    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAutoBrightnessModeBedtimeWearEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1256
    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 1257
    const/4 v8, 0x3

    invoke-static {v0, v5, v8, v7}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v5

    .line 1259
    .local v5, "bedtimeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    if-eqz v5, :cond_3

    .line 1260
    invoke-virtual {v6, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1264
    .end local v5    # "bedtimeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    :cond_3
    const/high16 v5, -0x40800000    # -1.0f

    .line 1265
    .local v5, "userLux":F
    const/high16 v7, -0x40800000    # -1.0f

    .line 1266
    .local v7, "userNits":F
    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v8, :cond_4

    .line 1267
    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v8}, Lcom/android/server/display/AutomaticBrightnessController;->getUserLux()F

    move-result v5

    .line 1268
    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v8}, Lcom/android/server/display/AutomaticBrightnessController;->getUserNits()F

    move-result v7

    move/from16 v31, v5

    move/from16 v32, v7

    goto :goto_0

    .line 1266
    :cond_4
    move/from16 v31, v5

    move/from16 v32, v7

    .line 1271
    .end local v5    # "userLux":F
    .end local v7    # "userNits":F
    .local v31, "userLux":F
    .local v32, "userNits":F
    :goto_0
    if-eqz v1, :cond_b

    .line 1273
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1274
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v22

    .line 1277
    .local v22, "ambientBrightnessThresholds":Lcom/android/server/display/config/HysteresisLevels;
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1278
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v23

    .line 1281
    .local v23, "screenBrightnessThresholds":Lcom/android/server/display/config/HysteresisLevels;
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1282
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v24

    .line 1285
    .local v24, "ambientBrightnessThresholdsIdle":Lcom/android/server/display/config/HysteresisLevels;
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1286
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v25

    .line 1288
    .local v25, "screenBrightnessThresholdsIdle":Lcom/android/server/display/config/HysteresisLevels;
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1289
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLightDebounce()J

    move-result-wide v13

    .line 1290
    .local v13, "brighteningLightDebounce":J
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1291
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessDarkeningLightDebounce()J

    move-result-wide v15

    .line 1292
    .local v15, "darkeningLightDebounce":J
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1293
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLightDebounceIdle()J

    move-result-wide v17

    .line 1294
    .local v17, "brighteningLightDebounceIdle":J
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1295
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessDarkeningLightDebounceIdle()J

    move-result-wide v19

    .line 1296
    .local v19, "darkeningLightDebounceIdle":J
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x111003c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    .line 1299
    .local v21, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e00ba

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1301
    .local v7, "lightSensorWarmUpTimeConfig":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e0025

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 1303
    .local v11, "lightSensorRate":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e0024

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1305
    .local v3, "initialLightSensorRate":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 1306
    move v3, v11

    move v12, v3

    goto :goto_1

    .line 1307
    :cond_5
    if-le v3, v11, :cond_6

    .line 1308
    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_6
    move v12, v3

    .end local v3    # "initialLightSensorRate":I
    .local v12, "initialLightSensorRate":I
    :goto_1
    invoke-direct {v2}, Lcom/android/server/display/DisplayPowerController;->loadAmbientLightSensor()V

    .line 1316
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v3, :cond_7

    iget v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v3, :cond_7

    .line 1317
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v5}, Lcom/android/server/display/BrightnessTracker;->setLightSensor(Landroid/hardware/Sensor;)V

    .line 1320
    :cond_7
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_8

    .line 1321
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    .line 1323
    :cond_8
    move-object v3, v1

    .end local v1    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .local v3, "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 1324
    move-object v5, v3

    .end local v3    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .local v5, "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v8, v4

    .end local v4    # "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .local v8, "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object v9, v5

    .end local v5    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .local v9, "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    iget v10, v2, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    move-object/from16 v27, v0

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    move-object/from16 v28, v0

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1332
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonShort()I

    move-result v29

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1333
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonLong()I

    move-result v30

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1323
    move-object/from16 v33, v8

    .end local v8    # "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .local v33, "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    const/4 v8, 0x0

    move-object/from16 v35, v9

    .end local v9    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .local v35, "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v36, v33

    move-object/from16 v33, v0

    move-object/from16 v0, v36

    .end local v33    # "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .local v0, "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    invoke-virtual/range {v1 .. v33}, Lcom/android/server/display/DisplayPowerController$Injector;->getAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/util/SparseArray;IFFFIIJJJJZLcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController;IIFFLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v1

    move v5, v7

    move/from16 v26, v11

    move/from16 v27, v12

    move-wide v3, v13

    .end local v7    # "lightSensorWarmUpTimeConfig":I
    .end local v11    # "lightSensorRate":I
    .end local v12    # "initialLightSensorRate":I
    .end local v13    # "brighteningLightDebounce":J
    .local v3, "brighteningLightDebounce":J
    .local v5, "lightSensorWarmUpTimeConfig":I
    .local v26, "lightSensorRate":I
    .local v27, "initialLightSensorRate":I
    iput-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1334
    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v9, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v10, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v11, v2, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-boolean v13, v2, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iget v14, v2, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    move-object/from16 v12, v35

    .end local v35    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .local v12, "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setUpAutoBrightness(Lcom/android/server/display/AutomaticBrightnessController;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V

    .line 1337
    .end local v12    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .restart local v35    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v7, Lcom/android/server/display/brightness/BrightnessEvent;

    const/16 v8, 0x64

    invoke-direct {v1, v7, v8}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1339
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1340
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v1, :cond_9

    .line 1341
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-virtual {v1}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->stop()V

    .line 1342
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 1344
    :cond_9
    invoke-direct {v2}, Lcom/android/server/display/DisplayPowerController;->loadScreenOffBrightnessSensor()V

    .line 1345
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1346
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenOffBrightnessSensorValueToLux()[I

    move-result-object v12

    .line 1347
    .local v12, "sensorValueToLux":[I
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_a

    if-eqz v12, :cond_a

    .line 1348
    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v9, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    iget-object v10, v2, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v11, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    invoke-direct {v11}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;-><init>()V

    .line 1349
    move-object/from16 v13, v35

    .end local v35    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .local v13, "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/display/DisplayPowerController$Injector;->getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;

    move-result-object v1

    .end local v13    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .restart local v35    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    iput-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 1358
    .end local v3    # "brighteningLightDebounce":J
    .end local v5    # "lightSensorWarmUpTimeConfig":I
    .end local v12    # "sensorValueToLux":[I
    .end local v15    # "darkeningLightDebounce":J
    .end local v17    # "brighteningLightDebounceIdle":J
    .end local v19    # "darkeningLightDebounceIdle":J
    .end local v21    # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .end local v22    # "ambientBrightnessThresholds":Lcom/android/server/display/config/HysteresisLevels;
    .end local v23    # "screenBrightnessThresholds":Lcom/android/server/display/config/HysteresisLevels;
    .end local v24    # "ambientBrightnessThresholdsIdle":Lcom/android/server/display/config/HysteresisLevels;
    .end local v25    # "screenBrightnessThresholdsIdle":Lcom/android/server/display/config/HysteresisLevels;
    .end local v26    # "lightSensorRate":I
    .end local v27    # "initialLightSensorRate":I
    :cond_a
    goto :goto_2

    .line 1359
    .end local v0    # "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .end local v35    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .restart local v1    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .restart local v4    # "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    :cond_b
    move-object/from16 v35, v1

    move-object v0, v4

    .end local v1    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .end local v4    # "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .restart local v0    # "dozeModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    .restart local v35    # "defaultModeBrightnessMapper":Lcom/android/server/display/BrightnessMappingStrategy;
    iput-boolean v3, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 1361
    :goto_2
    return-void
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 3335
    packed-switch p0, :pswitch_data_0

    .line 3343
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3341
    :pswitch_0
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    .line 3339
    :pswitch_1
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    .line 3337
    :pswitch_2
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unblockScreenOff()V
    .locals 6

    .line 2606
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_0

    .line 2607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2608
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2609
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen off after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    const-string v2, "Screen off blocked"

    const/4 v3, 0x0

    const-wide/32 v4, 0x20000

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2612
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private unblockScreenOn()V
    .locals 6

    .line 2588
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_0

    .line 2589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2590
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2591
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    const-string v2, "Screen on blocked"

    const/4 v3, 0x0

    const-wide/32 v4, 0x20000

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2594
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private unblockScreenOnByDisplayOffload()V
    .locals 6

    .line 2646
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2647
    return-void

    .line 2649
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    .line 2650
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    sub-long/2addr v0, v2

    .line 2651
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on for offloading after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    const-string v2, "Screen on blocked by displayoffload"

    const/4 v3, 0x0

    const-wide/32 v4, 0x20000

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2654
    return-void
.end method

.method private updatePowerState()V
    .locals 9

    .line 1503
    const-string v0, "DisplayPowerController#updatePowerState"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1507
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 1508
    .local v0, "tid":I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    .line 1509
    .local v3, "savedPriority":I
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->sFingerprintBoost:Z

    const-string v5, "DisplayPowerController"

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 1510
    invoke-static {v0, v6}, Landroid/os/Process;->setThreadAffinity(II)V

    .line 1512
    const v4, 0x40000001    # 2.0000002f

    const/4 v7, 0x1

    :try_start_0
    invoke-static {v0, v4, v7}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    goto :goto_0

    .line 1513
    :catch_0
    move-exception v4

    .line 1514
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "set sched fifo failed! , savedPriority = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerStateInternal()V

    .line 1518
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->sFingerprintBoost:Z

    if-eqz v4, :cond_1

    .line 1519
    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/os/Process;->setThreadAffinity(II)V

    .line 1521
    :try_start_1
    invoke-static {v0, v6, v6}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1524
    goto :goto_1

    .line 1522
    :catch_1
    move-exception v4

    .line 1523
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "set sched other failed! , savedPriority = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1528
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1529
    return-void
.end method

.method private updatePowerStateInternal()V
    .locals 48

    .line 1533
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1535
    .local v2, "mustNotify":Z
    const/4 v3, 0x0

    .line 1536
    .local v3, "mustInitialize":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1537
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    .line 1539
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1540
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1541
    monitor-exit v4

    return-void

    .line 1569
    :catchall_0
    move-exception v0

    goto/16 :goto_4c

    .line 1543
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1544
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_1

    .line 1545
    monitor-exit v4

    return-void

    .line 1548
    :cond_1
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_2

    .line 1549
    new-instance v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v5, v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1550
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 1551
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1552
    const/4 v3, 0x1

    .line 1555
    const/4 v5, 0x3

    move v8, v3

    move v9, v5

    .local v5, "previousPolicy":I
    goto :goto_0

    .line 1556
    .end local v5    # "previousPolicy":I
    :cond_2
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v5, :cond_3

    .line 1557
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1558
    .restart local v5    # "previousPolicy":I
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1559
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 1560
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1561
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    move v8, v3

    move v9, v5

    goto :goto_0

    .line 1563
    .end local v5    # "previousPolicy":I
    :cond_3
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v3

    move v9, v5

    .line 1566
    .end local v3    # "mustInitialize":Z
    .local v8, "mustInitialize":Z
    .local v9, "previousPolicy":I
    :goto_0
    :try_start_1
    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v10, 0x1

    if-nez v3, :cond_4

    move v3, v10

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    move v11, v3

    .line 1568
    .end local v2    # "mustNotify":Z
    .local v11, "mustNotify":Z
    :try_start_2
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    move-object v12, v2

    .line 1569
    .local v12, "displayBrightnessFollowers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayPowerController;>;"
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1573
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v2, v10, :cond_5

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 1575
    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1576
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mLastSdrBrightness:F

    iput v3, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 1580
    :cond_5
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 1582
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/state/DisplayStateController;->updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Landroid/util/Pair;

    move-result-object v13

    .line 1583
    .local v13, "stateAndReason":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1586
    .local v2, "state":I
    if-eqz v8, :cond_7

    .line 1587
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->readyToUpdateDisplayState()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_2
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->initialize(I)V

    .line 1593
    :cond_7
    iget-object v3, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 1594
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 1595
    invoke-virtual {v4}, Lcom/android/server/display/state/DisplayStateController;->shouldPerformScreenOffTransition()Z

    move-result v4

    .line 1593
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIZ)V

    .line 1596
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v15

    .line 1601
    .end local v2    # "state":I
    .local v15, "state":I
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1603
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v2, v10, :cond_9

    :cond_8
    invoke-static {v15}, Landroid/view/Display;->isDozeState(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move v2, v10

    goto :goto_3

    :cond_a
    move v2, v0

    goto :goto_3

    :cond_b
    invoke-static {v15}, Landroid/view/Display;->isDozeState(I)Z

    move-result v2

    :goto_3
    move/from16 v23, v2

    .line 1604
    .local v23, "useDozeBrightness":Z
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    .line 1605
    invoke-virtual {v2, v3, v15, v4, v5}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v2

    .line 1610
    .local v2, "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v3

    .line 1611
    .local v3, "brightnessState":F
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v4

    .line 1612
    .local v4, "rawBrightnessState":F
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1613
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->isSlowChange()Z

    move-result v5

    .line 1615
    .local v5, "slowChange":Z
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getCustomAnimationRate()F

    move-result v6

    .line 1616
    .local v6, "customAnimationRate":F
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessAdjustmentFlag()I

    move-result v7

    .line 1617
    .local v7, "brightnessAdjustmentFlags":I
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1618
    invoke-virtual {v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getIsUserSetScreenBrightnessUpdated()Z

    move-result v21

    .line 1619
    .local v21, "userSetBrightnessChanged":Z
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 1620
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 1623
    :cond_c
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    .line 1625
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1626
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozing()Z

    move-result v16

    .line 1629
    .local v16, "allowAutoBrightnessWhileDozing":Z
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    const/4 v14, 0x0

    if-nez v0, :cond_f

    .line 1630
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "OverrideBrightnessStrategy"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1631
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 1632
    invoke-interface {v0}, Lcom/android/server/display/INtDisplayBrightnessController;->getNormalBrightnessMax()F

    move-result v0

    .line 1631
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v14, v0, v14, v10, v3}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    .line 1633
    .end local v3    # "brightnessState":F
    .local v0, "brightnessState":F
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOverrideBrightnessMax:F

    invoke-static {v0, v14, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    .line 1636
    .end local v0    # "brightnessState":F
    .restart local v3    # "brightnessState":F
    :cond_d
    const/4 v0, 0x1

    if-eq v15, v0, :cond_e

    const/4 v0, 0x3

    if-ne v15, v0, :cond_f

    .line 1637
    :cond_e
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v0}, Lcom/android/server/display/INtDisplayBrightnessController;->getNormalBrightnessMax()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOverrideBrightnessMax:F

    .line 1642
    :cond_f
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1645
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_14

    .line 1646
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 1647
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v18

    if-eqz v18, :cond_12

    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    if-eqz v14, :cond_12

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v14, :cond_10

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v10, 0x1

    if-ne v14, v10, :cond_11

    if-nez v16, :cond_11

    :cond_10
    goto :goto_4

    :cond_11
    const/4 v14, -0x1

    goto :goto_5

    :goto_4
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    const/4 v14, -0x1

    if-ne v10, v14, :cond_13

    const/4 v10, 0x1

    goto :goto_6

    :cond_12
    const/4 v14, -0x1

    :cond_13
    :goto_5
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v0, v10}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    goto :goto_7

    .line 1645
    :cond_14
    const/4 v14, -0x1

    goto :goto_7

    .line 1642
    :cond_15
    const/4 v14, -0x1

    .line 1656
    :goto_7
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1657
    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isShortTermModelActive()Z

    move-result v10

    .line 1658
    .local v10, "wasShortTermModelActive":Z
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->isUserInitiatedChange()Z

    move-result v0

    .line 1660
    .local v0, "userInitiatedChange":Z
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v14}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v14

    move/from16 v27, v0

    .end local v0    # "userInitiatedChange":Z
    .local v27, "userInitiatedChange":Z
    const/4 v0, 0x2

    if-nez v14, :cond_1c

    .line 1662
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v14}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v14

    if-eqz v14, :cond_19

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v14, :cond_19

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1663
    invoke-virtual {v14}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v14

    if-nez v14, :cond_18

    .line 1666
    if-eqz v23, :cond_16

    .line 1667
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .local v28, "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    invoke-virtual {v14, v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    const/4 v0, 0x3

    goto :goto_8

    .line 1669
    .end local v28    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .restart local v2    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    :cond_16
    move-object/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .restart local v28    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v14}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAutoBrightnessModeBedtimeWearEnabled()Z

    move-result v14

    if-eqz v14, :cond_17

    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    if-eqz v14, :cond_17

    .line 1671
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v0, 0x3

    invoke-virtual {v14, v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    goto :goto_8

    .line 1669
    :cond_17
    const/4 v0, 0x3

    .line 1674
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v14, v2, v2}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    goto :goto_8

    .line 1663
    .end local v28    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .restart local v2    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    :cond_18
    move-object/from16 v28, v2

    const/4 v0, 0x3

    .end local v2    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .restart local v28    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    goto :goto_8

    .line 1662
    .end local v28    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .restart local v2    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    :cond_19
    move-object/from16 v28, v2

    const/4 v0, 0x3

    .line 1679
    .end local v2    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .restart local v28    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    :goto_8
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1680
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v17

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    move/from16 v20, v0

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1682
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getLastUserSetScreenBrightness()F

    move-result v0

    move/from16 v22, v0

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    .line 1679
    move/from16 v18, v2

    move/from16 v19, v20

    move/from16 v20, v22

    const/4 v2, 0x0

    const/16 v26, -0x1

    move/from16 v22, v0

    const/4 v0, 0x3

    invoke-virtual/range {v14 .. v22}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessState(IZIIZFZZ)V

    .line 1687
    move/from16 v20, v16

    .end local v16    # "allowAutoBrightnessWhileDozing":Z
    .local v20, "allowAutoBrightnessWhileDozing":Z
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    nop

    if-eqz v14, :cond_1b

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1688
    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    move-result v14

    if-nez v14, :cond_1a

    if-eqz v21, :cond_1b

    :cond_1a
    const/4 v14, 0x1

    goto :goto_9

    :cond_1b
    const/4 v14, 0x0

    :goto_9
    move/from16 v27, v14

    .end local v27    # "userInitiatedChange":Z
    .local v14, "userInitiatedChange":Z
    goto :goto_a

    .line 1660
    .end local v14    # "userInitiatedChange":Z
    .end local v20    # "allowAutoBrightnessWhileDozing":Z
    .end local v28    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .restart local v2    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .restart local v16    # "allowAutoBrightnessWhileDozing":Z
    .restart local v27    # "userInitiatedChange":Z
    :cond_1c
    move-object/from16 v28, v2

    move/from16 v20, v16

    const/4 v0, 0x3

    const/4 v2, 0x0

    const/16 v26, -0x1

    .line 1693
    .end local v2    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .end local v16    # "allowAutoBrightnessWhileDozing":Z
    .restart local v20    # "allowAutoBrightnessWhileDozing":Z
    .restart local v28    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    :goto_a
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1694
    const/4 v14, 0x1

    goto :goto_b

    .line 1695
    :cond_1d
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessDisabledDueToDisplayOff()Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 1696
    move v14, v0

    goto :goto_b

    .line 1697
    :cond_1e
    const/4 v14, 0x2

    :goto_b
    nop

    .line 1699
    .local v14, "autoBrightnessState":I
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v2, v14}, Lcom/android/server/display/BrightnessRangeController;->setAutoBrightnessEnabled(I)V

    .line 1701
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v2, v14}, Lcom/android/server/display/INtDisplayBrightnessController;->setAutoBrightnessEnabled(I)V

    .line 1704
    nop

    .line 1705
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/display/DisplayBrightnessState;->shouldUpdateScreenBrightnessSetting()Z

    move-result v2

    .line 1706
    .local v2, "updateScreenBrightnessSetting":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v31

    .line 1708
    .local v31, "currentBrightnessSetting":F
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v0

    move/from16 v16, v0

    if-nez v16, :cond_26

    .line 1710
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-nez v16, :cond_20

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1711
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v0

    move/from16 v16, v2

    .end local v2    # "updateScreenBrightnessSetting":Z
    .local v16, "updateScreenBrightnessSetting":Z
    const/16 v2, 0xb

    if-ne v0, v2, :cond_1f

    goto :goto_c

    .line 1743
    :cond_1f
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    goto/16 :goto_10

    .line 1710
    .end local v16    # "updateScreenBrightnessSetting":Z
    .restart local v2    # "updateScreenBrightnessSetting":Z
    :cond_20
    move/from16 v16, v2

    .line 1712
    .end local v2    # "updateScreenBrightnessSetting":Z
    .restart local v16    # "updateScreenBrightnessSetting":Z
    :goto_c
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1713
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result v3

    .line 1716
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v0

    if-nez v0, :cond_21

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, v3, v0

    if-nez v0, :cond_22

    :cond_21
    goto :goto_d

    .line 1737
    :cond_22
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 1739
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v3

    move/from16 v2, v16

    goto :goto_11

    .line 1718
    :goto_d
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1719
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getRawAutomaticScreenBrightness()F

    move-result v4

    .line 1723
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    move-result v0

    nop

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1725
    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_e

    :cond_23
    const/4 v0, 0x0

    :goto_e
    move v5, v0

    .line 1726
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1728
    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentReasonsFlags()I

    move-result v7

    .line 1729
    cmpl-float v0, v31, v3

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_f

    :cond_24
    const/4 v0, 0x0

    :goto_f
    move v2, v0

    .line 1730
    .end local v16    # "updateScreenBrightnessSetting":Z
    .restart local v2    # "updateScreenBrightnessSetting":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "updateScreenBrightnessSetting":Z
    .restart local v16    # "updateScreenBrightnessSetting":Z
    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 1731
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 1732
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_25

    .line 1733
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 1735
    :cond_25
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setBrightnessFromOffload(F)V

    move/from16 v2, v16

    goto :goto_11

    .line 1708
    .end local v16    # "updateScreenBrightnessSetting":Z
    .restart local v2    # "updateScreenBrightnessSetting":Z
    :cond_26
    move/from16 v16, v2

    .line 1747
    .end local v2    # "updateScreenBrightnessSetting":Z
    .restart local v16    # "updateScreenBrightnessSetting":Z
    :cond_27
    :goto_10
    move/from16 v2, v16

    .end local v16    # "updateScreenBrightnessSetting":Z
    .restart local v2    # "updateScreenBrightnessSetting":Z
    :goto_11
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1748
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v3

    .line 1751
    :cond_28
    if-eqz v23, :cond_2d

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1752
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v0

    move/from16 v16, v2

    .end local v2    # "updateScreenBrightnessSetting":Z
    .restart local v16    # "updateScreenBrightnessSetting":Z
    const-string v2, "FallbackBrightnessStrategy"

    .line 1753
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_12

    .line 1751
    .end local v16    # "updateScreenBrightnessSetting":Z
    .restart local v2    # "updateScreenBrightnessSetting":Z
    :cond_29
    move/from16 v16, v2

    .line 1754
    .end local v2    # "updateScreenBrightnessSetting":Z
    .restart local v16    # "updateScreenBrightnessSetting":Z
    :goto_12
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    nop

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1756
    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1761
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->getDozeBrightnessForOffload()F

    move-result v4

    .line 1762
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v3

    .line 1763
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 1764
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1765
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v2

    const/16 v32, 0x4

    or-int/lit8 v2, v2, 0x4

    .line 1764
    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    goto :goto_13

    .line 1766
    :cond_2b
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1768
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 1769
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v3

    .line 1770
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 1772
    :cond_2c
    :goto_13
    const/4 v2, 0x0

    .end local v16    # "updateScreenBrightnessSetting":Z
    .restart local v2    # "updateScreenBrightnessSetting":Z
    goto :goto_14

    .line 1751
    :cond_2d
    move/from16 v16, v2

    .line 1775
    .end local v2    # "updateScreenBrightnessSetting":Z
    .restart local v16    # "updateScreenBrightnessSetting":Z
    :cond_2e
    move/from16 v2, v16

    .end local v16    # "updateScreenBrightnessSetting":Z
    .restart local v2    # "updateScreenBrightnessSetting":Z
    :goto_14
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1778
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    if-eqz v0, :cond_30

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1779
    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_30

    .line 1781
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 1782
    invoke-virtual {v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    move-result v4

    .line 1783
    move v3, v4

    .line 1784
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1785
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v3

    .line 1786
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1787
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_15

    :cond_2f
    const/4 v0, 0x0

    :goto_15
    move v2, v0

    .line 1789
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v16, v2

    .end local v2    # "updateScreenBrightnessSetting":Z
    .restart local v16    # "updateScreenBrightnessSetting":Z
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    move/from16 v2, v16

    .line 1796
    .end local v16    # "updateScreenBrightnessSetting":Z
    .restart local v2    # "updateScreenBrightnessSetting":Z
    :cond_30
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1797
    move/from16 v4, v31

    .line 1798
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v3

    .line 1799
    cmpl-float v0, v3, v31

    if-eqz v0, :cond_31

    .line 1803
    const/4 v2, 0x1

    .line 1805
    :cond_31
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "updateScreenBrightnessSetting":Z
    .restart local v16    # "updateScreenBrightnessSetting":Z
    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    move/from16 v2, v16

    .line 1808
    .end local v16    # "updateScreenBrightnessSetting":Z
    .restart local v2    # "updateScreenBrightnessSetting":Z
    :cond_32
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_33

    const/4 v0, 0x0

    goto :goto_16

    .line 1809
    :cond_33
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v0

    :goto_16
    move/from16 v33, v0

    .line 1810
    .local v33, "ambientLux":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    move/from16 v16, v2

    .end local v2    # "updateScreenBrightnessSetting":Z
    .restart local v16    # "updateScreenBrightnessSetting":Z
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 1811
    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerController;

    .line 1812
    .local v2, "follower":Lcom/android/server/display/DisplayPowerController;
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1813
    invoke-virtual {v0, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    move-result v0

    .line 1812
    move/from16 v34, v8

    move/from16 v8, v33

    .end local v33    # "ambientLux":F
    .local v8, "ambientLux":F
    .local v34, "mustInitialize":Z
    invoke-virtual {v2, v4, v0, v8, v5}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    .line 1810
    .end local v2    # "follower":Lcom/android/server/display/DisplayPowerController;
    add-int/lit8 v0, v17, 0x1

    move/from16 v2, v16

    move/from16 v8, v34

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_17

    .end local v34    # "mustInitialize":Z
    .local v8, "mustInitialize":Z
    .restart local v33    # "ambientLux":F
    :cond_34
    move/from16 v17, v0

    move/from16 v34, v8

    move/from16 v8, v33

    .line 1818
    .end local v0    # "i":I
    .end local v33    # "ambientLux":F
    .local v8, "ambientLux":F
    .restart local v34    # "mustInitialize":Z
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_3b

    .line 1819
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1820
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    const-string v2, "TemporaryBrightnessStrategy"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v25

    if-eqz v0, :cond_35

    .line 1821
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mTempSetBrightness:Z

    .line 1823
    :cond_35
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessStrategy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    const-string v2, "AutomaticBrightnessStrategy"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempSetBrightness:Z

    if-nez v0, :cond_36

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    const-string v2, "DozeBrightnessStrategy"

    .line 1824
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1825
    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mResetBrightness:F

    .line 1826
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    invoke-interface {v0, v2, v3}, Lcom/android/server/display/INtDisplayBrightnessController;->getCameraBoostBrightness(FF)F

    move-result v3

    .line 1830
    :cond_36
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessStrategy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    const-string v2, "DozeBrightnessStrategy"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1831
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastCameraBoostFactor:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_37

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v25

    if-eqz v0, :cond_37

    .line 1832
    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mResetBrightness:F

    .line 1833
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    invoke-interface {v0, v2, v3}, Lcom/android/server/display/INtDisplayBrightnessController;->getCameraBoostBrightness(FF)F

    move-result v3

    .line 1837
    :cond_37
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastCameraBoostFactor:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_38

    .line 1838
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v25

    if-nez v0, :cond_38

    .line 1839
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mResetBrightness:F

    move v3, v0

    .line 1842
    :cond_38
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    const-string v2, "TemporaryBrightnessStrategy"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1843
    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mResetBrightness:F

    .line 1846
    :cond_39
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    const-string v2, "DozeBrightnessStrategy"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1847
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3a

    .line 1848
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mResetBrightness:F

    .line 1849
    const/4 v0, 0x1

    .line 1850
    .end local v16    # "updateScreenBrightnessSetting":Z
    .local v0, "updateScreenBrightnessSetting":Z
    iput v2, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    move/from16 v33, v0

    move/from16 v17, v3

    goto :goto_18

    .line 1863
    .end local v0    # "updateScreenBrightnessSetting":Z
    .restart local v16    # "updateScreenBrightnessSetting":Z
    :cond_3a
    move/from16 v17, v3

    move/from16 v33, v16

    goto :goto_18

    .line 1818
    :cond_3b
    move/from16 v17, v3

    move/from16 v33, v16

    .line 1863
    .end local v3    # "brightnessState":F
    .end local v16    # "updateScreenBrightnessSetting":Z
    .local v17, "brightnessState":F
    .local v33, "updateScreenBrightnessSetting":Z
    :goto_18
    const/4 v0, 0x0

    .line 1864
    .local v0, "unthrottledBrightnessState":F
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v2, :cond_3c

    .line 1865
    move/from16 v0, v17

    move v2, v0

    goto :goto_19

    .line 1867
    :cond_3c
    move v0, v4

    move v2, v0

    .line 1870
    .end local v0    # "unthrottledBrightnessState":F
    .local v2, "unthrottledBrightnessState":F
    :goto_19
    move v3, v14

    .end local v14    # "autoBrightnessState":I
    .local v3, "autoBrightnessState":I
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v16, v0

    move/from16 v18, v5

    move/from16 v19, v15

    move-object/from16 v15, v28

    move/from16 v28, v3

    .end local v3    # "autoBrightnessState":I
    .end local v5    # "slowChange":Z
    .local v15, "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .local v18, "slowChange":Z
    .local v19, "state":I
    .local v28, "autoBrightnessState":I
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->clamp(Lcom/android/server/display/DisplayBrightnessState;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZI)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v14

    .line 1873
    move-object/from16 v16, v15

    move/from16 v15, v19

    .end local v19    # "state":I
    .local v14, "clampedState":Lcom/android/server/display/DisplayBrightnessState;
    .local v15, "state":I
    .local v16, "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v0

    .line 1874
    .end local v17    # "brightnessState":F
    .local v0, "brightnessState":F
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->isSlowChange()Z

    move-result v3

    .line 1877
    .end local v18    # "slowChange":Z
    .local v3, "slowChange":Z
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getCustomAnimationRate()F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1878
    .end local v6    # "customAnimationRate":F
    .local v5, "customAnimationRate":F
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v17

    move/from16 v18, v3

    .end local v3    # "slowChange":Z
    .restart local v18    # "slowChange":Z
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 1880
    if-nez v33, :cond_3d

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mLastCameraBoostFactor:F

    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_3e

    :cond_3d
    goto :goto_1a

    :cond_3e
    move/from16 v17, v4

    move/from16 v19, v5

    goto :goto_1b

    .line 1886
    :goto_1a
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1888
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v6

    move/from16 v17, v4

    .end local v4    # "rawBrightnessState":F
    .local v17, "rawBrightnessState":F
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v4

    .line 1887
    invoke-static {v2, v6, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1889
    invoke-virtual {v6}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v6

    .line 1890
    move/from16 v19, v5

    .end local v5    # "customAnimationRate":F
    .local v19, "customAnimationRate":F
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v5

    .line 1889
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1886
    invoke-virtual {v3, v4, v5}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateScreenBrightnessSetting(FF)V

    .line 1894
    :goto_1b
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mLastCameraBoostFactor:F

    .line 1895
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentBrightnessStrategy:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessStrategy:Ljava/lang/String;

    .line 1900
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v3, :cond_3f

    .line 1901
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v3}, Lcom/android/server/display/INtDisplayBrightnessController;->getHighBrightnessMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3f

    const/4 v3, 0x2

    if-ne v15, v3, :cond_3f

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 1903
    invoke-interface {v3}, Lcom/android/server/display/INtDisplayBrightnessController;->getNormalBrightnessMax()F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_3f

    .line 1904
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v3, v0}, Lcom/android/server/display/INtDisplayBrightnessController;->getAmbientHbmBrightnessValue(F)F

    move-result v0

    move v3, v0

    goto :goto_1c

    .line 1914
    :cond_3f
    move v3, v0

    .end local v0    # "brightnessState":F
    .local v3, "brightnessState":F
    :goto_1c
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0, v3, v2, v14}, Lcom/android/server/display/BrightnessRangeController;->onBrightnessChanged(FFLcom/android/server/display/DisplayBrightnessState;)V

    .line 1918
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v0, v3}, Lcom/android/server/display/INtDisplayBrightnessController;->onBrightnessChanged(F)V

    .line 1923
    const/4 v0, 0x0

    .line 1924
    .local v0, "brightnessAdjusted":Z
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1925
    invoke-virtual {v4}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v4

    const/4 v5, 0x7

    nop

    if-eq v4, v5, :cond_41

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1927
    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_1d

    :cond_40
    const/4 v6, 0x0

    goto :goto_1e

    :cond_41
    :goto_1d
    const/4 v6, 0x1

    :goto_1e
    nop

    .line 1928
    .local v6, "brightnessIsTemporary":Z
    const/4 v4, 0x0

    .line 1929
    .local v4, "rampSpeed":F
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    move/from16 v36, v0

    .end local v0    # "brightnessAdjusted":Z
    .local v36, "brightnessAdjusted":Z
    if-nez v5, :cond_6d

    .line 1930
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v5, :cond_47

    .line 1931
    const/4 v5, 0x2

    if-ne v15, v5, :cond_46

    .line 1932
    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v5, :cond_42

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v5, :cond_42

    .line 1933
    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1934
    const/4 v5, 0x1

    iput v5, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_20

    .line 1932
    :cond_42
    const/4 v5, 0x1

    .line 1935
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v0, v5, :cond_44

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v0, :cond_44

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1937
    invoke-static {v3, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1939
    const/4 v5, 0x2

    iput v5, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_20

    .line 1937
    :cond_43
    const/4 v5, 0x2

    goto :goto_1f

    .line 1935
    :cond_44
    const/4 v5, 0x2

    .line 1940
    :goto_1f
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v0, v5, :cond_45

    .line 1941
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_20

    .line 1940
    :cond_45
    const/4 v0, 0x0

    goto :goto_20

    .line 1944
    :cond_46
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 1948
    :cond_47
    :goto_20
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1949
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_48

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_48

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v5, 0x3

    if-eq v0, v5, :cond_49

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v5, 0x4

    if-eq v0, v5, :cond_49

    :cond_48
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessStrategy:Ljava/lang/String;

    const-string v5, "TemporaryBrightnessStrategy"

    .line 1953
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_49
    const/4 v0, 0x1

    goto :goto_21

    :cond_4a
    const/4 v0, 0x0

    .line 1956
    .local v0, "wantBrightnessFast":Z
    :goto_21
    const/4 v5, 0x2

    if-ne v15, v5, :cond_4b

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v5, :cond_4c

    :cond_4b
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 1958
    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerProximityStateController;->shouldSkipRampBecauseOfProximityChangeToNegative()Z

    move-result v5

    if-eqz v5, :cond_4d

    :cond_4c
    const/4 v5, 0x1

    goto :goto_22

    :cond_4d
    const/4 v5, 0x0

    :goto_22
    move/from16 v30, v5

    .line 1962
    .local v30, "initialRampSkip":Z
    nop

    .line 1963
    invoke-static {v15}, Landroid/view/Display;->isDozeState(I)Z

    move-result v5

    if-eqz v5, :cond_4e

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v5, :cond_4e

    const/4 v5, 0x1

    goto :goto_23

    :cond_4e
    const/4 v5, 0x0

    :goto_23
    move/from16 v37, v5

    .line 1966
    .local v37, "hasBrightnessBuckets":Z
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    nop

    if-eqz v5, :cond_4f

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1967
    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v5

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v25

    if-nez v5, :cond_4f

    const/4 v5, 0x1

    goto :goto_24

    :cond_4f
    const/4 v5, 0x0

    :goto_24
    move/from16 v38, v5

    .line 1976
    .local v38, "isDisplayContentVisible":Z
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v5

    .line 1981
    .local v5, "animateValue":F
    move/from16 v39, v5

    .line 2005
    .local v39, "sdrAnimateValue":F
    move/from16 v40, v0

    .end local v0    # "wantBrightnessFast":Z
    .local v40, "wantBrightnessFast":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v0}, Lcom/android/server/display/INtDisplayBrightnessController;->getHighBrightnessMode()I

    move-result v0

    move/from16 v41, v2

    const/4 v2, 0x2

    .end local v2    # "unthrottledBrightnessState":F
    .local v41, "unthrottledBrightnessState":F
    nop

    if-ne v0, v2, :cond_51

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2007
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v0

    move/from16 v29, v2

    const/4 v2, 0x1

    and-int/2addr v0, v2

    nop

    if-nez v0, :cond_51

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2008
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_51

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v0, v2, :cond_51

    .line 2012
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v0}, Lcom/android/server/display/INtDisplayBrightnessController;->getHdrBrightnessValue()F

    move-result v5

    .line 2013
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mSupportSdrHdrMixCompose:Z

    if-nez v0, :cond_50

    .line 2014
    move/from16 v39, v5

    .line 2020
    :cond_50
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 2021
    const/4 v0, 0x1

    .end local v18    # "slowChange":Z
    .local v0, "slowChange":Z
    goto :goto_25

    .line 2026
    .end local v0    # "slowChange":Z
    .restart local v18    # "slowChange":Z
    :cond_51
    move/from16 v0, v18

    .end local v18    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    :goto_25
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v2, :cond_56

    .line 2027
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v2}, Lcom/android/server/display/INtDisplayBrightnessController;->getThermalBrightnessMax()F

    move-result v2

    .line 2028
    .local v2, "thermalMax":F
    cmpl-float v18, v5, v2

    if-lez v18, :cond_53

    .line 2029
    sget-boolean v18, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v18, :cond_52

    .line 2030
    move/from16 v18, v0

    .end local v0    # "slowChange":Z
    .restart local v18    # "slowChange":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    move/from16 v42, v3

    .end local v3    # "brightnessState":F
    .local v42, "brightnessState":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v43, v4

    .end local v4    # "rampSpeed":F
    .local v43, "rampSpeed":F
    const-string v4, "Limit brightness within 0 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 2029
    .end local v18    # "slowChange":Z
    .end local v42    # "brightnessState":F
    .end local v43    # "rampSpeed":F
    .restart local v0    # "slowChange":Z
    .restart local v3    # "brightnessState":F
    .restart local v4    # "rampSpeed":F
    :cond_52
    move/from16 v18, v0

    move/from16 v42, v3

    move/from16 v43, v4

    .line 2032
    .end local v0    # "slowChange":Z
    .end local v3    # "brightnessState":F
    .end local v4    # "rampSpeed":F
    .restart local v18    # "slowChange":Z
    .restart local v42    # "brightnessState":F
    .restart local v43    # "rampSpeed":F
    :goto_26
    move v5, v2

    .line 2033
    const/4 v0, 0x1

    .end local v18    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    goto :goto_27

    .line 2028
    .end local v42    # "brightnessState":F
    .end local v43    # "rampSpeed":F
    .restart local v3    # "brightnessState":F
    .restart local v4    # "rampSpeed":F
    :cond_53
    move/from16 v18, v0

    move/from16 v42, v3

    move/from16 v43, v4

    .line 2035
    .end local v3    # "brightnessState":F
    .end local v4    # "rampSpeed":F
    .restart local v42    # "brightnessState":F
    .restart local v43    # "rampSpeed":F
    :goto_27
    cmpl-float v3, v39, v2

    if-lez v3, :cond_54

    .line 2036
    move/from16 v39, v2

    .line 2037
    const/4 v0, 0x1

    .line 2041
    :cond_54
    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessExtensionTimeout:Z

    if-eqz v3, :cond_55

    .line 2042
    const/4 v0, 0x1

    .line 2043
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessExtensionTimeout:Z

    move v2, v5

    move/from16 v3, v39

    goto :goto_28

    .line 2041
    :cond_55
    move v2, v5

    move/from16 v3, v39

    goto :goto_28

    .line 2026
    .end local v2    # "thermalMax":F
    .end local v42    # "brightnessState":F
    .end local v43    # "rampSpeed":F
    .restart local v3    # "brightnessState":F
    .restart local v4    # "rampSpeed":F
    :cond_56
    move/from16 v18, v0

    move/from16 v42, v3

    move/from16 v43, v4

    .end local v0    # "slowChange":Z
    .end local v3    # "brightnessState":F
    .end local v4    # "rampSpeed":F
    .restart local v18    # "slowChange":Z
    .restart local v42    # "brightnessState":F
    .restart local v43    # "rampSpeed":F
    move v2, v5

    move/from16 v3, v39

    .line 2051
    .end local v5    # "animateValue":F
    .end local v18    # "slowChange":Z
    .end local v39    # "sdrAnimateValue":F
    .restart local v0    # "slowChange":Z
    .local v2, "animateValue":F
    .local v3, "sdrAnimateValue":F
    :goto_28
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_58

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v4, :cond_57

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_57

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_58

    .line 2055
    :cond_57
    const/high16 v5, -0x40800000    # -1.0f

    .line 2056
    .end local v19    # "customAnimationRate":F
    .local v5, "customAnimationRate":F
    const/4 v0, 0x0

    move v4, v5

    goto :goto_29

    .line 2059
    .end local v5    # "customAnimationRate":F
    .restart local v19    # "customAnimationRate":F
    :cond_58
    move/from16 v4, v19

    .end local v19    # "customAnimationRate":F
    .local v4, "customAnimationRate":F
    :goto_29
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v18

    .line 2060
    .local v18, "currentBrightness":F
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getSdrScreenBrightness()F

    move-result v19

    .line 2062
    .local v19, "currentSdrBrightness":F
    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v5

    if-eqz v5, :cond_6c

    cmpl-float v5, v2, v18

    if-nez v5, :cond_59

    cmpl-float v5, v3, v19

    if-eqz v5, :cond_5a

    :cond_59
    goto :goto_2a

    :cond_5a
    move/from16 v44, v4

    move/from16 v47, v6

    goto/16 :goto_38

    .line 2065
    :goto_2a
    if-nez v30, :cond_5b

    if-nez v37, :cond_5b

    if-nez v40, :cond_5b

    if-eqz v38, :cond_5b

    if-eqz v6, :cond_5c

    :cond_5b
    goto :goto_2b

    :cond_5c
    const/4 v5, 0x0

    goto :goto_2c

    :goto_2b
    const/4 v5, 0x1

    .line 2082
    .local v5, "skipAnimation":Z
    :goto_2c
    if-eqz v5, :cond_5d

    .line 2083
    move/from16 v39, v5

    const/4 v5, 0x0

    .end local v5    # "skipAnimation":Z
    .local v39, "skipAnimation":Z
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFF)V

    goto :goto_2d

    .line 2085
    .end local v39    # "skipAnimation":Z
    .restart local v5    # "skipAnimation":Z
    :cond_5d
    move/from16 v39, v5

    const/4 v5, 0x0

    .end local v5    # "skipAnimation":Z
    .restart local v39    # "skipAnimation":Z
    cmpl-float v22, v4, v5

    if-lez v22, :cond_5e

    .line 2086
    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZ)V

    .line 2125
    :goto_2d
    move/from16 v44, v4

    move/from16 v47, v6

    move/from16 v4, v43

    goto/16 :goto_37

    .line 2089
    :cond_5e
    cmpl-float v5, v2, v18

    if-lez v5, :cond_5f

    const/4 v5, 0x1

    goto :goto_2e

    :cond_5f
    const/4 v5, 0x0

    .line 2090
    .local v5, "isIncreasing":Z
    :goto_2e
    move/from16 v44, v4

    .end local v4    # "customAnimationRate":F
    .local v44, "customAnimationRate":F
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    nop

    if-eqz v4, :cond_60

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2091
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v4

    if-eqz v4, :cond_60

    const/4 v4, 0x1

    goto :goto_2f

    :cond_60
    const/4 v4, 0x0

    :goto_2f
    nop

    .line 2092
    .local v4, "idle":Z
    if-eqz v5, :cond_62

    if-eqz v0, :cond_62

    .line 2093
    if-eqz v4, :cond_61

    move/from16 v45, v4

    .end local v4    # "idle":Z
    .local v45, "idle":Z
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    goto :goto_30

    .line 2094
    .end local v45    # "idle":Z
    .restart local v4    # "idle":Z
    :cond_61
    move/from16 v45, v4

    .end local v4    # "idle":Z
    .restart local v45    # "idle":Z
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    :goto_30
    nop

    .end local v43    # "rampSpeed":F
    .local v4, "rampSpeed":F
    goto :goto_32

    .line 2092
    .end local v45    # "idle":Z
    .local v4, "idle":Z
    .restart local v43    # "rampSpeed":F
    :cond_62
    move/from16 v45, v4

    .line 2095
    .end local v4    # "idle":Z
    .restart local v45    # "idle":Z
    if-eqz v5, :cond_63

    if-nez v0, :cond_63

    .line 2096
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    .end local v43    # "rampSpeed":F
    .local v4, "rampSpeed":F
    goto :goto_32

    .line 2097
    .end local v4    # "rampSpeed":F
    .restart local v43    # "rampSpeed":F
    :cond_63
    if-nez v5, :cond_65

    if-eqz v0, :cond_65

    .line 2098
    if-eqz v45, :cond_64

    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    goto :goto_31

    .line 2099
    :cond_64
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    :goto_31
    nop

    .end local v43    # "rampSpeed":F
    .restart local v4    # "rampSpeed":F
    goto :goto_32

    .line 2101
    .end local v4    # "rampSpeed":F
    .restart local v43    # "rampSpeed":F
    :cond_65
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 2104
    .end local v43    # "rampSpeed":F
    .restart local v4    # "rampSpeed":F
    :goto_32
    move/from16 v46, v5

    .end local v5    # "isIncreasing":Z
    .local v46, "isIncreasing":Z
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v5}, Lcom/android/server/display/INtDisplayBrightnessController;->getHDRBrightnessAnimating()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mHdrBrightnessAnimating:Z

    .line 2105
    const/4 v5, 0x0

    .line 2106
    .local v5, "hdrBrightnessChange":Z
    move/from16 v43, v5

    .end local v5    # "hdrBrightnessChange":Z
    .local v43, "hdrBrightnessChange":Z
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v5}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v5

    const/16 v32, 0x4

    and-int/lit8 v5, v5, 0x4

    nop

    if-nez v5, :cond_67

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2107
    invoke-virtual {v5}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_66

    goto :goto_33

    :cond_66
    move/from16 v5, v43

    goto :goto_34

    .line 2108
    :cond_67
    :goto_33
    const/4 v5, 0x1

    .line 2110
    .end local v43    # "hdrBrightnessChange":Z
    .restart local v5    # "hdrBrightnessChange":Z
    :goto_34
    move/from16 v32, v5

    .end local v5    # "hdrBrightnessChange":Z
    .local v32, "hdrBrightnessChange":Z
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mSupportSdrHdrMixCompose:Z

    if-eqz v5, :cond_6a

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mHdrBrightnessAnimating:Z

    if-eqz v5, :cond_6a

    .line 2111
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v5}, Lcom/android/server/display/INtDisplayBrightnessController;->getHDRType()I

    move-result v5

    const v43, 0x3ecccccd    # 0.4f

    move/from16 v47, v6

    const/4 v6, 0x2

    .end local v6    # "brightnessIsTemporary":Z
    .local v47, "brightnessIsTemporary":Z
    if-ne v5, v6, :cond_68

    .line 2112
    move/from16 v4, v43

    .end local v4    # "rampSpeed":F
    .local v43, "rampSpeed":F
    goto :goto_36

    .line 2114
    .end local v43    # "rampSpeed":F
    .restart local v4    # "rampSpeed":F
    :cond_68
    if-eqz v46, :cond_69

    goto :goto_35

    :cond_69
    const v43, 0x3e4ccccd    # 0.2f

    :goto_35
    move/from16 v4, v43

    .end local v4    # "rampSpeed":F
    .restart local v43    # "rampSpeed":F
    goto :goto_36

    .line 2110
    .end local v43    # "rampSpeed":F
    .end local v47    # "brightnessIsTemporary":Z
    .restart local v4    # "rampSpeed":F
    .restart local v6    # "brightnessIsTemporary":Z
    :cond_6a
    move/from16 v47, v6

    .line 2116
    .end local v6    # "brightnessIsTemporary":Z
    .restart local v47    # "brightnessIsTemporary":Z
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mSupportSdrHdrMixCompose:Z

    if-eqz v5, :cond_6b

    if-eqz v32, :cond_6b

    .line 2117
    goto :goto_36

    .line 2119
    :cond_6b
    invoke-direct {v1, v2, v4, v0}, Lcom/android/server/display/DisplayPowerController;->adujstBrightnessRampRate(FFZ)F

    move-result v4

    .line 2122
    :goto_36
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFF)V

    .line 2125
    .end local v32    # "hdrBrightnessChange":Z
    .end local v45    # "idle":Z
    .end local v46    # "isIncreasing":Z
    :goto_37
    iput v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightness:F

    .line 2126
    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mLastSdrBrightness:F

    move/from16 v43, v4

    goto :goto_38

    .line 2062
    .end local v39    # "skipAnimation":Z
    .end local v44    # "customAnimationRate":F
    .end local v47    # "brightnessIsTemporary":Z
    .local v4, "customAnimationRate":F
    .restart local v6    # "brightnessIsTemporary":Z
    .restart local v43    # "rampSpeed":F
    :cond_6c
    move/from16 v44, v4

    move/from16 v47, v6

    .line 2130
    .end local v4    # "customAnimationRate":F
    .end local v6    # "brightnessIsTemporary":Z
    .restart local v44    # "customAnimationRate":F
    .restart local v47    # "brightnessIsTemporary":Z
    :goto_38
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 2131
    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v5

    .line 2132
    move v4, v7

    .end local v7    # "brightnessAdjustmentFlags":I
    .local v4, "brightnessAdjustmentFlags":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v7

    .line 2130
    move v6, v10

    move v10, v4

    move v4, v6

    move/from16 v32, v0

    move v0, v2

    move/from16 v39, v3

    move/from16 v3, v27

    move/from16 v2, v42

    move/from16 v6, v47

    move/from16 v27, v8

    move/from16 v8, v41

    .end local v41    # "unthrottledBrightnessState":F
    .end local v42    # "brightnessState":F
    .end local v47    # "brightnessIsTemporary":Z
    .local v0, "animateValue":F
    .local v2, "brightnessState":F
    .local v3, "userInitiatedChange":Z
    .local v4, "wasShortTermModelActive":Z
    .restart local v6    # "brightnessIsTemporary":Z
    .local v8, "unthrottledBrightnessState":F
    .local v10, "brightnessAdjustmentFlags":I
    .local v27, "ambientLux":F
    .local v32, "slowChange":Z
    .local v39, "sdrAnimateValue":F
    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessTrackerChanged(FZZZZZ)V

    .line 2136
    .end local v6    # "brightnessIsTemporary":Z
    .restart local v47    # "brightnessIsTemporary":Z
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v5

    invoke-direct {v1, v5, v0, v14}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v0

    .line 2138
    .end local v18    # "currentBrightness":F
    .end local v19    # "currentSdrBrightness":F
    .end local v30    # "initialRampSkip":Z
    .end local v36    # "brightnessAdjusted":Z
    .end local v37    # "hasBrightnessBuckets":Z
    .end local v38    # "isDisplayContentVisible":Z
    .end local v39    # "sdrAnimateValue":F
    .end local v40    # "wantBrightnessFast":Z
    .local v0, "brightnessAdjusted":Z
    move/from16 v6, v32

    move/from16 v19, v44

    move v5, v0

    move/from16 v7, v43

    goto :goto_39

    .line 2139
    .end local v0    # "brightnessAdjusted":Z
    .end local v32    # "slowChange":Z
    .end local v43    # "rampSpeed":F
    .end local v44    # "customAnimationRate":F
    .end local v47    # "brightnessIsTemporary":Z
    .local v2, "unthrottledBrightnessState":F
    .local v3, "brightnessState":F
    .local v4, "rampSpeed":F
    .restart local v6    # "brightnessIsTemporary":Z
    .restart local v7    # "brightnessAdjustmentFlags":I
    .local v8, "ambientLux":F
    .local v10, "wasShortTermModelActive":Z
    .local v18, "slowChange":Z
    .local v19, "customAnimationRate":F
    .local v27, "userInitiatedChange":Z
    .restart local v36    # "brightnessAdjusted":Z
    :cond_6d
    move/from16 v43, v8

    move v8, v2

    move v2, v3

    move/from16 v3, v27

    move/from16 v27, v43

    move/from16 v43, v4

    move/from16 v47, v6

    move v4, v10

    move v10, v7

    .end local v6    # "brightnessIsTemporary":Z
    .end local v7    # "brightnessAdjustmentFlags":I
    .local v2, "brightnessState":F
    .local v3, "userInitiatedChange":Z
    .local v4, "wasShortTermModelActive":Z
    .local v8, "unthrottledBrightnessState":F
    .local v10, "brightnessAdjustmentFlags":I
    .local v27, "ambientLux":F
    .restart local v43    # "rampSpeed":F
    .restart local v47    # "brightnessIsTemporary":Z
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    invoke-direct {v1, v0, v14}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v0

    move/from16 v6, v18

    move v5, v0

    move/from16 v7, v43

    .line 2143
    .end local v18    # "slowChange":Z
    .end local v36    # "brightnessAdjusted":Z
    .end local v43    # "rampSpeed":F
    .local v5, "brightnessAdjusted":Z
    .local v6, "slowChange":Z
    .local v7, "rampSpeed":F
    :goto_39
    if-eqz v5, :cond_6e

    if-nez v47, :cond_6e

    .line 2144
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 2148
    :cond_6e
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v18, v3

    .end local v3    # "userInitiatedChange":Z
    .local v18, "userInitiatedChange":Z
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v3}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    if-eqz v10, :cond_6f

    move/from16 v30, v5

    goto :goto_3a

    .line 2153
    :cond_6f
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_70

    if-eqz v21, :cond_70

    .line 2155
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v5

    .end local v5    # "brightnessAdjusted":Z
    .local v30, "brightnessAdjusted":Z
    const-string v5, "Brightness ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "] manual adjustment."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2153
    .end local v30    # "brightnessAdjusted":Z
    .restart local v5    # "brightnessAdjusted":Z
    :cond_70
    move/from16 v30, v5

    .end local v5    # "brightnessAdjusted":Z
    .restart local v30    # "brightnessAdjusted":Z
    goto :goto_3b

    .line 2148
    .end local v30    # "brightnessAdjusted":Z
    .restart local v5    # "brightnessAdjusted":Z
    :cond_71
    move/from16 v30, v5

    .line 2149
    .end local v5    # "brightnessAdjusted":Z
    .restart local v30    # "brightnessAdjusted":Z
    :goto_3a
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Brightness ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "] reason changing to: \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2150
    invoke-virtual {v5, v10}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', previous reason: \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2149
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v3}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 2160
    :goto_3b
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    if-eqz v0, :cond_74

    .line 2161
    const/4 v5, 0x2

    if-ne v15, v5, :cond_73

    .line 2162
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mHBMTracking:Z

    nop

    if-nez v0, :cond_72

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 2163
    invoke-interface {v0}, Lcom/android/server/display/INtDisplayBrightnessController;->getNormalBrightnessMax()F

    move-result v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_72

    .line 2164
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mHBMTracking:Z

    .line 2165
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    invoke-interface {v0, v5}, Lcom/android/server/tracker/INtPowerBehavior;->notifyHBMState(Z)V

    goto :goto_3c

    .line 2166
    :cond_72
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mHBMTracking:Z

    nop

    if-eqz v0, :cond_74

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    .line 2167
    invoke-interface {v0}, Lcom/android/server/display/INtDisplayBrightnessController;->getNormalBrightnessMax()F

    move-result v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_74

    .line 2168
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mHBMTracking:Z

    .line 2169
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    invoke-interface {v3, v0}, Lcom/android/server/tracker/INtPowerBehavior;->notifyHBMState(Z)V

    goto :goto_3c

    .line 2171
    :cond_73
    const/4 v5, 0x2

    if-eq v15, v5, :cond_74

    .line 2172
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mHBMTracking:Z

    if-eqz v0, :cond_74

    .line 2173
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mHBMTracking:Z

    .line 2174
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    invoke-interface {v3, v0}, Lcom/android/server/tracker/INtPowerBehavior;->notifyHBMState(Z)V

    .line 2183
    :cond_74
    :goto_3c
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    move v3, v11

    move-object v5, v12

    .end local v11    # "mustNotify":Z
    .end local v12    # "displayBrightnessFollowers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayPowerController;>;"
    .local v3, "mustNotify":Z
    .local v5, "displayBrightnessFollowers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayPowerController;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lcom/android/server/display/brightness/BrightnessEvent;->setTime(J)V

    .line 2184
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setBrightness(F)V

    .line 2185
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2186
    invoke-virtual {v11, v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v11

    .line 2185
    invoke-virtual {v0, v11}, Lcom/android/server/display/brightness/BrightnessEvent;->setNits(F)V

    .line 2187
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v11

    .line 2188
    .local v11, "hbmMax":F
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 2189
    .local v12, "clampedMax":F
    nop

    .line 2190
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v0

    .line 2189
    move/from16 v32, v3

    move-object/from16 v22, v5

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .end local v3    # "mustNotify":Z
    .end local v5    # "displayBrightnessFollowers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayPowerController;>;"
    .local v22, "displayBrightnessFollowers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayPowerController;>;"
    .local v32, "mustNotify":Z
    invoke-static {v3, v5, v0, v12, v2}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v3

    .line 2192
    .local v3, "brightnessOnAvailableScale":F
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    nop

    if-eqz v0, :cond_75

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 2193
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsActivatedForEvenDimmer()Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, 0x1

    goto :goto_3d

    :cond_75
    const/4 v0, 0x0

    :goto_3d
    move v5, v0

    .line 2194
    .local v5, "evenDimmerModeOn":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2195
    invoke-static {v3}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v25

    const/high16 v36, 0x447a0000    # 1000.0f

    mul-float v25, v25, v36

    const/high16 v36, 0x41200000    # 10.0f

    div-float v25, v25, v36

    .line 2194
    move/from16 v42, v2

    .end local v2    # "brightnessState":F
    .restart local v42    # "brightnessState":F
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPercent(F)V

    .line 2197
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v0, v8}, Lcom/android/server/display/brightness/BrightnessEvent;->setUnclampedBrightness(F)V

    .line 2198
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayId(Ljava/lang/String;)V

    .line 2199
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayName(Ljava/lang/String;)V

    .line 2200
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v0, v15}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayState(I)V

    .line 2201
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayStateReason(I)V

    .line 2202
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayPolicy(I)V

    .line 2203
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setReason(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 2207
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v2}, Lcom/android/server/display/INtDisplayBrightnessController;->getCurrentBrightnessMax()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMax(F)V

    .line 2208
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v2}, Lcom/android/server/display/INtDisplayBrightnessController;->getHighBrightnessMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMode(I)V

    .line 2210
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v2

    .line 2211
    move/from16 v25, v2

    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    or-int v2, v25, v2

    .line 2212
    move/from16 v25, v2

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v2, :cond_76

    const/16 v2, 0x20

    goto :goto_3e

    :cond_76
    const/4 v2, 0x0

    :goto_3e
    or-int v2, v25, v2

    .line 2213
    if-eqz v5, :cond_77

    const/16 v25, 0x40

    goto :goto_3f

    :cond_77
    const/16 v25, 0x0

    :goto_3f
    or-int v2, v2, v25

    .line 2210
    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    .line 2214
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v2, :cond_78

    .line 2215
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsStrength()I

    move-result v2

    goto :goto_40

    :cond_78
    move/from16 v2, v26

    .line 2214
    :goto_40
    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setRbcStrength(I)V

    .line 2216
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPowerFactor(F)V

    .line 2217
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v0, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setWasShortTermModelActive(Z)Z

    .line 2218
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2219
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v2

    .line 2218
    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayBrightnessStrategyName(Ljava/lang/String;)V

    .line 2220
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2221
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v2

    .line 2220
    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setAutomaticBrightnessEnabled(Z)V

    .line 2222
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v0, v6}, Lcom/android/server/display/brightness/BrightnessEvent;->setSlowChange(Z)V

    .line 2223
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v0, v7}, Lcom/android/server/display/brightness/BrightnessEvent;->setRampSpeed(F)V

    .line 2226
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2227
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v0

    const/4 v2, 0x7

    nop

    if-ne v0, v2, :cond_79

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2228
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v0

    if-ne v0, v2, :cond_79

    const/4 v0, 0x1

    goto :goto_41

    :cond_79
    const/4 v0, 0x0

    :goto_41
    move v2, v0

    .line 2231
    .local v2, "tempToTempTransition":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2232
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v0

    move/from16 v25, v2

    .end local v2    # "tempToTempTransition":Z
    .local v25, "tempToTempTransition":Z
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_7a

    const/4 v0, 0x1

    goto :goto_42

    :cond_7a
    const/4 v0, 0x0

    :goto_42
    move v2, v0

    .line 2234
    .local v2, "isRbcEvent":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    move/from16 v26, v2

    .end local v2    # "isRbcEvent":Z
    .local v26, "isRbcEvent":Z
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z

    move-result v0

    if-nez v0, :cond_7b

    if-eqz v25, :cond_7c

    :cond_7b
    if-eqz v10, :cond_81

    .line 2236
    :cond_7c
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setInitialBrightness(F)V

    .line 2237
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 2238
    new-instance v0, Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 2241
    .local v0, "newEvent":Lcom/android/server/display/brightness/BrightnessEvent;
    invoke-virtual {v0, v10}, Lcom/android/server/display/brightness/BrightnessEvent;->setAdjustmentFlags(I)V

    .line 2242
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v2

    if-eqz v21, :cond_7d

    .line 2243
    const/16 v36, 0x8

    goto :goto_43

    :cond_7d
    const/16 v36, 0x0

    :goto_43
    or-int v2, v2, v36

    .line 2242
    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    .line 2244
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    move/from16 v36, v3

    move/from16 v37, v4

    const/4 v3, 0x0

    .end local v3    # "brightnessOnAvailableScale":F
    .end local v4    # "wasShortTermModelActive":Z
    .local v36, "brightnessOnAvailableScale":F
    .local v37, "wasShortTermModelActive":Z
    invoke-virtual {v0, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    if-nez v21, :cond_7e

    .line 2247
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_7f

    .line 2248
    :cond_7e
    invoke-direct {v1, v0, v8, v14}, Lcom/android/server/display/DisplayPowerController;->logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;FLcom/android/server/display/DisplayBrightnessState;)V

    .line 2250
    :cond_7f
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v2, :cond_80

    .line 2251
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 2253
    :cond_80
    if-eqz v26, :cond_82

    .line 2254
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto :goto_44

    .line 2234
    .end local v0    # "newEvent":Lcom/android/server/display/brightness/BrightnessEvent;
    .end local v36    # "brightnessOnAvailableScale":F
    .end local v37    # "wasShortTermModelActive":Z
    .restart local v3    # "brightnessOnAvailableScale":F
    .restart local v4    # "wasShortTermModelActive":Z
    :cond_81
    move/from16 v36, v3

    move/from16 v37, v4

    .line 2260
    .end local v3    # "brightnessOnAvailableScale":F
    .end local v4    # "wasShortTermModelActive":Z
    .restart local v36    # "brightnessOnAvailableScale":F
    .restart local v37    # "wasShortTermModelActive":Z
    :cond_82
    :goto_44
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_84

    .line 2261
    const/4 v2, 0x2

    if-ne v15, v2, :cond_83

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2262
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 2263
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    const/4 v2, 0x0

    goto :goto_45

    .line 2265
    :cond_83
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    goto :goto_45

    .line 2260
    :cond_84
    const/4 v2, 0x0

    .line 2273
    :goto_45
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_86

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v0, :cond_86

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    nop

    if-eqz v0, :cond_85

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2275
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    nop

    if-nez v0, :cond_86

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 2276
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_86

    :cond_85
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 2277
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_86

    const/4 v0, 0x1

    goto :goto_46

    :cond_86
    move v0, v2

    :goto_46
    move v3, v0

    .line 2278
    .local v3, "ready":Z
    nop

    nop

    if-eqz v3, :cond_87

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2279
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_87

    const/4 v0, 0x1

    goto :goto_47

    :cond_87
    move v0, v2

    :goto_47
    move v4, v0

    .line 2282
    .local v4, "finished":Z
    if-eqz v3, :cond_88

    const/4 v0, 0x1

    if-eq v15, v0, :cond_88

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v2, v0, :cond_88

    .line 2284
    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2285
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn(I)V

    .line 2289
    :cond_88
    if-nez v4, :cond_89

    .line 2290
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 2294
    :cond_89
    if-eqz v3, :cond_8c

    if-eqz v32, :cond_8c

    .line 2296
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2297
    :try_start_3
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v0, :cond_8b

    .line 2298
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 2300
    sget-boolean v24, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v24, :cond_8a

    .line 2301
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v35, v3

    .end local v3    # "ready":Z
    .local v35, "ready":Z
    :try_start_4
    const-string v3, "Display ready!"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 2304
    :catchall_1
    move-exception v0

    goto :goto_49

    .end local v35    # "ready":Z
    .restart local v3    # "ready":Z
    :catchall_2
    move-exception v0

    move/from16 v35, v3

    .end local v3    # "ready":Z
    .restart local v35    # "ready":Z
    goto :goto_49

    .line 2300
    .end local v35    # "ready":Z
    .restart local v3    # "ready":Z
    :cond_8a
    move/from16 v35, v3

    .end local v3    # "ready":Z
    .restart local v35    # "ready":Z
    goto :goto_48

    .line 2297
    .end local v35    # "ready":Z
    .restart local v3    # "ready":Z
    :cond_8b
    move/from16 v35, v3

    .line 2304
    .end local v3    # "ready":Z
    .restart local v35    # "ready":Z
    :goto_48
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2305
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_4a

    .line 2304
    :goto_49
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 2294
    .end local v35    # "ready":Z
    .restart local v3    # "ready":Z
    :cond_8c
    move/from16 v35, v3

    .line 2309
    .end local v3    # "ready":Z
    .restart local v35    # "ready":Z
    :goto_4a
    if-eqz v4, :cond_8d

    .line 2310
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    .line 2314
    :cond_8d
    const/4 v2, 0x2

    if-eq v15, v2, :cond_8e

    const/4 v0, 0x1

    goto :goto_4b

    :cond_8e
    const/4 v0, 0x0

    :goto_4b
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 2316
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v9, v0, :cond_8f

    .line 2317
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    .line 2319
    :cond_8f
    return-void

    .line 1569
    .end local v4    # "finished":Z
    .end local v5    # "evenDimmerModeOn":Z
    .end local v6    # "slowChange":Z
    .end local v7    # "rampSpeed":F
    .end local v9    # "previousPolicy":I
    .end local v10    # "brightnessAdjustmentFlags":I
    .end local v12    # "clampedMax":F
    .end local v13    # "stateAndReason":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "clampedState":Lcom/android/server/display/DisplayBrightnessState;
    .end local v15    # "state":I
    .end local v16    # "displayBrightnessState":Lcom/android/server/display/DisplayBrightnessState;
    .end local v17    # "rawBrightnessState":F
    .end local v18    # "userInitiatedChange":Z
    .end local v19    # "customAnimationRate":F
    .end local v20    # "allowAutoBrightnessWhileDozing":Z
    .end local v21    # "userSetBrightnessChanged":Z
    .end local v22    # "displayBrightnessFollowers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayPowerController;>;"
    .end local v23    # "useDozeBrightness":Z
    .end local v25    # "tempToTempTransition":Z
    .end local v26    # "isRbcEvent":Z
    .end local v27    # "ambientLux":F
    .end local v28    # "autoBrightnessState":I
    .end local v30    # "brightnessAdjusted":Z
    .end local v31    # "currentBrightnessSetting":F
    .end local v32    # "mustNotify":Z
    .end local v33    # "updateScreenBrightnessSetting":Z
    .end local v34    # "mustInitialize":Z
    .end local v35    # "ready":Z
    .end local v36    # "brightnessOnAvailableScale":F
    .end local v37    # "wasShortTermModelActive":Z
    .end local v42    # "brightnessState":F
    .end local v47    # "brightnessIsTemporary":Z
    .local v8, "mustInitialize":Z
    .local v11, "mustNotify":Z
    :catchall_3
    move-exception v0

    move/from16 v34, v8

    move/from16 v32, v11

    move/from16 v2, v32

    move/from16 v3, v34

    .end local v8    # "mustInitialize":Z
    .end local v11    # "mustNotify":Z
    .restart local v32    # "mustNotify":Z
    .restart local v34    # "mustInitialize":Z
    goto :goto_4c

    .end local v32    # "mustNotify":Z
    .end local v34    # "mustInitialize":Z
    .local v2, "mustNotify":Z
    .restart local v8    # "mustInitialize":Z
    :catchall_4
    move-exception v0

    move/from16 v34, v8

    move/from16 v3, v34

    .end local v8    # "mustInitialize":Z
    .local v3, "mustInitialize":Z
    :goto_4c
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method


# virtual methods
.method public addDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerController;)V
    .locals 3
    .param p1, "follower"    # Lcom/android/server/display/DisplayPowerController;

    .line 3163
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3165
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 3166
    monitor-exit v0

    .line 3167
    return-void

    .line 3166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3190
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3191
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3192
    const-string v1, "Display Power Controller:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3193
    const-string v1, "-------------------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLeadDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayBrightnessFollowers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3200
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3201
    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3208
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3209
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsDisplayInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    .line 3217
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.adjustedBrightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmTransitionPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMaxReason ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessReason ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 3237
    return-void

    .line 3232
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3206
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez v0, :cond_0

    .line 920
    const/4 v0, 0x0

    return-object v0

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getAutoBrightnessLevels(I)[F
    .locals 4
    .param p1, "mode"    # I

    .line 2386
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2389
    .local v0, "preset":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevels(II)[F

    move-result-object v1

    return-object v1
.end method

.method public getAutoBrightnessLuxLevels(I)[F
    .locals 4
    .param p1, "mode"    # I

    .line 2394
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2397
    .local v0, "preset":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevelsLux(II)[F

    move-result-object v1

    return-object v1
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "includePackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez v0, :cond_0

    .line 873
    const/4 v0, 0x0

    return-object v0

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .locals 11

    .line 2423
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    .line 2424
    :try_start_0
    new-instance v2, Landroid/hardware/display/BrightnessInfo;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v3, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v4, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v5, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v6, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v7, v0, Landroid/util/MutableInt;->value:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v8, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v9, v0, Landroid/util/MutableInt;->value:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    iget v0, v0, Landroid/util/MutableInt;->value:I

    const/4 v10, 0x6

    if-ne v0, v10, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v2 .. v10}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFIZ)V

    monitor-exit v1

    return-object v2

    .line 2434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCameraBrightnessBoostState()Z
    .locals 2

    .line 2418
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentCameraBoostFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_0

    .line 1030
    const/4 v0, 0x0

    return-object v0

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    .line 3090
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    return v0
.end method

.method public getDozeBrightnessForOffload()F
    .locals 2

    .line 3065
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLeadDisplayId()I
    .locals 1

    .line 3094
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    return v0
.end method

.method public getScreenBrightnessSetting()F
    .locals 1

    .line 3061
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v0

    return v0
.end method

.method public ignoreProximitySensorUntilChanged()V
    .locals 1

    .line 2356
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->ignoreProximitySensorUntilChanged()V

    .line 2357
    return-void
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorAvailable()Z

    move-result v0

    return v0
.end method

.method public onBootCompleted()V
    .locals 4

    .line 2438
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2439
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2442
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v1}, Lcom/android/server/display/INtDisplayBrightnessController;->onBootCompleted()V

    .line 2444
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;I)V
    .locals 17
    .param p1, "hbmMetadata"    # Lcom/android/server/display/HighBrightnessModeMetadata;
    .param p2, "leadDisplayId"    # I

    .line 1044
    move-object/from16 v1, p0

    move/from16 v14, p2

    iput v14, v1, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 1045
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    .line 1046
    .local v4, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v4, :cond_0

    .line 1047
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Device is null in DisplayPowerController for display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1048
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return-void

    .line 1052
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    .line 1053
    .local v5, "uniqueId":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v6

    .line 1054
    .local v6, "displayName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v7

    .line 1055
    .local v7, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v8

    .line 1056
    .local v8, "token":Landroid/os/IBinder;
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v9

    .line 1057
    .local v9, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v2

    .line 1058
    .local v2, "isEnabled":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v3

    .line 1059
    .local v3, "isInTransition":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1060
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1061
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v10, 0x1

    if-ne v0, v10, :cond_1

    :goto_0
    move v11, v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :goto_1
    nop

    .line 1062
    .local v11, "isDisplayInternal":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1063
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v12, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 1064
    .local v12, "thermalBrightnessThrottlingDataId":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1065
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPowerThrottlingDataIdLocked()Ljava/lang/String;

    move-result-object v13

    .line 1067
    .local v13, "powerThrottlingDataId":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayPowerController;ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 1108
    move/from16 v16, v2

    .end local v2    # "isEnabled":Z
    .local v16, "isEnabled":Z
    invoke-interface {v10}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 1067
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1109
    return-void
.end method

.method public onSwitchUser(IIF)V
    .locals 4
    .param p1, "newUserId"    # I
    .param p2, "userSerial"    # I
    .param p3, "newBrightness"    # F

    .line 879
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 880
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 881
    return-void
.end method

.method public overrideDozeScreenState(II)V
    .locals 4
    .param p1, "displayState"    # I
    .param p2, "reason"    # I

    .line 989
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New offload doze override: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-eqz v0, :cond_2

    .line 991
    invoke-static {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isOffloadDozeOverrideHoldsWakelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingOverrideDozeScreenStateLocked:I

    .line 999
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 1010
    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    .line 1000
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 999
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1012
    :cond_2
    :goto_0
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    .line 932
    :cond_0
    return-void
.end method

.method postBrightnessChangeRunnable()V
    .locals 2

    .line 2518
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2519
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2521
    :cond_0
    return-void
.end method

.method public removeDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerController;)V
    .locals 5
    .param p1, "follower"    # Lcom/android/server/display/DisplayPowerController;

    .line 3170
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3172
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v2, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda15;

    invoke-direct {v2, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 3174
    invoke-interface {v3}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v3

    .line 3172
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 3175
    monitor-exit v0

    .line 3176
    return-void

    .line 3175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .line 951
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPowerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", waitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 957
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 958
    monitor-exit v0

    return v2

    .line 985
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 962
    invoke-virtual {v1, p2}, Lcom/android/server/display/DisplayPowerProximityStateController;->setPendingWaitForNegativeProximityLocked(Z)Z

    move-result v1

    .line 964
    .local v1, "changed":Z
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v3, :cond_2

    .line 965
    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 966
    const/4 v1, 0x1

    goto :goto_0

    .line 967
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 968
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 969
    const/4 v1, 0x1

    .line 972
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 973
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 974
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_4

    .line 975
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 976
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 979
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisplayPowerRequest changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", waitForNegativeProximity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    .line 985
    .end local v1    # "changed":Z
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAmbientColorTemperatureOverride(F)V
    .locals 2
    .param p1, "cct"    # F

    .line 3871
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3872
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3873
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3874
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3875
    return-void
.end method

.method public setAutoBrightnessLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3853
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 3854
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    .line 3856
    :cond_0
    return-void
.end method

.method public setAutomaticScreenBrightnessMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1416
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1417
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1418
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1419
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1420
    return-void
.end method

.method public setBrightness(F)V
    .locals 3
    .param p1, "brightness"    # F

    .line 3072
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 3073
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v2

    .line 3072
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    .line 3075
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessExtensionSupport:Z

    if-eqz v0, :cond_0

    .line 3076
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v0, p1}, Lcom/android/server/display/INtDisplayBrightnessController;->bindercallSetBrightness(F)V

    .line 3079
    :cond_0
    return-void
.end method

.method public setBrightness(FI)V
    .locals 3
    .param p1, "brightness"    # F
    .param p2, "userSerial"    # I

    .line 3085
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 3086
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v2

    .line 3085
    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FIF)V

    .line 3087
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 3
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "shouldResetShortTermModel"    # Z

    .line 2361
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2362
    nop

    .line 2361
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2363
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2364
    return-void
.end method

.method public setBrightnessFromOffload(F)V
    .locals 4
    .param p1, "brightness"    # F

    .line 2379
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2380
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2379
    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2381
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2382
    return-void
.end method

.method public setBrightnessOverrideRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;

    .line 1016
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1017
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1018
    return-void
.end method

.method public setBrightnessToFollow(FFFZ)V
    .locals 2
    .param p1, "leadDisplayBrightness"    # F
    .param p2, "nits"    # F
    .param p3, "ambientLux"    # F
    .param p4, "slowChange"    # Z

    .line 3099
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0, p3}, Lcom/android/server/display/BrightnessRangeController;->onAmbientLuxChange(F)V

    .line 3102
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNtBrightnessController:Lcom/android/server/display/INtDisplayBrightnessController;

    invoke-interface {v0, p3}, Lcom/android/server/display/INtDisplayBrightnessController;->onAmbientLuxChange(F)V

    .line 3105
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 3106
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(FZ)V

    goto :goto_0

    .line 3108
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromNits(F)F

    move-result v0

    .line 3109
    .local v0, "brightness":F
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3110
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1, v0, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(FZ)V

    goto :goto_0

    .line 3113
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(FZ)V

    .line 3117
    .end local v0    # "brightness":F
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3118
    return-void
.end method

.method public setCameraBrightnessBoost(Ljava/lang/String;F)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "boostFactor"    # F

    .line 2402
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const-string v1, "DisplayPowerController"

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 2406
    :cond_1
    const-string v0, "com.nothing.camera"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app request setCameraBrightnessBoost boostFactor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2409
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2410
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2411
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2413
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 2403
    :goto_0
    const-string v0, "boostFactor is abnormal"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    return-void
.end method

.method public setDisplayOffloadSession(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 1021
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-ne p1, v0, :cond_0

    .line 1022
    return-void

    .line 1024
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 1025
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 1026
    return-void
.end method

.method public setDisplayWhiteBalanceLoggingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 3864
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3865
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3866
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3867
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3868
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 4
    .param p1, "adjustment"    # F

    .line 2373
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2374
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2373
    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2375
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2376
    return-void
.end method

.method public setTemporaryBrightness(F)V
    .locals 4
    .param p1, "brightness"    # F

    .line 2367
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2368
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2367
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2369
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2370
    return-void
.end method

.method public stop()V
    .locals 5

    .line 1118
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1119
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearDisplayBrightnessFollowersLocked()V

    .line 1121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 1122
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1123
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v3}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1125
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    goto :goto_0

    .line 1132
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1129
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->stop()V

    .line 1131
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1132
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 1133
    return-void

    .line 1132
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stylusGestureStarted(J)V
    .locals 7
    .param p1, "eventTimeNanoSeconds"    # J

    .line 3619
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    .line 3620
    .local v0, "eventTimeMs":J
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 3622
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3624
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v4}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0x13

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 3625
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3626
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    .line 3628
    :cond_1
    return-void

    .line 3625
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public updateBrightness()V
    .locals 0

    .line 2348
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2349
    return-void
.end method

.method public updateWhiteBalance()V
    .locals 0

    .line 3860
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3861
    return-void
.end method
