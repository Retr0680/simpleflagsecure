.class public Lcom/android/server/alarm/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;,
        Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;,
        Lcom/android/server/alarm/AlarmManagerService$Injector;,
        Lcom/android/server/alarm/AlarmManagerService$Constants;,
        Lcom/android/server/alarm/AlarmManagerService$Stats;,
        Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;,
        Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;,
        Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$AlarmThread;,
        Lcom/android/server/alarm/AlarmManagerService$LocalService;,
        Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;,
        Lcom/android/server/alarm/AlarmManagerService$FilterStats;,
        Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/alarm/AlarmManagerService$InFlight;,
        Lcom/android/server/alarm/AlarmManagerService$ShellCmd;,
        Lcom/android/server/alarm/AlarmManagerService$DispatchPriority;,
        Lcom/android/server/alarm/AlarmManagerService$IdleDispatchEntry;
    }
.end annotation


# static fields
.field static final ACTIVE_INDEX:I = 0x0

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field static final DEBUG_BG_LIMIT:Z = false

.field static final DEBUG_LISTENER_CALLBACK:Z = false

.field static final DEBUG_STANDBY:Z = false

.field static final DEBUG_WAKELOCK:Z = false

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final FREQUENT_INDEX:I = 0x2

.field static final INDEFINITE_DELAY:J = 0x757b12c00L

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field static final NEVER_INDEX:I = 0x4

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIORITY_NORMAL:I = 0x2

.field static final PRIORITY_SYSTEM:I = 0x0

.field static final PRIORITY_WAKEUP:I = 0x1

.field static final RARE_INDEX:I = 0x3

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field static final RECORD_DEVICE_IDLE_ALARMS:Z = false

.field private static final REMOVAL_HISTORY_SIZE_PER_UID:I = 0xa

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TEMPORARY_QUOTA_DURATION:J = 0x5265c00L

.field static final TICK_HISTORY_DEPTH:I = 0xa

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TIME_TICK_TAG:Ljava/lang/String; = "TIME_TICK"

.field static final WORKING_INDEX:I = 0x1

.field static final localLOGV:Z = false


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

.field private final mAlarmClockUpdater:Ljava/lang/Runnable;

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmStore:Lcom/android/server/alarm/AlarmStore;

.field mAlarmsPerUid:Landroid/util/SparseIntArray;

.field mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field final mAllowWhileIdleDispatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/AlarmManagerService$IdleDispatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field mAppOps:Landroid/app/AppOpsManager;

.field mAppStandbyParole:Z

.field private mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field private final mBackgroundIntent:Landroid/content/Intent;

.field private mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

.field mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

.field mDateChangeSender:Landroid/app/PendingIntent;

.field final mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

.field volatile mExactAlarmCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

.field mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private final mInFlightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerInternal$InFlightListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

.field mInteractive:Z

.field mLastAlarmDeliveryTime:J

.field mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

.field private final mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

.field private mLastTickReceived:J

.field private mLastTickSet:J

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field private mLastTrigger:J

.field private mLastWakeup:J

.field private mListenerCount:I

.field mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mListenerFinishCount:I

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field private volatile mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeUpSetAt:J

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field private mNextTickHistory:I

.field mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

.field private mNextWakeUpSetAt:J

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field private mNtWakelockCheck:Lcom/android/server/power/INtWakelockCheck;

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

.field mOptsWithFgs:Landroid/app/BroadcastOptions;

.field mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

.field mOptsWithoutFgs:Landroid/app/BroadcastOptions;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mPendingBackgroundAlarms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field private final mRemovalHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRoleManager:Landroid/app/role/RoleManager;

.field private mSendCount:I

.field private mSendFinishCount:I

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field private mStartUserBeforeScheduledAlarms:Z

.field private final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field mSystemUiUid:I

.field mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

.field private final mTickHistory:[J

.field mTimeTickIntent:Landroid/content/Intent;

.field mTimeTickOptions:Landroid/os/Bundle;

.field mTimeTickTrigger:Landroid/app/IAlarmListener;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$3cblH7eOf-8k0i2H4hIA4DAIYbY(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$4pmnbsfPmlq7li_sX-YF8MBRnSs(Lcom/android/server/alarm/AlarmManagerService;ILcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeForStoppedLocked$19(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ct09kLSBsw8yFCFj8quDlIWNG7k(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$3(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Cz2x8Gr-RoiqfJpDuNZEfBsi-Zk(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$10(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FGaKilfo5wHxIMcbDNdy1Ruhrpg(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeAlarmsInternalLocked$15(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HZ9MHeHvzmwdrKhw5oBZt-U8er0(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$interactiveStateChangedLocked$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$L82siL18ro7TYb8gZPPKO1HL33E(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$new$1(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MERpfNaCHJyDKltYJNz7MGK6mHg(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MXDdNWw9OpgP0hi7S7zvZJwZQ4I(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$triggerAlarmsLocked$22(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OC5GqY2hlZMiBRf8m9Db4bIdL_Q(ILcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeUserLocked$20(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PWZJeVAGbJJbJ2jrjucyiyPbD7Y(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$12(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q_bRrXlgc9swPPcdNRa7rIVQfiE(Lcom/android/server/alarm/AlarmManagerService;[I[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onStart$6([I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QgyF8PZON2kLE4tEaY61PTMen4Q(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$4(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VK0Sa8MOUCAMEGsVxaDJoO0qkwg(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeLocked$16(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WZFEMPWy81l-szSzhRJHOwNjF-M([ILcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeExactListenerAlarms$7([ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XLrIbS2bf-akyTTaCua-_4vntFc(ILcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeLocked$17(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XXqljoa0_KcQujUWwiqvIoQmRac(Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeLocked$18(Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_BCHKjocSVhDv0gfpbWpLMrPJHs(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onUserStarting$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bN-p56GdkwdB3Yk6RnyjKfw-OZA(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$11(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fFF1Wf09nFoV5Ia8NUvmuac59jI(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeAlarmsInternalLocked$14(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fb3eUBahHCOZ5LgT4KvmXrDP9iU(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmStore;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onBootPhase$9()Lcom/android/server/alarm/AlarmStore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gTBrLqI8lRe-eLGhoAoKns8vULU(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reorderAlarmsBasedOnStandbyBuckets$5(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lO7FlqYCXbhzV969DpFL5GaI-Ko(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$2(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xOVJiukLnAqCBEmoGpBLpPibzW8(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeExactAlarmsOnPermissionRevoked$13(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundIntent(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/Intent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryStatsInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/BatteryStatsInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInFlightListeners(Lcom/android/server/alarm/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPriorityAlarmDispatch(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemovalHistory(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSendCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartUserBeforeScheduledAlarms(Lcom/android/server/alarm/AlarmManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickHistory(Lcom/android/server/alarm/AlarmManagerService;)[J
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastTickReceived(Lcom/android/server/alarm/AlarmManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTickSet(Lcom/android/server/alarm/AlarmManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTrigger(Lcom/android/server/alarm/AlarmManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastWakeup(Lcom/android/server/alarm/AlarmManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmListenerCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSendCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdecrementAlarmCount(Lcom/android/server/alarm/AlarmManagerService;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAlarmOperationBundle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmOperationBundle(Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misIdlingImpl(Lcom/android/server/alarm/AlarmManagerService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->isIdlingImpl()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misScheduleExactAlarmDeniedByDefault(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogAlarmBatchDelivered(Lcom/android/server/alarm/AlarmManagerService;IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->logAlarmBatchDelivered(IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyBroadcastAlarmCompleteLocked(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyBroadcastAlarmPendingLocked(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveAlarmsInternalLocked(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/function/Predicate;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveExactListenerAlarms(Lcom/android/server/alarm/AlarmManagerService;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeExactListenerAlarms([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendScheduleExactAlarmPermissionStateChangedBroadcast(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smclose(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->close(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetNextAlarm(JI)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smincrement(Landroid/util/SparseIntArray;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->increment(Landroid/util/SparseIntArray;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sminit()J
    .locals 2

    .line 0
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smisAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smset(JIJJ)I
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/server/alarm/AlarmManagerService;->set(JIJJ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smwaitForAlarm(J)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->waitForAlarm(J)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    const/high16 v1, 0x21000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1342
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V

    .line 1343
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 1337
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 254
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 273
    nop

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 281
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 286
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 299
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 306
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 316
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 317
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 319
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 359
    new-instance v1, Lcom/android/internal/util/jobs/StatLogger;

    const-string v2, "REORDER_ALARMS_FOR_STANDBY"

    const-string v3, "HAS_SCHEDULE_EXACT_ALARM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Alarm manager stats"

    invoke-direct {v1, v3, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 364
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 365
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    .line 366
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 367
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 368
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    .line 369
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    .line 378
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 381
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 383
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 387
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    .line 391
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1257
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 1332
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 1333
    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 1783
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1786
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 1787
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1788
    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 2717
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 5123
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 5211
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    .line 5213
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 5215
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 5217
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 1338
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 1339
    return-void
.end method

.method static addClampPositive(JJ)J
    .locals 5
    .param p0, "val1"    # J
    .param p2, "val2"    # J

    .line 1454
    add-long v0, p0, p2

    .line 1455
    .local v0, "val":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 1456
    return-wide v0

    .line 1457
    :cond_0
    cmp-long v4, p0, v2

    if-ltz v4, :cond_1

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    .line 1459
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2

    .line 1461
    :cond_1
    return-wide v2
.end method

.method private adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .locals 11
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2378
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 2379
    .local v0, "nowElapsed":J
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2380
    const/4 v2, 0x0

    return v2

    .line 2383
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    goto/16 :goto_4

    .line 2389
    :cond_2
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 2391
    move-wide v4, v0

    .local v4, "batterySaverPolicyElapsed":J
    goto :goto_3

    .line 2392
    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_3
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2394
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2398
    .local v2, "userId":I
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    .line 2399
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2400
    .local v4, "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2401
    .local v5, "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .local v7, "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    goto :goto_0

    .line 2403
    .end local v4    # "quota":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :cond_4
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2404
    .restart local v4    # "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2405
    .restart local v5    # "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2407
    .restart local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :goto_0
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v8

    .line 2409
    .local v8, "dispatchesInHistory":I
    if-ge v8, v4, :cond_5

    .line 2411
    move-wide v9, v0

    move-wide v4, v9

    .local v9, "batterySaverPolicyElapsed":J
    goto :goto_1

    .line 2413
    .end local v9    # "batterySaverPolicyElapsed":J
    :cond_5
    iget-object v9, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v9, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v9

    add-long/2addr v9, v5

    move-wide v4, v9

    .line 2416
    .end local v2    # "userId":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    .end local v8    # "dispatchesInHistory":I
    .local v4, "batterySaverPolicyElapsed":J
    :goto_1
    goto :goto_3

    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_6
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    .line 2417
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    .line 2418
    .local v7, "lastDispatch":J
    cmp-long v2, v7, v5

    if-nez v2, :cond_7

    .line 2419
    move-wide v4, v0

    goto :goto_2

    .line 2420
    :cond_7
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v4, v7

    :goto_2
    nop

    .line 2421
    .end local v7    # "lastDispatch":J
    .restart local v4    # "batterySaverPolicyElapsed":J
    goto :goto_3

    .line 2423
    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_8
    const-wide v4, 0x757b12c00L

    add-long/2addr v4, v0

    .line 2425
    .restart local v4    # "batterySaverPolicyElapsed":J
    :goto_3
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2

    .line 2385
    .end local v4    # "batterySaverPolicyElapsed":J
    :goto_4
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2
.end method

.method private adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z
    .locals 13
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2500
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 2501
    .local v0, "nowElapsed":J
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    if-eqz v2, :cond_1

    :cond_0
    goto/16 :goto_2

    .line 2505
    :cond_1
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 2506
    .local v2, "sourcePackage":Ljava/lang/String;
    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2507
    .local v4, "sourceUserId":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v5, v2, v4, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v5

    .line 2510
    .local v5, "standbyBucket":I
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v6

    .line 2512
    .local v6, "wakeupsInWindow":I
    const/16 v7, 0x2d

    if-ne v5, v7, :cond_3

    .line 2516
    if-lez v6, :cond_6

    .line 2517
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v8, v8, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-virtual {v7, v2, v4, v8}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v7

    .line 2519
    .local v7, "lastWakeupTime":J
    sub-long v9, v0, v7

    iget-object v11, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    .line 2520
    iget-object v9, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v9, v9, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    add-long/2addr v9, v7

    invoke-virtual {p1, v3, v9, v10}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2519
    :cond_2
    nop

    .line 2523
    .end local v7    # "lastWakeupTime":J
    goto :goto_1

    .line 2525
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v7

    .line 2526
    .local v7, "quotaForBucket":I
    if-lt v6, v7, :cond_6

    .line 2528
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v8, v2, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->hasQuota(Ljava/lang/String;IJ)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2531
    iput-boolean v3, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 2532
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2534
    :cond_4
    if-gtz v7, :cond_5

    .line 2536
    const-wide v8, 0x757b12c00L

    add-long/2addr v8, v0

    .local v8, "minElapsed":J
    goto :goto_0

    .line 2540
    .end local v8    # "minElapsed":J
    :cond_5
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v8, v2, v4, v7}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v8

    .line 2542
    .local v8, "t":J
    iget-object v10, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v10, v10, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    add-long/2addr v10, v8

    move-wide v8, v10

    .line 2544
    .local v8, "minElapsed":J
    :goto_0
    invoke-virtual {p1, v3, v8, v9}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2548
    .end local v7    # "quotaForBucket":I
    .end local v8    # "minElapsed":J
    :cond_6
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 2549
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2502
    .end local v2    # "sourcePackage":Ljava/lang/String;
    .end local v4    # "sourceUserId":I
    .end local v5    # "standbyBucket":I
    .end local v6    # "wakeupsInWindow":I
    :goto_2
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2
.end method

.method private adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z
    .locals 13
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2445
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 2446
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v2, p1, :cond_1

    :cond_0
    goto/16 :goto_4

    .line 2451
    :cond_1
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0xa

    if-eqz v2, :cond_2

    .line 2453
    move-wide v4, v0

    .local v4, "deviceIdlePolicyTime":J
    goto/16 :goto_3

    .line 2454
    .end local v4    # "deviceIdlePolicyTime":J
    :cond_2
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2456
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2460
    .local v2, "userId":I
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 2461
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2462
    .local v4, "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2463
    .local v5, "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .local v7, "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    goto :goto_0

    .line 2465
    .end local v4    # "quota":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :cond_3
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2466
    .restart local v4    # "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2467
    .restart local v5    # "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2469
    .restart local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :goto_0
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v8

    .line 2471
    .local v8, "dispatchesInHistory":I
    if-ge v8, v4, :cond_4

    .line 2473
    move-wide v9, v0

    move-wide v4, v9

    .local v9, "deviceIdlePolicyTime":J
    goto :goto_1

    .line 2475
    .end local v9    # "deviceIdlePolicyTime":J
    :cond_4
    iget-object v9, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v9, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v9

    add-long/2addr v9, v5

    .line 2477
    .local v9, "whenInQuota":J
    iget-object v11, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v11}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-wide v4, v11

    .line 2479
    .end local v2    # "userId":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    .end local v8    # "dispatchesInHistory":I
    .end local v9    # "whenInQuota":J
    .local v4, "deviceIdlePolicyTime":J
    :goto_1
    goto :goto_3

    .end local v4    # "deviceIdlePolicyTime":J
    :cond_5
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    .line 2480
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    .line 2481
    .local v7, "lastDispatch":J
    cmp-long v2, v7, v5

    if-nez v2, :cond_6

    .line 2482
    move-wide v4, v0

    goto :goto_2

    .line 2483
    :cond_6
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v4, v7

    :goto_2
    nop

    .line 2484
    .local v4, "whenAllowed":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2485
    .end local v7    # "lastDispatch":J
    .local v4, "deviceIdlePolicyTime":J
    goto :goto_3

    .line 2487
    .end local v4    # "deviceIdlePolicyTime":J
    :cond_7
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    .line 2489
    .restart local v4    # "deviceIdlePolicyTime":J
    :goto_3
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2

    .line 2447
    .end local v4    # "deviceIdlePolicyTime":J
    :goto_4
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2
.end method

.method private adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z
    .locals 17
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2341
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x10

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2342
    return v3

    .line 2344
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    .line 2345
    .local v2, "changedBeforeFuzz":Z
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-nez v4, :cond_1

    .line 2347
    return v2

    .line 2349
    :cond_1
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    .line 2352
    .local v4, "upcomingWakeFromIdle":J
    invoke-virtual {v1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, v8, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    sub-long v8, v4, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 2354
    return v2

    .line 2356
    :cond_2
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v6

    .line 2357
    .local v6, "nowElapsed":J
    sub-long v8, v4, v6

    .line 2359
    .local v8, "futurity":J
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v10, v10, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v10, v8, v10

    if-gtz v10, :cond_3

    .line 2361
    invoke-virtual {v1, v3, v6, v7}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-wide v15, v4

    goto :goto_0

    .line 2363
    :cond_3
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v10

    .line 2364
    .local v10, "random":Ljava/util/concurrent/ThreadLocalRandom;
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    .line 2365
    .local v11, "upperBoundExcl":J
    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v13, v13, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v10, v13, v14, v11, v12}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v13

    .line 2366
    .local v13, "fuzz":J
    move-wide v15, v4

    .end local v4    # "upcomingWakeFromIdle":J
    .local v15, "upcomingWakeFromIdle":J
    sub-long v4, v15, v13

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 2368
    .end local v10    # "random":Ljava/util/concurrent/ThreadLocalRandom;
    .end local v11    # "upperBoundExcl":J
    .end local v13    # "fuzz":J
    :goto_0
    const/4 v3, 0x1

    return v3
.end method

.method static clampPositive(J)J
    .locals 2
    .param p0, "val"    # J

    .line 1450
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method private static native close(J)V
.end method

.method private convertToElapsed(JI)J
    .locals 4
    .param p1, "when"    # J
    .param p3, "type"    # I

    .line 1350
    invoke-static {p3}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 1353
    :cond_0
    return-wide p1
.end method

.method private decrementAlarmCount(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "decrement"    # I

    .line 5590
    const/4 v0, 0x0

    .line 5591
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 5592
    .local v1, "uidIndex":I
    if-ltz v1, :cond_1

    .line 5593
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 5594
    if-le v0, p2, :cond_0

    .line 5595
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v3, v0, p2

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    .line 5597
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 5600
    :cond_1
    :goto_0
    if-ge v0, p2, :cond_2

    .line 5601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to decrement existing alarm count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5604
    :cond_2
    return-void
.end method

.method private deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 30
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 1549
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1550
    .local v7, "N":I
    const/4 v1, 0x0

    .line 1551
    .local v1, "hasWakeup":Z
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 1552
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/alarm/Alarm;

    .line 1553
    .local v9, "alarm":Lcom/android/server/alarm/Alarm;
    iget-boolean v2, v9, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v2, :cond_0

    .line 1554
    const/4 v1, 0x1

    move/from16 v20, v1

    goto :goto_1

    .line 1553
    :cond_0
    move/from16 v20, v1

    .line 1556
    .end local v1    # "hasWakeup":Z
    .local v20, "hasWakeup":Z
    :goto_1
    const/4 v1, 0x1

    iput v1, v9, Lcom/android/server/alarm/Alarm;->count:I

    .line 1559
    iget-wide v1, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1560
    iget v1, v9, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v1, v1

    invoke-virtual {v9}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v3

    sub-long v3, p2, v3

    iget-wide v5, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v9, Lcom/android/server/alarm/Alarm;->count:I

    .line 1562
    iget v1, v9, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    mul-long v21, v1, v3

    .line 1563
    .local v21, "delta":J
    invoke-virtual {v9}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v1

    add-long v3, v1, v21

    .line 1564
    .local v3, "nextElapsed":J
    iget-wide v5, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v23

    .line 1566
    .local v23, "nextMaxElapsed":J
    iget v1, v9, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v5, v9, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long v5, v5, v21

    move-wide v10, v5

    move v2, v7

    .end local v7    # "N":I
    .local v2, "N":I
    sub-long v6, v23, v3

    iget-wide v12, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide v14, v3

    move v4, v2

    move-wide v2, v10

    .end local v2    # "N":I
    .end local v3    # "nextElapsed":J
    .local v4, "N":I
    .local v14, "nextElapsed":J
    iget-object v10, v9, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    move-wide v11, v12

    iget v13, v9, Lcom/android/server/alarm/Alarm;->flags:I

    move-wide/from16 v28, v14

    move v15, v4

    move-wide/from16 v4, v28

    .end local v14    # "nextElapsed":J
    .local v4, "nextElapsed":J
    .local v15, "N":I
    iget-object v14, v9, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v16, v15

    .end local v15    # "N":I
    .local v16, "N":I
    iget-object v15, v9, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    iget v0, v9, Lcom/android/server/alarm/Alarm;->uid:I

    move/from16 v17, v0

    iget-object v0, v9, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v25, v9

    move-wide/from16 v28, v11

    move v12, v8

    move-wide/from16 v8, v28

    .end local v8    # "i":I
    .end local v9    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v12, "i":I
    .local v25, "alarm":Lcom/android/server/alarm/Alarm;
    const/4 v11, 0x0

    move/from16 v26, v12

    .end local v12    # "i":I
    .local v26, "i":I
    const/4 v12, 0x0

    move-object/from16 v27, v25

    move/from16 v25, v16

    move/from16 v16, v17

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    .end local v16    # "N":I
    .local v25, "N":I
    .local v27, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-direct/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    move-wide v3, v4

    .end local v4    # "nextElapsed":J
    .restart local v3    # "nextElapsed":J
    goto :goto_2

    .line 1559
    .end local v3    # "nextElapsed":J
    .end local v21    # "delta":J
    .end local v23    # "nextMaxElapsed":J
    .end local v25    # "N":I
    .end local v26    # "i":I
    .end local v27    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v7    # "N":I
    .restart local v8    # "i":I
    .restart local v9    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v27, v9

    .line 1551
    .end local v7    # "N":I
    .end local v8    # "i":I
    .end local v9    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v25    # "N":I
    .restart local v26    # "i":I
    :goto_2
    add-int/lit8 v8, v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v7, v25

    .end local v26    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .end local v20    # "hasWakeup":Z
    .end local v25    # "N":I
    .restart local v1    # "hasWakeup":Z
    .restart local v7    # "N":I
    :cond_2
    move-object/from16 v0, p0

    move/from16 v25, v7

    move/from16 v26, v8

    .line 1573
    .end local v7    # "N":I
    .end local v8    # "i":I
    .restart local v25    # "N":I
    if-nez v1, :cond_5

    move-wide/from16 v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1575
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 1576
    iput-wide v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1577
    nop

    .line 1578
    invoke-virtual {v0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1580
    :cond_3
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1581
    iget v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    goto :goto_4

    .line 1573
    :cond_4
    move-object/from16 v5, p1

    goto :goto_3

    :cond_5
    move-object/from16 v5, p1

    move-wide/from16 v2, p2

    .line 1587
    :goto_3
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1588
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1589
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v6, v2, v6

    .line 1590
    .local v6, "thisDelayTime":J
    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1591
    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v8, v6

    if-gez v4, :cond_6

    .line 1592
    iput-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 1594
    :cond_6
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1596
    .end local v6    # "thisDelayTime":J
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1597
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1598
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1600
    :goto_4
    return-void
.end method

.method static final dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V
    .locals 5
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowELAPSED"    # J
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 4168
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4169
    .local v0, "n":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4170
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 4171
    .local v2, "a":Lcom/android/server/alarm/Alarm;
    iget v3, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v3}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 4172
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4173
    const-string v4, " #"

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4174
    sub-int v4, v0, v1

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 4175
    const-string v4, ": "

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4176
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4177
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4178
    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 4179
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4169
    .end local v2    # "a":Lcom/android/server/alarm/Alarm;
    .end local v3    # "label":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 4181
    .end local v1    # "i":I
    return-void
.end method

.method static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1527
    .local p0, "pendingAlarms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;>;"
    .local p1, "unrestrictedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .local p2, "isBackgroundRestricted":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidIndex":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1528
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1530
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "alarmIndex":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1531
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1533
    .local v3, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1534
    goto :goto_2

    .line 1537
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1530
    .end local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    nop

    .line 1541
    .end local v2    # "alarmIndex":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1542
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1527
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 1545
    .end local v0    # "uidIndex":I
    return-void
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .line 3889
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EHm"

    goto :goto_0

    :cond_0
    const-string v0, "Ehma"

    .line 3890
    .local v0, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3891
    .local v1, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v2, ""

    goto :goto_1

    .line 3892
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3891
    :goto_1
    return-object v2
.end method

.method private static getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .locals 1
    .param p0, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4710
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4711
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v0

    return v0

    .line 4714
    :cond_0
    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    return v0
.end method

.method private getAlarmOperationBundle(Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4718
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 4719
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    return-object v0

    .line 4721
    :cond_0
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4722
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 4724
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static native getNextAlarm(JI)J
.end method

.method private final getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 5193
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 5194
    .local v0, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    if-nez v0, :cond_0

    .line 5195
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 5196
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5198
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 5199
    .local v1, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    if-nez v1, :cond_1

    .line 5200
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    invoke-direct {v2, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 5201
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5203
    :cond_1
    return-object v1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 5187
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 5188
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 5189
    .local v1, "uid":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object v2

    return-object v2
.end method

.method private static increment(Landroid/util/SparseIntArray;I)V
    .locals 3
    .param p0, "array"    # Landroid/util/SparseIntArray;
    .param p1, "key"    # I

    .line 4658
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 4659
    .local v0, "index":I
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 4660
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    .line 4662
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4664
    :goto_0
    return-void
.end method

.method private incrementAlarmCount(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 5562
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-static {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->increment(Landroid/util/SparseIntArray;I)V

    .line 5563
    return-void
.end method

.method private static native init()J
.end method

.method private static isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 2435
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x24

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4198
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4200
    return v1

    .line 4202
    :cond_0
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4204
    return v1

    .line 4206
    :cond_1
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 4207
    .local v0, "sourcePackage":Ljava/lang/String;
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 4208
    .local v2, "sourceUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4209
    return v1

    .line 4211
    :cond_2
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static isExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3008
    nop

    .line 3009
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 3008
    const-wide/32 v1, 0xa35edc1

    invoke-static {v1, v2, p0, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method static isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4371
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0xc

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

.method private static isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .locals 2
    .param p0, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4184
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4185
    return v1

    .line 4187
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    nop

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 4188
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4189
    :cond_1
    return v1

    .line 4191
    :cond_2
    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4192
    return v1

    .line 4194
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isIdlingImpl()Z
    .locals 2

    .line 3736
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3737
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 3738
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static isRtc(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 1346
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3018
    nop

    .line 3019
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 3018
    const-wide/32 v1, 0xd7f327a

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private static isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z
    .locals 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 341
    iget v0, p0, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const-string v0, "TIME_TICK"

    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isUseExactAlarmEnabled(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3013
    nop

    .line 3014
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 3013
    const-wide/32 v1, 0xd068d35

    invoke-static {v1, v2, p0, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$interactiveStateChangedLocked$21()V
    .locals 5

    .line 4121
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I
    .locals 11
    .param p1, "lhs"    # Lcom/android/server/alarm/Alarm;
    .param p2, "rhs"    # Lcom/android/server/alarm/Alarm;

    .line 1260
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1261
    .local v0, "idleUntil1":Z
    :goto_0
    iget v3, p2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1262
    .local v3, "idleUntil2":Z
    :goto_1
    const/4 v4, -0x1

    if-eq v0, v3, :cond_3

    .line 1263
    if-eqz v0, :cond_2

    move v2, v4

    :cond_2
    return v2

    .line 1267
    :cond_3
    iget v5, p1, Lcom/android/server/alarm/Alarm;->priorityClass:I

    iget v6, p2, Lcom/android/server/alarm/Alarm;->priorityClass:I

    if-ge v5, v6, :cond_4

    .line 1268
    return v4

    .line 1269
    :cond_4
    iget v5, p1, Lcom/android/server/alarm/Alarm;->priorityClass:I

    iget v6, p2, Lcom/android/server/alarm/Alarm;->priorityClass:I

    if-le v5, v6, :cond_5

    .line 1270
    return v2

    .line 1274
    :cond_5
    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v5, v6, :cond_6

    move v5, v2

    goto :goto_2

    :cond_6
    move v5, v1

    .line 1275
    .local v5, "timeTick1":Z
    :goto_2
    iget-object v6, p2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v6, v7, :cond_7

    move v6, v2

    goto :goto_3

    :cond_7
    move v6, v1

    .line 1276
    .local v6, "timeTick2":Z
    :goto_3
    if-eq v5, v6, :cond_9

    .line 1277
    if-eqz v5, :cond_8

    move v2, v4

    :cond_8
    return v2

    .line 1281
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_a

    .line 1282
    return v4

    .line 1283
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-lez v4, :cond_b

    .line 1284
    return v2

    .line 1287
    :cond_b
    return v1
.end method

.method private synthetic lambda$onBootPhase$9()Lcom/android/server/alarm/AlarmStore;
    .locals 1

    .line 2096
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    return-object v0
.end method

.method private synthetic lambda$onStart$6([I[I)V
    .locals 6
    .param p1, "uids"    # [I
    .param p2, "frozenStates"    # [I

    .line 1813
    array-length v0, p2

    .line 1814
    .local v0, "size":I
    array-length v1, p1

    if-eq v1, v0, :cond_0

    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got different length arrays in frozen state callback! uids.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frozenStates.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    return-void

    .line 1820
    :cond_0
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 1821
    .local v1, "affectedUids":Landroid/util/IntArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1822
    aget v3, p2, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1823
    goto :goto_1

    .line 1825
    :cond_1
    const-wide/32 v3, 0xfce9184

    aget v5, p1, v2

    invoke-static {v3, v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1827
    goto :goto_1

    .line 1829
    :cond_2
    aget v3, p1, v2

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1821
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 1831
    .end local v2    # "i":I
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1832
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeExactListenerAlarms([I)V

    .line 1834
    :cond_4
    return-void
.end method

.method private synthetic lambda$onUserStarting$8(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 1973
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1974
    .local v1, "appId":I
    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1975
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    .line 1977
    .local v3, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v3, :cond_0

    .line 1978
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1979
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1978
    const/16 v6, 0x6b

    invoke-virtual {v4, v6, v2, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 1980
    .local v4, "mode":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1981
    :try_start_0
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1982
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1984
    .end local v1    # "appId":I
    .end local v2    # "uid":I
    .end local v3    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v4    # "mode":I
    :cond_0
    :goto_1
    goto :goto_0

    .line 1985
    :cond_1
    return-void
.end method

.method private synthetic lambda$reevaluateRtcAlarms$2(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1396
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    const/4 v0, 0x0

    return v0

    .line 1399
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$reevaluateRtcAlarms$3(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1407
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$reevaluateRtcAlarms$4(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 1410
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$removeAlarmsInternalLocked$14(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4014
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$removeAlarmsInternalLocked$15(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4019
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$removeExactAlarmsOnPermissionRevoked$13(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .locals 4
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 3946
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p0, :cond_0

    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$removeExactListenerAlarms$7([ILcom/android/server/alarm/Alarm;)Z
    .locals 4
    .param p0, "whichUids"    # [I
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1935
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1939
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alarm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " being removed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 1940
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because the app got frozen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1939
    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const/4 v0, 0x1

    return v0

    .line 1937
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$removeForStoppedLocked$19(ILcom/android/server/alarm/Alarm;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4066
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    nop

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 4067
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4066
    :goto_0
    return v0
.end method

.method private static synthetic lambda$removeLocked$16(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "operation"    # Landroid/app/PendingIntent;
    .param p1, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4035
    invoke-virtual {p2, p0, p1}, Lcom/android/server/alarm/Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$removeLocked$17(ILcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4044
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$removeLocked$18(Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4056
    invoke-virtual {p1, p0}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$removeUserLocked$20(ILcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "userHandle"    # I
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4078
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$reorderAlarmsBasedOnStandbyBuckets$5(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .locals 2
    .param p1, "targetPackages"    # Landroid/util/ArraySet;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1433
    iget v0, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1434
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    .line 1435
    .local v0, "userPackage":Landroid/content/pm/UserPackage;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1436
    const/4 v1, 0x0

    return v1

    .line 1438
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    return v1
.end method

.method private synthetic lambda$setImplLocked$10(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2573
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$setImplLocked$11(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2585
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$setImplLocked$12(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2589
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$triggerAlarmsLocked$22(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4248
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method private logAlarmBatchDelivered(IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 6
    .param p1, "alarms"    # I
    .param p2, "wakeups"    # I
    .param p3, "countsPerUid"    # Landroid/util/SparseIntArray;
    .param p4, "wakeupCountsPerUid"    # Landroid/util/SparseIntArray;

    .line 4671
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 4672
    .local v0, "uids":[I
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 4673
    .local v1, "countsArray":[I
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 4674
    .local v2, "wakeupCountsArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4675
    invoke-virtual {p3, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, v0, v3

    .line 4676
    invoke-virtual {p3, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 4677
    aget v4, v0, v3

    const/4 v5, 0x0

    invoke-virtual {p4, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    aput v4, v2, v3

    .line 4674
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 4679
    .end local v3    # "i":I
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmBatchDelivered(II[I[I[I)V

    .line 4681
    return-void
.end method

.method private static makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;
    .locals 2

    .line 372
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 373
    .local v0, "b":Landroid/app/BroadcastOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    .line 374
    return-object v0
.end method

.method static maxTriggerTime(JJJ)J
    .locals 8
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .line 1375
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    .line 1376
    sub-long v2, p2, p0

    goto :goto_0

    .line 1377
    :cond_0
    move-wide v2, p4

    :goto_0
    nop

    .line 1378
    .local v2, "futurity":J
    const-wide/16 v4, 0x2710

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 1379
    const-wide/16 v2, 0x0

    .line 1381
    :cond_1
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    long-to-double v6, v2

    mul-double/2addr v6, v4

    double-to-long v4, v6

    invoke-static {p2, p3, v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide v4

    .line 1386
    .local v4, "maxElapsed":J
    cmp-long v0, p4, v0

    if-nez v0, :cond_2

    .line 1387
    const-wide/32 v0, 0x36ee80

    invoke-static {p2, p3, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1389
    :cond_2
    return-wide v4
.end method

.method private notifyBroadcastAlarmCompleteLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 1689
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1690
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1691
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmComplete(I)V

    .line 1690
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1693
    .end local v1    # "i":I
    return-void
.end method

.method private notifyBroadcastAlarmPendingLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 1682
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1683
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1684
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmPending(I)V

    .line 1683
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1686
    .end local v1    # "i":I
    return-void
.end method

.method private removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V
    .locals 13
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;I)V"
        }
    .end annotation

    .line 3960
    .local p1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 3961
    .local v4, "nowRtc":J
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v6

    .line 3963
    .local v6, "nowElapsed":J
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0, p1}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3964
    .local v0, "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v8, 0x1

    xor-int/2addr v1, v8

    move v9, v1

    .line 3966
    .local v9, "removedFromStore":Z
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v8

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 3967
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3968
    .local v2, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v8

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 3969
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/Alarm;

    .line 3970
    .local v10, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-interface {p1, v10}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3971
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3968
    .end local v10    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    nop

    .line 3974
    .end local v3    # "j":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 3975
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3966
    .end local v2    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 3978
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 3979
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 3980
    .local v2, "a":Lcom/android/server/alarm/Alarm;
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3981
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3978
    .end local v2    # "a":Lcom/android/server/alarm/Alarm;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    nop

    .line 3985
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 3986
    .local v2, "removed":Lcom/android/server/alarm/Alarm;
    iget v1, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-direct {p0, v1, v8}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3987
    iget-object v1, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v1, :cond_6

    .line 3988
    iget-object v1, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v11, 0x0

    invoke-interface {v1, v3, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3990
    :cond_6
    invoke-static {p2}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->isLoggable(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3991
    goto :goto_3

    .line 3993
    :cond_7
    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3994
    const-string v1, "AlarmManager"

    const-string v3, "Removed TIME_TICK alarm"

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    :cond_8
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v3, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/RingBuffer;

    .line 3997
    .local v1, "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    if-nez v1, :cond_9

    .line 3998
    new-instance v3, Lcom/android/internal/util/RingBuffer;

    const-class v11, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    const/16 v12, 0xa

    invoke-direct {v3, v11, v12}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    move-object v1, v3

    .line 3999
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v11, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v3, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v11, v1

    goto :goto_4

    .line 3997
    :cond_9
    move-object v11, v1

    .line 4001
    .end local v1    # "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    .local v11, "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    :goto_4
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    move v3, p2

    .end local p2    # "reason":I
    .local v3, "reason":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;-><init>(Lcom/android/server/alarm/Alarm;IJJ)V

    invoke-virtual {v11, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 4002
    .end local v2    # "removed":Lcom/android/server/alarm/Alarm;
    .end local v11    # "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    goto :goto_3

    .line 4004
    .end local v3    # "reason":I
    .restart local p2    # "reason":I
    :cond_a
    move v3, p2

    .end local p2    # "reason":I
    .restart local v3    # "reason":I
    if-eqz v9, :cond_e

    .line 4005
    const/4 p2, 0x0

    .line 4006
    .local p2, "idleUntilUpdated":Z
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4007
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 4008
    const/4 p2, 0x1

    .line 4010
    :cond_b
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4011
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 4012
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_c

    .line 4013
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    or-int/2addr p2, v1

    .line 4017
    :cond_c
    if-eqz p2, :cond_d

    .line 4018
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 4021
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4022
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 4024
    .end local p2    # "idleUntilUpdated":Z
    :cond_e
    return-void
.end method

.method private varargs removeExactListenerAlarms([I)V
    .locals 3
    .param p1, "whichUids"    # [I

    .line 1933
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1934
    :try_start_0
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;-><init>([I)V

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 1944
    monitor-exit v0

    .line 1945
    return-void

    .line 1944
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z
    .locals 3
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1446
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    iget v2, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v0

    return v0
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    .line 3858
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3859
    .local v0, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3861
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3862
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3863
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3864
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 3865
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3863
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3868
    .end local v2    # "n":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 3863
    .restart local v2    # "n":I
    .restart local v3    # "i":I
    :cond_0
    nop

    .line 3867
    .end local v3    # "i":I
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3868
    .end local v2    # "n":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3870
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3871
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 3872
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3873
    .local v3, "userId":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3874
    .local v4, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "next_alarm_formatted"

    .line 3876
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v3}, Lcom/android/server/alarm/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    .line 3874
    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3879
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3871
    .end local v3    # "userId":I
    .end local v4    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 3882
    .end local v2    # "i":I
    return-void

    .line 3868
    .end local v1    # "n":I
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5573
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5576
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5580
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 5581
    .local v2, "opts":Landroid/app/BroadcastOptions;
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 5582
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v3

    .line 5581
    const/4 v5, 0x0

    const/16 v6, 0xcf

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 5585
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 5586
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 5585
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v3, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5587
    return-void
.end method

.method private static native set(JIJJ)I
.end method

.method private setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 21
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "interval"    # J
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "flags"    # I
    .param p14, "workSource"    # Landroid/os/WorkSource;
    .param p15, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p16, "callingUid"    # I
    .param p17, "callingPackage"    # Ljava/lang/String;
    .param p18, "idleOptions"    # Landroid/os/Bundle;
    .param p19, "exactAllowReason"    # I

    .line 2296
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/alarm/Alarm;

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v15, p13

    move-object/from16 v14, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    invoke-direct/range {v1 .. v20}, Lcom/android/server/alarm/Alarm;-><init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    move-object v2, v1

    move/from16 v1, v17

    .line 2299
    .local v2, "a":Lcom/android/server/alarm/Alarm;
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    move-object/from16 v4, p17

    invoke-virtual {v3, v1, v4}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not setting alarm from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -- package not allowed to start"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AlarmManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    return-void

    .line 2304
    :cond_0
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v3

    .line 2305
    .local v3, "callerProcState":I
    const/4 v5, 0x0

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual {v0, v11, v12, v5}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2306
    iget v5, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-direct {v0, v5}, Lcom/android/server/alarm/AlarmManagerService;->incrementAlarmCount(I)V

    .line 2307
    invoke-direct {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    .line 2308
    invoke-static {v2, v3}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmScheduled(Lcom/android/server/alarm/Alarm;I)V

    .line 2309
    return-void
.end method

.method private setImplLocked(Lcom/android/server/alarm/Alarm;)V
    .locals 4
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 2554
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 2555
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    .line 2567
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_0

    .line 2568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImplLocked: idle until changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/alarm/Alarm;)V

    invoke-interface {v0, v2}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 2572
    :cond_0
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 2573
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_0

    .line 2574
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_2

    .line 2575
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 2577
    :cond_2
    :goto_0
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 2578
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    nop

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    .line 2579
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 2580
    :cond_3
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 2583
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_4

    .line 2584
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v0

    .line 2586
    .local v0, "updated":Z
    if-eqz v0, :cond_4

    .line 2588
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 2594
    .end local v0    # "updated":Z
    :cond_4
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_5

    .line 2595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2597
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 2598
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 2599
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0, p1}, Lcom/android/server/alarm/AlarmStore;->add(Lcom/android/server/alarm/Alarm;)V

    .line 2600
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2601
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2602
    return-void
.end method

.method private setLocked(IJ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "when"    # J

    .line 4155
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4156
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setAlarm(IJ)V

    goto :goto_0

    .line 4158
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4159
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4161
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4162
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 4164
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .locals 10

    .line 3751
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_0

    .line 3752
    return-void

    .line 3754
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3756
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3757
    .local v0, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3759
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3760
    .local v1, "allAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 3761
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    iget-object v4, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_2

    .line 3762
    iget v4, v3, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3763
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3772
    .local v5, "current":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3773
    iget-object v6, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 3774
    :cond_1
    iget-object v6, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3775
    invoke-virtual {v5}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v6

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 3777
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3780
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    .end local v4    # "userId":I
    .end local v5    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_2
    :goto_1
    goto :goto_0

    .line 3782
    :cond_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3783
    .local v2, "newUserCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 3784
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3785
    .local v4, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3786
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3787
    .local v6, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3788
    invoke-direct {p0, v5, v4}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3783
    .end local v4    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v5    # "userId":I
    .end local v6    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    nop

    .line 3792
    .end local v3    # "i":I
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3793
    .local v3, "oldUserCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_7

    .line 3794
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3795
    .restart local v5    # "userId":I
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    .line 3796
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3793
    .end local v5    # "userId":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_7
    nop

    .line 3799
    .end local v4    # "i":I
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3803
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3808
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3809
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v1, :cond_2

    .line 3810
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->shouldAddWakeupForUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3811
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 3812
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    .line 3811
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/alarm/UserWakeupStore;->addUserWakeup(IJ)V

    goto :goto_0

    .line 3819
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v1, :cond_1

    .line 3820
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3821
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v1, p1}, Lcom/android/server/alarm/UserWakeupStore;->removeUserWakeup(I)V

    .line 3824
    :cond_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3827
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3828
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3829
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3830
    return-void
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1297
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1301
    .local v0, "N":I
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1302
    .local v1, "wakeupPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1303
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1304
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    iget-boolean v4, v3, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v4, :cond_0

    .line 1305
    iget v4, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1306
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    .line 1305
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1302
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1310
    .end local v2    # "i":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1311
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1313
    .restart local v3    # "a":Lcom/android/server/alarm/Alarm;
    iget v4, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    const-string v4, "android"

    iget-object v5, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1314
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/alarm/Alarm;->priorityClass:I

    goto :goto_2

    .line 1315
    :cond_2
    iget v4, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1316
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    .line 1315
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1317
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/alarm/Alarm;->priorityClass:I

    goto :goto_2

    .line 1319
    :cond_3
    const/4 v4, 0x2

    iput v4, v3, Lcom/android/server/alarm/Alarm;->priorityClass:I

    .line 1310
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 1322
    .end local v2    # "i":I
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 6
    .param p1, "nowELAPSED"    # J

    .line 4321
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4322
    return v1

    .line 4324
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eqz v0, :cond_1

    .line 4325
    return v1

    .line 4327
    :cond_1
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 4328
    return v1

    .line 4330
    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_3

    .line 4334
    return v1

    .line 4336
    :cond_3
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 4337
    .local v2, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .locals 4
    .param p1, "nowELAPSED"    # J

    .line 4306
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v0

    .line 4307
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 4309
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 4310
    :cond_0
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 4312
    const-wide/32 v2, 0xdbba0

    return-wide v2

    .line 4315
    :cond_1
    const-wide/32 v2, 0x36ee80

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 9
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 4342
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 4343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4344
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 4345
    .local v1, "alarm":Lcom/android/server/alarm/Alarm;
    iget-boolean v2, v1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const-wide/32 v3, 0x20000

    if-eqz v2, :cond_0

    .line 4346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatch wakeup alarm to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_1

    .line 4349
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatch non-wakeup alarm to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4357
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v7, v1, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v8, v1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/ActivityManagerInternal;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4360
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4363
    goto :goto_2

    .line 4361
    :catch_0
    move-exception v2

    .line 4362
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v5, "AlarmManager"

    const-string v6, "Failure sending alarm."

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4364
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4365
    iget v2, v1, Lcom/android/server/alarm/Alarm;->uid:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    .line 4343
    .end local v1    # "alarm":Lcom/android/server/alarm/Alarm;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 4367
    .end local v0    # "i":I
    return-void
.end method

.method dumpImpl(Landroid/util/IndentingPrintWriter;)V
    .locals 33
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3024
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3025
    :try_start_0
    const-string v0, "Current Alarm Manager state:"

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3028
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3029
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3031
    const-string v0, "Feature Flags:"

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3033
    const-string v0, "com.android.server.alarm.start_user_before_scheduled_alarms"

    .line 3034
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3033
    invoke-virtual {v2, v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 3035
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3036
    const-string v0, "com.android.server.alarm.acquire_wakelock_before_send"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 3037
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3038
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3039
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App Standby Parole: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3044
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v0, :cond_0

    .line 3045
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3046
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_0

    .line 3524
    :catchall_0
    move-exception v0

    goto/16 :goto_1e

    .line 3049
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v6

    .line 3050
    .local v6, "nowELAPSED":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3051
    .local v8, "nowUPTIME":J
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 3052
    .local v10, "nowRTC":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3054
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v12, "nowRTC="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {v2, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3056
    const-string v12, "="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3057
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3058
    const-string v12, " nowELAPSED="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3059
    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3060
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3062
    const-string/jumbo v12, "mLastTimeChangeClockTime="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3063
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3064
    const-string v12, "="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3065
    new-instance v12, Ljava/util/Date;

    iget-wide v13, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    const-string/jumbo v12, "mLastTimeChangeRealtime="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3068
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3070
    const-string/jumbo v12, "mLastTickReceived="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3071
    new-instance v12, Ljava/util/Date;

    iget-wide v13, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string/jumbo v12, "mLastTickSet="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3074
    new-instance v12, Ljava/util/Date;

    iget-wide v13, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3078
    const-string v12, "Recent TIME_TICK history:"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3080
    iget v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    .line 3082
    .local v12, "i":I
    :goto_1
    add-int/lit8 v12, v12, -0x1

    .line 3083
    if-gez v12, :cond_1

    const/16 v12, 0x9

    .line 3084
    :cond_1
    iget-object v13, v1, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    aget-wide v13, v13, v12

    .line 3085
    .local v13, "time":J
    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-lez v17, :cond_2

    .line 3086
    move/from16 v17, v4

    new-instance v4, Ljava/util/Date;

    sub-long v18, v6, v13

    move-wide/from16 v21, v6

    .end local v6    # "nowELAPSED":J
    .local v21, "nowELAPSED":J
    sub-long v5, v10, v18

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 3087
    .end local v21    # "nowELAPSED":J
    .restart local v6    # "nowELAPSED":J
    :cond_2
    move/from16 v17, v4

    move-wide/from16 v21, v6

    .end local v6    # "nowELAPSED":J
    .restart local v21    # "nowELAPSED":J
    const-string v4, "-"

    .line 3085
    :goto_2
    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    .end local v13    # "time":J
    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    if-ne v12, v4, :cond_31

    .line 3089
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3092
    nop

    .end local v12    # "i":I
    const-class v4, Lcom/android/server/SystemServiceManager;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SystemServiceManager;

    .line 3093
    .local v4, "ssm":Lcom/android/server/SystemServiceManager;
    if-eqz v4, :cond_4

    .line 3094
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3095
    const-string v5, "RuntimeStarted="

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3096
    new-instance v5, Ljava/util/Date;

    sub-long v6, v10, v21

    .line 3097
    invoke-virtual {v4}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v12

    add-long/2addr v6, v12

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 3096
    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v4}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3099
    const-string v5, "  (Runtime restarted)"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3101
    :cond_3
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3103
    const-string v5, "Runtime uptime (elapsed): "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3104
    invoke-virtual {v4}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v5

    move-wide/from16 v13, v21

    .end local v21    # "nowELAPSED":J
    .local v13, "nowELAPSED":J
    invoke-static {v13, v14, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3105
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3107
    const-string v5, "Runtime uptime (uptime): "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3108
    invoke-virtual {v4}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3109
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_3

    .line 3093
    .end local v13    # "nowELAPSED":J
    .restart local v21    # "nowELAPSED":J
    :cond_4
    move-wide/from16 v13, v21

    .line 3112
    .end local v21    # "nowELAPSED":J
    .restart local v13    # "nowELAPSED":J
    :goto_3
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3113
    iget-boolean v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v5, :cond_5

    .line 3114
    const-string v5, "Time since non-interactive: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3115
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v6, v13, v5

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3116
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3118
    :cond_5
    const-string v5, "Max wakeup delay: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3119
    invoke-virtual {v1, v13, v14}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v5

    invoke-static {v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3120
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3122
    const-string v5, "Time since last dispatch: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3123
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v6, v13, v5

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3124
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3126
    const-string v5, "Next non-wakeup delivery time: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3127
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v5, v6, v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3128
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3130
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long v18, v10, v13

    add-long v5, v5, v18

    .line 3131
    .local v5, "nextWakeupRTC":J
    move-wide/from16 v18, v8

    .end local v8    # "nowUPTIME":J
    .local v18, "nowUPTIME":J
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    sub-long v21, v10, v13

    add-long v7, v7, v21

    .line 3132
    .local v7, "nextNonWakeupRTC":J
    const-string v9, "Next non-wakeup alarm: "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3133
    move-wide/from16 v21, v10

    .end local v10    # "nowRTC":J
    .local v21, "nowRTC":J
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v9, v10, v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3134
    const-string v9, " = "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3135
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v2, v9, v10}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3136
    const-string v9, " = "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3137
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3139
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3140
    const-string/jumbo v9, "set at "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3141
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v9, v10, v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3142
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3143
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3145
    const-string v9, "Next wakeup alarm: "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3146
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-static {v9, v10, v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3147
    const-string v9, " = "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3148
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v2, v9, v10}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3149
    const-string v9, " = "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3150
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3153
    const-string/jumbo v9, "set at "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3154
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v9, v10, v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3155
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3156
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3158
    const-string v9, "Next kernel non-wakeup alarm: "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3159
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v9

    invoke-static {v9, v10, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3160
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3161
    const-string v9, "Next kernel wakeup alarm: "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3162
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v9

    invoke-static {v9, v10, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3163
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3165
    const-string v9, "Last wakeup: "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3166
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-static {v9, v10, v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3167
    const-string v9, " = "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3168
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v2, v9, v10}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3170
    const-string v9, "Last trigger: "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3171
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-static {v9, v10, v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3172
    const-string v9, " = "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3173
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v2, v9, v10}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3175
    const-string v9, "Num time change events: "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3176
    iget v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3178
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3179
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App ids requesting SCHEDULE_EXACT_ALARM: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3182
    const-string v9, "Last OP_SCHEDULE_EXACT_ALARM: ["

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3183
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 3184
    if-lez v9, :cond_6

    .line 3185
    const-string v10, ", "

    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3187
    :cond_6
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    invoke-static {v2, v10}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3188
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3183
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    nop

    .line 3190
    .end local v9    # "i":I
    const-string v9, "]"

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3192
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3193
    const-string v9, "Next alarm clock information: "

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3195
    new-instance v9, Ljava/util/TreeSet;

    invoke-direct {v9}, Ljava/util/TreeSet;-><init>()V

    .line 3196
    .local v9, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 3197
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3196
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_8
    nop

    .line 3199
    .end local v10    # "i":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 3200
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3199
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    nop

    .line 3202
    .end local v10    # "i":I
    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3203
    .local v11, "user":I
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3204
    .local v12, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v23

    goto :goto_8

    :cond_a
    move-wide/from16 v23, v15

    :goto_8
    move-wide/from16 v25, v23

    .line 3205
    .local v25, "time":J
    move-wide/from16 v23, v15

    iget-object v15, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    .line 3206
    .local v15, "pendingSend":Z
    move-object/from16 v16, v4

    .end local v4    # "ssm":Lcom/android/server/SystemServiceManager;
    .local v16, "ssm":Lcom/android/server/SystemServiceManager;
    const-string/jumbo v4, "user:"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3207
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3208
    const-string v4, " pendingSend:"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3209
    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3210
    const-string v4, " time:"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3211
    move-wide/from16 v27, v5

    move-wide/from16 v4, v25

    .end local v5    # "nextWakeupRTC":J
    .end local v25    # "time":J
    .local v4, "time":J
    .local v27, "nextWakeupRTC":J
    invoke-virtual {v2, v4, v5}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3212
    cmp-long v6, v4, v23

    if-lez v6, :cond_b

    .line 3213
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3214
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3215
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3216
    move-wide/from16 v25, v7

    move-wide/from16 v6, v21

    .end local v7    # "nextNonWakeupRTC":J
    .end local v21    # "nowRTC":J
    .local v6, "nowRTC":J
    .local v25, "nextNonWakeupRTC":J
    invoke-static {v4, v5, v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_9

    .line 3212
    .end local v6    # "nowRTC":J
    .end local v25    # "nextNonWakeupRTC":J
    .restart local v7    # "nextNonWakeupRTC":J
    .restart local v21    # "nowRTC":J
    :cond_b
    move-wide/from16 v25, v7

    move-wide/from16 v6, v21

    .line 3218
    .end local v7    # "nextNonWakeupRTC":J
    .end local v21    # "nowRTC":J
    .restart local v6    # "nowRTC":J
    .restart local v25    # "nextNonWakeupRTC":J
    :goto_9
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3219
    .end local v4    # "time":J
    .end local v11    # "user":I
    .end local v12    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v15    # "pendingSend":Z
    move-wide/from16 v21, v6

    move-object/from16 v4, v16

    move-wide/from16 v15, v23

    move-wide/from16 v7, v25

    move-wide/from16 v5, v27

    goto :goto_7

    .line 3220
    .end local v6    # "nowRTC":J
    .end local v16    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v25    # "nextNonWakeupRTC":J
    .end local v27    # "nextWakeupRTC":J
    .local v4, "ssm":Lcom/android/server/SystemServiceManager;
    .restart local v5    # "nextWakeupRTC":J
    .restart local v7    # "nextNonWakeupRTC":J
    .restart local v21    # "nowRTC":J
    :cond_c
    move-object/from16 v16, v4

    move-wide/from16 v27, v5

    move-wide/from16 v25, v7

    move-wide/from16 v6, v21

    .end local v4    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v5    # "nextWakeupRTC":J
    .end local v7    # "nextNonWakeupRTC":J
    .end local v21    # "nowRTC":J
    .restart local v6    # "nowRTC":J
    .restart local v16    # "ssm":Lcom/android/server/SystemServiceManager;
    .restart local v25    # "nextNonWakeupRTC":J
    .restart local v27    # "nextWakeupRTC":J
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3222
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 3223
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3224
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4, v2, v13, v14, v0}, Lcom/android/server/alarm/AlarmStore;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3226
    :cond_d
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3228
    const-string v4, "Pending user blocked background alarms: "

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3229
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3230
    const/4 v4, 0x0

    .line 3231
    .local v4, "blocked":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_f

    .line 3232
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 3233
    .local v8, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_e

    .line 3234
    const/4 v4, 0x1

    .line 3235
    invoke-static {v2, v8, v13, v14, v0}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 3231
    .end local v8    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_f
    nop

    .line 3238
    .end local v5    # "i":I
    if-nez v4, :cond_10

    .line 3239
    const-string/jumbo v5, "none"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    :cond_10
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3242
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3244
    const-string v5, "Pending alarms per uid: ["

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3245
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_b
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_12

    .line 3246
    if-lez v5, :cond_11

    .line 3247
    const-string v8, ", "

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3249
    :cond_11
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3250
    const-string v8, ":"

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3251
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3245
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_12
    nop

    .line 3253
    .end local v5    # "i":I
    const-string v5, "]"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3254
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3256
    iget-boolean v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v5, :cond_13

    .line 3257
    const-string v5, "Scheduled user wakeups:"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3258
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v5, v2, v13, v14}, Lcom/android/server/alarm/UserWakeupStore;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3259
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3262
    :cond_13
    const-string v5, "App Alarm history:"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v5, v2, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3265
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3266
    const-string v5, "Temporary Quota Reserves:"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3267
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v5, v2, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3269
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v5, :cond_15

    .line 3270
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3271
    const-string v5, "Idle mode state:"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3274
    const-string v5, "Idling until: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3275
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v5, :cond_14

    .line 3276
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3277
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v5, v2, v13, v14, v0}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    goto :goto_c

    .line 3279
    :cond_14
    const-string/jumbo v5, "null"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3281
    :goto_c
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3283
    :cond_15
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v5, :cond_16

    .line 3284
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3285
    const-string v5, "Next wake from idle: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3286
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3288
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3289
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v5, v2, v13, v14, v0}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3290
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3293
    :cond_16
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3294
    const-string v5, "Past-due non-wakeup alarms: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3295
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_17

    .line 3296
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3298
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3299
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-static {v2, v5, v13, v14, v0}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 3300
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_d

    .line 3302
    :cond_17
    const-string v5, "(none)"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    :goto_d
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3305
    const-string v5, "Number of delayed alarms: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3306
    iget v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3307
    const-string v5, ", total delay time: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3308
    iget-wide v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3309
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3311
    const-string v5, "Max delay time: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3312
    iget-wide v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3313
    const-string v5, ", max non-interactive time: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3314
    iget-wide v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3315
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3316
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3318
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3319
    const-string v5, "Broadcast ref count: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3320
    iget v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3321
    const-string v5, "PendingIntent send count: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3322
    iget v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3323
    const-string v5, "PendingIntent finish count: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3324
    iget v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3325
    const-string v5, "Listener send count: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3326
    iget v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3327
    const-string v5, "Listener finish count: "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3328
    iget v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3329
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3331
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_19

    .line 3332
    const-string v5, "Outstanding deliveries:"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3333
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3334
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_e
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_18

    .line 3335
    const-string v8, "#"

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3336
    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3337
    const-string v8, ": "

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3338
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3334
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_18
    nop

    .line 3340
    .end local v5    # "i":I
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3341
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3344
    :cond_19
    const-string v5, "Allow while idle history:"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3345
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v5, v2, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3346
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3348
    const-string v5, "Allow while idle compat history:"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3349
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v5, v2, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3350
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3352
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-lez v5, :cond_1b

    .line 3353
    const-string v5, "Last priority alarm dispatches:"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3354
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3355
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_f
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_1a

    .line 3356
    const-string v8, "UID: "

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3357
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3358
    const-string v8, ": "

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3359
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v10

    invoke-static {v10, v11, v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3360
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3355
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1a
    nop

    .line 3362
    .end local v5    # "i":I
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3365
    :cond_1b
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_1e

    .line 3366
    const-string v5, "Removal history:"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3367
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3368
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_10
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_1d

    .line 3369
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3370
    const-string v8, ":"

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3372
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    .line 3373
    .local v8, "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    .local v10, "index":I
    :goto_11
    if-ltz v10, :cond_1c

    .line 3374
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v8

    sub-int/2addr v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3375
    aget-object v11, v8, v10

    invoke-virtual {v11, v2, v13, v14, v0}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3373
    add-int/lit8 v10, v10, -0x1

    goto :goto_11

    :cond_1c
    nop

    .line 3377
    .end local v10    # "index":I
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3368
    nop

    .end local v8    # "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1d
    nop

    .line 3379
    .end local v5    # "i":I
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3380
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3383
    :cond_1e
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v8, "Recent problems:"

    invoke-virtual {v5, v2, v8}, Lcom/android/internal/util/LocalLog;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 3384
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3387
    :cond_1f
    const/16 v5, 0xa

    new-array v5, v5, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3388
    .local v5, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    new-instance v8, Lcom/android/server/alarm/AlarmManagerService$5;

    invoke-direct {v8, v1}, Lcom/android/server/alarm/AlarmManagerService$5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 3399
    .local v8, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v10, 0x0

    .line 3401
    .local v10, "len":I
    const/4 v11, 0x0

    .local v11, "iu":I
    :goto_12
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_27

    .line 3402
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    .line 3403
    .local v12, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/4 v15, 0x0

    .local v15, "ip":I
    :goto_13
    move/from16 v21, v4

    .end local v4    # "blocked":Z
    .local v21, "blocked":Z
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v15, v4, :cond_26

    .line 3404
    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3405
    .local v4, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    const/16 v22, 0x0

    move-wide/from16 v31, v6

    move/from16 v6, v22

    move-wide/from16 v22, v31

    .local v6, "is":I
    .local v22, "nowRTC":J
    :goto_14
    iget-object v7, v4, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_25

    .line 3406
    iget-object v7, v4, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3407
    .local v7, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    if-lez v10, :cond_20

    .line 3408
    move-object/from16 v24, v4

    const/4 v4, 0x0

    .end local v4    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .local v24, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    invoke-static {v5, v4, v10, v7, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v20

    goto :goto_15

    .end local v24    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v4    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_20
    move-object/from16 v24, v4

    const/4 v4, 0x0

    .end local v4    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v24    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    move/from16 v20, v4

    :goto_15
    move/from16 v29, v20

    .line 3409
    .local v29, "pos":I
    if-gez v29, :cond_21

    .line 3410
    move/from16 v4, v29

    move/from16 v29, v6

    .end local v6    # "is":I
    .local v4, "pos":I
    .local v29, "is":I
    neg-int v6, v4

    add-int/lit8 v4, v6, -0x1

    goto :goto_16

    .line 3409
    .end local v4    # "pos":I
    .restart local v6    # "is":I
    .local v29, "pos":I
    :cond_21
    move/from16 v4, v29

    move/from16 v29, v6

    .line 3412
    .end local v6    # "is":I
    .restart local v4    # "pos":I
    .local v29, "is":I
    :goto_16
    array-length v6, v5

    if-ge v4, v6, :cond_23

    .line 3413
    array-length v6, v5

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    .line 3414
    .local v6, "copylen":I
    if-lez v6, :cond_22

    .line 3415
    move-object/from16 v30, v7

    .end local v7    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .local v30, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    add-int/lit8 v7, v4, 0x1

    invoke-static {v5, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17

    .line 3414
    .end local v30    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v7    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_22
    move-object/from16 v30, v7

    .line 3417
    .end local v7    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v30    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :goto_17
    aput-object v30, v5, v4

    .line 3418
    array-length v7, v5

    if-ge v10, v7, :cond_24

    .line 3419
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 3412
    .end local v6    # "copylen":I
    .end local v30    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v7    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_23
    move-object/from16 v30, v7

    .line 3405
    .end local v4    # "pos":I
    .end local v7    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_24
    :goto_18
    add-int/lit8 v6, v29, 0x1

    move-object/from16 v4, v24

    .end local v29    # "is":I
    .local v6, "is":I
    goto :goto_14

    .end local v24    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .local v4, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_25
    move-object/from16 v24, v4

    move/from16 v29, v6

    .line 3403
    .end local v4    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v6    # "is":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v21

    move-wide/from16 v6, v22

    goto :goto_13

    .end local v22    # "nowRTC":J
    .local v6, "nowRTC":J
    :cond_26
    move-wide/from16 v22, v6

    .line 3401
    .end local v6    # "nowRTC":J
    .end local v12    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v15    # "ip":I
    .restart local v22    # "nowRTC":J
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v21

    goto/16 :goto_12

    .end local v21    # "blocked":Z
    .end local v22    # "nowRTC":J
    .local v4, "blocked":Z
    .restart local v6    # "nowRTC":J
    :cond_27
    move/from16 v21, v4

    move-wide/from16 v22, v6

    .line 3425
    .end local v4    # "blocked":Z
    .end local v6    # "nowRTC":J
    .end local v11    # "iu":I
    .restart local v21    # "blocked":Z
    .restart local v22    # "nowRTC":J
    if-lez v10, :cond_2a

    .line 3426
    const-string v4, "Top Alarms:"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3427
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3428
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v10, :cond_29

    .line 3429
    aget-object v6, v5, v4

    .line 3430
    .local v6, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    iget v7, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v7, :cond_28

    const-string v7, "*ACTIVE* "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3431
    :cond_28
    iget-wide v11, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v11, v12, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3432
    const-string v7, " running, "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3433
    iget v7, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3434
    const-string v7, " wakeups, "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3435
    iget v7, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3436
    const-string v7, " alarms: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3437
    iget-object v7, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v7, v7, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v2, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3438
    const-string v7, ":"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3439
    iget-object v7, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3440
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3442
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3443
    iget-object v7, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3444
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3445
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3428
    nop

    .end local v6    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_29
    nop

    .line 3447
    .end local v4    # "i":I
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3450
    :cond_2a
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3451
    const-string v4, "Alarm Stats:"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3452
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3453
    .local v4, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v6, 0x0

    .local v6, "iu":I
    :goto_1a
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_30

    .line 3454
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 3455
    .local v7, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/4 v11, 0x0

    .local v11, "ip":I
    :goto_1b
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_2f

    .line 3456
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3457
    .local v12, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    iget v15, v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v15, :cond_2b

    const-string v15, "*ACTIVE* "

    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3458
    :cond_2b
    iget v15, v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v2, v15}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3459
    const-string v15, ":"

    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3460
    iget-object v15, v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3461
    const-string v15, " "

    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3462
    move-object v15, v5

    move/from16 v17, v6

    .end local v5    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v6    # "iu":I
    .local v15, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .local v17, "iu":I
    iget-wide v5, v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3463
    const-string v5, " running, "

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3464
    iget v5, v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3465
    const-string v5, " wakeups:"

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3468
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_1c
    iget-object v6, v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2c

    .line 3469
    iget-object v6, v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3468
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_2c
    nop

    .line 3471
    .end local v5    # "is":I
    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3472
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3473
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2e

    .line 3474
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3475
    .local v6, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v20, v4

    .end local v4    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .local v20, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    iget v4, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v4, :cond_2d

    const-string v4, "*ACTIVE* "

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3476
    :cond_2d
    move/from16 v24, v5

    .end local v5    # "i":I
    .local v24, "i":I
    iget-wide v4, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3477
    const-string v4, " "

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3478
    iget v4, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3479
    const-string v4, " wakes "

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3480
    iget v4, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3481
    const-string v4, " alarms, last "

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3482
    iget-wide v4, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v4, v5, v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3483
    const-string v4, ":"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3485
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3486
    iget-object v4, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3487
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3488
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3473
    nop

    .end local v6    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v4, v20

    .end local v24    # "i":I
    .restart local v5    # "i":I
    goto :goto_1d

    .end local v20    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v4    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    :cond_2e
    move-object/from16 v20, v4

    move/from16 v24, v5

    .line 3490
    .end local v4    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v5    # "i":I
    .restart local v20    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3455
    nop

    .end local v12    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    add-int/lit8 v11, v11, 0x1

    move-object v5, v15

    move/from16 v6, v17

    move-object/from16 v4, v20

    goto/16 :goto_1b

    .end local v15    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v17    # "iu":I
    .end local v20    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v4    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .local v5, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .local v6, "iu":I
    :cond_2f
    move-object/from16 v20, v4

    move-object v15, v5

    move/from16 v17, v6

    .line 3453
    .end local v4    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v5    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v6    # "iu":I
    .end local v7    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v11    # "ip":I
    .restart local v15    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v17    # "iu":I
    .restart local v20    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v6, v17, 0x1

    .end local v17    # "iu":I
    .restart local v6    # "iu":I
    goto/16 :goto_1a

    .end local v15    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v20    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v4    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v5    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_30
    move-object/from16 v20, v4

    move-object v15, v5

    move/from16 v17, v6

    .line 3493
    .end local v4    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v5    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v6    # "iu":I
    .restart local v15    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v20    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3494
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3524
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v8    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v9    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v10    # "len":I
    .end local v13    # "nowELAPSED":J
    .end local v15    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v16    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v18    # "nowUPTIME":J
    .end local v20    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v21    # "blocked":Z
    .end local v22    # "nowRTC":J
    .end local v25    # "nextNonWakeupRTC":J
    .end local v27    # "nextWakeupRTC":J
    monitor-exit v3

    .line 3525
    return-void

    .line 3088
    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .local v8, "nowUPTIME":J
    .local v10, "nowRTC":J
    .local v12, "i":I
    .local v21, "nowELAPSED":J
    :cond_31
    move-wide/from16 v18, v8

    move-wide/from16 v13, v21

    move-wide/from16 v22, v10

    .end local v8    # "nowUPTIME":J
    .end local v10    # "nowRTC":J
    .end local v21    # "nowELAPSED":J
    .restart local v13    # "nowELAPSED":J
    .restart local v18    # "nowUPTIME":J
    .restart local v22    # "nowRTC":J
    move-wide v6, v13

    move/from16 v4, v17

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3524
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "i":I
    .end local v13    # "nowELAPSED":J
    .end local v18    # "nowUPTIME":J
    .end local v22    # "nowRTC":J
    :goto_1e
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .locals 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 3528
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v0

    .line 3530
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3531
    :try_start_0
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v5

    move-wide v10, v5

    .line 3532
    .local v10, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v7

    .line 3533
    .local v7, "nowElapsed":J
    const-wide v5, 0x10300000001L

    invoke-virtual {v4, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3534
    const-wide v5, 0x10300000002L

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3535
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v12, 0x10300000003L

    invoke-virtual {v4, v12, v13, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3537
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    const-wide v14, 0x10300000004L

    invoke-virtual {v4, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3540
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    const-wide v5, 0x10b00000005L

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3542
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v0, :cond_0

    .line 3543
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    const-wide v5, 0x10b00000006L

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    .line 3724
    .end local v7    # "nowElapsed":J
    .end local v10    # "nowRTC":J
    :catchall_0
    move-exception v0

    goto/16 :goto_14

    .line 3546
    .restart local v7    # "nowElapsed":J
    .restart local v10    # "nowRTC":J
    :cond_0
    :goto_0
    iget-boolean v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    const-wide v5, 0x10800000007L

    invoke-virtual {v4, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3547
    iget-boolean v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 3549
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v5, v7, v5

    const-wide v14, 0x10300000008L

    invoke-virtual {v4, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3551
    nop

    .line 3552
    invoke-virtual {v1, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v5

    .line 3551
    const-wide v14, 0x10300000009L

    invoke-virtual {v4, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3553
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v5, v7, v5

    const-wide v14, 0x1030000000aL

    invoke-virtual {v4, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3555
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v5, v7, v5

    const-wide v14, 0x1030000000bL

    invoke-virtual {v4, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3559
    :cond_1
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v5, v7

    const-wide v14, 0x1030000000cL

    invoke-virtual {v4, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3561
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v5, v7

    const-wide v14, 0x1030000000dL

    invoke-virtual {v4, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3563
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    sub-long v5, v7, v5

    const-wide v14, 0x1030000000eL

    invoke-virtual {v4, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3565
    iget-wide v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v5, v7, v5

    const-wide v14, 0x1030000000fL

    invoke-virtual {v4, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3567
    iget v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    const-wide v5, 0x10300000010L

    invoke-virtual {v4, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3569
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 3570
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v14, v3

    .line 3571
    .local v14, "nextAlarmClockForUserSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v14, :cond_2

    .line 3572
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3571
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 3574
    .end local v3    # "i":I
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 3575
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v15, v3

    .line 3576
    .local v15, "pendingSendNextAlarmClockChangedForUserSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v15, :cond_3

    .line 3577
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3576
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 3579
    .end local v3    # "i":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    move/from16 v16, v5

    if-eqz v16, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v17, v16

    .line 3580
    .local v17, "user":I
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v13, v17

    .end local v17    # "user":I
    .local v13, "user":I
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3581
    .local v12, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v16

    goto :goto_4

    :cond_4
    const-wide/16 v16, 0x0

    :goto_4
    move-wide/from16 v20, v16

    .line 3582
    .local v20, "time":J
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 3583
    .local v5, "pendingSend":Z
    move-object v6, v3

    const-wide v2, 0x20b00000012L

    invoke-virtual {v4, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3585
    .local v2, "aToken":J
    move-wide/from16 v22, v10

    const-wide v10, 0x10500000001L

    .end local v10    # "nowRTC":J
    .local v22, "nowRTC":J
    invoke-virtual {v4, v10, v11, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3586
    const-wide v10, 0x10800000002L

    invoke-virtual {v4, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3587
    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v5, v20

    const-wide v10, 0x10300000003L

    .end local v20    # "time":J
    .local v5, "time":J
    .local v16, "pendingSend":Z
    invoke-virtual {v4, v10, v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3588
    invoke-virtual {v4, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3589
    .end local v2    # "aToken":J
    .end local v5    # "time":J
    .end local v12    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v13    # "user":I
    .end local v16    # "pendingSend":Z
    move-object/from16 v2, p1

    move-wide v12, v10

    move-object/from16 v3, v17

    move-wide/from16 v10, v22

    goto :goto_3

    .line 3590
    .end local v22    # "nowRTC":J
    .restart local v10    # "nowRTC":J
    :cond_5
    move-wide/from16 v22, v10

    const-wide v10, 0x10500000001L

    .end local v10    # "nowRTC":J
    .restart local v22    # "nowRTC":J
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v4, v7, v8}, Lcom/android/server/alarm/AlarmStore;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3592
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 3593
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v12, v3

    .line 3594
    .local v12, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v12, :cond_6

    .line 3595
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 3596
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    const-wide v5, 0x20b00000014L

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3599
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    goto :goto_6

    .line 3592
    .end local v12    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    nop

    .line 3602
    .end local v2    # "i":I
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_8

    .line 3603
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    const-wide v5, 0x10b00000015L

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3606
    :cond_8
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_9

    .line 3607
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    const-wide v5, 0x10b00000017L

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3611
    :cond_9
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 3612
    .restart local v3    # "a":Lcom/android/server/alarm/Alarm;
    const-wide v5, 0x20b00000018L

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3614
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    goto :goto_7

    .line 3616
    :cond_a
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    const-wide v5, 0x10500000019L

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3617
    iget-wide v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    const-wide v5, 0x1030000001aL

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3618
    iget-wide v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    const-wide v5, 0x1030000001bL

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3619
    iget-wide v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    const-wide v5, 0x1030000001cL

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3622
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const-wide v5, 0x1050000001dL

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3623
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    const-wide v5, 0x1050000001eL

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3624
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    const-wide v5, 0x1050000001fL

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3625
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    const-wide v5, 0x10500000020L

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3626
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    const-wide v5, 0x10500000021L

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3628
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 3629
    .local v3, "f":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    const-wide v5, 0x20b00000022L

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3630
    .end local v3    # "f":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    goto :goto_8

    .line 3632
    :cond_b
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v5, 0x10b00000025L

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/util/LocalLog;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3634
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3635
    .local v2, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$6;

    invoke-direct {v3, v1}, Lcom/android/server/alarm/AlarmManagerService$6;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 3646
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v5, 0x0

    .line 3648
    .local v5, "len":I
    const/4 v6, 0x0

    .local v6, "iu":I
    :goto_9
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v6, v12, :cond_13

    .line 3649
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    .line 3650
    .local v12, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/4 v13, 0x0

    .local v13, "ip":I
    :goto_a
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v13, v10, :cond_12

    .line 3651
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3652
    .local v10, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    const/4 v11, 0x0

    .local v11, "is":I
    :goto_b
    move-object/from16 v18, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v18, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v0, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v11, v0, :cond_11

    .line 3653
    iget-object v0, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3654
    .local v0, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move/from16 v19, v6

    .end local v6    # "iu":I
    .local v19, "iu":I
    const/4 v6, 0x0

    if-lez v5, :cond_c

    .line 3655
    invoke-static {v2, v6, v5, v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v6

    :cond_c
    nop

    nop

    .line 3656
    .local v6, "pos":I
    if-gez v6, :cond_d

    .line 3657
    move-object/from16 v20, v0

    .end local v0    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .local v20, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    neg-int v0, v6

    add-int/lit8 v6, v0, -0x1

    goto :goto_c

    .line 3656
    .end local v20    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v0    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_d
    move-object/from16 v20, v0

    .line 3659
    .end local v0    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v20    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :goto_c
    array-length v0, v2

    if-ge v6, v0, :cond_f

    .line 3660
    array-length v0, v2

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 3661
    .local v0, "copylen":I
    if-lez v0, :cond_e

    .line 3662
    move-wide/from16 v24, v7

    .end local v7    # "nowElapsed":J
    .local v24, "nowElapsed":J
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    .line 3661
    .end local v24    # "nowElapsed":J
    .restart local v7    # "nowElapsed":J
    :cond_e
    move-wide/from16 v24, v7

    .line 3664
    .end local v7    # "nowElapsed":J
    .restart local v24    # "nowElapsed":J
    :goto_d
    aput-object v20, v2, v6

    .line 3665
    array-length v7, v2

    if-ge v5, v7, :cond_10

    .line 3666
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 3659
    .end local v0    # "copylen":I
    .end local v24    # "nowElapsed":J
    .restart local v7    # "nowElapsed":J
    :cond_f
    move-wide/from16 v24, v7

    .line 3652
    .end local v6    # "pos":I
    .end local v7    # "nowElapsed":J
    .end local v20    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v24    # "nowElapsed":J
    :cond_10
    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v18

    move/from16 v6, v19

    move-wide/from16 v7, v24

    goto :goto_b

    .end local v19    # "iu":I
    .end local v24    # "nowElapsed":J
    .local v6, "iu":I
    .restart local v7    # "nowElapsed":J
    :cond_11
    move/from16 v19, v6

    move-wide/from16 v24, v7

    .line 3650
    .end local v6    # "iu":I
    .end local v7    # "nowElapsed":J
    .end local v10    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v11    # "is":I
    .restart local v19    # "iu":I
    .restart local v24    # "nowElapsed":J
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v18

    const-wide v10, 0x10500000001L

    goto :goto_a

    .end local v18    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v19    # "iu":I
    .end local v24    # "nowElapsed":J
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v6    # "iu":I
    .restart local v7    # "nowElapsed":J
    :cond_12
    move-object/from16 v18, v0

    move/from16 v19, v6

    move-wide/from16 v24, v7

    .line 3648
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "iu":I
    .end local v7    # "nowElapsed":J
    .end local v12    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v13    # "ip":I
    .restart local v18    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v19    # "iu":I
    .restart local v24    # "nowElapsed":J
    add-int/lit8 v6, v19, 0x1

    const-wide v10, 0x10500000001L

    .end local v19    # "iu":I
    .restart local v6    # "iu":I
    goto/16 :goto_9

    .end local v18    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v24    # "nowElapsed":J
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v7    # "nowElapsed":J
    :cond_13
    move-object/from16 v18, v0

    move/from16 v19, v6

    move-wide/from16 v24, v7

    .line 3672
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "iu":I
    .end local v7    # "nowElapsed":J
    .restart local v18    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v24    # "nowElapsed":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v5, :cond_14

    .line 3673
    const-wide v6, 0x20b00000026L

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 3674
    .local v6, "token":J
    aget-object v8, v2, v0

    .line 3676
    .local v8, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    iget-object v10, v8, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v11, 0x10500000001L

    invoke-virtual {v4, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3677
    iget-object v10, v8, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    const-wide v11, 0x10900000002L

    invoke-virtual {v4, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3679
    const-wide v10, 0x10b00000003L

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3681
    invoke-virtual {v4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3672
    .end local v6    # "token":J
    .end local v8    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_14
    nop

    .line 3684
    .end local v0    # "i":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3685
    .local v0, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v6, 0x0

    .local v6, "iu":I
    :goto_10
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_18

    .line 3686
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 3687
    .local v7, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/4 v8, 0x0

    .local v8, "ip":I
    :goto_11
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v8, v10, :cond_17

    .line 3688
    const-wide v10, 0x20b00000027L

    invoke-virtual {v4, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 3690
    .local v10, "token":J
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3691
    .local v12, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    move-object v13, v2

    .end local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .local v13, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    const-wide v1, 0x10b00000001L

    invoke-virtual {v12, v4, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3694
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3695
    const/4 v1, 0x0

    .local v1, "is":I
    :goto_12
    iget-object v2, v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 3696
    iget-object v2, v12, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3695
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_15
    nop

    .line 3698
    .end local v1    # "is":I
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3699
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3700
    .local v2, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .local v16, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const-wide v0, 0x20b00000002L

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3701
    .end local v2    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto :goto_13

    .line 3703
    .end local v16    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    :cond_16
    move-object/from16 v16, v0

    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v16    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    invoke-virtual {v4, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3687
    .end local v10    # "token":J
    .end local v12    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v0, v16

    goto :goto_11

    .end local v13    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v16    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .local v2, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_17
    move-object/from16 v16, v0

    move-object v13, v2

    .line 3685
    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v7    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v8    # "ip":I
    .restart local v13    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v16    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_10

    .end local v13    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v16    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_18
    move-object/from16 v16, v0

    move-object v13, v2

    .line 3724
    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v5    # "len":I
    .end local v6    # "iu":I
    .end local v14    # "nextAlarmClockForUserSize":I
    .end local v15    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v18    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "nowRTC":J
    .end local v24    # "nowElapsed":J
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3726
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3727
    return-void

    .line 3724
    :goto_14
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2106
    nop

    .line 2107
    return-void

    .line 2105
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2106
    throw v0
.end method

.method getMinimumAllowedWindow(JJ)J
    .locals 6
    .param p1, "nowElapsed"    # J
    .param p3, "triggerElapsed"    # J

    .line 1364
    sub-long v0, p3, p1

    .line 1365
    .local v0, "futurity":J
    long-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 3742
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3743
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object v1

    .line 3744
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNextWakeFromIdleTimeImpl()J
    .locals 3

    .line 3730
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    goto :goto_0

    .line 3732
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3731
    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 3732
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getQuotaForBucketLocked(I)I
    .locals 2
    .param p1, "bucket"    # I

    .line 2318
    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 2319
    const/4 v0, 0x0

    .local v0, "index":I
    goto :goto_0

    .line 2320
    .end local v0    # "index":I
    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    .line 2321
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_0

    .line 2322
    .end local v0    # "index":I
    :cond_1
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_2

    .line 2323
    const/4 v0, 0x2

    .restart local v0    # "index":I
    goto :goto_0

    .line 2324
    .end local v0    # "index":I
    :cond_2
    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    .line 2325
    const/4 v0, 0x3

    .restart local v0    # "index":I
    goto :goto_0

    .line 2327
    .end local v0    # "index":I
    :cond_3
    const/4 v0, 0x4

    .line 2329
    .restart local v0    # "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v1, v1, v0

    return v1
.end method

.method hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2668
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 2673
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 2674
    const/4 v2, 0x0

    .local v2, "hasPermission":Z
    goto :goto_0

    .line 2675
    .end local v2    # "hasPermission":Z
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2676
    const/4 v2, 0x0

    .restart local v2    # "hasPermission":Z
    goto :goto_0

    .line 2677
    .end local v2    # "hasPermission":Z
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 2678
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v6, -0x1

    invoke-static {v2, v5, v6, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v4, v3

    :cond_2
    move v2, v4

    .restart local v2    # "hasPermission":Z
    goto :goto_0

    .line 2683
    .end local v2    # "hasPermission":Z
    :cond_3
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x6b

    invoke-virtual {v2, v5, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 2685
    .local v2, "mode":I
    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    if-nez v2, :cond_5

    :cond_4
    move v4, v3

    :cond_5
    move v2, v4

    .line 2688
    .local v2, "hasPermission":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 2689
    return v2
.end method

.method hasUseExactAlarmInternal(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2662
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->isUseExactAlarmEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2663
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_EXACT_ALARM"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2662
    :goto_0
    return v0
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 6
    .param p1, "interactive"    # Z

    .line 4100
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_4

    .line 4101
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 4102
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 4103
    .local v0, "nowELAPSED":J
    if-eqz p1, :cond_3

    .line 4104
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4105
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 4106
    .local v2, "thisDelayTime":J
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 4107
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 4108
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 4110
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4111
    .local v4, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4112
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 4114
    .end local v2    # "thisDelayTime":J
    .end local v4    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_1
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 4115
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v2, v0, v2

    .line 4116
    .local v2, "dur":J
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 4117
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    .line 4121
    .end local v2    # "dur":J
    :cond_2
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4124
    :cond_3
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 4127
    .end local v0    # "nowELAPSED":J
    :cond_4
    :goto_0
    return-void
.end method

.method isExemptFromExactAlarmPermissionNoLock(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 2705
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2706
    const-string v0, "AlarmManager"

    const-string v1, "Alarm lock held while calling into DeviceIdleController"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    :cond_0
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2709
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 2711
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/DeviceIdleInternal;->isAppOnWhitelist(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2708
    :goto_1
    return v0
.end method

.method isExemptFromMinWindowRestrictions(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 2696
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v0

    return v0
.end method

.method lookForPackageLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 4133
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 4134
    .local v1, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-virtual {v1, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne v3, p2, :cond_0

    .line 4135
    return v2

    .line 4137
    .end local v1    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_0
    goto :goto_0

    .line 4138
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4139
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v0, :cond_3

    .line 4140
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 4141
    .local v3, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-virtual {v3, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4142
    return v2

    .line 4141
    :cond_2
    nop

    .line 4144
    .end local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    goto :goto_1

    .line 4146
    :cond_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 4147
    .restart local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    invoke-virtual {v3, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne v4, p2, :cond_4

    .line 4148
    return v2

    .line 4150
    .end local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_4
    goto :goto_2

    .line 4151
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 1990
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1992
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->start()V

    .line 1994
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1996
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 1997
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 1998
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1999
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2001
    const-class v1, Lcom/android/server/AppStateTracker;

    .line 2002
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTrackerImpl;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 2003
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {v1, v2}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 2005
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/BatteryManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    .line 2006
    .local v1, "bm":Landroid/os/BatteryManager;
    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 2008
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 2009
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 2010
    .end local v1    # "bm":Landroid/os/BatteryManager;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 2013
    .local v0, "iAppOpsService":Lcom/android/internal/app/IAppOpsService;
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$3;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    const/16 v3, 0x6b

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2082
    goto :goto_0

    .line 2081
    :catch_0
    move-exception v2

    .line 2084
    :goto_0
    const-class v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2086
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    .line 2088
    const-class v2, Lcom/android/server/usage/AppStandbyInternal;

    .line 2089
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal;

    .line 2090
    .local v2, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;

    invoke-direct {v3, p0, v1}, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService-IA;)V

    invoke-interface {v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 2092
    const-class v1, Landroid/os/BatteryStatsInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStatsInternal;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 2094
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 2096
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {v1, v3}, Lcom/android/server/alarm/MetricsHelper;->registerPuller(Ljava/util/function/Supplier;)V

    goto :goto_1

    .line 2010
    .end local v0    # "iAppOpsService":Lcom/android/internal/app/IAppOpsService;
    .end local v2    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2098
    :cond_0
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 8

    .line 1792
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->init()V

    .line 1793
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 1795
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1796
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1797
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1798
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1799
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1800
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1802
    new-instance v0, Lcom/android/server/alarm/MetricsHelper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/android/server/alarm/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    .line 1803
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1805
    nop

    .line 1806
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110017

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    .line 1808
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v0, :cond_1

    .line 1809
    new-instance v0, Lcom/android/server/alarm/UserWakeupStore;

    invoke-direct {v0}, Lcom/android/server/alarm/UserWakeupStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    .line 1810
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v0}, Lcom/android/server/alarm/UserWakeupStore;->init()V

    .line 1812
    :cond_1
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1835
    .local v0, "callback":Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1836
    .local v3, "am":Landroid/app/ActivityManager;
    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v0}, Landroid/app/ActivityManager;->registerUidFrozenStateChangedCallback(Ljava/util/concurrent/Executor;Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V

    .line 1838
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/alarm/AlarmManagerService$1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1852
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1853
    :try_start_0
    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v5, p0, v6}, Lcom/android/server/alarm/AlarmManagerService$Constants;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 1855
    new-instance v5, Lcom/android/server/alarm/LazyAlarmStore;

    invoke-direct {v5}, Lcom/android/server/alarm/LazyAlarmStore;-><init>()V

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    .line 1856
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    invoke-interface {v5, v6}, Lcom/android/server/alarm/AlarmStore;->setAlarmClockRemovalListener(Ljava/lang/Runnable;)V

    .line 1858
    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v6, 0x36ee80

    invoke-direct {v5, v6, v7}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1859
    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v5, v6, v7}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1860
    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v5, v6, v7}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1862
    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    const-wide/32 v6, 0x5265c00

    invoke-direct {v5, v6, v7}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;-><init>(J)V

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 1864
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 1867
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/alarm/AlarmManagerService$Injector;->initializeTimeIfRequired()V

    .line 1869
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1871
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getSystemUiUid(Landroid/content/pm/PackageManagerInternal;)I

    move-result v5

    iput v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 1872
    iget v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-gtz v5, :cond_2

    .line 1873
    const-string v5, "AlarmManager"

    const-string v6, "SysUI package not found!"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1927
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 1875
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1877
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.TIME_TICK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x50200000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 1881
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v5

    .line 1882
    invoke-virtual {v5, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 1883
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 1884
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    .line 1885
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 1910
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1911
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20200000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1913
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/high16 v7, 0x4000000

    invoke-static {v5, v1, v2, v7, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1916
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 1917
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1918
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1919
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1921
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1922
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1923
    .local v1, "waitThread":Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1924
    .end local v1    # "waitThread":Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
    goto :goto_2

    .line 1925
    :cond_3
    const-string v1, "AlarmManager"

    const-string v5, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    const-class v1, Lcom/android/server/AlarmManagerInternal;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/server/alarm/AlarmManagerService$LocalService;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService-IA;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1929
    const-string v1, "alarm"

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1930
    return-void

    .line 1927
    :goto_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1967
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 1968
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1969
    .local v0, "userId":I
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v1, :cond_0

    .line 1970
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v1, v0}, Lcom/android/server/alarm/UserWakeupStore;->onUserStarting(I)V

    .line 1972
    :cond_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1986
    return-void
.end method

.method reevaluateRtcAlarms()V
    .locals 5

    .line 1394
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    .line 1402
    .local v1, "changed":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_0

    .line 1403
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    iget v2, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1406
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v2

    .line 1408
    .local v2, "idleUntilUpdated":Z
    if-eqz v2, :cond_0

    .line 1409
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v3, v4}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_0

    .line 1419
    .end local v1    # "changed":Z
    .end local v2    # "idleUntilUpdated":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1415
    .restart local v1    # "changed":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1416
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1419
    .end local v1    # "changed":Z
    :cond_1
    monitor-exit v0

    .line 1420
    return-void

    .line 1419
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method refreshExactAlarmCandidates()V
    .locals 9

    .line 1948
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1950
    .local v0, "candidates":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1951
    .local v1, "newAppIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 1952
    .local v5, "candidate":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v7, 0x400000

    invoke-virtual {v6, v5, v7, v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    .line 1954
    .local v6, "uid":I
    if-lez v6, :cond_0

    .line 1955
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1951
    .end local v5    # "candidate":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1962
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 1963
    return-void
.end method

.method removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "killUid"    # Z

    .line 3939
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3940
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3943
    :cond_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lost permission to set exact alarms!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda24;-><init>(ILjava/lang/String;)V

    .line 3948
    .local v0, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3949
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 3950
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3952
    if-eqz p3, :cond_1

    .line 3953
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v3, "schedule_exact_alarm revoked"

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    .line 3956
    :cond_1
    return-void

    .line 3950
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3941
    .end local v0    # "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method removeForStoppedLocked(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 4062
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 4064
    return-void

    .line 4066
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 4068
    .local v0, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4069
    return-void
.end method

.method removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .line 2165
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2166
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2167
    monitor-exit v0

    .line 2168
    return-void

    .line 2167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeLocked(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .line 4040
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 4042
    return-void

    .line 4044
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4045
    return-void
.end method

.method removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p3, "reason"    # I

    .line 4028
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 4033
    return-void

    .line 4035
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    invoke-direct {p0, v0, p3}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4036
    return-void
.end method

.method removeLocked(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 4049
    if-nez p1, :cond_0

    .line 4054
    return-void

    .line 4056
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4057
    return-void
.end method

.method removeUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 4073
    if-nez p1, :cond_0

    .line 4074
    const-string v0, "AlarmManager"

    const-string v1, "Ignoring attempt to remove system-user state!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4075
    return-void

    .line 4077
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(I)V

    .line 4079
    .local v0, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4081
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4082
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 4083
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 4081
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 4086
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 4087
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 4088
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4086
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    nop

    .line 4091
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 4092
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 4093
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 4091
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    nop

    .line 4096
    .end local v1    # "i":I
    return-void
.end method

.method reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/UserPackage;",
            ">;)Z"
        }
    .end annotation

    .line 1430
    .local p1, "targetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1432
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v2

    .line 1441
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 1442
    return v2
.end method

.method rescheduleKernelAlarmsLocked()V
    .locals 11

    .line 3899
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 3900
    .local v0, "nowElapsed":J
    const-wide/16 v2, 0x0

    .line 3901
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_2

    .line 3902
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->getNextWakeupDeliveryTime()J

    move-result-wide v7

    .line 3903
    .local v7, "firstWakeup":J
    iget-boolean v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    if-eqz v4, :cond_0

    .line 3904
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v4}, Lcom/android/server/alarm/UserWakeupStore;->getNextWakeupTime()J

    move-result-wide v9

    .line 3905
    .local v9, "firstUserWakeup":J
    cmp-long v4, v9, v5

    if-ltz v4, :cond_0

    cmp-long v4, v9, v7

    if-gez v4, :cond_0

    .line 3906
    move-wide v7, v9

    .line 3909
    .end local v9    # "firstUserWakeup":J
    :cond_0
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->getNextDeliveryTime()J

    move-result-wide v9

    .line 3910
    .local v9, "first":J
    cmp-long v4, v7, v5

    if-eqz v4, :cond_1

    .line 3911
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 3912
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 3913
    const/4 v4, 0x2

    invoke-direct {p0, v4, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    .line 3915
    :cond_1
    cmp-long v4, v9, v7

    if-eqz v4, :cond_2

    .line 3916
    move-wide v2, v9

    .line 3919
    .end local v7    # "firstWakeup":J
    .end local v9    # "first":J
    :cond_2
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 3920
    cmp-long v4, v2, v5

    if-eqz v4, :cond_3

    iget-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v7, v2

    if-gez v4, :cond_4

    .line 3921
    :cond_3
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 3924
    :cond_4
    cmp-long v4, v2, v5

    if-eqz v4, :cond_5

    .line 3925
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 3926
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    .line 3927
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    .line 3929
    :cond_5
    return-void
.end method

.method sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .locals 3

    .line 1511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .local v0, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1516
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1517
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 1518
    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v1

    .line 1517
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1520
    :cond_0
    return-void
.end method

.method sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1474
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1475
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_2

    .line 1479
    :cond_1
    if-eqz p2, :cond_4

    .line 1483
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1484
    .local v1, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1485
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1486
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    invoke-virtual {v3, p2}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1487
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 1490
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 1491
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 1497
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_4
    move-object v1, v0

    .line 1498
    .restart local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1500
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1501
    return-void

    .line 1476
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :goto_2
    return-void
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 34
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p10, "listenerTag"    # Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "workSource"    # Landroid/os/WorkSource;
    .param p13, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p14, "callingUid"    # I
    .param p15, "callingPackage"    # Ljava/lang/String;
    .param p16, "idleOptions"    # Landroid/os/Bundle;
    .param p17, "exactAllowReason"    # I

    .line 2174
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v11, p8

    move/from16 v9, p14

    move-object/from16 v10, p15

    if-nez v11, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    if-eqz v11, :cond_2

    if-eqz p9, :cond_2

    .line 2176
    :cond_1
    const-string v0, "AlarmManager"

    const-string v12, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    return-void

    .line 2182
    :cond_2
    const/4 v0, 0x0

    if-eqz p9, :cond_3

    .line 2184
    :try_start_0
    invoke-interface/range {p9 .. p9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v12, v13, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2188
    move-object/from16 v14, p10

    goto :goto_0

    .line 2185
    :catch_0
    move-exception v0

    .line 2186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v12, "AlarmManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Dropping unreachable alarm listener "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    return-void

    .line 2182
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v14, p10

    .line 2194
    :goto_0
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v12, v12, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 2195
    .local v12, "minInterval":J
    const-wide/16 v15, 0x0

    cmp-long v17, v7, v15

    if-lez v17, :cond_4

    cmp-long v17, v7, v12

    if-gez v17, :cond_4

    .line 2196
    move-wide/from16 v17, v15

    const-string v15, "AlarmManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v19, v12

    .end local v12    # "minInterval":J
    .local v19, "minInterval":J
    const-string v12, "Suspiciously short interval "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " millis; expanding to "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x3e8

    div-long v12, v19, v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " seconds"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    move-wide/from16 v7, v19

    move-wide/from16 v25, v7

    .end local p6    # "interval":J
    .local v7, "interval":J
    goto :goto_1

    .line 2195
    .end local v7    # "interval":J
    .end local v19    # "minInterval":J
    .restart local v12    # "minInterval":J
    .restart local p6    # "interval":J
    :cond_4
    move-wide/from16 v19, v12

    move-wide/from16 v17, v15

    .line 2200
    .end local v12    # "minInterval":J
    .restart local v19    # "minInterval":J
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v12, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v0, v7, v12

    if-lez v0, :cond_5

    .line 2201
    const-string v0, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suspiciously long interval "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " millis; clamping"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v7, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    move-wide/from16 v25, v7

    .end local p6    # "interval":J
    .restart local v7    # "interval":J
    goto :goto_1

    .line 2200
    .end local v7    # "interval":J
    .restart local p6    # "interval":J
    :cond_5
    move-wide/from16 v25, v7

    .line 2206
    .end local p6    # "interval":J
    .local v25, "interval":J
    :goto_1
    if-ltz v2, :cond_10

    const/4 v0, 0x3

    if-gt v2, v0, :cond_10

    .line 2210
    cmp-long v0, v3, v17

    if-gez v0, :cond_6

    .line 2211
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    int-to-long v7, v0

    .line 2212
    .local v7, "what":J
    const-string v0, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid alarm trigger time! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " from uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    const-wide/16 v3, 0x0

    .line 2217
    .end local v7    # "what":J
    .end local p2    # "triggerAtTime":J
    .local v3, "triggerAtTime":J
    :cond_6
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v21

    .line 2218
    .local v21, "nowElapsed":J
    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v7

    .line 2220
    .local v7, "nominalTrigger":J
    nop

    .line 2221
    invoke-static {v9}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-wide/from16 v12, v17

    goto :goto_2

    :cond_7
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v12, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    :goto_2
    add-long v12, v21, v12

    .line 2222
    .local v12, "minTrigger":J
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    .line 2225
    .local v23, "triggerElapsed":J
    cmp-long v0, v5, v17

    if-nez v0, :cond_8

    .line 2226
    move-wide/from16 v17, v23

    move-wide/from16 p2, v7

    move-wide/from16 p6, v12

    move-wide/from16 v7, v23

    move-wide/from16 v17, v21

    move-wide/from16 v21, v3

    .local v17, "maxElapsed":J
    goto/16 :goto_4

    .line 2227
    .end local v17    # "maxElapsed":J
    :cond_8
    cmp-long v0, v5, v17

    if-gez v0, :cond_9

    .line 2228
    invoke-static/range {v21 .. v26}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v17

    .line 2230
    move-wide/from16 p2, v21

    move-wide/from16 v21, v3

    move-wide/from16 v3, p2

    move-wide/from16 p2, v7

    move-wide/from16 v7, v23

    .end local v23    # "triggerElapsed":J
    .local v3, "nowElapsed":J
    .local v7, "triggerElapsed":J
    .restart local v17    # "maxElapsed":J
    .local v21, "triggerAtTime":J
    .local p2, "nominalTrigger":J
    sub-long v5, v17, v7

    move-wide/from16 p6, v12

    move-wide/from16 v23, v17

    move-wide/from16 v17, v3

    .end local p4    # "windowLength":J
    .local v5, "windowLength":J
    goto/16 :goto_4

    .line 2233
    .end local v5    # "windowLength":J
    .end local v17    # "maxElapsed":J
    .end local p2    # "nominalTrigger":J
    .local v3, "triggerAtTime":J
    .local v7, "nominalTrigger":J
    .local v21, "nowElapsed":J
    .restart local v23    # "triggerElapsed":J
    .restart local p4    # "windowLength":J
    :cond_9
    move-wide/from16 p2, v21

    move-wide/from16 v21, v3

    move-wide/from16 v3, p2

    move-wide/from16 p2, v7

    move-wide/from16 v7, v23

    .end local v23    # "triggerElapsed":J
    .local v3, "nowElapsed":J
    .local v7, "triggerElapsed":J
    .local v21, "triggerAtTime":J
    .restart local p2    # "nominalTrigger":J
    move-wide/from16 p6, v12

    .end local v12    # "minTrigger":J
    .local p6, "minTrigger":J
    invoke-virtual {v1, v3, v4, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->getMinimumAllowedWindow(JJ)J

    move-result-wide v12

    .line 2234
    .local v12, "minAllowedWindow":J
    const-wide/32 v17, 0x5265c00

    cmp-long v0, v5, v17

    if-lez v0, :cond_a

    .line 2235
    const-string v0, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v17, v3

    .end local v3    # "nowElapsed":J
    .local v17, "nowElapsed":J
    const-string v3, "Window length "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms too long; limiting to 1 day"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    const-wide/32 v3, 0x5265c00

    .end local p4    # "windowLength":J
    .local v3, "windowLength":J
    goto :goto_3

    .line 2237
    .end local v17    # "nowElapsed":J
    .local v3, "nowElapsed":J
    .restart local p4    # "windowLength":J
    :cond_a
    move-wide/from16 v17, v3

    .end local v3    # "nowElapsed":J
    .restart local v17    # "nowElapsed":J
    and-int/lit8 v0, p11, 0x40

    if-nez v0, :cond_b

    cmp-long v0, v5, v12

    if-gez v0, :cond_b

    .line 2239
    invoke-virtual {v1, v9}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromMinWindowRestrictions(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2241
    invoke-static {v9}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2239
    const-wide/32 v3, 0xb09e9e4

    invoke-static {v3, v4, v10, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2242
    const-string v0, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms too short; expanding to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    move-wide v3, v12

    .end local p4    # "windowLength":J
    .local v3, "windowLength":J
    goto :goto_3

    .line 2247
    .end local v3    # "windowLength":J
    .restart local p4    # "windowLength":J
    :cond_b
    move-wide v3, v5

    .end local p4    # "windowLength":J
    .restart local v3    # "windowLength":J
    :goto_3
    add-long v5, v7, v3

    move-wide/from16 v23, v5

    move-wide v5, v3

    .line 2252
    .end local v3    # "windowLength":J
    .end local v12    # "minAllowedWindow":J
    .restart local v5    # "windowLength":J
    .local v23, "maxElapsed":J
    :goto_4
    if-eqz v2, :cond_c

    const/4 v0, 0x2

    if-ne v2, v0, :cond_d

    .line 2253
    :cond_c
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_WAKELOCK_CHECK:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 2254
    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/INtWakelockCheck;

    iput-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mNtWakelockCheck:Lcom/android/server/power/INtWakelockCheck;

    .line 2255
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mNtWakelockCheck:Lcom/android/server/power/INtWakelockCheck;

    if-eqz v0, :cond_d

    .line 2256
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mNtWakelockCheck:Lcom/android/server/power/INtWakelockCheck;

    invoke-interface {v0, v2, v11}, Lcom/android/server/power/INtWakelockCheck;->convertAlarmType(ILandroid/app/PendingIntent;)I

    move-result v0

    .line 2257
    .local v0, "newType":I
    if-eq v0, v2, :cond_d

    .line 2258
    move v2, v0

    .line 2259
    .end local p1    # "type":I
    .local v2, "type":I
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ConvertAlarmType --> NewType = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    .end local v0    # "newType":I
    :cond_d
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2272
    :try_start_1
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v0, v9, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-lt v0, v4, :cond_f

    .line 2273
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum limit of concurrent alarms "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reached for uid: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    invoke-static {v9}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callingPackage: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2277
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v4, "AlarmManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    const/16 v4, 0x3e8

    if-ne v9, v4, :cond_e

    .line 2281
    const-string v4, "234441463"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v4, v12, v0}, [Ljava/lang/Object;

    move-result-object v4

    const v12, 0x534e4554

    invoke-static {v12, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_5

    .line 2287
    .end local v0    # "errorMsg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-wide/from16 v27, p2

    move-wide/from16 v29, p6

    move v1, v2

    move-object/from16 v31, v3

    move-wide v13, v5

    move-wide v11, v7

    move-wide/from16 v7, v21

    move-wide/from16 v9, v25

    move-wide/from16 v25, v17

    move-wide/from16 v21, v19

    goto/16 :goto_6

    .line 2279
    .restart local v0    # "errorMsg":Ljava/lang/String;
    :cond_e
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "type":I
    .end local v5    # "windowLength":J
    .end local v7    # "triggerElapsed":J
    .end local v17    # "nowElapsed":J
    .end local v19    # "minInterval":J
    .end local v21    # "triggerAtTime":J
    .end local v23    # "maxElapsed":J
    .end local v25    # "interval":J
    .end local p0    # "this":Lcom/android/server/alarm/AlarmManagerService;
    .end local p2    # "nominalTrigger":J
    .end local p6    # "minTrigger":J
    .end local p8    # "operation":Landroid/app/PendingIntent;
    .end local p9    # "directReceiver":Landroid/app/IAlarmListener;
    .end local p10    # "listenerTag":Ljava/lang/String;
    .end local p11    # "flags":I
    .end local p12    # "workSource":Landroid/os/WorkSource;
    .end local p13    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local p14    # "callingUid":I
    .end local p15    # "callingPackage":Ljava/lang/String;
    .end local p16    # "idleOptions":Landroid/os/Bundle;
    .end local p17    # "exactAllowReason":I
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2284
    .end local v0    # "errorMsg":Ljava/lang/String;
    .restart local v2    # "type":I
    .restart local v5    # "windowLength":J
    .restart local v7    # "triggerElapsed":J
    .restart local v17    # "nowElapsed":J
    .restart local v19    # "minInterval":J
    .restart local v21    # "triggerAtTime":J
    .restart local v23    # "maxElapsed":J
    .restart local v25    # "interval":J
    .restart local p0    # "this":Lcom/android/server/alarm/AlarmManagerService;
    .restart local p2    # "nominalTrigger":J
    .restart local p6    # "minTrigger":J
    .restart local p8    # "operation":Landroid/app/PendingIntent;
    .restart local p9    # "directReceiver":Landroid/app/IAlarmListener;
    .restart local p10    # "listenerTag":Ljava/lang/String;
    .restart local p11    # "flags":I
    .restart local p12    # "workSource":Landroid/os/WorkSource;
    .restart local p13    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local p14    # "callingUid":I
    .restart local p15    # "callingPackage":Ljava/lang/String;
    .restart local p16    # "idleOptions":Landroid/os/Bundle;
    .restart local p17    # "exactAllowReason":I
    :cond_f
    :goto_5
    move-wide v12, v7

    move-wide v7, v5

    move-wide v5, v12

    move-wide/from16 v27, p2

    move-wide/from16 v29, p6

    move-object/from16 v12, p9

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v31, v3

    move-object v13, v14

    move-wide/from16 v3, v21

    move/from16 v14, p11

    move-wide/from16 v21, v19

    move-object/from16 v19, p16

    move/from16 v20, p17

    move-wide/from16 v32, v17

    move/from16 v17, v9

    move-object/from16 v18, v10

    move-wide/from16 v9, v25

    move-wide/from16 v25, v32

    .end local v17    # "nowElapsed":J
    .end local v19    # "minInterval":J
    .end local p2    # "nominalTrigger":J
    .end local p6    # "minTrigger":J
    .local v3, "triggerAtTime":J
    .local v5, "triggerElapsed":J
    .local v7, "windowLength":J
    .local v9, "interval":J
    .local v21, "minInterval":J
    .local v25, "nowElapsed":J
    .local v27, "nominalTrigger":J
    .local v29, "minTrigger":J
    :try_start_3
    invoke-direct/range {v1 .. v20}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v1, v2

    move-wide v11, v5

    move-wide v13, v7

    move-wide v7, v3

    .line 2287
    .end local v2    # "type":I
    .end local v3    # "triggerAtTime":J
    .end local v5    # "triggerElapsed":J
    .local v1, "type":I
    .local v7, "triggerAtTime":J
    .local v11, "triggerElapsed":J
    .local v13, "windowLength":J
    :try_start_4
    monitor-exit v31

    .line 2288
    return-void

    .line 2287
    :catchall_1
    move-exception v0

    goto :goto_6

    .end local v1    # "type":I
    .end local v11    # "triggerElapsed":J
    .end local v13    # "windowLength":J
    .restart local v2    # "type":I
    .restart local v3    # "triggerAtTime":J
    .restart local v5    # "triggerElapsed":J
    .local v7, "windowLength":J
    :catchall_2
    move-exception v0

    move v1, v2

    move-wide v11, v5

    move-wide v13, v7

    move-wide v7, v3

    .end local v2    # "type":I
    .end local v3    # "triggerAtTime":J
    .end local v5    # "triggerElapsed":J
    .restart local v1    # "type":I
    .local v7, "triggerAtTime":J
    .restart local v11    # "triggerElapsed":J
    .restart local v13    # "windowLength":J
    goto :goto_6

    .end local v1    # "type":I
    .end local v9    # "interval":J
    .end local v11    # "triggerElapsed":J
    .end local v13    # "windowLength":J
    .end local v27    # "nominalTrigger":J
    .end local v29    # "minTrigger":J
    .restart local v2    # "type":I
    .local v5, "windowLength":J
    .local v7, "triggerElapsed":J
    .restart local v17    # "nowElapsed":J
    .restart local v19    # "minInterval":J
    .local v21, "triggerAtTime":J
    .local v25, "interval":J
    .restart local p2    # "nominalTrigger":J
    .restart local p6    # "minTrigger":J
    :catchall_3
    move-exception v0

    move-wide/from16 v27, p2

    move-wide/from16 v29, p6

    move v1, v2

    move-object/from16 v31, v3

    move-wide v13, v5

    move-wide v11, v7

    move-wide/from16 v7, v21

    move-wide/from16 v9, v25

    move-wide/from16 v25, v17

    move-wide/from16 v21, v19

    .end local v2    # "type":I
    .end local v5    # "windowLength":J
    .end local v17    # "nowElapsed":J
    .end local v19    # "minInterval":J
    .end local p2    # "nominalTrigger":J
    .end local p6    # "minTrigger":J
    .restart local v1    # "type":I
    .local v7, "triggerAtTime":J
    .restart local v9    # "interval":J
    .restart local v11    # "triggerElapsed":J
    .restart local v13    # "windowLength":J
    .local v21, "minInterval":J
    .local v25, "nowElapsed":J
    .restart local v27    # "nominalTrigger":J
    .restart local v29    # "minTrigger":J
    :goto_6
    monitor-exit v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 2206
    .end local v1    # "type":I
    .end local v7    # "triggerAtTime":J
    .end local v9    # "interval":J
    .end local v11    # "triggerElapsed":J
    .end local v13    # "windowLength":J
    .end local v21    # "minInterval":J
    .end local v23    # "maxElapsed":J
    .end local v27    # "nominalTrigger":J
    .end local v29    # "minTrigger":J
    .restart local v19    # "minInterval":J
    .local v25, "interval":J
    .restart local p1    # "type":I
    .local p2, "triggerAtTime":J
    .restart local p4    # "windowLength":J
    :cond_10
    move-wide/from16 v21, v19

    move-wide/from16 v9, v25

    .line 2207
    .end local v19    # "minInterval":J
    .end local v25    # "interval":J
    .restart local v9    # "interval":J
    .restart local v21    # "minInterval":J
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid alarm type "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTimeImpl(JILjava/lang/String;)Z
    .locals 2
    .param p1, "newSystemClockTimeMillis"    # J
    .param p3, "confidence"    # I
    .param p4, "logMsg"    # Ljava/lang/String;

    .line 2112
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setCurrentTimeMillis(JILjava/lang/String;)V

    .line 2118
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTimeZoneImpl(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .param p1, "tzId"    # Ljava/lang/String;
    .param p2, "confidence"    # I
    .param p3, "logInfo"    # Ljava/lang/String;

    .line 2123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2124
    return-void

    .line 2127
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 2131
    .local v1, "newZone":Ljava/util/TimeZone;
    monitor-enter p0

    .line 2135
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/SystemTimeZone;->setTimeZoneId(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 2136
    .local v0, "timeZoneWasChanged":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 2142
    if-eqz v0, :cond_1

    .line 2144
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 2147
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2148
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x25200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2152
    const-string/jumbo v4, "time-zone"

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2153
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2154
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v7

    const-string v11, ""

    .line 2153
    const/4 v9, 0x0

    const/16 v10, 0xcc

    invoke-virtual/range {v6 .. v11}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 2157
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 2159
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 2160
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 2159
    invoke-virtual {v4, v3, v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2162
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 2136
    .end local v0    # "timeZoneWasChanged":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "knownUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "first"    # Z

    .line 4691
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 4693
    if-eqz p1, :cond_1

    .line 4694
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4695
    return-void

    .line 4702
    :catch_0
    move-exception v1

    goto :goto_1

    .line 4698
    :cond_1
    if-ltz p2, :cond_2

    .line 4699
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4700
    return-void

    .line 4703
    :cond_2
    nop

    .line 4706
    :goto_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4707
    return-void
.end method

.method shouldAddWakeupForUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 3837
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 3838
    .local v0, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 3845
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 3840
    :goto_0
    return v2
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;J)I
    .locals 31
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)I"
        }
    .end annotation

    .line 4223
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const/4 v4, 0x0

    .line 4224
    .local v4, "wakeUps":I
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v5, v2, v3}, Lcom/android/server/alarm/AlarmStore;->removePendingAlarms(J)Ljava/util/ArrayList;

    move-result-object v20

    .line 4225
    .local v20, "pendingAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move/from16 v22, v4

    .end local v4    # "wakeUps":I
    .local v22, "wakeUps":I
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/android/server/alarm/Alarm;

    .line 4226
    .local v8, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-direct {v0, v8}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4231
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v5, v8, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4232
    .local v4, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-nez v4, :cond_0

    .line 4233
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 4234
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v6, v8, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4236
    :cond_0
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4237
    goto :goto_0

    .line 4240
    .end local v4    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_1
    const/4 v9, 0x1

    iput v9, v8, Lcom/android/server/alarm/Alarm;->count:I

    .line 4241
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4242
    iget v4, v8, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 4243
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v4, :cond_2

    move v4, v9

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v8, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 4246
    :cond_3
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v4, v8, :cond_4

    .line 4247
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 4248
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v4, v5}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 4260
    :cond_4
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-ne v4, v8, :cond_5

    .line 4261
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 4268
    :cond_5
    iget-wide v4, v8, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 4271
    iget v4, v8, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v4

    invoke-virtual {v8}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget-wide v10, v8, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v6, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v8, Lcom/android/server/alarm/Alarm;->count:I

    .line 4273
    iget v4, v8, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v4

    iget-wide v6, v8, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    mul-long v23, v4, v6

    .line 4274
    .local v23, "delta":J
    invoke-virtual {v8}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v4

    add-long v4, v4, v23

    .line 4275
    .local v4, "nextElapsed":J
    iget-wide v6, v8, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-static/range {v2 .. v7}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v25

    .line 4277
    .local v25, "nextMaxElapsed":J
    iget v1, v8, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v2, v8, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long v2, v2, v23

    sub-long v6, v25, v4

    iget-wide v10, v8, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide v11, v10

    iget-object v10, v8, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget v13, v8, Lcom/android/server/alarm/Alarm;->flags:I

    iget-object v14, v8, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v15, v8, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    iget v9, v8, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v0, v8, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, -0x1

    move/from16 v16, v9

    const/16 v17, 0x1

    move-wide/from16 v29, v11

    move-object v12, v8

    move-wide/from16 v8, v29

    .end local v8    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v12, "alarm":Lcom/android/server/alarm/Alarm;
    const/4 v11, 0x0

    move-object/from16 v27, v12

    .end local v12    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v27, "alarm":Lcom/android/server/alarm/Alarm;
    const/4 v12, 0x0

    move-object/from16 v17, v0

    move-object/from16 v28, v27

    move-object/from16 v0, p0

    .end local v27    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v28, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-direct/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_2

    .line 4268
    .end local v4    # "nextElapsed":J
    .end local v23    # "delta":J
    .end local v25    # "nextMaxElapsed":J
    .end local v28    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v8    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_6
    move-object/from16 v28, v8

    .line 4283
    .end local v8    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v28    # "alarm":Lcom/android/server/alarm/Alarm;
    :goto_2
    move-object/from16 v12, v28

    .end local v28    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v12    # "alarm":Lcom/android/server/alarm/Alarm;
    iget-boolean v1, v12, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v1, :cond_7

    .line 4284
    add-int/lit8 v22, v22, 0x1

    .line 4288
    :cond_7
    iget-object v1, v12, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_8

    .line 4289
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 4291
    .end local v12    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_8
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    goto/16 :goto_0

    .line 4293
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4294
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4302
    return v22
.end method
