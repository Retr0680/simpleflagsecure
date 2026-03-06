.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;
.implements Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$LocalService;,
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;,
        Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;,
        Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;,
        Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;
    }
.end annotation


# static fields
.field private static final BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP_PROPERTY:Ljava/lang/String; = "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

.field static final DBG:Z = false

.field private static final DEVICE_CONFIG_NAMESPACE:Ljava/lang/String; = "backstage_power"

.field private static final MAX_LOW_POWER_STATS_SIZE:I = 0x8000

.field private static final MIN_CONSUMED_POWER_THRESHOLD_KEY:Ljava/lang/String; = "min_consumed_power_threshold"

.field private static final POWER_STATS_QUERY_TIMEOUT_MILLIS:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field static final TRACE_TRACK_WAKEUP_REASON:Ljava/lang/String; = "wakeup_reason"

.field private static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field private final mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private final mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

.field private final mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

.field private final mConfigFile:Landroid/util/AtomicFile;

.field private final mContext:Landroid/content/Context;

.field private final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field final mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

.field private mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field private final mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

.field private mEntityNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLastPowerStateFromRadio:I

.field private mLastPowerStateFromWifi:I

.field private final mLock:Ljava/lang/Object;

.field private volatile mMonitorEnabled:Z

.field private final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

.field private final mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field private final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field private final mPowerStatsLock:Ljava/lang/Object;

.field private final mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

.field private final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

.field private final mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

.field private mRailsStatsCollectionEnabled:Z

.field private mStateNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field private final mSystemReady:Landroid/os/ConditionVariable;

.field private final mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

.field private final mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method public static synthetic $r8$lambda$1aCrL1KQYxlLS0wPffBEKia4qAM(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStopLaunch$108(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$1uKH0jAFkVzTTJkWSgJZQVni4Yk(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneSignalStrength$48(Landroid/telephony/SignalStrength;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2RnfhMxRf1S72QybMHW0pG1AEl4(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneOn$46(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Za_x-OkAyZsRGRIDoud6jqPMU8(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteVibratorOff$36(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2ZbvDR6kcXkeNIUCcdjshWnXSaM(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStartLaunch$107(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2cAHmvokO1tg_wZZEcuWLIeaags(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessFinish$13(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3BueiV6UHR5hG8LNSs8GraPVSKM(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFlashlightOff$60(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3KHPtNQjdXmQazQTwbuWyc8Dlbk(Lcom/android/server/am/BatteryStatsService;Landroid/os/PowerSaveState;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$onLowPowerModeChanged$5(Landroid/os/PowerSaveState;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3rUJzlhZrYQ5oiX6maGsDR_OIYI(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePackageUninstalled$88(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3zccex7oHISt-gseufVEpZbBIN4(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteModemControllerActivity$95(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$40a0_E2ErldC-wDLcHt6Ye0i6Q8(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStopRunning$106(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4JjW7XwJIiSJZGc7WgZOdk6mf_E(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRadioPowerState$65(IJIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4_L017BN9XQBcztYd4QNBiVHALU(Lcom/android/server/am/BatteryStatsService;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$onCleanupUser$8(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$56b8zMgEX_p_ptd2j1fMfLGcmUw(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$updateForegroundTimeIfOnBattery$100(ILjava/lang/String;JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Dn201ryqKCHVmxl0uP3DuW4qQc(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneState$50(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$60xjkTzlo_XjchQLFyfzj__3o3s(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteUserActivity$41(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$7etxBG5oBgaLj1M5iGKaBXuG8O8(Lcom/android/server/am/BatteryStatsService;IZIIIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneDataConnectionState$49(IZIIIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8JM5MhNddIBqh73dzjAuFa66X5Y(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteDeviceIdleMode$86(ILjava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$AEWP8qtCZLdhfQP4Jto5oo3q3R8(Lcom/android/server/am/BatteryStatsService;IJJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteVibratorOn$35(IJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ai7ZnLCIrHgKxq3zj_6LPPEKUo8(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$scheduleWriteToDisk$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bl2NAzncEY4CERUQf2yMNxE_Bks(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartSensor$33(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CIOtHUdIWKZT2Pb9BwGHMy34680(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteAlarmStart$22(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CvQiPKO5k22uQf8SPuDwEZUYD2w(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetCamera$63(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$D-MLJNUlBvQ5uPg53HYrMuh7rok(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanReset$91(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$E2zZySja-QLWcx-iSOhrqHJf6yg(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p16}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$97(IIIIIIIIJJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$EptPGuQSOwroFEdHrFLDXbtnbXo(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartAudio$53(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ftytodr6oNMHE8mmE3YRUz2HX1k(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteSyncFinish$17(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ga7cv1gJzbv-DHnYiIGRaAisI3k(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStarted$74(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$GqBpfKTCt7r9HglrAcC-I_LN8-E(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobFinish$19(Ljava/lang/String;IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gvr-7ZKRjOER4wcajtOLu7aThcY(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopVideo$56(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$I4HupAeCX0MP1z3E_STEGxN3UnI(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockFinishFromSource$32(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$IFhzeNKV23kO-pimm_OcDthJmPs(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartCamera$61(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$IabXb9gHSqwc43BsnsbE_mP-5CQ(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetVideo$58(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1GdpdqsgXyDT_MmuIn_iqYTG5U(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteSyncStart$16(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KEUFOs7T3pqu1K5KSNKgHuowa2U(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p15}, Lcom/android/server/am/BatteryStatsService;->lambda$noteChangeWakelockFromSource$27(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KEeKc4sRXh5XaBPp5rkOnDhVsg0(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$notePackageInstalled$87(Ljava/lang/String;JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KbIILFaoZRfUTKIZpT2c3D2hxKA(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$createPowerStatsScheduler$2()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LFzJO_XlKSRWF_hb_wSeNAZGaVU(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p16}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$98(IIIIIIIIJJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$LHHtqCn9yX30FAHeGjso4HNbj1o(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiBatchedScanStoppedFromSource$83(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$M_bq2aJIuy6ao-9wkN4k08GyMdg(Lcom/android/server/am/BatteryStatsService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->lambda$onUserRemoved$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MqiolLdPC6t1W7NovGXCX2XTxN4(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$reportExcessiveCpu$104(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$OnbgsTCNyXR6NrrFcSS2fDoMBjk(Lcom/android/server/am/BatteryStatsService;JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$createPowerStatsScheduler$1(JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OzUBjZsuPSwb5NudFzwOUkEqJx4(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStoppedFromSource$81(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$PCwM-7iw-1PbupolUlFOWq4Pcy0(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteGpsChanged$37(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$PYuHBTuqV08a9r0rAYn7jXZJlx8(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBluetoothControllerActivity$94(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QCm1Z6ZHhURABdBXs610YJBmQTs(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$awaitCompletion$4(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QHB9wdOiuQcdDBiazhM3T7y4zdk(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartWakelockFromSource$26(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QlKekjKgi7rEeeEd6DQT0K107P8(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiStopped$68(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QqDpq1tf8PeA6zDrbCkkVFeF5Hg(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteScreenBrightness$40(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWGTasgDsMoe4tQf4whMg_QYxT8(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$noteNetworkInterfaceForTransports$84(Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TsgteX6Cqfwovz6Fm5fYPWaBPP4(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiMulticastDisabled$77(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TwmWdLOeLvEzPz9Ao4BjfPlNkiw(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartVideo$55(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TxFLL1QhxJEODOr9EiQ_Z4_ogOU(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockReleasedFromSource$79(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$UwCbIz-g_CPidtnuo34q3nXKi3w(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockAcquired$72(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$VEKXtCZT__VcqiM9431_LON32OI(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockFinish$31(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WDeM8T9bDQ3TxyOMxnevQ8uAboc(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiControllerActivity$93(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W_m_pC8qgzHLEsmltX2zAZ9pPHU(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteGpsSignalQuality$38(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xlgb0QL12zWhyhEZsJj3wtpNlYA(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFlashlightOn$59(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YPVH1fkeYiuI_ZyRfVy_MhQAmwc(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteAlarmFinish$23(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YS5UPlTwGM0lcQKIspBYovN4mNQ(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockAcquiredFromSource$78(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YSSoKtuOfeC-pu2GlOBeY-KWqHs(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunningChanged$67(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YvcUzo2V1BJoZIdqGiH0_pdXOFY(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopSensor$34(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$_E_6wE6nKqYvLRHhz8EbEluJ12I(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopWakelockFromSource$28(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$_XQtArHfzmT6bWDc98Smjj2N4hU(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiOn$51(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$aHB8iQ1wo1I0_3d-C0dXoZ1MT0A(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockStart$29(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$aSyIcVg0mDlkGVxzBoJp1TKGPQ8(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStopped$75(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$b5MQqLcI7cEyfhOYxX7Rh2WCdnQ(Lcom/android/server/am/BatteryStatsService;IIJJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobsDeferred$20(IIJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bQPheCpAfogSMCmRtZ2jQPi79RM(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiMulticastEnabled$76(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$cPSYBn-mqsEpuW4e2D5tsmd9aTw(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteMobileRadioPowerState$45(IJIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ciMg9FlozhJ3llhSoybBUr31n7w(Lcom/android/server/am/BatteryStatsService;)D
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$new$0()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$dYC84f6xdiIlDy80ISXqT8e6cGU(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStartRunning$105(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$e_iR63TEbtw6XpYTwjEOPpZliNQ(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockReleased$73(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$eo1mW3o7ng_z3xqZJ2Qy2wsrsaE(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteEvent$15(ILjava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gP6_SHv4O0AlMf6V-gDjL6YqYXk(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetAudio$57(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$giUAKVJb_tpjuVRO4-IS-I_tPNk(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStartedFromSource$80(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hRy7dLSx4IfCuJ-vlPxMGBdmc8c(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiState$69(ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hrcE20PH0CEA0UOlvjqhV4dNSFY(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobStart$18(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$iSuuQzTLRfjm1jElqn8K_huq8VI(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteConnectivityChanged$44(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$iW9S28e_Nc4pRhYyRF402vVykYg(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartWakelock$24(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jtXXNzC3pXJGy7mQd97vAtNDKp8(Lcom/android/server/am/BatteryStatsService;ZIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$updateBatteryStatsOnActivityUsage$102(ZIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$k2LV_LHBuOfCztSSx8z4PzMJ8i8(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockStartFromSource$30(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ksppEni-y1t1rmkoTm8ntlbzfcU(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWakeUp$42(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0B7ml1VR-qc-rStjDPMCc_2b90(Lcom/android/server/am/BatteryStatsService;IIIJJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteScreenState$39(IIIJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mQ47ZIdMIFpfurd5PnoaSiktKuw(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWakupAlarm$21(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$maEh_77a7IFLNHY95bdoNasQLaY(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopAudio$54(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nDz09w8XvVp2IiJzEeVzlEBoCuk(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneOff$47(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nNiFUD5Hg2kBtBcDlY2zVHfl29w(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunning$66(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pJY0x-n8fCvkoTcsgx9wPQDjqwI(Lcom/android/server/am/BatteryStatsService;IZJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiSupplicantStateChanged$70(IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pSxO7jxz5Ta17BvhtNx-T2Ena9U(Lcom/android/server/am/BatteryStatsService;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$removeUid$7(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pdWI2hSg2S6GhRp-2t_0IxGhaws(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$noteNetworkStatsEnabled$85()V

    return-void
.end method

.method public static synthetic $r8$lambda$peRNQKiPI_V5r54aYz9lstU7S9A(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessStart$10(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$poVe73UtdkAokPl7DWl5pZTVg7o(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteUidProcessState$14(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$puwRmEc5LyEa1LyUwKP5muYaQyY(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopCamera$62(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$quPvBsxVJfQTfKA32wJni1_R90E(Lcom/android/server/am/BatteryStatsService;ZJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$noteInteractive$43(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rw7HOHKOPOqR8jW-abWVTR5BeKs(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanStopped$90(Landroid/os/WorkSource;ZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3mPUmSdDo7gVAnV99W_JqRwzyI(Lcom/android/server/am/BatteryStatsService;IJ[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteCpuWakingActivity$3(IJ[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFQz7DB9bDL3bie1hVBNp1wlM0g(Lcom/android/server/am/BatteryStatsService;JJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteCurrentTimeChanged$101(JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$u8vSJjtTcZv6Pk5qWG288PR7TA0(Lcom/android/server/am/BatteryStatsService;[ILandroid/os/ResultReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$takeUidSnapshotsAsync$99([ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uPcBn70Mo5l8wpUFYuEnNmT-25I(Lcom/android/server/am/BatteryStatsService;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessDied$103(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$urOovnjOKNNkoo7jyT-IA30T0S0(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetFlashlight$64(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vLt9HebbnK7vzU1AuoOmeTlgDO4(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p16}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$96(IIIIIIIIJJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wGrzANiPC9RXOPQIsi5L0I6qPdM(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiOff$52(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$x4iD39uC1vxdastdvuGFCCqpb24(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessAnr$12(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$x74EpGX_JPiEFqkuNlwPqOyYx8I(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiBatchedScanStartedFromSource$82(Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xX2sjpoWKQc8CQoecsmzt1fBhto(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanResults$92(Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xfPUKft_-4Ta76a2n-gknp123p4(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanStarted$89(Landroid/os/WorkSource;ZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xxJfqbRWkf5GuOgrGTepkkEodyA(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessCrash$11(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4KWsHBUrEJ3mKeXD_NI-HKR8Xw(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopWakelock$25(IILjava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBNSWELwQzYyjpSOnaL-h9h-3Eo(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRssiChanged$71(IJJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/BatteryStatsService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/BatteryStatsService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerStatsUidResolver(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/power/stats/PowerStatsUidResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mawaitCompletion(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisBatteryUsageStatsAccumulationSupported()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->isBatteryUsageStatsAccumulationSupported()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnativeWaitWakeup(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemDir"    # Ljava/io/File;

    .line 355
    move-object/from16 v6, p0

    move-object/from16 v12, p1

    move-object/from16 v4, p2

    invoke-direct {v6}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 197
    new-instance v0, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct {v0}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    iput-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 199
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-direct {v0}, Lcom/android/server/power/feature/PowerManagerFlags;-><init>()V

    iput-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 202
    iput-boolean v0, v6, Lcom/android/server/am/BatteryStatsService;->mRailsStatsCollectionEnabled:Z

    .line 205
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 206
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 207
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 208
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 209
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 217
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 218
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mSystemReady:Landroid/os/ConditionVariable;

    .line 220
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    .line 221
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 223
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    .line 228
    iput v0, v6, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 230
    iput v0, v6, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 232
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, v6}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

    .line 338
    new-instance v0, Lcom/android/server/am/BatteryStatsService$2;

    invoke-direct {v0, v6}, Lcom/android/server/am/BatteryStatsService$2;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 356
    iput-object v12, v6, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 357
    new-instance v0, Lcom/android/server/am/BatteryStatsService$3;

    invoke-direct {v0, v6}, Lcom/android/server/am/BatteryStatsService$3;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    .line 367
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "batterystats-handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 368
    iget-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 369
    new-instance v0, Landroid/os/Handler;

    iget-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 370
    iget-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    iget-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mSystemReady:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;

    invoke-direct {v2, v1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;-><init>(Landroid/os/ConditionVariable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    new-instance v0, Lcom/android/internal/os/MonotonicClock;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "monotonic_clock.xml"

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;)V

    iput-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 373
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, v12}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 374
    new-instance v0, Lcom/android/internal/os/CpuScalingPolicyReader;

    invoke-direct {v0}, Lcom/android/internal/os/CpuScalingPolicyReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicyReader;->read()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 376
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 378
    .local v13, "resetOnUnplugHighBatteryLevel":Z
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 380
    .local v14, "resetOnUnplugAfterSignificantCharge":Z
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 382
    .local v15, "batteryHistoryStorageSize":I
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    invoke-direct {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;-><init>()V

    .line 384
    invoke-virtual {v0, v13}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setResetOnUnplugHighBatteryLevel(Z)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v14}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setResetOnUnplugAfterSignificantCharge(Z)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v15}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setMaxHistorySizeBytes(I)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    move-result-object v0

    .line 388
    .local v0, "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/android/server/am/BatteryStatsService;->setPowerStatsThrottlePeriods(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->build()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    .line 391
    move-object v1, v0

    .end local v0    # "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .local v1, "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v2, v1

    .end local v1    # "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .local v2, "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    iget-object v1, v6, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    move-object v3, v2

    .end local v2    # "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .local v3, "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    sget-object v2, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    move-object v5, v3

    .end local v3    # "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .local v5, "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    iget-object v3, v6, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    move-object v7, v5

    .end local v5    # "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .local v7, "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    iget-object v5, v6, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    iget-object v8, v6, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    iget-object v9, v6, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v10, v6, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    iget-object v11, v6, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-object/from16 v16, v7

    .end local v7    # "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .local v16, "batteryStatsConfigBuilder":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object v10, v4

    move-object v9, v6

    iput-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 394
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v1, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v9, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V

    iput-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 395
    iget-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v9, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;)V

    .line 396
    iget-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v9, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 398
    nop

    .line 402
    new-instance v0, Lcom/android/server/power/stats/PowerStatsStore;

    iget-object v1, v9, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v10, v1}, Lcom/android/server/power/stats/PowerStatsStore;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    iput-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 403
    new-instance v2, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v3, v9, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v4, v9, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iget-object v5, v9, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v6, v9, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    new-instance v7, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;

    invoke-direct {v7, v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Ljava/util/function/DoubleSupplier;)V

    iput-object v2, v9, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    .line 405
    iget-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/android/server/am/BatteryStatsService;->createPowerStatsScheduler(Landroid/content/Context;)Lcom/android/server/power/stats/PowerStatsScheduler;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 407
    iget-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 409
    .local v6, "accumulatedBatteryUsageStatsSpanSize":I
    new-instance v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v2, v9, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v3, v9, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v4, v9, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    iget-object v5, v9, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    sget-object v7, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v8, v9, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    move-object v1, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerAttributor;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsStore;ILcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;)V

    iput-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 413
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    iget-object v2, v9, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    invoke-direct {v0, v2}, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;)V

    iput-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 414
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    const v2, 0x117000d

    iget-object v3, v9, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 415
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "battery_usage_stats_config"

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 419
    invoke-static {}, Lcom/nothing/server/NtExtServiceFactory;->getInstance()Lcom/nothing/server/INtExtServiceFactory;

    move-result-object v0

    iget-object v2, v9, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    invoke-interface {v0, v2}, Lcom/nothing/server/INtExtServiceFactory;->injectBatteryStatsDumpHelper(Landroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 421
    return-void
.end method

.method private awaitCompletion()V
    .locals 3

    .line 789
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 790
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;

    invoke-direct {v2, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 794
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    goto :goto_0

    .line 795
    :catch_0
    move-exception v1

    .line 797
    :goto_0
    return-void
.end method

.method private static awaitUninterruptibly(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 772
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    nop

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 778
    goto :goto_0

    .line 774
    :catch_1
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;)Lcom/android/server/am/BatteryStatsService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;

    .line 469
    new-instance v0, Lcom/android/server/am/BatteryStatsService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/BatteryStatsService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 470
    .local v0, "service":Lcom/android/server/am/BatteryStatsService;
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setCallback(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;)V

    .line 471
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->readLocked()V

    .line 473
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    .line 475
    return-object v0

    .line 473
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private createPowerStatsScheduler(Landroid/content/Context;)Lcom/android/server/power/stats/PowerStatsScheduler;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .line 424
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    .line 426
    .local v6, "aggregatedPowerStatsSpanDuration":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v8, v1

    .line 428
    .local v8, "powerStatsAggregationPeriod":J
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;

    invoke-direct {v11, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 434
    .local v11, "alarmScheduler":Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;
    new-instance v2, Lcom/android/server/power/stats/PowerStatsScheduler;

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 435
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    sget-object v12, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    invoke-direct {v14, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v2 .. v15}, Lcom/android/server/power/stats/PowerStatsScheduler;-><init>(Ljava/lang/Runnable;Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/server/power/stats/PowerAttributor;JJLcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    .line 434
    return-object v2
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    .line 3176
    add-int/lit8 p2, p2, 0x1

    .line 3177
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 3178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing option argument for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v2, "--enable"

    goto :goto_0

    :cond_0
    const-string v2, "--disable"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3179
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3180
    return v1

    .line 3182
    :cond_1
    const-string/jumbo v0, "full-wake-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "full-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    goto :goto_1

    .line 3188
    :cond_3
    const-string/jumbo v0, "no-auto-reset"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3190
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3191
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 3193
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3194
    :cond_4
    const-string/jumbo v0, "pretend-screen-off"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3196
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3197
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3198
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 3199
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 3201
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enable/disable option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3203
    return v1

    .line 3184
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3185
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3186
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 3187
    monitor-exit v0

    .line 3205
    :goto_2
    return p2

    .line 3187
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3112
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsScheduler;->aggregateAndDumpPowerStats(Ljava/io/PrintWriter;)V

    .line 3113
    return-void
.end method

.method private dumpCpuStats(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3101
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3102
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 3104
    monitor-exit v0

    .line 3105
    return-void

    .line 3104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3038
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    const-string v0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    const-string v0, "  [--daily] [--reset] [--reset-all] [--write] [--new-daily] [--read-daily]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    const-string v0, "  [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    const-string v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    const-string v0, "  -c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    const-string v0, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    const-string v0, "  --history-create-events <num>: create <num> of battery history events."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    const-string v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    const-string v0, "  --reset-all: reset the stats, clearing all current and past data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    const-string v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    const-string v0, "  --settings: dump the settings key/values related to batterystats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    const-string v0, "  --cpu: dump cpu stats for debugging purpose"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    const-string v0, "  --wakeups: dump CPU wakeup history and attribution."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    const-string v0, "  --power-profile: dump the power profile constants"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    const-string v0, "  --usage: write battery usage stats. Optional arguments:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    const-string v0, "     --proto: output as a binary protobuffer"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    const-string v0, "     --model power-profile: use the power profile model even if measured energy is available"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    nop

    .line 3067
    const-string v0, "  --sample: collect and dump a sample of stats for debugging purpose"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->isBatteryUsageStatsAccumulationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3070
    const-string v0, "  --accumulated: continuously accumulated since setup or reset-all"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    :cond_0
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    const-string v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    const-string v0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    return-void
.end method

.method private dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3125
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3126
    const-string v0, "dump"

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 3127
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpEnergyConsumerStatsLocked(Ljava/io/PrintWriter;)V

    .line 3129
    monitor-exit v0

    .line 3130
    return-void

    .line 3129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpPowerProfile(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3133
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpPowerProfileLocked(Ljava/io/PrintWriter;)V

    .line 3135
    monitor-exit v0

    .line 3136
    return-void

    .line 3135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpPowerStatsStore(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3116
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3117
    return-void
.end method

.method private dumpPowerStatsStoreTableOfContents(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3120
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->dumpTableOfContents(Landroid/util/IndentingPrintWriter;)V

    .line 3121
    return-void
.end method

.method private dumpSettings(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3089
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3090
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3091
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 3093
    const-string v1, "Flags:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    com.android.server.power.optimization.streamlined_battery_stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3095
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3094
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    monitor-exit v0

    .line 3097
    return-void

    .line 3096
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpStatsSample(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3108
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpStatsSample(Ljava/io/PrintWriter;)V

    .line 3109
    return-void
.end method

.method private dumpUnmonitored(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 47
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3224
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v2, "BatteryStatsService"

    invoke-static {v0, v2, v4}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3226
    :cond_0
    const/4 v0, 0x0

    .line 3227
    .local v0, "flags":I
    const/4 v2, 0x0

    .line 3228
    .local v2, "useCheckinFormat":Z
    const/4 v3, 0x0

    .line 3229
    .local v3, "toProto":Z
    const/4 v5, 0x0

    .line 3230
    .local v5, "isRealCheckin":Z
    const/4 v6, 0x0

    .line 3231
    .local v6, "noOutput":Z
    const/4 v7, 0x0

    .line 3232
    .local v7, "writeData":Z
    const-wide/16 v8, -0x1

    .line 3233
    .local v8, "historyStart":J
    const/4 v11, -0x1

    .line 3234
    .local v11, "reqUid":I
    if-eqz v10, :cond_28

    .line 3235
    const/4 v14, 0x0

    move-wide/from16 v44, v8

    move v9, v14

    move-wide/from16 v14, v44

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v3

    move v3, v2

    move v2, v0

    .end local v0    # "flags":I
    .local v2, "flags":I
    .local v3, "useCheckinFormat":Z
    .local v5, "toProto":Z
    .local v6, "isRealCheckin":Z
    .local v7, "noOutput":Z
    .local v8, "writeData":Z
    .local v9, "i":I
    .local v14, "historyStart":J
    :goto_0
    array-length v0, v10

    if-ge v9, v0, :cond_27

    .line 3236
    aget-object v13, v10, v9

    .line 3237
    .local v13, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3238
    const/4 v0, 0x1

    .line 3239
    .end local v3    # "useCheckinFormat":Z
    .local v0, "useCheckinFormat":Z
    const/4 v3, 0x1

    move-object/from16 v13, p1

    move v6, v3

    const/16 v19, 0x1

    move v3, v0

    .end local v6    # "isRealCheckin":Z
    .local v3, "isRealCheckin":Z
    goto/16 :goto_5

    .line 3240
    .end local v0    # "useCheckinFormat":Z
    .local v3, "useCheckinFormat":Z
    .restart local v6    # "isRealCheckin":Z
    :cond_1
    const-string v0, "--history"

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3241
    or-int/lit8 v0, v2, 0x8

    move-object/from16 v13, p1

    move v2, v0

    const/16 v19, 0x1

    .end local v2    # "flags":I
    .local v0, "flags":I
    goto/16 :goto_5

    .line 3242
    .end local v0    # "flags":I
    .restart local v2    # "flags":I
    :cond_2
    const-string v0, "--history-start"

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v18, v13

    const/16 v19, 0x1

    .end local v13    # "arg":Ljava/lang/String;
    .local v18, "arg":Ljava/lang/String;
    const-wide/16 v12, 0x0

    if-eqz v0, :cond_4

    .line 3243
    or-int/lit8 v0, v2, 0x8

    .line 3244
    .end local v2    # "flags":I
    .restart local v0    # "flags":I
    add-int/lit8 v9, v9, 0x1

    .line 3245
    array-length v2, v10

    if-lt v9, v2, :cond_3

    .line 3246
    const-string v2, "Missing time argument for --history-since"

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3248
    return-void

    .line 3250
    :cond_3
    aget-object v2, v10, v9

    invoke-static {v2, v12, v13}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 3251
    .end local v14    # "historyStart":J
    .local v12, "historyStart":J
    const/4 v2, 0x1

    move v8, v2

    move-wide v14, v12

    move-object/from16 v13, p1

    move v2, v0

    .end local v8    # "writeData":Z
    .local v2, "writeData":Z
    goto/16 :goto_5

    .line 3252
    .end local v0    # "flags":I
    .end local v12    # "historyStart":J
    .local v2, "flags":I
    .restart local v8    # "writeData":Z
    .restart local v14    # "historyStart":J
    :cond_4
    const-string v0, "--history-create-events"

    move-object/from16 v12, v18

    .end local v18    # "arg":Ljava/lang/String;
    .local v12, "arg":Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3253
    add-int/lit8 v13, v9, 0x1

    .line 3254
    .end local v9    # "i":I
    .local v13, "i":I
    array-length v0, v10

    if-lt v13, v0, :cond_5

    .line 3255
    const-string v0, "Missing events argument for --history-create-events"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3256
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3257
    return-void

    .line 3259
    :cond_5
    aget-object v0, v10, v13

    move/from16 v21, v2

    move/from16 v18, v3

    const-wide/16 v2, 0x0

    .end local v2    # "flags":I
    .end local v3    # "useCheckinFormat":Z
    .local v18, "useCheckinFormat":Z
    .local v21, "flags":I
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3260
    .local v2, "events":J
    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3261
    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    .line 3262
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->createFakeHistoryEvents(J)V

    .line 3263
    const-string v0, "Battery history create events started."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3264
    const/4 v7, 0x1

    .line 3265
    monitor-exit v9

    .line 3266
    .end local v2    # "events":J
    move v9, v13

    move/from16 v3, v18

    move/from16 v2, v21

    move-object/from16 v13, p1

    goto/16 :goto_5

    .line 3265
    .restart local v2    # "events":J
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3266
    .end local v13    # "i":I
    .end local v18    # "useCheckinFormat":Z
    .end local v21    # "flags":I
    .local v2, "flags":I
    .restart local v3    # "useCheckinFormat":Z
    .restart local v9    # "i":I
    :cond_6
    move/from16 v21, v2

    move/from16 v18, v3

    .end local v2    # "flags":I
    .end local v3    # "useCheckinFormat":Z
    .restart local v18    # "useCheckinFormat":Z
    .restart local v21    # "flags":I
    const-string v0, "-c"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3267
    const/4 v0, 0x1

    .line 3268
    .end local v18    # "useCheckinFormat":Z
    .local v0, "useCheckinFormat":Z
    or-int/lit8 v2, v21, 0x10

    move-object/from16 v13, p1

    move v3, v0

    .end local v21    # "flags":I
    .restart local v2    # "flags":I
    goto/16 :goto_5

    .line 3269
    .end local v0    # "useCheckinFormat":Z
    .end local v2    # "flags":I
    .restart local v18    # "useCheckinFormat":Z
    .restart local v21    # "flags":I
    :cond_7
    const-string v0, "--proto"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3270
    const/4 v0, 0x1

    move-object/from16 v13, p1

    move v5, v0

    move/from16 v3, v18

    move/from16 v2, v21

    .end local v5    # "toProto":Z
    .local v0, "toProto":Z
    goto/16 :goto_5

    .line 3271
    .end local v0    # "toProto":Z
    .restart local v5    # "toProto":Z
    :cond_8
    const-string v0, "--charged"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3272
    or-int/lit8 v0, v21, 0x2

    move-object/from16 v13, p1

    move v2, v0

    move/from16 v3, v18

    .end local v21    # "flags":I
    .local v0, "flags":I
    goto/16 :goto_5

    .line 3273
    .end local v0    # "flags":I
    .restart local v21    # "flags":I
    :cond_9
    const-string v0, "--daily"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3274
    or-int/lit8 v0, v21, 0x4

    move-object/from16 v13, p1

    move v2, v0

    move/from16 v3, v18

    .end local v21    # "flags":I
    .restart local v0    # "flags":I
    goto/16 :goto_5

    .line 3275
    .end local v0    # "flags":I
    .restart local v21    # "flags":I
    :cond_a
    const-string v0, "--reset-all"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_b

    .line 3276
    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3277
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    .line 3278
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsAndHistoryLocked(I)V

    .line 3280
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsStore;->reset()V

    .line 3281
    const-string v0, "Battery stats and history reset."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3282
    const/4 v7, 0x1

    .line 3283
    monitor-exit v3

    move-object/from16 v13, p1

    move/from16 v3, v18

    move/from16 v2, v21

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 3284
    :cond_b
    const-string v0, "--reset"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3285
    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3286
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    .line 3287
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsAndHistoryLocked(I)V

    .line 3289
    const-string v0, "Battery stats reset."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3290
    const/4 v7, 0x1

    .line 3291
    monitor-exit v3

    move-object/from16 v13, p1

    move/from16 v3, v18

    move/from16 v2, v21

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 3292
    :cond_c
    const-string v0, "--write"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3293
    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3294
    const-string v0, "dump"

    const/16 v2, 0x7f

    invoke-direct {v1, v0, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 3295
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3296
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeSyncLocked()V

    .line 3297
    const-string v0, "Battery stats written."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3298
    const/4 v7, 0x1

    .line 3299
    monitor-exit v2

    move-object/from16 v13, p1

    move/from16 v3, v18

    move/from16 v2, v21

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 3300
    :cond_d
    const-string v0, "--new-daily"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3301
    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3302
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3303
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 3304
    const-string v0, "New daily stats written."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3305
    const/4 v7, 0x1

    .line 3306
    monitor-exit v2

    move-object/from16 v13, p1

    move/from16 v3, v18

    move/from16 v2, v21

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 3307
    :cond_e
    const-string v0, "--read-daily"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3308
    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3309
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3310
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 3311
    const-string v0, "Last daily stats read."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3312
    const/4 v7, 0x1

    .line 3313
    monitor-exit v2

    move-object/from16 v13, p1

    move/from16 v3, v18

    move/from16 v2, v21

    goto/16 :goto_5

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    .line 3314
    :cond_f
    const-string v0, "--enable"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "enable"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object/from16 v13, p1

    move/from16 v20, v5

    move v3, v6

    goto/16 :goto_7

    .line 3321
    :cond_10
    const-string v0, "--disable"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "disable"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object/from16 v13, p1

    move/from16 v20, v5

    move v3, v6

    goto/16 :goto_6

    .line 3328
    :cond_11
    const-string v0, "-h"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3329
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3330
    return-void

    .line 3331
    :cond_12
    const-string v0, "--settings"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3332
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    .line 3333
    return-void

    .line 3334
    :cond_13
    const-string v0, "--cpu"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3335
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    .line 3336
    return-void

    .line 3337
    :cond_14
    const-string v0, "--measured-energy"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3338
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V

    .line 3339
    return-void

    .line 3340
    :cond_15
    const-string v0, "--power-profile"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3341
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpPowerProfile(Ljava/io/PrintWriter;)V

    .line 3342
    return-void

    .line 3343
    :cond_16
    const-string v0, "--usage"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3344
    const/4 v0, 0x0

    .line 3345
    .local v0, "proto":Z
    const/4 v2, 0x0

    .line 3346
    .local v2, "accumulated":Z
    add-int/lit8 v3, v9, 0x1

    .local v3, "j":I
    :goto_1
    array-length v13, v10

    if-ge v3, v13, :cond_18

    .line 3347
    aget-object v13, v10, v3

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    move/from16 v17, v3

    goto :goto_2

    :sswitch_0
    move/from16 v17, v3

    .end local v3    # "j":I
    .local v17, "j":I
    const-string v3, "--accumulated"

    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move/from16 v3, v19

    goto :goto_3

    .end local v17    # "j":I
    .restart local v3    # "j":I
    :sswitch_1
    move/from16 v17, v3

    .end local v3    # "j":I
    .restart local v17    # "j":I
    const-string v3, "--proto"

    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x0

    goto :goto_3

    :cond_17
    :goto_2
    const/4 v3, -0x1

    :goto_3
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 3352
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_4

    .line 3349
    :pswitch_1
    const/4 v0, 0x1

    .line 3350
    nop

    .line 3346
    :goto_4
    add-int/lit8 v3, v17, 0x1

    .end local v17    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    :cond_18
    nop

    .line 3356
    .end local v3    # "j":I
    move-object/from16 v13, p1

    invoke-direct {v1, v13, v4, v0, v2}, Lcom/android/server/am/BatteryStatsService;->dumpUsageStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZ)V

    .line 3357
    return-void

    .line 3358
    .end local v0    # "proto":Z
    .end local v2    # "accumulated":Z
    :cond_19
    move-object/from16 v13, p1

    const-string v0, "--wakeups"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3359
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v4, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3360
    move/from16 v20, v5

    move v3, v6

    .end local v5    # "toProto":Z
    .end local v6    # "isRealCheckin":Z
    .local v3, "isRealCheckin":Z
    .local v20, "toProto":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3359
    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3361
    return-void

    .line 3362
    .end local v3    # "isRealCheckin":Z
    .end local v20    # "toProto":Z
    .restart local v5    # "toProto":Z
    .restart local v6    # "isRealCheckin":Z
    :cond_1a
    move/from16 v20, v5

    move v3, v6

    .end local v5    # "toProto":Z
    .end local v6    # "isRealCheckin":Z
    .restart local v3    # "isRealCheckin":Z
    .restart local v20    # "toProto":Z
    const-string v0, "--sample"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3363
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpStatsSample(Ljava/io/PrintWriter;)V

    .line 3364
    return-void

    .line 3365
    :cond_1b
    const-string v0, "--aggregated"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3366
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;)V

    .line 3367
    return-void

    .line 3368
    :cond_1c
    const-string v0, "--store"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3369
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpPowerStatsStore(Ljava/io/PrintWriter;)V

    .line 3370
    return-void

    .line 3371
    :cond_1d
    const-string v0, "--store-toc"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3372
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpPowerStatsStoreTableOfContents(Ljava/io/PrintWriter;)V

    .line 3373
    return-void

    .line 3374
    :cond_1e
    const-string v0, "-a"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3375
    or-int/lit8 v0, v21, 0x20

    move v2, v0

    move v6, v3

    move/from16 v3, v18

    move/from16 v5, v20

    .end local v21    # "flags":I
    .local v0, "flags":I
    goto :goto_5

    .line 3376
    .end local v0    # "flags":I
    .restart local v21    # "flags":I
    :cond_1f
    const-string v0, "--debug"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3377
    add-int/lit8 v9, v9, 0x1

    .line 3378
    array-length v0, v10

    if-lt v9, v0, :cond_20

    .line 3379
    const-string v0, "Missing time argument for --flags HEX"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3380
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3381
    return-void

    .line 3383
    :cond_20
    aget-object v0, v10, v9

    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v0

    or-int v0, v21, v0

    move v2, v0

    move v6, v3

    move/from16 v3, v18

    move/from16 v5, v20

    .end local v21    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_5

    .line 3384
    .end local v0    # "flags":I
    .restart local v21    # "flags":I
    :cond_21
    const/4 v5, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    invoke-virtual {v12, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_22

    .line 3385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3386
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3387
    return-void

    .line 3391
    :cond_22
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3392
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 3391
    invoke-virtual {v0, v12, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3397
    .end local v11    # "reqUid":I
    .local v0, "reqUid":I
    move v11, v0

    move v6, v3

    move/from16 v3, v18

    move/from16 v5, v20

    move/from16 v2, v21

    .line 3235
    .end local v0    # "reqUid":I
    .end local v12    # "arg":Ljava/lang/String;
    .end local v18    # "useCheckinFormat":Z
    .end local v20    # "toProto":Z
    .end local v21    # "flags":I
    .local v2, "flags":I
    .local v3, "useCheckinFormat":Z
    .restart local v5    # "toProto":Z
    .restart local v6    # "isRealCheckin":Z
    .restart local v11    # "reqUid":I
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 3393
    .end local v2    # "flags":I
    .end local v5    # "toProto":Z
    .end local v6    # "isRealCheckin":Z
    .local v3, "isRealCheckin":Z
    .restart local v12    # "arg":Ljava/lang/String;
    .restart local v18    # "useCheckinFormat":Z
    .restart local v20    # "toProto":Z
    .restart local v21    # "flags":I
    :catch_0
    move-exception v0

    .line 3394
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3395
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3396
    return-void

    .line 3321
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "isRealCheckin":Z
    .end local v20    # "toProto":Z
    .restart local v5    # "toProto":Z
    .restart local v6    # "isRealCheckin":Z
    :cond_23
    move-object/from16 v13, p1

    move/from16 v20, v5

    move v3, v6

    .line 3322
    .end local v5    # "toProto":Z
    .end local v6    # "isRealCheckin":Z
    .restart local v3    # "isRealCheckin":Z
    .restart local v20    # "toProto":Z
    :goto_6
    const/4 v5, 0x0

    invoke-direct {v1, v4, v9, v10, v5}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 3323
    .end local v9    # "i":I
    .local v0, "i":I
    if-gez v0, :cond_24

    .line 3324
    return-void

    .line 3326
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabled: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v10, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    return-void

    .line 3314
    .end local v0    # "i":I
    .end local v3    # "isRealCheckin":Z
    .end local v20    # "toProto":Z
    .restart local v5    # "toProto":Z
    .restart local v6    # "isRealCheckin":Z
    .restart local v9    # "i":I
    :cond_25
    move-object/from16 v13, p1

    move/from16 v20, v5

    move v3, v6

    .line 3315
    .end local v5    # "toProto":Z
    .end local v6    # "isRealCheckin":Z
    .restart local v3    # "isRealCheckin":Z
    .restart local v20    # "toProto":Z
    :goto_7
    move/from16 v0, v19

    invoke-direct {v1, v4, v9, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 3316
    .end local v9    # "i":I
    .restart local v0    # "i":I
    if-gez v0, :cond_26

    .line 3317
    return-void

    .line 3319
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabled: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v10, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3320
    return-void

    .line 3235
    .end local v0    # "i":I
    .end local v12    # "arg":Ljava/lang/String;
    .end local v18    # "useCheckinFormat":Z
    .end local v20    # "toProto":Z
    .end local v21    # "flags":I
    .restart local v2    # "flags":I
    .local v3, "useCheckinFormat":Z
    .restart local v5    # "toProto":Z
    .restart local v6    # "isRealCheckin":Z
    .restart local v9    # "i":I
    :cond_27
    move-object/from16 v13, p1

    move/from16 v21, v2

    move/from16 v18, v3

    move/from16 v20, v5

    move v3, v6

    .end local v2    # "flags":I
    .end local v5    # "toProto":Z
    .end local v6    # "isRealCheckin":Z
    .local v3, "isRealCheckin":Z
    .restart local v18    # "useCheckinFormat":Z
    .restart local v20    # "toProto":Z
    .restart local v21    # "flags":I
    move v12, v7

    move/from16 v44, v11

    move v11, v3

    move-wide/from16 v45, v14

    move v14, v8

    move/from16 v15, v44

    move-wide/from16 v7, v45

    goto :goto_8

    .line 3234
    .end local v9    # "i":I
    .end local v14    # "historyStart":J
    .end local v18    # "useCheckinFormat":Z
    .end local v20    # "toProto":Z
    .end local v21    # "flags":I
    .local v0, "flags":I
    .local v2, "useCheckinFormat":Z
    .local v3, "toProto":Z
    .local v5, "isRealCheckin":Z
    .local v6, "noOutput":Z
    .local v7, "writeData":Z
    .local v8, "historyStart":J
    :cond_28
    move-object/from16 v13, p1

    move/from16 v21, v0

    move/from16 v18, v2

    move/from16 v20, v3

    move v12, v6

    move v14, v7

    move-wide v7, v8

    move v15, v11

    move v11, v5

    .line 3401
    .end local v0    # "flags":I
    .end local v2    # "useCheckinFormat":Z
    .end local v3    # "toProto":Z
    .end local v5    # "isRealCheckin":Z
    .end local v6    # "noOutput":Z
    .end local v8    # "historyStart":J
    .local v7, "historyStart":J
    .local v11, "isRealCheckin":Z
    .local v12, "noOutput":Z
    .local v14, "writeData":Z
    .local v15, "reqUid":I
    .restart local v18    # "useCheckinFormat":Z
    .restart local v20    # "toProto":Z
    .restart local v21    # "flags":I
    :goto_8
    if-eqz v12, :cond_29

    .line 3402
    return-void

    .line 3405
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 3407
    .local v30, "ident":J
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3408
    or-int/lit8 v21, v21, 0x40

    .line 3410
    :cond_2a
    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3412
    const-string v0, "dump"

    const/16 v2, 0x7f

    invoke-direct {v1, v0, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 3414
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3415
    nop

    .line 3417
    if-ltz v15, :cond_2b

    .line 3420
    and-int/lit8 v0, v21, 0xa

    if-nez v0, :cond_2b

    .line 3421
    or-int/lit8 v0, v21, 0x2

    .line 3423
    .end local v21    # "flags":I
    .restart local v0    # "flags":I
    and-int/lit8 v21, v0, -0x11

    move/from16 v6, v21

    .end local v0    # "flags":I
    .restart local v21    # "flags":I
    goto :goto_9

    .line 3427
    :cond_2b
    move/from16 v6, v21

    .end local v21    # "flags":I
    .local v6, "flags":I
    :goto_9
    const/high16 v0, 0x420000

    if-eqz v20, :cond_30

    .line 3428
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v25

    .line 3430
    .local v25, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v11, :cond_2e

    .line 3433
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 3434
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v0, :cond_2d

    .line 3436
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 3437
    .local v0, "raw":[B
    if-eqz v0, :cond_2c

    .line 3438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 3439
    .local v3, "in":Landroid/os/Parcel;
    array-length v5, v0

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3440
    invoke-virtual {v3, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3441
    new-instance v32, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    sget-object v34, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    move-object/from16 v16, v0

    .end local v0    # "raw":[B
    .local v16, "raw":[B
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v40, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v41, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    new-instance v43, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct/range {v43 .. v43}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v42, v0

    move-object/from16 v33, v5

    move-object/from16 v35, v9

    invoke-direct/range {v32 .. v43}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object/from16 v0, v32

    .line 3446
    .local v0, "checkinStats":Lcom/android/server/power/stats/BatteryStatsImpl;
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 3447
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 3448
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v22, v0

    move-object/from16 v23, v5

    move/from16 v26, v6

    move-wide/from16 v27, v7

    move-object/from16 v29, v9

    move-object/from16 v24, v13

    .end local v0    # "checkinStats":Lcom/android/server/power/stats/BatteryStatsImpl;
    .end local v6    # "flags":I
    .end local v7    # "historyStart":J
    .local v22, "checkinStats":Lcom/android/server/power/stats/BatteryStatsImpl;
    .local v26, "flags":I
    .local v27, "historyStart":J
    :try_start_a
    invoke-virtual/range {v22 .. v29}, Landroid/os/BatteryStats;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Landroid/os/ParcelFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 3450
    .end local v26    # "flags":I
    .end local v27    # "historyStart":J
    .restart local v6    # "flags":I
    .restart local v7    # "historyStart":J
    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 3451
    :try_start_c
    monitor-exit v2

    return-void

    .line 3458
    .end local v3    # "in":Landroid/os/Parcel;
    .end local v16    # "raw":[B
    .end local v22    # "checkinStats":Lcom/android/server/power/stats/BatteryStatsImpl;
    :catchall_6
    move-exception v0

    goto :goto_c

    .line 3453
    :catch_1
    move-exception v0

    goto :goto_a

    .line 3458
    .end local v6    # "flags":I
    .end local v7    # "historyStart":J
    .restart local v26    # "flags":I
    .restart local v27    # "historyStart":J
    :catchall_7
    move-exception v0

    move/from16 v6, v26

    move-wide/from16 v7, v27

    .end local v26    # "flags":I
    .end local v27    # "historyStart":J
    .restart local v6    # "flags":I
    .restart local v7    # "historyStart":J
    goto :goto_c

    .line 3453
    .end local v6    # "flags":I
    .end local v7    # "historyStart":J
    .restart local v26    # "flags":I
    .restart local v27    # "historyStart":J
    :catch_2
    move-exception v0

    move/from16 v6, v26

    move-wide/from16 v7, v27

    .end local v26    # "flags":I
    .end local v27    # "historyStart":J
    .restart local v6    # "flags":I
    .restart local v7    # "historyStart":J
    goto :goto_a

    .line 3437
    .local v0, "raw":[B
    :cond_2c
    move-object/from16 v16, v0

    .line 3456
    .end local v0    # "raw":[B
    goto :goto_b

    .line 3453
    :goto_a
    nop

    .line 3454
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BatteryStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure reading checkin file "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 3455
    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3454
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3458
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    :goto_b
    monitor-exit v2

    goto :goto_d

    :goto_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    .line 3461
    :cond_2e
    :goto_d
    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3462
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3463
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object/from16 v24, p1

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v29, v5

    move/from16 v26, v6

    move-wide/from16 v27, v7

    .end local v6    # "flags":I
    .end local v7    # "historyStart":J
    .restart local v26    # "flags":I
    .restart local v27    # "historyStart":J
    :try_start_e
    invoke-virtual/range {v22 .. v29}, Landroid/os/BatteryStats;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 3464
    .end local v26    # "flags":I
    .end local v27    # "historyStart":J
    .restart local v6    # "flags":I
    .restart local v7    # "historyStart":J
    if-eqz v14, :cond_2f

    .line 3465
    :try_start_f
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    goto :goto_e

    .line 3467
    :catchall_8
    move-exception v0

    goto :goto_f

    :cond_2f
    :goto_e
    monitor-exit v2

    .line 3469
    .end local v25    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move/from16 v26, v6

    move v6, v15

    goto/16 :goto_14

    .line 3467
    .end local v6    # "flags":I
    .end local v7    # "historyStart":J
    .restart local v25    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v26    # "flags":I
    .restart local v27    # "historyStart":J
    :catchall_9
    move-exception v0

    move/from16 v6, v26

    move-wide/from16 v7, v27

    .end local v26    # "flags":I
    .end local v27    # "historyStart":J
    .restart local v6    # "flags":I
    .restart local v7    # "historyStart":J
    :goto_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v0

    .line 3469
    .end local v25    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_30
    if-eqz v18, :cond_35

    .line 3470
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    .line 3472
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v11, :cond_33

    .line 3475
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v13, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v13

    .line 3476
    :try_start_10
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    if-eqz v0, :cond_32

    .line 3478
    :try_start_11
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 3479
    .local v0, "raw":[B
    if-eqz v0, :cond_31

    .line 3480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3481
    .local v2, "in":Landroid/os/Parcel;
    array-length v3, v0

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3482
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3483
    new-instance v32, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    sget-object v34, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    move-object/from16 v16, v0

    .end local v0    # "raw":[B
    .restart local v16    # "raw":[B
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v40, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v41, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    new-instance v43, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct/range {v43 .. v43}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v42, v0

    move-object/from16 v33, v3

    move-object/from16 v35, v9

    invoke-direct/range {v32 .. v43}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object/from16 v0, v32

    .line 3488
    .local v0, "checkinStats":Lcom/android/server/power/stats/BatteryStatsImpl;
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 3489
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3490
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    move-object/from16 v44, v2

    move-object v2, v0

    move-object/from16 v0, v44

    .local v0, "in":Landroid/os/Parcel;
    .local v2, "checkinStats":Lcom/android/server/power/stats/BatteryStatsImpl;
    invoke-virtual/range {v2 .. v9}, Landroid/os/BatteryStats;->dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 3492
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Landroid/os/ParcelFormatException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 3493
    :try_start_12
    monitor-exit v13

    return-void

    .line 3500
    .end local v0    # "in":Landroid/os/Parcel;
    .end local v2    # "checkinStats":Lcom/android/server/power/stats/BatteryStatsImpl;
    .end local v16    # "raw":[B
    :catchall_a
    move-exception v0

    goto :goto_12

    .line 3495
    :catch_3
    move-exception v0

    goto :goto_10

    .line 3479
    .local v0, "raw":[B
    :cond_31
    move-object/from16 v16, v0

    .line 3498
    .end local v0    # "raw":[B
    goto :goto_11

    .line 3495
    :goto_10
    nop

    .line 3496
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 3497
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3496
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3500
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_32
    :goto_11
    monitor-exit v13

    goto :goto_13

    :goto_12
    monitor-exit v13
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    throw v0

    .line 3503
    :cond_33
    :goto_13
    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3504
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Landroid/os/BatteryStats;->dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 3505
    if-eqz v14, :cond_34

    .line 3506
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    .line 3509
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_34
    move/from16 v26, v6

    move v6, v15

    goto :goto_14

    .line 3511
    :cond_35
    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3513
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    move-object/from16 v4, p2

    move v5, v6

    move v6, v15

    .end local v15    # "reqUid":I
    .local v5, "flags":I
    .local v6, "reqUid":I
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->dump(Landroid/content/Context;Ljava/io/PrintWriter;IIJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 3514
    move/from16 v26, v5

    .end local v5    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v14, :cond_36

    .line 3515
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    .line 3517
    :cond_36
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 3518
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v4, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3522
    :goto_14
    return-void

    .line 3414
    .end local v6    # "reqUid":I
    .end local v26    # "flags":I
    .restart local v15    # "reqUid":I
    .restart local v21    # "flags":I
    :catchall_b
    move-exception v0

    move v6, v15

    .end local v15    # "reqUid":I
    .restart local v6    # "reqUid":I
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3415
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x605db7b8 -> :sswitch_1
        0x4e7f1da2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpUsageStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZ)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "proto"    # Z
    .param p4, "accumulated"    # Z

    .line 3140
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3141
    const-string v0, "dump"

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 3143
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 3144
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 3145
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 3146
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 3147
    .local v0, "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    nop

    .line 3148
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeScreenStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 3150
    if-eqz p4, :cond_0

    .line 3151
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->accumulated()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 3153
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v1

    .line 3154
    .local v1, "query":Landroid/os/BatteryUsageStatsQuery;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3155
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->prepareForDumpLocked()V

    .line 3156
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3157
    nop

    .line 3160
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    .line 3163
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3164
    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3165
    .local v2, "batteryUsageStats":Landroid/os/BatteryUsageStats;
    if-eqz p3, :cond_1

    .line 3166
    :try_start_2
    invoke-virtual {v2, p1}, Landroid/os/BatteryUsageStats;->dumpToProto(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 3163
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 3168
    :cond_1
    const-string v3, "  "

    invoke-virtual {v2, p2, v3}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3170
    :goto_0
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .end local v2    # "batteryUsageStats":Landroid/os/BatteryUsageStats;
    :catch_0
    move-exception v2

    goto :goto_4

    .line 3172
    :cond_2
    :goto_1
    goto :goto_5

    .line 3163
    .restart local v2    # "batteryUsageStats":Landroid/os/BatteryUsageStats;
    :goto_2
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    nop

    .end local v0    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v1    # "query":Landroid/os/BatteryUsageStatsQuery;
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "proto":Z
    .end local p4    # "accumulated":Z
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3170
    .end local v2    # "batteryUsageStats":Landroid/os/BatteryUsageStats;
    .restart local v0    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .restart local v1    # "query":Landroid/os/BatteryUsageStatsQuery;
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "proto":Z
    .restart local p4    # "accumulated":Z
    :goto_4
    nop

    .line 3171
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BatteryStatsService"

    const-string v4, "Cannot close BatteryUsageStats"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5
    return-void

    .line 3156
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    .line 834
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 835
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v0

    .line 837
    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 838
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 839
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v1
.end method

.method private static isBatteryUsageStatsAccumulationSupported()Z
    .locals 1

    .line 625
    nop

    .line 626
    nop

    .line 627
    nop

    .line 628
    nop

    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$awaitCompletion$4(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 791
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 792
    return-void
.end method

.method private synthetic lambda$createPowerStatsScheduler$1(JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 8
    .param p1, "triggerAtMillis"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "onAlarmListener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p5, "aHandler"    # Landroid/os/Handler;

    .line 430
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 431
    .local v1, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, 0x3

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "triggerAtMillis":J
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "onAlarmListener":Landroid/app/AlarmManager$OnAlarmListener;
    .end local p5    # "aHandler":Landroid/os/Handler;
    .local v3, "triggerAtMillis":J
    .local v5, "tag":Ljava/lang/String;
    .local v6, "onAlarmListener":Landroid/app/AlarmManager$OnAlarmListener;
    .local v7, "aHandler":Landroid/os/Handler;
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 433
    return-void
.end method

.method private synthetic lambda$createPowerStatsScheduler$2()Ljava/lang/Long;
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory;->getStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$0()D
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBatteryCapacity()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method private synthetic lambda$noteAlarmFinish$23(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "localWs"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1581
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1582
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 1583
    monitor-exit v1

    .line 1584
    return-void

    .line 1583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteAlarmStart$22(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "localWs"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1567
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1568
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 1569
    monitor-exit v1

    .line 1570
    return-void

    .line 1569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteBleScanReset$91(JJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 2810
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2811
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetBluetoothScanLocked(JJ)V

    .line 2812
    monitor-exit v0

    .line 2813
    return-void

    .line 2812
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$noteBleScanResults$92(Landroid/os/WorkSource;IJJ)V
    .locals 9
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "numNewResults"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2827
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2828
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "numNewResults":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "numNewResults":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 2830
    monitor-exit v1

    .line 2831
    return-void

    .line 2830
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "numNewResults":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "numNewResults":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "numNewResults":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "numNewResults":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteBleScanStarted$89(Landroid/os/WorkSource;ZJJ)V
    .locals 9
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2775
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2776
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "isUnoptimized":Z
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "isUnoptimized":Z
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 2778
    monitor-exit v1

    .line 2779
    return-void

    .line 2778
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "isUnoptimized":Z
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "isUnoptimized":Z
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "isUnoptimized":Z
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "isUnoptimized":Z
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteBleScanStopped$90(Landroid/os/WorkSource;ZJJ)V
    .locals 9
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2793
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2794
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "isUnoptimized":Z
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "isUnoptimized":Z
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 2796
    monitor-exit v1

    .line 2797
    return-void

    .line 2796
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "isUnoptimized":Z
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "isUnoptimized":Z
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "isUnoptimized":Z
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "isUnoptimized":Z
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteBluetoothControllerActivity$94(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .locals 10
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2871
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2872
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v4, -0x1

    move-object v3, p1

    move-wide v6, p2

    move-wide v8, p4

    .end local p1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v6, "elapsedRealtime":J
    .local v8, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    .line 2874
    monitor-exit v1

    .line 2875
    return-void

    .line 2874
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    .restart local p1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-wide v6, p2

    move-wide v8, p4

    move-object p1, v0

    .end local p1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v6    # "elapsedRealtime":J
    .restart local v8    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteChangeWakelockFromSource$27(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 19
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "localNewWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z
    .param p12, "elapsedRealtime"    # J
    .param p14, "uptime"    # J

    .line 1657
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 1658
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    invoke-virtual/range {v3 .. v18}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1661
    monitor-exit v2

    .line 1662
    return-void

    .line 1661
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteConnectivityChanged$44(ILjava/lang/String;JJ)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1979
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1980
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "type":I
    .end local p2    # "extra":Ljava/lang/String;
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "type":I
    .local v4, "extra":Ljava/lang/String;
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;JJ)V

    .line 1981
    monitor-exit v1

    .line 1982
    return-void

    .line 1981
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "type":I
    .end local v4    # "extra":Ljava/lang/String;
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "type":I
    .restart local p2    # "extra":Ljava/lang/String;
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "type":I
    .end local p2    # "extra":Ljava/lang/String;
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "type":I
    .restart local v4    # "extra":Ljava/lang/String;
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteCpuWakingActivity$3(IJ[I)V
    .locals 1
    .param p1, "subsystem"    # I
    .param p2, "elapsedMillis"    # J
    .param p4, "uids"    # [I

    .line 755
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->noteWakingActivity(IJ[I)V

    return-void
.end method

.method private synthetic lambda$noteCurrentTimeChanged$101(JJJ)V
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 3793
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3794
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "currentTime":J
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "currentTime":J
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCurrentTimeChangedLocked(JJJ)V

    .line 3795
    monitor-exit v1

    .line 3796
    return-void

    .line 3795
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "currentTime":J
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "currentTime":J
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "currentTime":J
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "currentTime":J
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteDeviceIdleMode$86(ILjava/lang/String;IJJ)V
    .locals 10
    .param p1, "mode"    # I
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 2732
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2733
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;IJJ)V

    .line 2735
    monitor-exit v1

    .line 2736
    return-void

    .line 2735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteEvent$15(ILjava/lang/String;IJJ)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1453
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1454
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;IJJ)V

    .line 1455
    monitor-exit v1

    .line 1456
    return-void

    .line 1455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteFlashlightOff$60(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2265
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2266
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFlashlightOffLocked(IJJ)V

    .line 2267
    monitor-exit v1

    .line 2268
    return-void

    .line 2267
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteFlashlightOn$59(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2247
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2248
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFlashlightOnLocked(IJJ)V

    .line 2249
    monitor-exit v1

    .line 2250
    return-void

    .line 2249
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteFullWifiLockAcquired$72(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2500
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2501
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(IJJ)V

    .line 2502
    monitor-exit v1

    .line 2503
    return-void

    .line 2502
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteFullWifiLockAcquiredFromSource$78(Landroid/os/WorkSource;JJ)V
    .locals 8
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2597
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2598
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2600
    monitor-exit v1

    .line 2601
    return-void

    .line 2600
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteFullWifiLockReleased$73(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2516
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2517
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(IJJ)V

    .line 2518
    monitor-exit v1

    .line 2519
    return-void

    .line 2518
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteFullWifiLockReleasedFromSource$79(Landroid/os/WorkSource;JJ)V
    .locals 8
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2615
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2616
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2618
    monitor-exit v1

    .line 2619
    return-void

    .line 2618
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteGpsChanged$37(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .locals 9
    .param p1, "localOldWs"    # Landroid/os/WorkSource;
    .param p2, "localNewWs"    # Landroid/os/WorkSource;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1861
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1862
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "localOldWs":Landroid/os/WorkSource;
    .end local p2    # "localNewWs":Landroid/os/WorkSource;
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "localOldWs":Landroid/os/WorkSource;
    .local v4, "localNewWs":Landroid/os/WorkSource;
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 1863
    monitor-exit v1

    .line 1864
    return-void

    .line 1863
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localOldWs":Landroid/os/WorkSource;
    .end local v4    # "localNewWs":Landroid/os/WorkSource;
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "localOldWs":Landroid/os/WorkSource;
    .restart local p2    # "localNewWs":Landroid/os/WorkSource;
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "localOldWs":Landroid/os/WorkSource;
    .end local p2    # "localNewWs":Landroid/os/WorkSource;
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "localOldWs":Landroid/os/WorkSource;
    .restart local v4    # "localNewWs":Landroid/os/WorkSource;
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteGpsSignalQuality$38(IJJ)V
    .locals 8
    .param p1, "signalLevel"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1877
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1878
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "signalLevel":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "signalLevel":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteGpsSignalQualityLocked(IJJ)V

    .line 1879
    monitor-exit v1

    .line 1880
    return-void

    .line 1879
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "signalLevel":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "signalLevel":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "signalLevel":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "signalLevel":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteInteractive$43(ZJ)V
    .locals 2
    .param p1, "interactive"    # Z
    .param p2, "elapsedRealtime"    # J

    .line 1963
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1964
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteInteractiveLocked(ZJ)V

    .line 1965
    monitor-exit v0

    .line 1966
    return-void

    .line 1965
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$noteJobFinish$19(Ljava/lang/String;IIJJ)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "stopReason"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1523
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1524
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;IIJJ)V

    .line 1525
    monitor-exit v1

    .line 1526
    return-void

    .line 1525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteJobStart$18(Ljava/lang/String;IJJ)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1506
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1507
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "name":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;IJJ)V

    .line 1508
    monitor-exit v1

    .line 1509
    return-void

    .line 1508
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteJobsDeferred$20(IIJJJ)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "numDeferred"    # I
    .param p3, "sinceLast"    # J
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 1536
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1537
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobsDeferredLocked(IIJJJ)V

    .line 1539
    monitor-exit v1

    .line 1540
    return-void

    .line 1539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteLongPartialWakelockFinish$31(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1732
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1733
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1735
    monitor-exit v1

    .line 1736
    return-void

    .line 1735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteLongPartialWakelockFinishFromSource$32(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "localWs"    # Landroid/os/WorkSource;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1751
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1752
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 1754
    monitor-exit v1

    .line 1755
    return-void

    .line 1754
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteLongPartialWakelockStart$29(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1695
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1696
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1698
    monitor-exit v1

    .line 1699
    return-void

    .line 1698
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteLongPartialWakelockStartFromSource$30(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "localWs"    # Landroid/os/WorkSource;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1714
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1715
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 1717
    monitor-exit v1

    .line 1718
    return-void

    .line 1717
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteMobileRadioPowerState$45(IJIJJ)V
    .locals 11
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 1996
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1998
    :try_start_0
    iget v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    return-void

    .line 2003
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2000
    :cond_0
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 2001
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJIJJ)Z

    .line 2003
    monitor-exit v1

    .line 2004
    return-void

    .line 2003
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteModemControllerActivity$95(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .locals 9
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "networkStatsManager"    # Landroid/app/usage/NetworkStatsManager;

    .line 2895
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    .end local p1    # "info":Landroid/telephony/ModemActivityInfo;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .end local p6    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    .local v1, "info":Landroid/telephony/ModemActivityInfo;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    .local v8, "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    .line 2897
    return-void
.end method

.method private synthetic lambda$noteNetworkInterfaceForTransports$84(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "transportTypes"    # [I

    .line 2700
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    .line 2701
    return-void
.end method

.method private synthetic lambda$noteNetworkStatsEnabled$85()V
    .locals 3

    .line 2716
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string/jumbo v1, "network-stats-enabled"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 2719
    return-void
.end method

.method private synthetic lambda$notePackageInstalled$87(Ljava/lang/String;JJJ)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 2745
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2746
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;JJJ)V

    .line 2748
    monitor-exit v1

    .line 2749
    return-void

    .line 2748
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$notePackageUninstalled$88(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2758
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2759
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "pkgName":Ljava/lang/String;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;JJ)V

    .line 2760
    monitor-exit v1

    .line 2761
    return-void

    .line 2760
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$notePhoneDataConnectionState$49(IZIIIJJ)V
    .locals 12
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "serviceType"    # I
    .param p4, "nrState"    # I
    .param p5, "nrFrequency"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .line 2069
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2070
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZIIIJJ)V

    .line 2072
    monitor-exit v1

    .line 2073
    return-void

    .line 2072
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$notePhoneOff$47(JJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 2035
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2036
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneOffLocked(JJ)V

    .line 2037
    monitor-exit v0

    .line 2038
    return-void

    .line 2037
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$notePhoneOn$46(JJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 2019
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2020
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneOnLocked(JJ)V

    .line 2021
    monitor-exit v0

    .line 2022
    return-void

    .line 2021
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$notePhoneSignalStrength$48(Landroid/telephony/SignalStrength;JJ)V
    .locals 8
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2051
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2052
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "signalStrength":Landroid/telephony/SignalStrength;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "signalStrength":Landroid/telephony/SignalStrength;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;JJ)V

    .line 2053
    monitor-exit v1

    .line 2054
    return-void

    .line 2053
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "signalStrength":Landroid/telephony/SignalStrength;
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "signalStrength":Landroid/telephony/SignalStrength;
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "signalStrength":Landroid/telephony/SignalStrength;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "signalStrength":Landroid/telephony/SignalStrength;
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$notePhoneState$50(IJJ)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2086
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 2087
    .local v3, "simState":I
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v8

    .line 2088
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "state":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v2, "state":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneStateLocked(IIJJ)V

    .line 2089
    monitor-exit v8

    .line 2090
    return-void

    .line 2089
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "state":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "state":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "state":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v2    # "state":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteProcessAnr$12(Ljava/lang/String;IJJ)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 974
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 975
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "name":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;IJJ)V

    .line 976
    monitor-exit v1

    .line 977
    return-void

    .line 976
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteProcessCrash$11(Ljava/lang/String;IJJ)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 960
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 961
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "name":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;IJJ)V

    .line 962
    monitor-exit v1

    .line 963
    return-void

    .line 962
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteProcessDied$103(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 3825
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3826
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessDiedLocked(II)V

    .line 3827
    monitor-exit v0

    .line 3828
    return-void

    .line 3827
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$noteProcessFinish$13(Ljava/lang/String;IJJ)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 986
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 987
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "name":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;IJJ)V

    .line 988
    monitor-exit v1

    .line 989
    return-void

    .line 988
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteProcessStart$10(Ljava/lang/String;IJJ)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 946
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 947
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "name":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;IJJ)V

    .line 948
    monitor-exit v1

    .line 949
    return-void

    .line 948
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteResetAudio$57(JJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 2211
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetAudioLocked(JJ)V

    .line 2213
    monitor-exit v0

    .line 2214
    return-void

    .line 2213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$noteResetCamera$63(JJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 2321
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetCameraLocked(JJ)V

    .line 2323
    monitor-exit v0

    .line 2324
    return-void

    .line 2323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$noteResetFlashlight$64(JJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 2339
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetFlashlightLocked(JJ)V

    .line 2341
    monitor-exit v0

    .line 2342
    return-void

    .line 2341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$noteResetVideo$58(JJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 2229
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2230
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetVideoLocked(JJ)V

    .line 2231
    monitor-exit v0

    .line 2232
    return-void

    .line 2231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$noteScreenBrightness$40(IIJJ)V
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "brightness"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1914
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1915
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "displayId":I
    .end local p2    # "brightness":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "displayId":I
    .local v4, "brightness":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenBrightnessLocked(IIJJ)V

    .line 1917
    monitor-exit v1

    .line 1918
    return-void

    .line 1917
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "displayId":I
    .end local v4    # "brightness":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "displayId":I
    .restart local p2    # "brightness":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "displayId":I
    .end local p2    # "brightness":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "displayId":I
    .restart local v4    # "brightness":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteScreenState$39(IIIJJJ)V
    .locals 12
    .param p1, "displayId"    # I
    .param p2, "state"    # I
    .param p3, "reason"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J
    .param p8, "currentTime"    # J

    .line 1895
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1896
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenStateLocked(IIIJJJ)V

    .line 1898
    monitor-exit v1

    .line 1900
    return-void

    .line 1898
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteServiceStartLaunch$107(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 3876
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3877
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0

    .line 3879
    .local v0, "stats":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    move-wide/from16 v8, p6

    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked(J)V

    .line 3880
    .end local v0    # "stats":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v1

    .line 3881
    return-void

    .line 3880
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v8, p6

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteServiceStartRunning$105(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 3848
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3849
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0

    .line 3851
    .local v0, "stats":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    move-wide/from16 v8, p6

    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked(J)V

    .line 3852
    .end local v0    # "stats":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v1

    .line 3853
    return-void

    .line 3852
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v8, p6

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteServiceStopLaunch$108(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 3890
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3891
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0

    .line 3893
    .local v0, "stats":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    move-wide/from16 v8, p6

    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked(J)V

    .line 3894
    .end local v0    # "stats":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v1

    .line 3895
    return-void

    .line 3894
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v8, p6

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteServiceStopRunning$106(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 3862
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3863
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0

    .line 3865
    .local v0, "stats":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    move-wide/from16 v8, p6

    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked(J)V

    .line 3866
    .end local v0    # "stats":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v1

    .line 3867
    return-void

    .line 3866
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v8, p6

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteStartAudio$53(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2139
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2140
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAudioOnLocked(IJJ)V

    .line 2141
    monitor-exit v1

    .line 2142
    return-void

    .line 2141
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteStartCamera$61(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2284
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2285
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCameraOnLocked(IJJ)V

    .line 2286
    monitor-exit v1

    .line 2287
    return-void

    .line 2286
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteStartSensor$33(IIJJ)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1768
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1769
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "uid":I
    .end local p2    # "sensor":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "uid":I
    .local v4, "sensor":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartSensorLocked(IIJJ)V

    .line 1770
    monitor-exit v1

    .line 1771
    return-void

    .line 1770
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "sensor":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "sensor":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "sensor":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "sensor":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteStartVideo$55(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2175
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2176
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVideoOnLocked(IJJ)V

    .line 2177
    monitor-exit v1

    .line 2178
    return-void

    .line 2177
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteStartWakelock$24(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    .line 1598
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1599
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v5, 0x0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1601
    monitor-exit v1

    .line 1602
    return-void

    .line 1601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteStartWakelockFromSource$26(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    .line 1635
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1636
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1638
    monitor-exit v1

    .line 1639
    return-void

    .line 1638
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteStopAudio$54(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2157
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2158
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAudioOffLocked(IJJ)V

    .line 2159
    monitor-exit v1

    .line 2160
    return-void

    .line 2159
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteStopCamera$62(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2303
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2304
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCameraOffLocked(IJJ)V

    .line 2305
    monitor-exit v1

    .line 2306
    return-void

    .line 2305
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteStopSensor$34(IIJJ)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1809
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1810
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "uid":I
    .end local p2    # "sensor":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "uid":I
    .local v4, "sensor":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopSensorLocked(IIJJ)V

    .line 1811
    monitor-exit v1

    .line 1812
    return-void

    .line 1811
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "sensor":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "sensor":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "sensor":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "sensor":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteStopVideo$56(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2193
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2194
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVideoOffLocked(IJJ)V

    .line 2195
    monitor-exit v1

    .line 2196
    return-void

    .line 2195
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteStopWakelock$25(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .line 1616
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1617
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1619
    monitor-exit v1

    .line 1620
    return-void

    .line 1619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteStopWakelockFromSource$28(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 12
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .line 1677
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1678
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 1680
    monitor-exit v1

    .line 1681
    return-void

    .line 1680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteSyncFinish$17(Ljava/lang/String;IJJ)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1487
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1488
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "name":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;IJJ)V

    .line 1489
    monitor-exit v1

    .line 1490
    return-void

    .line 1489
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteSyncStart$16(Ljava/lang/String;IJJ)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1469
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1470
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "name":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;IJJ)V

    .line 1471
    monitor-exit v1

    .line 1472
    return-void

    .line 1471
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteUidProcessState$14(IIJJ)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "state"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1001
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->noteUidProcessState(II)V

    .line 1002
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1003
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "uid":I
    .end local p2    # "state":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "uid":I
    .local v4, "state":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteUidProcessStateLocked(IIJJ)V

    .line 1004
    monitor-exit v1

    .line 1005
    return-void

    .line 1004
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "state":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "state":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "state":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "state":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteUserActivity$41(IIJJ)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "event"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1932
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1933
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "uid":I
    .end local p2    # "event":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "uid":I
    .local v4, "event":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteUserActivityLocked(IIJJ)V

    .line 1934
    monitor-exit v1

    .line 1935
    return-void

    .line 1934
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "event":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "event":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "event":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "event":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteVibratorOff$36(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1843
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1844
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVibratorOffLocked(IJJ)V

    .line 1845
    monitor-exit v1

    .line 1846
    return-void

    .line 1845
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteVibratorOn$35(IJJJ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1827
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1828
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVibratorOnLocked(IJJJ)V

    .line 1829
    monitor-exit v1

    .line 1830
    return-void

    .line 1829
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteWakeUp$42(Ljava/lang/String;IJJ)V
    .locals 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1948
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1949
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "reasonUid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "reason":Ljava/lang/String;
    .local v4, "reasonUid":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;IJJ)V

    .line 1950
    monitor-exit v1

    .line 1951
    return-void

    .line 1950
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "reasonUid":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "reason":Ljava/lang/String;
    .restart local p2    # "reasonUid":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "reasonUid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v4    # "reasonUid":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWakupAlarm$21(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "localWs"    # Landroid/os/WorkSource;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 1552
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1553
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    .line 1555
    monitor-exit v1

    .line 1556
    return-void

    .line 1555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteWifiBatchedScanStartedFromSource$82(Landroid/os/WorkSource;IJJ)V
    .locals 9
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2667
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2668
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "csph":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "csph":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 2670
    monitor-exit v1

    .line 2671
    return-void

    .line 2670
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "csph":I
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "csph":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "csph":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "csph":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiBatchedScanStoppedFromSource$83(Landroid/os/WorkSource;JJ)V
    .locals 8
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2685
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2686
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2688
    monitor-exit v1

    .line 2689
    return-void

    .line 2688
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiControllerActivity$93(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .locals 9
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "networkStatsManager"    # Landroid/app/usage/NetworkStatsManager;

    .line 2851
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    .end local p1    # "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .end local p6    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    .local v1, "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    .local v8, "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    .line 2853
    return-void
.end method

.method private synthetic lambda$noteWifiMulticastDisabled$77(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2580
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2581
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(IJJ)V

    .line 2582
    monitor-exit v1

    .line 2583
    return-void

    .line 2582
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiMulticastEnabled$76(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2564
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2565
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(IJJ)V

    .line 2566
    monitor-exit v1

    .line 2567
    return-void

    .line 2566
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiOff$52(JJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 2121
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiOffLocked(JJ)V

    .line 2123
    monitor-exit v0

    .line 2124
    return-void

    .line 2123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$noteWifiOn$51(JJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 2103
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiOnLocked(JJ)V

    .line 2105
    monitor-exit v0

    .line 2106
    return-void

    .line 2105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$noteWifiRadioPowerState$65(IJIJJ)V
    .locals 11
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J
    .param p4, "uid"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 2359
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2361
    :try_start_0
    iget v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    return-void

    .line 2374
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2363
    :cond_0
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 2364
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2366
    const/4 v0, 0x3

    const/4 v2, 0x2

    if-eq p1, v0, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    goto :goto_0

    .line 2368
    :cond_2
    const-string/jumbo v0, "inactive"

    goto :goto_1

    :goto_0
    const-string v0, "active"

    :goto_1
    nop

    .line 2369
    .local v0, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi-data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 2372
    .end local v0    # "type":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRadioPowerState(IJIJJ)V

    .line 2374
    monitor-exit v1

    .line 2375
    return-void

    .line 2374
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$noteWifiRssiChanged$71(IJJ)V
    .locals 8
    .param p1, "newRssi"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2484
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2485
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "newRssi":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "newRssi":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRssiChangedLocked(IJJ)V

    .line 2486
    monitor-exit v1

    .line 2487
    return-void

    .line 2486
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "newRssi":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "newRssi":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "newRssi":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "newRssi":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiRunning$66(Landroid/os/WorkSource;JJ)V
    .locals 8
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2391
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2392
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;JJ)V

    .line 2393
    monitor-exit v1

    .line 2394
    return-void

    .line 2393
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiRunningChanged$67(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .locals 9
    .param p1, "localOldWs"    # Landroid/os/WorkSource;
    .param p2, "localNewWs"    # Landroid/os/WorkSource;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2412
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2413
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "localOldWs":Landroid/os/WorkSource;
    .end local p2    # "localNewWs":Landroid/os/WorkSource;
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "localOldWs":Landroid/os/WorkSource;
    .local v4, "localNewWs":Landroid/os/WorkSource;
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 2415
    monitor-exit v1

    .line 2416
    return-void

    .line 2415
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localOldWs":Landroid/os/WorkSource;
    .end local v4    # "localNewWs":Landroid/os/WorkSource;
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "localOldWs":Landroid/os/WorkSource;
    .restart local p2    # "localNewWs":Landroid/os/WorkSource;
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "localOldWs":Landroid/os/WorkSource;
    .end local p2    # "localNewWs":Landroid/os/WorkSource;
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "localOldWs":Landroid/os/WorkSource;
    .restart local v4    # "localNewWs":Landroid/os/WorkSource;
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiScanStarted$74(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2532
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2533
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStartedLocked(IJJ)V

    .line 2534
    monitor-exit v1

    .line 2535
    return-void

    .line 2534
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiScanStartedFromSource$80(Landroid/os/WorkSource;JJ)V
    .locals 8
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2633
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2634
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2635
    monitor-exit v1

    .line 2636
    return-void

    .line 2635
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiScanStopped$75(IJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2548
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2549
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStoppedLocked(IJJ)V

    .line 2550
    monitor-exit v1

    .line 2551
    return-void

    .line 2550
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiScanStoppedFromSource$81(Landroid/os/WorkSource;JJ)V
    .locals 8
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2650
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2651
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2652
    monitor-exit v1

    .line 2653
    return-void

    .line 2652
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiState$69(ILjava/lang/String;J)V
    .locals 2
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J

    .line 2451
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2452
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;J)V

    .line 2453
    monitor-exit v0

    .line 2454
    return-void

    .line 2453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$noteWifiStopped$68(Landroid/os/WorkSource;JJ)V
    .locals 8
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2434
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2435
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v3, "localWs":Landroid/os/WorkSource;
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;JJ)V

    .line 2436
    monitor-exit v1

    .line 2437
    return-void

    .line 2436
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "localWs":Landroid/os/WorkSource;
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "localWs":Landroid/os/WorkSource;
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "localWs":Landroid/os/WorkSource;
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v3    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$noteWifiSupplicantStateChanged$70(IZJJ)V
    .locals 9
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2467
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2468
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "supplState":I
    .end local p2    # "failedAuth":Z
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "supplState":I
    .local v4, "failedAuth":Z
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZJJ)V

    .line 2470
    monitor-exit v1

    .line 2471
    return-void

    .line 2470
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "supplState":I
    .end local v4    # "failedAuth":Z
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local p1    # "supplState":I
    .restart local p2    # "failedAuth":Z
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "supplState":I
    .end local p2    # "failedAuth":Z
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "supplState":I
    .restart local v4    # "failedAuth":Z
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$onCleanupUser$8(IJ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "elapsedRealtime"    # J

    .line 912
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->onCleanupUserLocked(IJ)V

    .line 914
    monitor-exit v0

    .line 915
    return-void

    .line 914
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$onLowPowerModeChanged$5(Landroid/os/PowerSaveState;JJ)V
    .locals 8
    .param p1, "result"    # Landroid/os/PowerSaveState;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 861
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 862
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v3, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v4, p2

    move-wide v6, p4

    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLocked(ZJJ)V

    .line 864
    monitor-exit v1

    .line 865
    return-void

    .line 864
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uptime":J
    :catchall_1
    move-exception v0

    move-wide v4, p2

    move-wide v6, p4

    move-object p2, v0

    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uptime":J
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private synthetic lambda$onUserRemoved$9(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 922
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 923
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 924
    monitor-exit v0

    .line 925
    return-void

    .line 924
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$removeUid$7(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J

    .line 900
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->onUidRemoved(I)V

    .line 901
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->removeUidStatsLocked(IJ)V

    .line 903
    monitor-exit v0

    .line 904
    return-void

    .line 903
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$reportExcessiveCpu$104(ILjava/lang/String;JJ)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uptimeSince"    # J
    .param p5, "cputimeUsed"    # J

    .line 3836
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3837
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "uid":I
    .end local p2    # "processName":Ljava/lang/String;
    .end local p3    # "uptimeSince":J
    .end local p5    # "cputimeUsed":J
    .local v3, "uid":I
    .local v4, "processName":Ljava/lang/String;
    .local v5, "uptimeSince":J
    .local v7, "cputimeUsed":J
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V

    .line 3838
    monitor-exit v1

    .line 3839
    return-void

    .line 3838
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "processName":Ljava/lang/String;
    .end local v5    # "uptimeSince":J
    .end local v7    # "cputimeUsed":J
    .restart local p1    # "uid":I
    .restart local p2    # "processName":Ljava/lang/String;
    .restart local p3    # "uptimeSince":J
    .restart local p5    # "cputimeUsed":J
    :catchall_1
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "processName":Ljava/lang/String;
    .end local p3    # "uptimeSince":J
    .end local p5    # "cputimeUsed":J
    .restart local v3    # "uid":I
    .restart local v4    # "processName":Ljava/lang/String;
    .restart local v5    # "uptimeSince":J
    .restart local v7    # "cputimeUsed":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$scheduleWriteToDisk$6()V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleWrite()V

    .line 887
    return-void
.end method

.method private synthetic lambda$setBatteryState$96(IIIIIIIIJJJJ)V
    .locals 20
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .param p11, "elapsedRealtime"    # J
    .param p13, "uptime"    # J
    .param p15, "currentTime"    # J

    .line 2940
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 2941
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJJJJ)V

    .line 2944
    monitor-exit v2

    .line 2945
    return-void

    .line 2944
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$setBatteryState$97(IIIIIIIIJJJJ)V
    .locals 22
    .param p1, "plugType"    # I
    .param p2, "status"    # I
    .param p3, "health"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .param p11, "elapsedRealtime"    # J
    .param p13, "uptime"    # J
    .param p15, "currentTime"    # J

    .line 2922
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 2923
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v0

    .line 2924
    .local v0, "onBattery":Z
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2927
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move/from16 v7, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move-wide/from16 v15, p11

    move-wide/from16 v17, p13

    move-wide/from16 v19, p15

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJJJJ)V

    .line 2930
    monitor-exit v2

    return-void

    .line 2932
    .end local v0    # "onBattery":Z
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2924
    .restart local v0    # "onBattery":Z
    :cond_0
    nop

    .line 2932
    .end local v0    # "onBattery":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2938
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string v2, "battery-state"

    const/16 v3, 0x7f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 2939
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    move-object v2, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;

    move/from16 v4, p1

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-object/from16 v21, v2

    move/from16 v2, p2

    invoke-direct/range {v0 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V

    move-object/from16 v2, v21

    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 2946
    return-void

    .line 2932
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$setBatteryState$98(IIIIIIIIJJJJ)V
    .locals 19
    .param p1, "plugType"    # I
    .param p2, "status"    # I
    .param p3, "health"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .param p11, "elapsedRealtime"    # J
    .param p13, "uptime"    # J
    .param p15, "currentTime"    # J

    .line 2921
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    move-object v2, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda60;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-object/from16 v18, v2

    move/from16 v2, p1

    invoke-direct/range {v0 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V

    move-object/from16 v2, v18

    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 2947
    return-void
.end method

.method private synthetic lambda$takeUidSnapshotsAsync$99([ILandroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "requestUids"    # [I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3688
    .local v0, "ident":J
    const/4 v2, -0x1

    .line 3690
    .local v2, "i":I
    const/4 v3, 0x1

    :try_start_0
    array-length v4, p1

    .line 3691
    .local v4, "count":I
    new-array v5, v4, [Landroid/os/health/HealthStatsParceler;

    .line 3692
    .local v5, "results":[Landroid/os/health/HealthStatsParceler;
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3693
    const/4 v2, 0x0

    move v7, v2

    .end local v2    # "i":I
    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_0

    .line 3694
    :try_start_1
    aget v2, p1, v7

    invoke-virtual {p0, v2}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v2

    aput-object v2, v5, v7

    .line 3693
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3696
    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3697
    :try_start_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 3698
    .local v2, "resultData":Landroid/os/Bundle;
    const-string/jumbo v6, "uid_snapshots"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3699
    const/4 v6, 0x0

    invoke-virtual {p2, v6, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3708
    .end local v2    # "resultData":Landroid/os/Bundle;
    .end local v4    # "count":I
    .end local v5    # "results":[Landroid/os/health/HealthStatsParceler;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3709
    goto :goto_4

    .line 3708
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 3700
    :catch_0
    move-exception v2

    goto :goto_3

    .line 3696
    .restart local v4    # "count":I
    .restart local v5    # "results":[Landroid/os/health/HealthStatsParceler;
    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ident":J
    .end local v7    # "i":I
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUids":[I
    .end local p2    # "resultReceiver":Landroid/os/ResultReceiver;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3708
    .end local v4    # "count":I
    .end local v5    # "results":[Landroid/os/health/HealthStatsParceler;
    .restart local v0    # "ident":J
    .local v2, "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    .restart local p2    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_2
    move-exception v3

    move v7, v2

    move-object v2, v3

    goto :goto_5

    .line 3700
    :catch_1
    move-exception v4

    move v7, v2

    move-object v2, v4

    .end local v2    # "i":I
    .restart local v7    # "i":I
    :goto_3
    nop

    .line 3705
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "exception"

    .line 3706
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 3705
    invoke-virtual {p2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 3710
    :goto_4
    return-void

    .line 3708
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3709
    throw v2
.end method

.method private synthetic lambda$updateBatteryStatsOnActivityUsage$102(ZIJJ)V
    .locals 9
    .param p1, "resumed"    # Z
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 3806
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3807
    if-eqz p1, :cond_0

    .line 3808
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .local v3, "uid":I
    .local v4, "elapsedRealtime":J
    .local v6, "uptime":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteActivityResumedLocked(IJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3812
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p2    # "uid":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :catchall_1
    move-exception v0

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object p2, v0

    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    goto :goto_1

    .line 3810
    .end local v3    # "uid":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p2    # "uid":I
    .restart local p3    # "elapsedRealtime":J
    .restart local p5    # "uptime":J
    :cond_0
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .end local p2    # "uid":I
    .end local p3    # "elapsedRealtime":J
    .end local p5    # "uptime":J
    .restart local v3    # "uid":I
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    move-wide v7, v6

    move-wide v5, v4

    move v4, v3

    .end local v3    # "uid":I
    .end local v6    # "uptime":J
    .local v4, "uid":I
    .local v5, "elapsedRealtime":J
    .local v7, "uptime":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteActivityPausedLocked(IJJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v3, v4

    move-wide v4, v5

    move-wide v6, v7

    .line 3812
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local v3    # "uid":I
    .local v4, "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_0
    :try_start_3
    monitor-exit v1

    .line 3813
    return-void

    .line 3812
    .end local v3    # "uid":I
    .end local v6    # "uptime":J
    .local v4, "uid":I
    .restart local v5    # "elapsedRealtime":J
    .restart local v7    # "uptime":J
    :catchall_2
    move-exception v0

    move v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object p2, v0

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .restart local v3    # "uid":I
    .local v4, "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method private synthetic lambda$updateForegroundTimeIfOnBattery$100(ILjava/lang/String;JJJ)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J
    .param p7, "cpuTimeDiff"    # J

    .line 3773
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3774
    return-void

    .line 3776
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3777
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3778
    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3779
    .local v0, "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_1

    .line 3780
    move-wide/from16 v2, p7

    :try_start_1
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    goto :goto_0

    .line 3782
    .end local v0    # "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3779
    .restart local v0    # "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    :cond_1
    move-wide/from16 v2, p7

    .line 3782
    .end local v0    # "ps":Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    :goto_0
    monitor-exit v1

    .line 3783
    return-void

    .line 3782
    :catchall_1
    move-exception v0

    move-wide/from16 v2, p7

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private static onlyCaller([I)Z
    .locals 4
    .param p0, "requestUids"    # [I

    .line 3722
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3723
    .local v0, "caller":I
    array-length v1, p0

    .line 3724
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3725
    aget v3, p0, v2

    if-eq v3, v0, :cond_0

    .line 3726
    const/4 v3, 0x0

    return v3

    .line 3724
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3729
    .end local v2    # "i":I
    const/4 v2, 0x1

    return v2
.end method

.method public static overrideService(Lcom/android/internal/app/IBatteryStats;)V
    .locals 0
    .param p0, "service"    # Lcom/android/internal/app/IBatteryStats;

    .line 847
    sput-object p0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 848
    return-void
.end method

.method private populatePowerEntityMaps()V
    .locals 8

    .line 265
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    .line 266
    .local v0, "entities":[Landroid/hardware/power/stats/PowerEntity;
    if-nez v0, :cond_0

    .line 267
    return-void

    .line 270
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 271
    aget-object v2, v0, v1

    .line 272
    .local v2, "entity":Landroid/hardware/power/stats/PowerEntity;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v3, "states":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v5, v2, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 274
    iget-object v5, v2, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v5, v5, v4

    .line 275
    .local v5, "state":Landroid/hardware/power/stats/State;
    iget v6, v5, Landroid/hardware/power/stats/State;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v5, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .end local v5    # "state":Landroid/hardware/power/stats/State;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 278
    .end local v4    # "j":I
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v5, v2, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v5, v2, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v2    # "entity":Landroid/hardware/power/stats/PowerEntity;
    .end local v3    # "states":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 281
    .end local v1    # "i":I
    return-void
.end method

.method private registerStatsCallbacks()V
    .locals 5

    .line 1036
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 1037
    .local v0, "statsManager":Landroid/app/StatsManager;
    new-instance v1, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService-IA;)V

    .line 1039
    .local v1, "pullAtomCallback":Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;
    nop

    .line 1040
    const/16 v3, 0x2780

    sget-object v4, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1044
    const/16 v3, 0x2781

    sget-object v4, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1048
    const/16 v3, 0x277f

    sget-object v4, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1053
    nop

    .line 1054
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 1057
    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    .line 1058
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1054
    const/16 v4, 0x27e1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1062
    return-void
.end method

.method private setPowerStatsThrottlePeriods(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;Ljava/lang/String;)V
    .locals 6
    .param p1, "builder"    # Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .param p2, "configString"    # Ljava/lang/String;

    .line 442
    if-nez p2, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    const-string v0, "([^:]+):(\\d+)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 447
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "powerComponentName":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .local v2, "throttlePeriod":J
    nop

    .line 456
    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    invoke-virtual {p1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setDefaultPowerStatsThrottlePeriodMillis(J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    goto :goto_1

    .line 459
    :cond_1
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setPowerStatsThrottlePeriodMillis(Ljava/lang/String;J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    .line 461
    .end local v1    # "powerComponentName":Ljava/lang/String;
    .end local v2    # "throttlePeriod":J
    :goto_1
    goto :goto_0

    .line 452
    .restart local v1    # "powerComponentName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 453
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid config_powerStatsThrottlePeriods format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 462
    .end local v1    # "powerComponentName":Ljava/lang/String;
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    return-void
.end method

.method private shouldCollectExternalStats()Z
    .locals 4

    .line 3714
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3715
    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3714
    :goto_0
    return v0
.end method

.method private syncStats(Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 783
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    .line 784
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 785
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 786
    return-void
.end method


# virtual methods
.method addIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 930
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->noteIsolatedUidAdded(II)V

    .line 931
    const/16 v0, 0x2b

    const/4 v1, 0x1

    invoke-static {v0, p2, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 933
    return-void
.end method

.method public computeBatteryScreenOffRealtimeMs()J
    .locals 7

    .line 1417
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryScreenOffRealtimeMs_enforcePermission()V

    .line 1419
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1420
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1421
    .local v1, "curTimeUs":J
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v2, v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v5

    .line 1423
    .local v5, "timeUs":J
    div-long v3, v5, v3

    monitor-exit v0

    return-wide v3

    .line 1424
    .end local v1    # "curTimeUs":J
    .end local v5    # "timeUs":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeBatteryTimeRemaining()J
    .locals 5

    .line 1399
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1400
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    .line 1401
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_0

    .line 1402
    .end local v1    # "time":J
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1401
    .restart local v1    # "time":J
    :cond_0
    move-wide v3, v1

    :goto_0
    monitor-exit v0

    return-wide v3

    .line 1402
    .end local v1    # "time":J
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeChargeTimeRemaining()J
    .locals 5

    .line 1408
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1409
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    .line 1410
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_0

    .line 1411
    .end local v1    # "time":J
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1410
    .restart local v1    # "time":J
    :cond_0
    move-wide v3, v1

    :goto_0
    monitor-exit v0

    return-wide v3

    .line 1411
    .end local v1    # "time":J
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 3217
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->dumpUnmonitored(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3219
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 3220
    nop

    .line 3221
    return-void

    .line 3219
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 3220
    throw v1
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .locals 11
    .param p1, "rpmStats"    # Lcom/android/internal/os/RpmStats;

    .line 288
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_2

    .line 292
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 297
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    .local v0, "results":[Landroid/hardware/power/stats/StateResidencyResult;
    nop

    .line 303
    if-nez v0, :cond_2

    return-void

    .line 305
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 306
    aget-object v2, v0, v1

    .line 307
    .local v2, "result":Landroid/hardware/power/stats/StateResidencyResult;
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v4, v2, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 308
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/internal/os/RpmStats;->getSubsystem(Ljava/lang/String;)Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    move-result-object v3

    .line 310
    .local v3, "subsystem":Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v5, v2, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 311
    iget-object v5, v2, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v5, v5, v4

    .line 312
    .local v5, "stateResidency":Landroid/hardware/power/stats/StateResidency;
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v7, v2, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iget v7, v5, Landroid/hardware/power/stats/StateResidency;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-wide v7, v5, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    iget-wide v9, v5, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    long-to-int v9, v9

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->putState(Ljava/lang/String;JI)V

    .line 310
    .end local v5    # "stateResidency":Landroid/hardware/power/stats/StateResidency;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 305
    .end local v2    # "result":Landroid/hardware/power/stats/StateResidencyResult;
    .end local v3    # "subsystem":Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
    .end local v4    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 317
    .end local v1    # "i":I
    return-void

    .line 298
    .end local v0    # "results":[Landroid/hardware/power/stats/StateResidencyResult;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BatteryStatsService"

    const-string v2, "Failed to getStateResidencyAsync"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    return-void

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 290
    :goto_2
    :try_start_2
    monitor-exit v0

    return-void

    .line 292
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .locals 1
    .param p1, "railStats"    # Lcom/android/internal/os/RailStats;

    .line 325
    iget-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mRailsStatsCollectionEnabled:Z

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/os/RailStats;->setRailStatsAvailability(Z)V

    .line 327
    return-void

    .line 332
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_0
    move-exception v0

    .line 335
    throw v0
.end method

.method public getActiveStatistics()Lcom/android/server/power/stats/BatteryStatsImpl;
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .locals 2

    .line 2954
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery_enforcePermission()V

    .line 2956
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 2

    .line 2962
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged_enforcePermission()V

    .line 2964
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation

    .line 1018
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats_enforcePermission()V

    .line 1020
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 1022
    nop

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 1024
    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    .line 1022
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->shouldUpdateStats(Ljava/util/List;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    const-string/jumbo v0, "get-stats"

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1026
    nop

    .line 1027
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
    .locals 2

    .line 3596
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats_enforcePermission()V

    .line 3598
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3599
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3600
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3601
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .locals 2

    .line 3532
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats_enforcePermission()V

    .line 3534
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3535
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3536
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3537
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .locals 2

    .line 3564
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats_enforcePermission()V

    .line 3566
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3567
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3568
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .locals 4
    .param p1, "requestUid"    # I

    .line 3737
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 3738
    .local v0, "writer":Lcom/android/server/am/HealthStatsBatteryStatsWriter;
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 3739
    .local v1, "uidWriter":Landroid/os/health/HealthStatsWriter;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid;

    .line 3740
    .local v2, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v2, :cond_0

    .line 3741
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 3743
    :cond_0
    new-instance v3, Landroid/os/health/HealthStatsParceler;

    invoke-direct {v3, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object v3
.end method

.method public getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J
    .locals 6

    .line 3933
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 3934
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3935
    .local v1, "props":Ljava/util/Properties;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3936
    .local v2, "in":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3937
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3942
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 3937
    .restart local v1    # "props":Ljava/util/Properties;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 3939
    :cond_0
    :goto_0
    goto :goto_3

    .line 3935
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local v1    # "props":Ljava/util/Properties;
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3937
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "props":Ljava/util/Properties;
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    :goto_2
    nop

    .line 3938
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot load config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3940
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    const-string v2, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    const-string v3, "0"

    .line 3941
    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3940
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 3942
    .end local v1    # "props":Ljava/util/Properties;
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public getScreenOffDischargeMah()J
    .locals 5

    .line 1430
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getScreenOffDischargeMah_enforcePermission()V

    .line 1432
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1433
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUahDischargeScreenOff(I)J

    move-result-wide v1

    .line 1434
    .local v1, "dischargeUah":J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    monitor-exit v0

    return-wide v3

    .line 1435
    .end local v1    # "dischargeUah":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceType()I
    .locals 1

    .line 852
    const/16 v0, 0x9

    return v0
.end method

.method public getWakeLockStats()Landroid/os/WakeLockStats;
    .locals 2

    .line 3580
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats_enforcePermission()V

    .line 3582
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3583
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3584
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .locals 2

    .line 3548
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats_enforcePermission()V

    .line 3550
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3551
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3552
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initPowerManagement()V
    .locals 9

    .line 804
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/PowerManagerInternal;

    .line 805
    .local v1, "powerMgr":Landroid/os/PowerManagerInternal;
    invoke-virtual {v1, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 806
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 807
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 808
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v4, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 809
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 807
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLockedInit(ZJJ)V

    .line 810
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    new-instance v0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 812
    return-void

    .line 810
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isCharging()Z
    .locals 2

    .line 1391
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->isCharging()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOnBattery()Z
    .locals 1

    .line 2902
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public monitor()V
    .locals 2

    .line 760
    iget-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    if-nez v0, :cond_0

    .line 761
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 765
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 766
    :try_start_1
    monitor-exit v1

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 764
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public noteAlarmFinish(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I

    .line 1575
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v2, "noteAlarmFinish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 1577
    .local v4, "localWs":Landroid/os/WorkSource;
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1578
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1579
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1580
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda63;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "uid":I
    .local v3, "name":Ljava/lang/String;
    .local v5, "uid":I
    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda63;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1585
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v10

    .line 1586
    return-void

    .line 1585
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "uid":I
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "uid":I
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v5, p3

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "uid":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "uid":I
    :goto_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteAlarmStart(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I

    .line 1561
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v2, "noteAlarmStart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 1563
    .local v4, "localWs":Landroid/os/WorkSource;
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1564
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1565
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1566
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "uid":I
    .local v3, "name":Ljava/lang/String;
    .local v5, "uid":I
    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1571
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v10

    .line 1572
    return-void

    .line 1571
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "uid":I
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "uid":I
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v5, p3

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "uid":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "uid":I
    :goto_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteBleScanReset()V
    .locals 10

    .line 2804
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset_enforcePermission()V

    .line 2806
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2807
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v6, v2

    .line 2808
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2809
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2814
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1

    .line 2815
    return-void

    .line 2814
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteBleScanResults(Landroid/os/WorkSource;I)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "numNewResults"    # I

    .line 2820
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults_enforcePermission()V

    .line 2822
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 2823
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2824
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2825
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2826
    .local v7, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move v4, p2

    .end local p2    # "numNewResults":I
    .local v4, "numNewResults":I
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2832
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 2833
    return-void

    .line 2832
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .end local v4    # "numNewResults":I
    .restart local p2    # "numNewResults":I
    :catchall_1
    move-exception v0

    move v4, p2

    move-object p2, v0

    .end local p2    # "numNewResults":I
    .restart local v4    # "numNewResults":I
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 2768
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted_enforcePermission()V

    .line 2770
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 2771
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2772
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2773
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2774
    .local v7, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move v4, p2

    .end local p2    # "isUnoptimized":Z
    .local v4, "isUnoptimized":Z
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2780
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 2781
    return-void

    .line 2780
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .end local v4    # "isUnoptimized":Z
    .restart local p2    # "isUnoptimized":Z
    :catchall_1
    move-exception v0

    move v4, p2

    move-object p2, v0

    .end local p2    # "isUnoptimized":Z
    .restart local v4    # "isUnoptimized":Z
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 2786
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped_enforcePermission()V

    .line 2788
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 2789
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2790
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2791
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2792
    .local v7, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move v4, p2

    .end local p2    # "isUnoptimized":Z
    .local v4, "isUnoptimized":Z
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2798
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 2799
    return-void

    .line 2798
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .end local v4    # "isUnoptimized":Z
    .restart local p2    # "isUnoptimized":Z
    :catchall_1
    move-exception v0

    move v4, p2

    move-object p2, v0

    .end local p2    # "isUnoptimized":Z
    .restart local v4    # "isUnoptimized":Z
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 11
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 2860
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity_enforcePermission()V

    .line 2862
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v6, p1

    goto :goto_1

    .line 2867
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2868
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2869
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2870
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    .end local p1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v6, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2876
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2877
    return-void

    .line 2876
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local p1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catchall_1
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .end local p1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v6    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 2862
    .end local v6    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local p1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_1
    move-object v6, p1

    .line 2863
    .end local p1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v6    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :goto_1
    const-string p1, "BatteryStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid bluetooth data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    return-void
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 19
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .line 1649
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    invoke-super {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource_enforcePermission()V

    .line 1651
    const/4 v0, 0x0

    if-eqz v2, :cond_0

    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4, v2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 1652
    .local v4, "localWs":Landroid/os/WorkSource;
    :goto_0
    if-eqz v3, :cond_1

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1
    move-object v7, v0

    .line 1653
    .local v7, "localNewWs":Landroid/os/WorkSource;
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1654
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 1655
    .local v13, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 1656
    .local v15, "uptime":J
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    move-object v6, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p2

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object v2, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    .end local v4    # "localWs":Landroid/os/WorkSource;
    .local v2, "localWs":Landroid/os/WorkSource;
    :try_start_1
    invoke-direct/range {v0 .. v16}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    move-object/from16 v6, v18

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1663
    nop

    .end local v13    # "elapsedRealtime":J
    .end local v15    # "uptime":J
    monitor-exit v17

    .line 1664
    return-void

    .line 1663
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v2    # "localWs":Landroid/os/WorkSource;
    .restart local v4    # "localWs":Landroid/os/WorkSource;
    :catchall_1
    move-exception v0

    move-object v2, v4

    move-object/from16 v17, v5

    .end local v4    # "localWs":Landroid/os/WorkSource;
    .restart local v2    # "localWs":Landroid/os/WorkSource;
    :goto_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .line 1973
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged_enforcePermission()V

    .line 1975
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1976
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 1977
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1978
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda62;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    .end local p1    # "type":I
    .end local p2    # "extra":Ljava/lang/String;
    .local v6, "type":I
    .local v7, "extra":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda62;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1983
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1

    .line 1984
    return-void

    .line 1983
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "type":I
    .end local v7    # "extra":Ljava/lang/String;
    .restart local p1    # "type":I
    .restart local p2    # "extra":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move v6, p1

    move-object v7, p2

    move-object p1, v0

    .end local p1    # "type":I
    .end local p2    # "extra":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v7    # "extra":Ljava/lang/String;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method varargs noteCpuWakingActivity(IJ[I)V
    .locals 7
    .param p1, "subsystem"    # I
    .param p2, "elapsedMillis"    # J
    .param p4, "uids"    # [I

    .line 754
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 755
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    .end local p1    # "subsystem":I
    .end local p2    # "elapsedMillis":J
    .end local p4    # "uids":[I
    .local v3, "subsystem":I
    .local v4, "elapsedMillis":J
    .local v6, "uids":[I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/BatteryStatsService;IJ[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 756
    return-void
.end method

.method noteCurrentTimeChanged()V
    .locals 12

    .line 3788
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3789
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v6, v2

    .line 3790
    .local v6, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3791
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3792
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/BatteryStatsService;JJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3797
    nop

    .end local v6    # "currentTime":J
    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1

    .line 3798
    return-void

    .line 3797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .locals 11
    .param p1, "mode"    # I
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .line 2726
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode_enforcePermission()V

    .line 2728
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2729
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2730
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2731
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda72;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda72;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2737
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 2738
    return-void

    .line 2737
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .locals 11
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1441
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent_enforcePermission()V

    .line 1443
    if-nez p2, :cond_0

    .line 1445
    const-string v0, "BatteryStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteEvent called with null name. code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    return-void

    .line 1449
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1450
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1451
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1452
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1457
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 1458
    return-void

    .line 1457
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFlashlightOff(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2259
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff_enforcePermission()V

    .line 2261
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2262
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2263
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2264
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda54;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2269
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2270
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x1a

    invoke-static {v1, v6, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2272
    return-void

    .line 2269
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteFlashlightOn(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2241
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn_enforcePermission()V

    .line 2243
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2244
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2245
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2246
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda49;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2251
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2252
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x1a

    invoke-static {v1, v6, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2254
    return-void

    .line 2251
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteFullWifiLockAcquired(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2494
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired_enforcePermission()V

    .line 2496
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2497
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2498
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2499
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2504
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2505
    return-void

    .line 2504
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 2590
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource_enforcePermission()V

    .line 2592
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 2593
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2594
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2595
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2596
    .local v6, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda97;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda97;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2602
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v8

    .line 2603
    return-void

    .line 2602
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteFullWifiLockReleased(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2510
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased_enforcePermission()V

    .line 2512
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2513
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2514
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2515
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2520
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2521
    return-void

    .line 2520
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 2608
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource_enforcePermission()V

    .line 2610
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 2611
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2612
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2613
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2614
    .local v6, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2620
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v8

    .line 2621
    return-void

    .line 2620
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .line 1853
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged_enforcePermission()V

    .line 1855
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v4, v1

    .line 1856
    .local v4, "localOldWs":Landroid/os/WorkSource;
    if-eqz p2, :cond_1

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1
    move-object v5, v0

    .line 1857
    .local v5, "localNewWs":Landroid/os/WorkSource;
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1858
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1859
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1860
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1865
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1

    .line 1866
    return-void

    .line 1865
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteGpsSignalQuality(I)V
    .locals 11
    .param p1, "signalLevel"    # I

    .line 1871
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality_enforcePermission()V

    .line 1873
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1874
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 1875
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1876
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "signalLevel":I
    .local v6, "signalLevel":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1881
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 1882
    return-void

    .line 1881
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "signalLevel":I
    .restart local p1    # "signalLevel":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "signalLevel":I
    .restart local v6    # "signalLevel":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteInteractive(Z)V
    .locals 5
    .param p1, "interactive"    # Z

    .line 1958
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive_enforcePermission()V

    .line 1960
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1961
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1962
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda109;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda109;-><init>(Lcom/android/server/am/BatteryStatsService;ZJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1967
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 1968
    return-void

    .line 1967
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteJobFinish(Ljava/lang/String;II)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "stopReason"    # I

    .line 1517
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish_enforcePermission()V

    .line 1519
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1520
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1521
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1522
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IIJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1527
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 1528
    return-void

    .line 1527
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1500
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart_enforcePermission()V

    .line 1502
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1503
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 1504
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1505
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda35;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .local v6, "name":Ljava/lang/String;
    .local v7, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1510
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1

    .line 1511
    return-void

    .line 1510
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "uid":I
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    :catchall_1
    move-exception v0

    move-object v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "uid":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method noteJobsDeferred(IIJ)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "numDeferred"    # I
    .param p3, "sinceLast"    # J

    .line 1532
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1533
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1534
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1535
    .local v8, "uptime":J
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJJ)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1541
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v10

    .line 1542
    return-void

    .line 1541
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1726
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish_enforcePermission()V

    .line 1728
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1729
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1730
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1731
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda37;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1737
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 1738
    return-void

    .line 1737
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1744
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource_enforcePermission()V

    .line 1746
    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 1747
    .local v5, "localWs":Landroid/os/WorkSource;
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1748
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1749
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1750
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "historyName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v4, "historyName":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1756
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v10

    .line 1757
    return-void

    .line 1756
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "historyName":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "historyName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "historyName":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "historyName":Ljava/lang/String;
    :goto_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1689
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart_enforcePermission()V

    .line 1691
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1692
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1693
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1694
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1700
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 1701
    return-void

    .line 1700
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1707
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource_enforcePermission()V

    .line 1709
    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 1710
    .local v5, "localWs":Landroid/os/WorkSource;
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1711
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1712
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1713
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "historyName":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v4, "historyName":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1719
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v10

    .line 1720
    return-void

    .line 1719
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "historyName":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "historyName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "historyName":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "historyName":Ljava/lang/String;
    :goto_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteMobileRadioPowerState(IJI)V
    .locals 12
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I

    .line 1990
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState_enforcePermission()V

    .line 1992
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1993
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1994
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1995
    .local v8, "uptime":J
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda102;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda102;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2005
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2006
    const/16 v0, 0xc

    const/4 v1, 0x0

    move/from16 v5, p4

    invoke-static {v0, v5, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2008
    return-void

    .line 2005
    :catchall_0
    move-exception v0

    move/from16 v5, p4

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;

    .line 2882
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity_enforcePermission()V

    .line 2884
    if-nez p1, :cond_0

    .line 2885
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid modem data given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    return-void

    .line 2889
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2890
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2891
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2892
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/usage/NetworkStatsManager;

    .line 2894
    .local v11, "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    .end local p1    # "info":Landroid/telephony/ModemActivityInfo;
    .local v6, "info":Landroid/telephony/ModemActivityInfo;
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2898
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    .end local v11    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    monitor-exit v1

    .line 2899
    return-void

    .line 2898
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "info":Landroid/telephony/ModemActivityInfo;
    .restart local p1    # "info":Landroid/telephony/ModemActivityInfo;
    :catchall_1
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .end local p1    # "info":Landroid/telephony/ModemActivityInfo;
    .restart local v6    # "info":Landroid/telephony/ModemActivityInfo;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "transportTypes"    # [I

    .line 2696
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports_enforcePermission()V

    .line 2698
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2699
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2702
    monitor-exit v0

    .line 2703
    return-void

    .line 2702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteNetworkStatsEnabled()V
    .locals 3

    .line 2711
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled_enforcePermission()V

    .line 2713
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2715
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda70;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda70;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2720
    monitor-exit v0

    .line 2721
    return-void

    .line 2720
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 2741
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2742
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2743
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2744
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2750
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 2751
    return-void

    .line 2750
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 2754
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2755
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2756
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2757
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    .end local p1    # "pkgName":Ljava/lang/String;
    .local v6, "pkgName":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2762
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2763
    return-void

    .line 2762
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "pkgName":Ljava/lang/String;
    .restart local p1    # "pkgName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .end local p1    # "pkgName":Ljava/lang/String;
    .restart local v6    # "pkgName":Ljava/lang/String;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notePhoneDataConnectionState(IZIII)V
    .locals 13
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "serviceType"    # I
    .param p4, "nrState"    # I
    .param p5, "nrFrequency"    # I

    .line 2063
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState_enforcePermission()V

    .line 2065
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2066
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2067
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2068
    .local v9, "uptime":J
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;-><init>(Lcom/android/server/am/BatteryStatsService;IZIIIJJ)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2074
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v11

    .line 2075
    return-void

    .line 2074
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneOff()V
    .locals 10

    .line 2029
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff_enforcePermission()V

    .line 2031
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2032
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v6, v2

    .line 2033
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2034
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda64;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda64;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2039
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1

    .line 2040
    return-void

    .line 2039
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneOn()V
    .locals 10

    .line 2013
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn_enforcePermission()V

    .line 2015
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2016
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v6, v2

    .line 2017
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2018
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2023
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1

    .line 2024
    return-void

    .line 2023
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 11
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 2045
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength_enforcePermission()V

    .line 2047
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2048
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2049
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2050
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda74;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    .end local p1    # "signalStrength":Landroid/telephony/SignalStrength;
    .local v6, "signalStrength":Landroid/telephony/SignalStrength;
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda74;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2055
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2056
    return-void

    .line 2055
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "signalStrength":Landroid/telephony/SignalStrength;
    .restart local p1    # "signalStrength":Landroid/telephony/SignalStrength;
    :catchall_1
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .end local p1    # "signalStrength":Landroid/telephony/SignalStrength;
    .restart local v6    # "signalStrength":Landroid/telephony/SignalStrength;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notePhoneState(I)V
    .locals 11
    .param p1, "state"    # I

    .line 2080
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState_enforcePermission()V

    .line 2082
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2083
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2084
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2085
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda53;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "state":I
    .local v6, "state":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda53;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2091
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2092
    return-void

    .line 2091
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "state":I
    .restart local p1    # "state":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "state":I
    .restart local v6    # "state":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 970
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 971
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 972
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 973
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .local v6, "name":Ljava/lang/String;
    .local v7, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1

    .line 979
    return-void

    .line 978
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "uid":I
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    :catchall_1
    move-exception v0

    move-object v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "uid":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 956
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 958
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 959
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .local v6, "name":Ljava/lang/String;
    .local v7, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 964
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    const/16 p1, 0x1c

    const/4 p2, 0x2

    invoke-static {p1, v7, v6, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 967
    return-void

    .line 964
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "uid":I
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    :catchall_1
    move-exception v0

    move-object v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method noteProcessDied(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 3823
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3824
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;-><init>(Lcom/android/server/am/BatteryStatsService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3829
    monitor-exit v0

    .line 3830
    return-void

    .line 3829
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 982
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 983
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 984
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 985
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .local v6, "name":Ljava/lang/String;
    .local v7, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 990
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 991
    const/16 p1, 0x1c

    const/4 p2, 0x0

    invoke-static {p1, v7, v6, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 993
    return-void

    .line 990
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "uid":I
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    :catchall_1
    move-exception v0

    move-object v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 942
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 943
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 944
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 945
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda55;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .local v6, "name":Ljava/lang/String;
    .local v7, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 950
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    const/16 p1, 0x1c

    const/4 p2, 0x1

    invoke-static {p1, v7, v6, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 953
    return-void

    .line 950
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "uid":I
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    :catchall_1
    move-exception v0

    move-object v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteResetAudio()V
    .locals 10

    .line 2205
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio_enforcePermission()V

    .line 2207
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2208
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v6, v2

    .line 2209
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2210
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2215
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2216
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x17

    const/4 v3, -0x1

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2218
    return-void

    .line 2215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteResetCamera()V
    .locals 10

    .line 2315
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera_enforcePermission()V

    .line 2317
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2318
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v6, v2

    .line 2319
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2320
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2325
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2326
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x19

    const/4 v3, -0x1

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2328
    return-void

    .line 2325
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteResetFlashlight()V
    .locals 10

    .line 2333
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight_enforcePermission()V

    .line 2335
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2336
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v6, v2

    .line 2337
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2338
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda92;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda92;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2343
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x1a

    const/4 v3, -0x1

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2346
    return-void

    .line 2343
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteResetVideo()V
    .locals 10

    .line 2223
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo_enforcePermission()V

    .line 2225
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2226
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v6, v2

    .line 2227
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2228
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda12;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2233
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2234
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x18

    const/4 v3, -0x1

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2236
    return-void

    .line 2233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteScreenBrightness(II)V
    .locals 12
    .param p1, "displayId"    # I
    .param p2, "brightness"    # I

    .line 1908
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness_enforcePermission()V

    .line 1910
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1911
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 1912
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1913
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda50;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    move v7, p2

    .end local p1    # "displayId":I
    .end local p2    # "brightness":I
    .local v6, "displayId":I
    .local v7, "brightness":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda50;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1919
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1920
    const/16 p1, 0x9

    invoke-static {p1, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1921
    return-void

    .line 1919
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "displayId":I
    .end local v7    # "brightness":I
    .restart local p1    # "displayId":I
    .restart local p2    # "brightness":I
    :catchall_1
    move-exception v0

    move v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "displayId":I
    .end local p2    # "brightness":I
    .restart local v6    # "displayId":I
    .restart local v7    # "brightness":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteScreenState(III)V
    .locals 13
    .param p1, "displayId"    # I
    .param p2, "state"    # I
    .param p3, "reason"    # I

    .line 1887
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState_enforcePermission()V

    .line 1889
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1890
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1891
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1892
    .local v7, "uptime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1893
    .local v9, "currentTime":J
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda75;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda75;-><init>(Lcom/android/server/am/BatteryStatsService;IIIJJJ)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1901
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    .end local v9    # "currentTime":J
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1902
    const/16 v0, 0x1d

    invoke-static {v0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1903
    return-void

    .line 1901
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 3872
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3873
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3874
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 3875
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda108;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda108;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3882
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 3883
    return-void

    .line 3882
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 3844
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3845
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3846
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 3847
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3854
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 3855
    return-void

    .line 3854
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 3886
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3887
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3888
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 3889
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3896
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 3897
    return-void

    .line 3896
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 3858
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3859
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3860
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 3861
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3868
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 3869
    return-void

    .line 3868
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartAudio(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2133
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio_enforcePermission()V

    .line 2135
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2136
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2137
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2138
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda80;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda80;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2143
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2144
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x17

    invoke-static {v1, v6, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2146
    return-void

    .line 2143
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteStartCamera(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2277
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera_enforcePermission()V

    .line 2280
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2281
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2282
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2283
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda93;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda93;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2288
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2290
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x19

    invoke-static {v1, v6, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2292
    return-void

    .line 2288
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteStartSensor(II)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .line 1762
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor_enforcePermission()V

    .line 1764
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1765
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 1766
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1767
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    move v7, p2

    .end local p1    # "uid":I
    .end local p2    # "sensor":I
    .local v6, "uid":I
    .local v7, "sensor":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1772
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1773
    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x5

    invoke-static {v0, v6, p1, v7, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 1775
    return-void

    .line 1772
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .end local v7    # "sensor":I
    .restart local p1    # "uid":I
    .restart local p2    # "sensor":I
    :catchall_1
    move-exception v0

    move v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "sensor":I
    .restart local v6    # "uid":I
    .restart local v7    # "sensor":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteStartVideo(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2169
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo_enforcePermission()V

    .line 2171
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2172
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2173
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2174
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2179
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2180
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x18

    invoke-static {v1, v6, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2182
    return-void

    .line 2179
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .line 1592
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock_enforcePermission()V

    .line 1594
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1595
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1596
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1597
    .local v10, "uptime":J
    iget-object v13, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1603
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v12

    .line 1604
    return-void

    .line 1603
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 15
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .line 1628
    move-object/from16 v1, p1

    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource_enforcePermission()V

    .line 1630
    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 1631
    .local v4, "localWs":Landroid/os/WorkSource;
    iget-object v14, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1632
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1633
    .local v10, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1634
    .local v12, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;

    move-object v3, p0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v13}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1640
    nop

    .end local v10    # "elapsedRealtime":J
    .end local v12    # "uptime":J
    monitor-exit v14

    .line 1641
    return-void

    .line 1640
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopAudio(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2151
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio_enforcePermission()V

    .line 2153
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2154
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2155
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2156
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2161
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2162
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-static {v1, v6, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2164
    return-void

    .line 2161
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteStopCamera(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2297
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera_enforcePermission()V

    .line 2299
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2300
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2301
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2302
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2307
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2308
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {v1, v6, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2310
    return-void

    .line 2307
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteStopSensor(II)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .line 1803
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor_enforcePermission()V

    .line 1805
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1806
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 1807
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1808
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    move v7, p2

    .end local p1    # "uid":I
    .end local p2    # "sensor":I
    .local v6, "uid":I
    .local v7, "sensor":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1813
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1814
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x5

    invoke-static {v0, v6, p1, v7, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 1816
    return-void

    .line 1813
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .end local v7    # "sensor":I
    .restart local p1    # "uid":I
    .restart local p2    # "sensor":I
    :catchall_1
    move-exception v0

    move v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "sensor":I
    .restart local v6    # "uid":I
    .restart local v7    # "sensor":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteStopVideo(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2187
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo_enforcePermission()V

    .line 2189
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2190
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2191
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2192
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2197
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2198
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-static {v1, v6, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2200
    return-void

    .line 2197
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 1610
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock_enforcePermission()V

    .line 1612
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1613
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1614
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1615
    .local v9, "uptime":J
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1621
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v11

    .line 1622
    return-void

    .line 1621
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 1670
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource_enforcePermission()V

    .line 1672
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 1673
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1674
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1675
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1676
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;

    move-object v2, p0

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1682
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v12

    .line 1683
    return-void

    .line 1682
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1481
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish_enforcePermission()V

    .line 1483
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1484
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 1485
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1486
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda23;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .local v6, "name":Ljava/lang/String;
    .local v7, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1491
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1492
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x7

    invoke-static {v0, v7, p1, v6, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1494
    return-void

    .line 1491
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "uid":I
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    :catchall_1
    move-exception v0

    move-object v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1463
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart_enforcePermission()V

    .line 1465
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1466
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 1467
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1468
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda13;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .local v6, "name":Ljava/lang/String;
    .local v7, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1473
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1474
    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x7

    invoke-static {v0, v7, p1, v6, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1476
    return-void

    .line 1473
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "uid":I
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "uid":I
    :catchall_1
    move-exception v0

    move-object v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "uid":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "uid":I
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method noteUidProcessState(II)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 997
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 998
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 999
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1000
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    move v7, p2

    .end local p1    # "uid":I
    .end local p2    # "state":I
    .local v6, "uid":I
    .local v7, "state":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1006
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1

    .line 1007
    return-void

    .line 1006
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .end local v7    # "state":I
    .restart local p1    # "uid":I
    .restart local p2    # "state":I
    :catchall_1
    move-exception v0

    move v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "state":I
    .restart local v6    # "uid":I
    .restart local v7    # "state":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteUserActivity(II)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .line 1926
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity_enforcePermission()V

    .line 1928
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1929
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 1930
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1931
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda56;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    move v7, p2

    .end local p1    # "uid":I
    .end local p2    # "event":I
    .local v6, "uid":I
    .local v7, "event":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1936
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1

    .line 1937
    return-void

    .line 1936
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .end local v7    # "event":I
    .restart local p1    # "uid":I
    .restart local p2    # "event":I
    :catchall_1
    move-exception v0

    move v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p2    # "event":I
    .restart local v6    # "uid":I
    .restart local v7    # "event":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteVibratorOff(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 1837
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff_enforcePermission()V

    .line 1839
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1840
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 1841
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1842
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda24;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1847
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 1848
    return-void

    .line 1847
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteVibratorOn(IJ)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .line 1821
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn_enforcePermission()V

    .line 1823
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1824
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1825
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1826
    .local v7, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda99;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda99;-><init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1831
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 1832
    return-void

    .line 1831
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .line 1942
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp_enforcePermission()V

    .line 1944
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1945
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 1946
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1947
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "reasonUid":I
    .local v6, "reason":Ljava/lang/String;
    .local v7, "reasonUid":I
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1952
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1

    .line 1953
    return-void

    .line 1952
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "reason":Ljava/lang/String;
    .end local v7    # "reasonUid":I
    .restart local p1    # "reason":Ljava/lang/String;
    .restart local p2    # "reasonUid":I
    :catchall_1
    move-exception v0

    move-object v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "reasonUid":I
    .restart local v6    # "reason":Ljava/lang/String;
    .restart local v7    # "reasonUid":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteWakeupSensorEvent(JII)V
    .locals 8
    .param p1, "elapsedNanos"    # J
    .param p3, "uid"    # I
    .param p4, "sensorHandle"    # I

    .line 1779
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1780
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 1783
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 1785
    .local v1, "elapsedMillis":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 1786
    .local v3, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v3, p4}, Landroid/hardware/SensorManager;->getSensorByHandle(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 1787
    .local v4, "sensor":Landroid/hardware/Sensor;
    const-string v5, "BatteryStatsService"

    if-nez v4, :cond_0

    .line 1788
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown sensor handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " received in noteWakeupSensorEvent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    return-void

    .line 1792
    :cond_0
    if-gez p3, :cond_1

    .line 1793
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for sensor event with sensor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    return-void

    .line 1797
    :cond_1
    const/4 v5, 0x4

    filled-new-array {p3}, [I

    move-result-object v6

    invoke-virtual {p0, v5, v1, v2, v6}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(IJ[I)V

    .line 1798
    return-void

    .line 1781
    .end local v1    # "elapsedMillis":J
    .end local v3    # "sm":Landroid/hardware/SensorManager;
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not system uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public noteWakupAlarm(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "tag"    # Ljava/lang/String;

    .line 1546
    move-object/from16 v1, p3

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v3, "noteWakupAlarm"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 1548
    .local v6, "localWs":Landroid/os/WorkSource;
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1549
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1550
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1551
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1557
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v12

    .line 1558
    return-void

    .line 1557
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .line 2660
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource_enforcePermission()V

    .line 2662
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 2663
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2664
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2665
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2666
    .local v7, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move v4, p2

    .end local p2    # "csph":I
    .local v4, "csph":I
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2672
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v9

    .line 2673
    return-void

    .line 2672
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .end local v4    # "csph":I
    .restart local p2    # "csph":I
    :catchall_1
    move-exception v0

    move v4, p2

    move-object p2, v0

    .end local p2    # "csph":I
    .restart local v4    # "csph":I
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 2678
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource_enforcePermission()V

    .line 2680
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 2681
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2682
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2683
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2684
    .local v6, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2690
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v8

    .line 2691
    return-void

    .line 2690
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 2838
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity_enforcePermission()V

    .line 2840
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v6, p1

    goto :goto_1

    .line 2845
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2846
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2847
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2848
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/usage/NetworkStatsManager;

    .line 2850
    .local v11, "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    .end local p1    # "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .local v6, "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2854
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    .end local v11    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    monitor-exit v1

    .line 2855
    return-void

    .line 2854
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .restart local p1    # "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :catchall_1
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .end local p1    # "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .restart local v6    # "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 2840
    .end local v6    # "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .restart local p1    # "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :cond_1
    move-object v6, p1

    .line 2841
    .end local p1    # "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .restart local v6    # "info":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :goto_1
    const-string p1, "BatteryStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid wifi data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2574
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled_enforcePermission()V

    .line 2576
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2577
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2578
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2579
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda25;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2584
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2585
    return-void

    .line 2584
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteWifiMulticastEnabled(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2558
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled_enforcePermission()V

    .line 2560
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2561
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2562
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2563
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2568
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2569
    return-void

    .line 2568
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteWifiOff()V
    .locals 10

    .line 2115
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff_enforcePermission()V

    .line 2117
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2118
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v6, v2

    .line 2119
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2120
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2125
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2126
    const/16 v0, 0x71

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 2128
    return-void

    .line 2125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteWifiOn()V
    .locals 10

    .line 2097
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn_enforcePermission()V

    .line 2099
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2100
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v6, v2

    .line 2101
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2102
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2107
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2108
    const/16 v0, 0x71

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 2110
    return-void

    .line 2107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteWifiRadioPowerState(IJI)V
    .locals 12
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J
    .param p4, "uid"    # I

    .line 2351
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState_enforcePermission()V

    .line 2353
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2354
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2355
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2356
    .local v8, "uptime":J
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda22;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2376
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2377
    const/16 v0, 0xd

    const/4 v1, 0x0

    move/from16 v5, p4

    invoke-static {v0, v5, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2379
    return-void

    .line 2376
    :catchall_0
    move-exception v0

    move/from16 v5, p4

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public noteWifiRssiChanged(I)V
    .locals 11
    .param p1, "newRssi"    # I

    .line 2478
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged_enforcePermission()V

    .line 2480
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2481
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2482
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2483
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda44;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "newRssi":I
    .local v6, "newRssi":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2488
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2489
    return-void

    .line 2488
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "newRssi":I
    .restart local p1    # "newRssi":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "newRssi":I
    .restart local v6    # "newRssi":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 2384
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning_enforcePermission()V

    .line 2386
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 2387
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2388
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2389
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2390
    .local v6, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2395
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2397
    const/16 v0, 0x72

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 2399
    return-void

    .line 2395
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .line 2404
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged_enforcePermission()V

    .line 2406
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v4, v1

    .line 2407
    .local v4, "localOldWs":Landroid/os/WorkSource;
    if-eqz p2, :cond_1

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1
    move-object v5, v0

    .line 2408
    .local v5, "localNewWs":Landroid/os/WorkSource;
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2409
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2410
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2411
    .local v8, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2417
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2418
    const/4 v0, 0x1

    const/16 v1, 0x72

    invoke-static {v1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 2420
    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 2422
    return-void

    .line 2417
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteWifiScanStarted(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2526
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted_enforcePermission()V

    .line 2528
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2529
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2530
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2531
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda83;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda83;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2536
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2537
    return-void

    .line 2536
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 2626
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource_enforcePermission()V

    .line 2628
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 2629
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2630
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2631
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2632
    .local v6, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2637
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v8

    .line 2638
    return-void

    .line 2637
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiScanStopped(I)V
    .locals 11
    .param p1, "uid"    # I

    .line 2542
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped_enforcePermission()V

    .line 2544
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2545
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 2546
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2547
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    .end local p1    # "uid":I
    .local v6, "uid":I
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2552
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 2553
    return-void

    .line 2552
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "uid":I
    .restart local v6    # "uid":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 2643
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource_enforcePermission()V

    .line 2645
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 2646
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2647
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2648
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2649
    .local v6, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2654
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v8

    .line 2655
    return-void

    .line 2654
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .locals 10
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .line 2446
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState_enforcePermission()V

    .line 2448
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2449
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 2450
    .local v8, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    .end local p1    # "wifiState":I
    .end local p2    # "accessPoint":Ljava/lang/String;
    .local v6, "wifiState":I
    .local v7, "accessPoint":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2455
    nop

    .end local v8    # "elapsedRealtime":J
    monitor-exit v1

    .line 2456
    return-void

    .line 2455
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "wifiState":I
    .end local v7    # "accessPoint":Ljava/lang/String;
    .restart local p1    # "wifiState":I
    .restart local p2    # "accessPoint":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move v6, p1

    move-object v7, p2

    move-object p1, v0

    .end local p1    # "wifiState":I
    .end local p2    # "accessPoint":Ljava/lang/String;
    .restart local v6    # "wifiState":I
    .restart local v7    # "accessPoint":Ljava/lang/String;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 2427
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped_enforcePermission()V

    .line 2429
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object v3, v0

    .line 2430
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2431
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2432
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2433
    .local v6, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2438
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2439
    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 2441
    return-void

    .line 2438
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .locals 12
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .line 2461
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged_enforcePermission()V

    .line 2463
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2464
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v8, v2

    .line 2465
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2466
    .local v10, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move v6, p1

    move v7, p2

    .end local p1    # "supplState":I
    .end local p2    # "failedAuth":Z
    .local v6, "supplState":I
    .local v7, "failedAuth":Z
    :try_start_1
    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/am/BatteryStatsService;IZJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2472
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v1

    .line 2473
    return-void

    .line 2472
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "supplState":I
    .end local v7    # "failedAuth":Z
    .restart local p1    # "supplState":I
    .restart local p2    # "failedAuth":Z
    :catchall_1
    move-exception v0

    move v6, p1

    move v7, p2

    move-object p1, v0

    .end local p1    # "supplState":I
    .end local p2    # "failedAuth":Z
    .restart local v6    # "supplState":I
    .restart local v7    # "failedAuth":Z
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onCleanupUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 909
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 911
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda67;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda67;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 917
    return-void

    .line 916
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 11
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 857
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 859
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 860
    .local v9, "uptime":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    move-object v6, p1

    .end local p1    # "result":Landroid/os/PowerSaveState;
    .local v6, "result":Landroid/os/PowerSaveState;
    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/PowerSaveState;JJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 866
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v1

    .line 867
    return-void

    .line 866
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v6    # "result":Landroid/os/PowerSaveState;
    .restart local p1    # "result":Landroid/os/PowerSaveState;
    :catchall_1
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .end local p1    # "result":Landroid/os/PowerSaveState;
    .restart local v6    # "result":Landroid/os/PowerSaveState;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSystemReady()V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->onSystemReady(Landroid/content/Context;)V

    .line 636
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsScheduler;->start(Z)V

    .line 637
    return-void
.end method

.method onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 920
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 926
    monitor-exit v0

    .line 927
    return-void

    .line 926
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public publish()V
    .locals 2

    .line 479
    new-instance v0, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService-IA;)V

    const-class v1, Landroid/os/BatteryStatsInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 480
    const-string v0, "batterystats"

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 481
    return-void
.end method

.method removeIsolatedUid(II)V
    .locals 3
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 936
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->noteIsolatedUidRemoved(II)V

    .line 937
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x2b

    invoke-static {v2, v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 939
    return-void
.end method

.method removeUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 897
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 899
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda42;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 905
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 906
    return-void

    .line 905
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reportExcessiveCpu(ILjava/lang/String;JJ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uptimeSince"    # J
    .param p5, "cputimeUsed"    # J

    .line 3834
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3835
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda77;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda77;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3840
    monitor-exit v1

    .line 3841
    return-void

    .line 3840
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetBattery(Z)V
    .locals 1
    .param p1, "forceUpdate"    # Z

    .line 3984
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery_enforcePermission()V

    .line 3986
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/BatteryManagerInternal;->resetBattery(Z)V

    .line 3987
    return-void
.end method

.method public scheduleWriteToDisk()V
    .locals 3

    .line 883
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 888
    monitor-exit v0

    .line 889
    return-void

    .line 888
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBatteryLevel(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "forceUpdate"    # Z

    .line 3962
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel_enforcePermission()V

    .line 3964
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryManagerInternal;->setBatteryLevel(IZ)V

    .line 3965
    return-void
.end method

.method public setBatteryState(IIIIIIIIJ)V
    .locals 20
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J

    .line 2910
    move-object/from16 v1, p0

    invoke-super {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState_enforcePermission()V

    .line 2912
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2913
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 2914
    .local v12, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2915
    .local v14, "uptime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 2918
    .local v16, "currentTime":J
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v3, p1

    move/from16 v2, p3

    :try_start_1
    invoke-direct/range {v0 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2948
    nop

    .end local v12    # "elapsedRealtime":J
    .end local v14    # "uptime":J
    .end local v16    # "currentTime":J
    monitor-exit v18

    .line 2949
    return-void

    .line 2948
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v18, v2

    :goto_0
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setChargerAcOnline(ZZ)V
    .locals 1
    .param p1, "online"    # Z
    .param p2, "forceUpdate"    # Z

    .line 3951
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline_enforcePermission()V

    .line 3953
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryManagerInternal;->setChargerAcOnline(ZZ)V

    .line 3954
    return-void
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .locals 6
    .param p1, "delayMillis"    # I

    .line 3753
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis_enforcePermission()V

    .line 3755
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3758
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3759
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "battery_charging_state_update_delay"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3763
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3759
    return v3

    .line 3763
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3764
    throw v2
.end method

.method public setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V
    .locals 7
    .param p1, "timestamp"    # J

    .line 3907
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 3908
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3909
    .local v1, "props":Ljava/util/Properties;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3910
    .local v2, "in":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3911
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3925
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 3911
    .restart local v1    # "props":Ljava/util/Properties;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 3913
    :cond_0
    :goto_0
    goto :goto_3

    .line 3909
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local v1    # "props":Ljava/util/Properties;
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "timestamp":J
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3911
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "props":Ljava/util/Properties;
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "timestamp":J
    :goto_2
    nop

    .line 3912
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot load config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3914
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    const-string v2, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    .line 3915
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 3914
    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3916
    const/4 v2, 0x0

    .line 3918
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 3919
    const-string v3, "Statsd atom pull timestamps"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3920
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3924
    goto :goto_4

    .line 3921
    :catch_1
    move-exception v3

    nop

    .line 3922
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3923
    const-string v4, "BatteryStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot save config file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3925
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4
    monitor-exit v0

    .line 3926
    return-void

    .line 3925
    :goto_5
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method public setRailsStatsCollectionEnabled(Z)V
    .locals 0
    .param p1, "railsStatsCollectionEnabled"    # Z

    .line 320
    iput-boolean p1, p0, Lcom/android/server/am/BatteryStatsService;->mRailsStatsCollectionEnabled:Z

    .line 321
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 815
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 820
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 822
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->shutdownLocked()V

    .line 824
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->shutdown()V

    .line 830
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->write()V

    .line 831
    return-void

    .line 824
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public suspendBatteryInput()V
    .locals 1

    .line 3995
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput_enforcePermission()V

    .line 3997
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->suspendBatteryInput()V

    .line 3998
    return-void
.end method

.method public systemServicesReady()V
    .locals 7

    .line 484
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 485
    nop

    .line 484
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryHistoryCompressionEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 487
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->isBatteryUsageStatsAccumulationSupported()Z

    move-result v4

    .line 486
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->saveBatteryUsageStatsOnReset(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/PowerStatsStore;Z)V

    .line 488
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 489
    nop

    .line 488
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetBatteryHistoryOnNewSession(Z)V

    .line 491
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    check-cast v0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    .line 492
    .local v0, "attributor":Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 493
    nop

    .line 492
    invoke-virtual {v3, v1, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 494
    nop

    .line 496
    nop

    .line 494
    invoke-virtual {v0, v1, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 498
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 499
    nop

    .line 498
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 500
    nop

    .line 502
    nop

    .line 500
    invoke-virtual {v0, v4, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 504
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 505
    nop

    .line 504
    invoke-virtual {v3, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 506
    nop

    .line 508
    nop

    .line 506
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 510
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 511
    nop

    .line 510
    const/16 v3, 0xf

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 512
    nop

    .line 514
    nop

    .line 512
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 516
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 517
    nop

    .line 516
    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 518
    nop

    .line 520
    nop

    .line 518
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 521
    nop

    .line 523
    nop

    .line 521
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 525
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 526
    nop

    .line 525
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 527
    nop

    .line 529
    nop

    .line 527
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 531
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 532
    nop

    .line 531
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 533
    nop

    .line 535
    nop

    .line 533
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 537
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 538
    nop

    .line 537
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 539
    nop

    .line 541
    nop

    .line 539
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 543
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 544
    nop

    .line 543
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 545
    nop

    .line 547
    nop

    .line 545
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 549
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 550
    nop

    .line 549
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 551
    nop

    .line 553
    nop

    .line 551
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 555
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 556
    nop

    .line 555
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 557
    nop

    .line 559
    nop

    .line 557
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 561
    nop

    .line 563
    nop

    .line 561
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 565
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 566
    nop

    .line 565
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 567
    nop

    .line 569
    nop

    .line 567
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 572
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 573
    nop

    .line 572
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 574
    nop

    .line 575
    nop

    .line 574
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 578
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 579
    nop

    .line 578
    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 580
    nop

    .line 582
    nop

    .line 580
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 584
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 585
    invoke-virtual {v2}, Lcom/android/server/power/feature/PowerManagerFlags;->isMoveWscLoggingToNotifierEnabled()Z

    move-result v2

    .line 584
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setMoveWscLoggingToNotifierEnabled(Z)V

    .line 587
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->systemServicesReady()V

    .line 588
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 589
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->systemServicesReady()V

    .line 590
    const-string/jumbo v1, "network_management"

    .line 591
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 590
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 592
    .local v1, "nms":Landroid/os/INetworkManagementService;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 594
    .local v2, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v3

    if-nez v3, :cond_0

    .line 598
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v1, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    goto :goto_0

    .line 601
    :catch_0
    move-exception v3

    goto :goto_1

    .line 600
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    goto :goto_2

    .line 601
    :goto_1
    nop

    .line 602
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "BatteryStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not register INetworkManagement event observer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 606
    :try_start_1
    const-class v4, Landroid/power/PowerStatsInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/power/PowerStatsInternal;

    iput-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 607
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v4, :cond_1

    .line 608
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->populatePowerEntityMaps()V

    goto :goto_3

    .line 612
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 610
    :cond_1
    const-string v4, "BatteryStatsService"

    const-string v5, "Could not register PowerStatsInternal"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    const-class v3, Landroid/os/BatteryManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryManagerInternal;

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 615
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 617
    new-instance v3, Lcom/android/server/am/DataConnectionStats;

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/android/server/am/DataConnectionStats;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 618
    .local v3, "dataConnectionStats":Lcom/android/server/am/DataConnectionStats;
    invoke-virtual {v3}, Lcom/android/server/am/DataConnectionStats;->startMonitoring()V

    .line 620
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->registerStatsCallbacks()V

    .line 621
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mSystemReady:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 622
    return-void

    .line 612
    .end local v3    # "dataConnectionStats":Lcom/android/server/am/DataConnectionStats;
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .locals 6
    .param p1, "requestUid"    # I

    .line 3609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 3610
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3613
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3616
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3617
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3618
    const-string/jumbo v2, "get-health-stats-for-uids"

    const/16 v3, 0x7f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    goto :goto_0

    .line 3627
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 3623
    :catch_0
    move-exception v2

    goto :goto_1

    .line 3620
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3621
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3621
    return-object v3

    .line 3622
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUid":I
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3623
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUid":I
    :goto_1
    nop

    .line 3624
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3625
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUid":I
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3627
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUid":I
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3628
    throw v2
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .locals 7
    .param p1, "requestUids"    # [I

    .line 3636
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3637
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3640
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3641
    .local v0, "ident":J
    const/4 v2, -0x1

    .line 3644
    .local v2, "i":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3645
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3646
    const-string/jumbo v3, "get-health-stats-for-uids"

    const/16 v4, 0x7f

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    goto :goto_0

    .line 3661
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 3656
    :catch_0
    move-exception v3

    goto :goto_3

    .line 3648
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3649
    :try_start_1
    array-length v4, p1

    .line 3650
    .local v4, "N":I
    new-array v5, v4, [Landroid/os/health/HealthStatsParceler;

    .line 3651
    .local v5, "results":[Landroid/os/health/HealthStatsParceler;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    .line 3652
    aget v6, p1, v2

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v5, v2

    .line 3651
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3655
    .end local v4    # "N":I
    .end local v5    # "results":[Landroid/os/health/HealthStatsParceler;
    :catchall_1
    move-exception v4

    goto :goto_2

    .line 3654
    .restart local v4    # "N":I
    .restart local v5    # "results":[Landroid/os/health/HealthStatsParceler;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3661
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3654
    return-object v5

    .line 3655
    .end local v4    # "N":I
    .end local v5    # "results":[Landroid/os/health/HealthStatsParceler;
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "ident":J
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUids":[I
    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3656
    .restart local v0    # "ident":J
    .restart local v2    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    :goto_3
    nop

    .line 3659
    .local v3, "ex":Ljava/lang/Exception;
    nop

    .end local v0    # "ident":J
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUids":[I
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3661
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local v2    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3662
    throw v3
.end method

.method public takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "requestUids"    # [I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3670
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3672
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3678
    goto :goto_0

    .line 3674
    :catch_0
    move-exception v0

    .line 3675
    .local v0, "ex":Ljava/lang/SecurityException;
    nop

    .line 3676
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception"

    invoke-static {v2, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3675
    const/4 v2, 0x2

    invoke-virtual {p2, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 3677
    return-void

    .line 3681
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3682
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string/jumbo v1, "get-health-stats-for-uids"

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 3686
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;-><init>(Lcom/android/server/am/BatteryStatsService;[ILandroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3711
    return-void
.end method

.method public unplugBattery(Z)V
    .locals 1
    .param p1, "forceUpdate"    # Z

    .line 3973
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery_enforcePermission()V

    .line 3975
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/BatteryManagerInternal;->unplugBattery(Z)V

    .line 3976
    return-void
.end method

.method updateBatteryStatsOnActivityUsage(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I
    .param p5, "resumed"    # Z

    .line 3802
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3803
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3804
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3805
    .local v6, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;

    move-object v1, p0

    move v3, p3

    move v2, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/BatteryStatsService;ZIJJ)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3814
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3815
    nop

    .line 3817
    if-eqz p5, :cond_0

    .line 3818
    const/4 v0, 0x1

    goto :goto_0

    .line 3819
    :cond_0
    const/4 v0, 0x0

    .line 3815
    :goto_0
    const/16 v1, 0x2a

    invoke-static {v1, p3, p1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 3820
    return-void

    .line 3814
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cpuTimeDiff"    # J

    .line 3769
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3770
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3771
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3772
    .local v6, "uptime":J
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda68;

    move-object v1, p0

    move-object v3, p1

    move v2, p2

    move-wide v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda68;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3784
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v10

    .line 3785
    return-void

    .line 3784
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
