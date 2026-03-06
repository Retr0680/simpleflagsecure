.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Landroid/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$SettingsObserver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field static final COMPLETED:I = 0x0

.field private static final DB:Z = false

.field public static final DEBUG:Z = false

.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field private static final PRE_WATCHDOG_TIMEOUT_RATIO:I = 0x4

.field private static final PROP_FATAL_LOOP_COUNT:Ljava/lang/String; = "framework_watchdog.fatal_count"

.field private static final PROP_FATAL_LOOP_WINDOWS_SECS:Ljava/lang/String; = "framework_watchdog.fatal_window.second"

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field private static final TIMEOUT_HISTORY_FILE:Ljava/lang/String; = "/data/system/watchdog-timeout-history.txt"

.field static final WAITED_UNTIL_PRE_WATCHDOG:I = 0x2

.field static final WAITING:I = 0x1

.field private static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field private mActivity:Lcom/android/server/am/ActivityManagerService;

.field private mAllowRestart:Z

.field private mController:Landroid/app/IActivityController;

.field private final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterestingJavaPids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field private final mThread:Ljava/lang/Thread;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;

.field private final mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

.field private volatile mWatchdogTimeoutMillis:J


# direct methods
.method public static synthetic $r8$lambda$IHmOjeSmDoiNkZR0B-wv71mYNoM(Lcom/android/server/Watchdog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/Watchdog;->run()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 27

    .line 112
    const-class v0, Lcom/android/server/Watchdog;

    .line 147
    const-string v20, "/apex/com.android.art/bin/artd"

    const-string v21, "/apex/com.android.os.statsd/bin/statsd"

    const-string v1, "com.android.commands.monkey"

    const-string v2, "/system/bin/audioserver"

    const-string v3, "/system/bin/cameraserver"

    const-string v4, "/system/bin/drmserver"

    const-string v5, "/system/bin/keystore2"

    const-string v6, "/system/bin/mediadrmserver"

    const-string v7, "/system/bin/mediaserver"

    const-string v8, "/system/bin/mediaserver64"

    const-string v9, "/system/bin/netd"

    const-string v10, "/system/bin/sdcard"

    const-string v11, "/system/bin/servicemanager"

    const-string v12, "/system/bin/surfaceflinger"

    const-string v13, "/system/bin/vold"

    const-string/jumbo v14, "media.extractor"

    const-string/jumbo v15, "media.metrics"

    const-string/jumbo v16, "media.codec"

    const-string/jumbo v17, "media.swcodec"

    const-string/jumbo v18, "media.transcoding"

    const-string v19, "com.android.bluetooth"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 176
    const-string v25, "android.hardware.vr@1.0::IVr"

    const-string v26, "android.system.suspend@1.0::ISystemSuspend"

    const-string v1, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@5.0::IDevicesFactory"

    const-string v3, "android.hardware.audio@6.0::IDevicesFactory"

    const-string v4, "android.hardware.audio@7.0::IDevicesFactory"

    const-string v5, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string/jumbo v6, "vendor.noth.hardware.face@1.0::IBiometricsFace"

    const-string v7, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const-string v8, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v9, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v10, "android.hardware.gnss@1.0::IGnss"

    const-string v11, "android.hardware.graphics.allocator@2.0::IAllocator"

    const-string v12, "android.hardware.graphics.allocator@4.0::IAllocator"

    const-string v13, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v14, "android.hardware.health@2.0::IHealth"

    const-string v15, "android.hardware.light@2.0::ILight"

    const-string v16, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v17, "android.hardware.media.omx@1.0::IOmx"

    const-string v18, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v19, "android.hardware.neuralnetworks@1.0::IDevice"

    const-string v20, "android.hardware.power@1.0::IPower"

    const-string v21, "android.hardware.power.stats@1.0::IPowerStats"

    const-string v22, "android.hardware.sensors@1.0::ISensors"

    const-string v23, "android.hardware.sensors@2.0::ISensors"

    const-string v24, "android.hardware.sensors@2.1::ISensors"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 208
    const-string v23, "android.hardware.wifi.supplicant.ISupplicant/"

    const-string v24, "android.system.suspend.ISystemSuspend/"

    const-string v1, "android.hardware.audio.core.IModule/"

    const-string v2, "android.hardware.audio.core.IConfig/"

    const-string v3, "android.hardware.audio.effect.IFactory/"

    const-string v4, "android.hardware.biometrics.face.IFace/"

    const-string v5, "android.hardware.biometrics.fingerprint.IFingerprint/"

    const-string v6, "android.hardware.bluetooth.IBluetoothHci/"

    const-string v7, "android.hardware.camera.provider.ICameraProvider/"

    const-string v8, "android.hardware.drm.IDrmFactory/"

    const-string v9, "android.hardware.gnss.IGnss/"

    const-string v10, "android.hardware.graphics.allocator.IAllocator/"

    const-string v11, "android.hardware.graphics.composer3.IComposer/"

    const-string v12, "android.hardware.health.IHealth/"

    const-string v13, "android.hardware.input.processor.IInputProcessor/"

    const-string v14, "android.hardware.light.ILights/"

    const-string v15, "android.hardware.neuralnetworks.IDevice/"

    const-string v16, "android.hardware.power.IPower/"

    const-string v17, "android.hardware.power.stats.IPowerStats/"

    const-string v18, "android.hardware.sensors.ISensors/"

    const-string v19, "android.hardware.vibrator.IVibrator/"

    const-string v20, "android.hardware.vibrator.IVibratorManager/"

    const-string v21, "android.hardware.wifi.hostapd.IHostapd/"

    const-string v22, "android.hardware.wifi.IWifi/"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 251
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 253
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd_MM_HH_mm_ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 506
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/Watchdog;)V

    const-string/jumbo v3, "watchdog"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    .line 515
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string/jumbo v2, "watchdog.monitor"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 517
    .local v1, "t":Lcom/android/server/ServiceThread;
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 518
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v3, "monitor thread"

    iget-object v4, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 519
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 523
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "foreground thread"

    iget-object v5, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 521
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v3, Landroid/os/Handler;

    .line 529
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v4, "main thread"

    iget-object v5, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 526
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 532
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "ui thread"

    iget-object v5, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 531
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 535
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "i/o thread"

    iget-object v5, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 534
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 539
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "display thread"

    iget-object v5, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 537
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 544
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "animation thread"

    iget-object v5, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 541
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 549
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "surface animation thread"

    iget-object v5, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 546
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    nop

    .line 561
    new-instance v0, Lcom/android/server/am/TraceErrorLogger;

    invoke-direct {v0}, Lcom/android/server/am/TraceErrorLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 562
    return-void
.end method

.method private static addInterestingAidlPids(Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 844
    .local p0, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    .line 845
    .local v0, "infos":[Landroid/os/ServiceDebugInfo;
    if-nez v0, :cond_0

    return-void

    .line 847
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 848
    .local v4, "info":Landroid/os/ServiceDebugInfo;
    sget-object v5, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_1
    nop

    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 849
    .local v8, "prefix":Ljava/lang/String;
    iget-object v9, v4, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 850
    iget v9, v4, Landroid/os/ServiceDebugInfo;->debugPid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 848
    .end local v8    # "prefix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 847
    .end local v4    # "info":Landroid/os/ServiceDebugInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 854
    :cond_3
    return-void
.end method

.method private static addInterestingHidlPids(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 824
    .local p0, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 825
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 826
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 827
    .local v1, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 828
    .local v3, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 829
    goto :goto_0

    .line 832
    :cond_0
    sget-object v4, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v5, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 833
    goto :goto_0

    .line 836
    :cond_1
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    nop

    .end local v3    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    goto :goto_0

    .line 838
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    :catch_0
    move-exception v0

    goto :goto_1

    .line 827
    .restart local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .restart local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    :cond_2
    nop

    .line 840
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    goto :goto_2

    .line 838
    :goto_1
    nop

    .line 839
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "writeTo"    # Ljava/io/File;
    .param p2, "copyFrom"    # Ljava/io/File;

    .line 1342
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1343
    .local v0, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 1344
    .local v1, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 1347
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_0

    .line 1348
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1349
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_0

    .line 1353
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "out":Ljava/io/FileWriter;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1351
    .restart local v0    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "out":Ljava/io/FileWriter;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1352
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "out":Ljava/io/FileWriter;
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_2

    .line 1353
    :goto_1
    nop

    .line 1354
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Exception while writing watchdog traces to new file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1357
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private binderStateRead()V
    .locals 6

    .line 1363
    const-string v0, "Watchdog"

    const/4 v1, 0x0

    .line 1364
    .local v1, "binderfsNodePresent":Z
    const/4 v2, 0x0

    .line 1367
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    const-string v3, "Collecting Binder Transaction Status Information"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1371
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/dev/binderfs/binder_logs/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1372
    const-string v3, "Collecting Binder state file from binderfs"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1373
    const/4 v1, 0x1

    .line 1376
    goto :goto_0

    .line 1374
    :catch_0
    move-exception v3

    .line 1375
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "Binderfs node not found, Trying to collect it from debugfs"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1378
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    if-nez v1, :cond_0

    .line 1379
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/kernel/debug/binder/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1380
    const-string v3, "Collecting Binder state file from debugfs"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1382
    :catch_1
    move-exception v3

    .line 1383
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v4, "Debugfs node not found"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1407
    .end local v1    # "binderfsNodePresent":Z
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    goto :goto_4

    .line 1384
    .restart local v1    # "binderfsNodePresent":Z
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    nop

    .line 1389
    :goto_2
    if-nez v2, :cond_1

    .line 1390
    const-string v3, "Binderfs and Debugfs node not found"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    return-void

    .line 1396
    :cond_1
    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/anr/BinderTraces_pid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 1398
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 1401
    .local v4, "line":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_2

    .line 1402
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1403
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(I)V

    goto :goto_3

    .line 1405
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1406
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1409
    .end local v1    # "binderfsNodePresent":Z
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "out":Ljava/io/FileWriter;
    .end local v4    # "line":Ljava/lang/String;
    goto :goto_5

    .line 1407
    :goto_4
    nop

    .line 1408
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to collect state file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1410
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5
    return-void
.end method

.method private breakCrashLoop()V
    .locals 3

    .line 1325
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/dev/kmsg_debug"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    .local v0, "kmsg":Ljava/io/FileWriter;
    :try_start_1
    const-string v1, "Fatal reset to escape the system_server crashing loop\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1327
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1329
    .end local v0    # "kmsg":Ljava/io/FileWriter;
    goto :goto_2

    .line 1327
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1325
    .restart local v0    # "kmsg":Ljava/io/FileWriter;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/Watchdog;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1327
    .end local v0    # "kmsg":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/Watchdog;
    :goto_1
    nop

    .line 1328
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to append to kmsg"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1330
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1331
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 812
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 813
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 814
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 815
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 819
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doSysRq(C)V
    .locals 3
    .param p1, "c"    # C

    .line 1222
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v0, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 1224
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    .end local v0    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_0

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 794
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v2

    .line 795
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 793
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 797
    .end local v1    # "i":I
    return v0
.end method

.method private getCheckersWithStateLocked(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "completionState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 803
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v2

    .line 804
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 805
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 808
    .end local v1    # "i":I
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .line 498
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 502
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method public static getInterestingNativePids()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 859
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 860
    .local v0, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingAidlPids(Ljava/util/HashSet;)V

    .line 861
    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingHidlPids(Ljava/util/HashSet;)V

    .line 863
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 864
    .local v1, "nativePids":[I
    if-eqz v1, :cond_0

    .line 865
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    nop

    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 866
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 865
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 870
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method private hasActiveUsbConnection()Z
    .locals 3

    .line 1273
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1275
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1276
    .local v0, "state":Ljava/lang/String;
    const-string v1, "CONFIGURED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1277
    const/4 v1, 0x1

    return v1

    .line 1276
    :cond_0
    nop

    .line 1281
    .end local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to determine if device was on USB"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1282
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCrashLoopFound()Z
    .locals 15

    .line 1286
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_count()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1287
    .local v0, "fatalCount":I
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1288
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_window_seconds()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    .line 1287
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1289
    .local v2, "fatalWindowMs":J
    const-string v4, "Watchdog"

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_1

    :cond_0
    goto :goto_0

    .line 1298
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1299
    .local v5, "nowMs":J
    invoke-direct {p0}, Lcom/android/server/Watchdog;->readTimeoutHistory()[Ljava/lang/String;

    move-result-object v7

    .line 1300
    .local v7, "rawCrashHistory":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    sub-int/2addr v9, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 1302
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    array-length v11, v7

    .line 1300
    invoke-static {v7, v9, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1305
    .local v8, "crashHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    invoke-direct {p0, v8}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1309
    invoke-direct {p0}, Lcom/android/server/Watchdog;->hasActiveUsbConnection()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1310
    return v1

    .line 1315
    :cond_2
    :try_start_0
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    .local v11, "firstCrashMs":J
    nop

    .line 1321
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v0, :cond_3

    sub-long v13, v5, v11

    cmp-long v4, v13, v2

    if-gez v4, :cond_3

    move v1, v10

    :cond_3
    return v1

    .line 1316
    .end local v11    # "firstCrashMs":J
    :catch_0
    move-exception v9

    .line 1317
    .local v9, "t":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parseLong "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1318
    invoke-direct {p0}, Lcom/android/server/Watchdog;->resetTimeoutHistory()V

    .line 1319
    return v1

    .line 1290
    .end local v5    # "nowMs":J
    .end local v7    # "rawCrashHistory":[Ljava/lang/String;
    .end local v8    # "crashHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "t":Ljava/lang/NumberFormatException;
    :goto_0
    int-to-long v5, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_4

    .line 1291
    const-string/jumbo v5, "framework_watchdog.fatal_count"

    const-string/jumbo v6, "framework_watchdog.fatal_window.second"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "sysprops \'%s\' and \'%s\' should be set or unset together"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_4
    return v1
.end method

.method private static isInterestingJavaProcess(Ljava/lang/String;)Z
    .locals 1
    .param p0, "processName"    # Ljava/lang/String;

    .line 641
    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 642
    const-string v0, "com.android.phone"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 641
    :goto_1
    return v0
.end method

.method private logWatchog(ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 30
    .param p1, "preWatchdog"    # Z
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1051
    .local p3, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v7, p2

    const-string v12, "Watchdog"

    const/4 v0, 0x0

    .line 1052
    .local v0, "initialStack":Ljava/io/File;
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v13

    .line 1056
    .local v13, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForSystemServerTraceFile()Ljava/lang/String;

    move-result-object v8

    .line 1057
    .local v8, "criticalEvents":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v14

    .line 1058
    .local v14, "errorId":Ljava/util/UUID;
    iget-object v2, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1059
    iget-object v2, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    const-string/jumbo v3, "system_server"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v3, v4, v14}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    .line 1061
    iget-object v2, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2, v7, v14}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    .line 1065
    :cond_0
    if-eqz p1, :cond_2

    .line 1066
    const-string/jumbo v15, "pre_watchdog"

    .line 1067
    .local v15, "dropboxTag":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->logHalfWatchdog(Ljava/lang/String;)V

    .line 1070
    nop

    .line 1071
    invoke-static {v13}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    .line 1070
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p3

    invoke-static/range {v2 .. v11}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_1

    .line 1074
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3, v2, v13, v0}, Lcom/android/server/am/trace/SmartTraceUtils;->dumpStackTraces(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;)V

    .line 1077
    :cond_1
    const/16 v3, 0x1cc

    invoke-static {v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    move-object v3, v15

    move-object v15, v0

    goto :goto_0

    .line 1079
    .end local v15    # "dropboxTag":Ljava/lang/String;
    :cond_2
    move-object/from16 v2, p3

    const-string/jumbo v15, "watchdog"

    .line 1080
    .restart local v15    # "dropboxTag":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v3

    invoke-virtual {v3, v7, v14}, Lcom/android/server/criticalevents/CriticalEventLog;->logWatchdog(Ljava/lang/String;Ljava/util/UUID;)V

    .line 1081
    const/16 v3, 0xaf2

    invoke-static {v3, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1085
    const/16 v3, 0xb9

    invoke-static {v3, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 1088
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_PERF_TRACE_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nothing/server/ext/INtPerfTraceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1089
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-watchdog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nothing/server/ext/INtPerfTraceManager;->recordWatchdog(Ljava/lang/String;)V

    move-object v3, v15

    move-object v15, v0

    .line 1094
    .end local v0    # "initialStack":Ljava/io/File;
    .local v3, "dropboxTag":Ljava/lang/String;
    .local v15, "initialStack":Ljava/io/File;
    :goto_0
    nop

    .line 1095
    new-instance v9, Ljava/util/LinkedHashMap;

    const-string v0, "Watchdog-Type"

    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1096
    .local v9, "headersMap":Ljava/util/LinkedHashMap;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1097
    .local v4, "anrTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 1098
    .local v6, "report":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v11, v0

    .line 1100
    .local v11, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object/from16 v16, v0

    .line 1101
    .local v16, "tracesFileException":Ljava/io/StringWriter;
    move-wide/from16 v17, v4

    .end local v4    # "anrTime":J
    .local v17, "anrTime":J
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1103
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    move/from16 v19, v10

    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    .line 1101
    move-object/from16 v20, v3

    move-object v3, v11

    .end local v11    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v3, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v20, "dropboxTag":Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v27, v12

    move-object v12, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v14

    move-wide/from16 v28, v17

    move-object/from16 v18, v27

    move-object/from16 v17, v15

    move-wide/from16 v14, v28

    .end local v15    # "initialStack":Ljava/io/File;
    .local v6, "tracesFileException":Ljava/io/StringWriter;
    .local v12, "report":Ljava/lang/StringBuilder;
    .local v14, "anrTime":J
    .local v16, "errorId":Ljava/util/UUID;
    .local v17, "initialStack":Ljava/io/File;
    invoke-static/range {v2 .. v11}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v5

    .line 1106
    move-object v7, v2

    move-object v10, v3

    move-object v11, v6

    .end local v3    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v6    # "tracesFileException":Ljava/io/StringWriter;
    .local v5, "finalStack":Ljava/io/File;
    .local v10, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v11, "tracesFileException":Ljava/io/StringWriter;
    if-eqz v5, :cond_3

    .line 1107
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, v7, v13, v5}, Lcom/android/server/am/trace/SmartTraceUtils;->dumpStackTraces(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;)V

    .line 1110
    :cond_3
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_4

    .line 1111
    invoke-direct {v1}, Lcom/android/server/Watchdog;->binderStateRead()V

    .line 1116
    :cond_4
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1117
    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1118
    const/16 v0, 0xa

    invoke-virtual {v10, v14, v15, v0}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual {v11}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traces_SystemServer_WDT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1122
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_pid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "newTracesPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/anr"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 1125
    .local v3, "tracesDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 1127
    .local v4, "watchdogTraces":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1128
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v6, 0x180

    move-object/from16 v19, v2

    .end local v2    # "newTracesPath":Ljava/lang/String;
    .local v19, "newTracesPath":Ljava/lang/String;
    const/4 v2, -0x1

    :try_start_1
    invoke-static {v0, v6, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1134
    if-eqz v17, :cond_6

    .line 1138
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1139
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v23

    sub-long v21, v21, v23

    .line 1140
    .local v21, "age":J
    const-wide/32 v23, 0x493e0

    .line 1141
    .local v23, "FIVE_MINUTES_IN_MILLIS":J
    const-wide/32 v25, 0x493e0

    cmp-long v0, v21, v25

    if-gez v0, :cond_5

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First set of traces taken from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1142
    move-object/from16 v2, v18

    :try_start_3
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1144
    move-object/from16 v6, v17

    .end local v17    # "initialStack":Ljava/io/File;
    .local v6, "initialStack":Ljava/io/File;
    :try_start_4
    invoke-direct {v1, v4, v6}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_2

    .line 1163
    .end local v21    # "age":J
    .end local v23    # "FIVE_MINUTES_IN_MILLIS":J
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_5

    .end local v6    # "initialStack":Ljava/io/File;
    .restart local v17    # "initialStack":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object/from16 v6, v17

    :goto_1
    move-object/from16 v17, v3

    .end local v17    # "initialStack":Ljava/io/File;
    .restart local v6    # "initialStack":Ljava/io/File;
    goto/16 :goto_5

    .end local v6    # "initialStack":Ljava/io/File;
    .restart local v17    # "initialStack":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    goto :goto_1

    .line 1146
    .restart local v21    # "age":J
    .restart local v23    # "FIVE_MINUTES_IN_MILLIS":J
    :cond_5
    move-object/from16 v6, v17

    move-object/from16 v2, v18

    .end local v17    # "initialStack":Ljava/io/File;
    .restart local v6    # "initialStack":Ljava/io/File;
    const-string v0, "First set of traces were collected more than 5 minutes ago, ignoring ..."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1149
    .end local v21    # "age":J
    .end local v23    # "FIVE_MINUTES_IN_MILLIS":J
    :goto_2
    goto :goto_3

    .line 1150
    .end local v6    # "initialStack":Ljava/io/File;
    .restart local v17    # "initialStack":Ljava/io/File;
    :cond_6
    move-object/from16 v6, v17

    move-object/from16 v2, v18

    .end local v17    # "initialStack":Ljava/io/File;
    .restart local v6    # "initialStack":Ljava/io/File;
    :try_start_5
    const-string v0, "First set of traces are empty!"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :goto_3
    if-eqz v5, :cond_7

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v17, v3

    .end local v3    # "tracesDir":Ljava/io/File;
    .local v17, "tracesDir":Ljava/io/File;
    :try_start_6
    const-string v3, "Second set of traces taken from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-direct {v1, v4, v5}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_4

    .line 1163
    :catch_3
    move-exception v0

    goto :goto_5

    .end local v17    # "tracesDir":Ljava/io/File;
    .restart local v3    # "tracesDir":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "tracesDir":Ljava/io/File;
    .restart local v17    # "tracesDir":Ljava/io/File;
    goto :goto_5

    .line 1158
    .end local v17    # "tracesDir":Ljava/io/File;
    .restart local v3    # "tracesDir":Ljava/io/File;
    :cond_7
    move-object/from16 v17, v3

    .end local v3    # "tracesDir":Ljava/io/File;
    .restart local v17    # "tracesDir":Ljava/io/File;
    const-string v0, "Second set of traces are empty!"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1163
    .end local v6    # "initialStack":Ljava/io/File;
    .restart local v3    # "tracesDir":Ljava/io/File;
    .local v17, "initialStack":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    move-object/from16 v17, v3

    .end local v3    # "tracesDir":Ljava/io/File;
    .restart local v6    # "initialStack":Ljava/io/File;
    .local v17, "tracesDir":Ljava/io/File;
    goto :goto_5

    .end local v6    # "initialStack":Ljava/io/File;
    .end local v19    # "newTracesPath":Ljava/lang/String;
    .restart local v2    # "newTracesPath":Ljava/lang/String;
    .restart local v3    # "tracesDir":Ljava/io/File;
    .local v17, "initialStack":Ljava/io/File;
    :catch_6
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    move-object/from16 v17, v3

    .end local v2    # "newTracesPath":Ljava/lang/String;
    .end local v3    # "tracesDir":Ljava/io/File;
    .restart local v6    # "initialStack":Ljava/io/File;
    .local v17, "tracesDir":Ljava/io/File;
    .restart local v19    # "newTracesPath":Ljava/lang/String;
    goto :goto_5

    .line 1161
    .end local v6    # "initialStack":Ljava/io/File;
    .end local v19    # "newTracesPath":Ljava/lang/String;
    .restart local v2    # "newTracesPath":Ljava/lang/String;
    .restart local v3    # "tracesDir":Ljava/io/File;
    .local v17, "initialStack":Ljava/io/File;
    :cond_8
    move-object/from16 v19, v2

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    move-object/from16 v17, v3

    .end local v2    # "newTracesPath":Ljava/lang/String;
    .end local v3    # "tracesDir":Ljava/io/File;
    .restart local v6    # "initialStack":Ljava/io/File;
    .local v17, "tracesDir":Ljava/io/File;
    .restart local v19    # "newTracesPath":Ljava/lang/String;
    const-string v0, "Unable to create Watchdog dump file: createNewFile failed"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1167
    :goto_4
    goto :goto_6

    .line 1163
    :goto_5
    nop

    .line 1166
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception creating Watchdog dump file:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    const/16 v3, 0x77

    if-nez p1, :cond_9

    .line 1171
    invoke-direct {v1, v3}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1172
    const/16 v0, 0x6d

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1173
    const/16 v3, 0x6c

    invoke-direct {v1, v3}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1177
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_AM_DEBUG_HELPER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/INtAmDebugHelper;

    .line 1178
    invoke-interface {v0}, Lcom/android/server/am/INtAmDebugHelper;->dumpIfWdt()V

    goto :goto_7

    .line 1168
    :cond_9
    const/16 v3, 0x6c

    .line 1185
    :goto_7
    new-instance v0, Lcom/android/server/Watchdog$1;

    move-object/from16 v18, v2

    const-string/jumbo v2, "watchdogWriteToDropbox"

    move-object/from16 v3, v18

    move-object/from16 v18, v4

    move-object v4, v12

    move-object v12, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v20

    const/16 v7, 0x77

    .end local v12    # "report":Ljava/lang/StringBuilder;
    .end local v20    # "dropboxTag":Ljava/lang/String;
    .local v3, "dropboxTag":Ljava/lang/String;
    .local v4, "report":Ljava/lang/StringBuilder;
    .local v6, "errorId":Ljava/util/UUID;
    .local v16, "tracesDir":Ljava/io/File;
    .local v17, "initialStack":Ljava/io/File;
    .local v18, "watchdogTraces":Ljava/io/File;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V

    move-object v2, v0

    .line 1197
    .local v2, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1199
    move-object/from16 v21, v8

    .end local v8    # "criticalEvents":Ljava/lang/String;
    .local v21, "criticalEvents":Ljava/lang/String;
    const-wide/16 v7, 0x7d0

    :try_start_7
    invoke-virtual {v2, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1200
    :goto_8
    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_8

    .line 1204
    :goto_9
    nop

    .line 1205
    const-string/jumbo v0, "persist.sys.crashOnWatchdog"

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1206
    .local v0, "crashOnWatchdog":Z
    if-eqz v0, :cond_a

    .line 1209
    const-string v7, "Triggering SysRq for system_server watchdog,s"

    invoke-static {v12, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/16 v7, 0x77

    invoke-direct {v1, v7}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1211
    const/16 v7, 0x6c

    invoke-direct {v1, v7}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1214
    const-wide/16 v7, 0xbb8

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 1216
    const/16 v7, 0x63

    invoke-direct {v1, v7}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1218
    :cond_a
    return-void
.end method

.method private readTimeoutHistory()[Ljava/lang/String;
    .locals 9

    .line 1247
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 1249
    .local v1, "emptyStringArray":[Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1252
    nop

    .line 1263
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1252
    return-object v1

    .line 1265
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1263
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1255
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1256
    .local v4, "data":[Ljava/lang/String;
    array-length v5, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, ""

    const/4 v7, 0x1

    if-lt v5, v7, :cond_1

    :try_start_4
    aget-object v0, v4, v0

    goto :goto_0

    .line 1249
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "data":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1256
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "data":[Ljava/lang/String;
    :cond_1
    move-object v0, v6

    .line 1257
    .local v0, "boottime":Ljava/lang/String;
    :goto_0
    array-length v5, v4

    const/4 v8, 0x2

    if-lt v5, v8, :cond_2

    aget-object v6, v4, v7

    :cond_2
    nop

    .line 1258
    .local v6, "history":Ljava/lang/String;
    const-string/jumbo v5, "ro.boottime.zygote"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1259
    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1263
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1259
    return-object v5

    .line 1261
    :cond_3
    nop

    .line 1263
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1261
    return-object v1

    .line 1249
    .end local v0    # "boottime":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "data":[Ljava/lang/String;
    .end local v6    # "history":Ljava/lang/String;
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "emptyStringArray":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/Watchdog;
    :goto_2
    throw v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1265
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "emptyStringArray":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/Watchdog;
    :goto_3
    nop

    .line 1266
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Watchdog"

    const-string v3, "Failed to read file /data/system/watchdog-timeout-history.txt"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1267
    return-object v1

    .line 1263
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 1264
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-object v1
.end method

.method private resetTimeoutHistory()V
    .locals 1

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1232
    return-void
.end method

.method private run()V
    .locals 23

    .line 874
    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    .line 876
    .local v2, "waitedHalf":Z
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 877
    .local v3, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const-string v4, ""

    .line 878
    .local v4, "subject":Ljava/lang/String;
    const/4 v5, 0x1

    .line 879
    .local v5, "allowRestart":Z
    const/4 v6, 0x0

    .line 880
    .local v6, "debuggerWasConnected":I
    const/4 v7, 0x0

    .line 883
    .local v7, "doWaitedPreDump":Z
    iget-wide v8, v1, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 884
    .local v8, "watchdogTimeoutMillis":J
    const-wide/16 v10, 0x4

    div-long v10, v8, v10

    .line 886
    .local v10, "checkIntervalMillis":J
    iget-object v12, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 887
    move-wide v13, v10

    .line 890
    .local v13, "timeout":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v15, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v0, v15, :cond_0

    .line 891
    iget-object v15, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 894
    .local v15, "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    invoke-virtual {v15}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move/from16 v17, v2

    .end local v2    # "waitedHalf":Z
    .local v17, "waitedHalf":Z
    :try_start_1
    invoke-virtual {v15}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->customTimeoutMillis()Ljava/util/Optional;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v18, v3

    .end local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v18, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :try_start_2
    sget v3, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v19, v4

    .end local v4    # "subject":Ljava/lang/String;
    .local v19, "subject":Ljava/lang/String;
    int-to-long v3, v3

    mul-long/2addr v3, v8

    .line 895
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 894
    invoke-virtual {v0, v2, v3}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked(J)V

    .line 890
    .end local v15    # "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    add-int/lit8 v0, v16, 0x1

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    .end local v16    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 968
    .end local v0    # "i":I
    .end local v13    # "timeout":J
    :catchall_0
    move-exception v0

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_d

    .end local v19    # "subject":Ljava/lang/String;
    .restart local v4    # "subject":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v2, v17

    move-object/from16 v3, v18

    .end local v4    # "subject":Ljava/lang/String;
    .restart local v19    # "subject":Ljava/lang/String;
    goto/16 :goto_d

    .end local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v19    # "subject":Ljava/lang/String;
    .restart local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v4    # "subject":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v2, v17

    .end local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v4    # "subject":Ljava/lang/String;
    .restart local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v19    # "subject":Ljava/lang/String;
    goto/16 :goto_d

    .end local v17    # "waitedHalf":Z
    .end local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v19    # "subject":Ljava/lang/String;
    .restart local v2    # "waitedHalf":Z
    .restart local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v4    # "subject":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v2    # "waitedHalf":Z
    .end local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v4    # "subject":Ljava/lang/String;
    .restart local v17    # "waitedHalf":Z
    .restart local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v19    # "subject":Ljava/lang/String;
    goto/16 :goto_d

    .line 890
    .end local v17    # "waitedHalf":Z
    .end local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v19    # "subject":Ljava/lang/String;
    .restart local v0    # "i":I
    .restart local v2    # "waitedHalf":Z
    .restart local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v4    # "subject":Ljava/lang/String;
    .restart local v13    # "timeout":J
    :cond_0
    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 898
    .end local v0    # "i":I
    .end local v2    # "waitedHalf":Z
    .end local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v4    # "subject":Ljava/lang/String;
    .restart local v17    # "waitedHalf":Z
    .restart local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v19    # "subject":Ljava/lang/String;
    if-lez v6, :cond_1

    .line 899
    add-int/lit8 v6, v6, -0x1

    .line 906
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 907
    .local v2, "start":J
    :goto_2
    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-lez v0, :cond_5

    .line 908
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    .line 909
    const/4 v0, 0x2

    move v6, v0

    .line 918
    :cond_2
    :try_start_4
    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_3

    .line 919
    :try_start_5
    iget-object v0, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide v15, v2

    goto :goto_3

    .line 931
    :catch_0
    move-exception v0

    move-wide v15, v2

    goto :goto_4

    .line 921
    :cond_3
    const-wide/16 v15, 0x3

    :try_start_6
    div-long v15, v13, v15

    move-wide/from16 v20, v15

    .line 922
    .local v20, "waitTimeout":J
    iget-object v0, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide v15, v2

    move-wide/from16 v2, v20

    .end local v20    # "waitTimeout":J
    .local v2, "waitTimeout":J
    .local v15, "start":J
    :try_start_7
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 923
    invoke-static {}, Landroid/os/Binder;->logThreadCountIfExceed()V

    .line 924
    iget-object v0, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 925
    invoke-static {}, Landroid/os/Binder;->logThreadCountIfExceed()V

    .line 926
    iget-object v0, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 927
    invoke-static {}, Landroid/os/Binder;->logThreadCountIfExceed()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 933
    .end local v2    # "waitTimeout":J
    :goto_3
    goto :goto_5

    .line 931
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v15    # "start":J
    .local v2, "start":J
    :catch_2
    move-exception v0

    move-wide v15, v2

    .end local v2    # "start":J
    .restart local v15    # "start":J
    :goto_4
    nop

    .line 932
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v2, "Watchdog"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_5
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 935
    const/4 v0, 0x2

    move v6, v0

    .line 937
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    sub-long v13, v10, v2

    move-wide v2, v15

    goto :goto_2

    .line 940
    .end local v15    # "start":J
    .restart local v2    # "start":J
    :cond_5
    move-wide v15, v2

    .end local v2    # "start":J
    .restart local v15    # "start":J
    invoke-direct {v1}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 941
    .local v0, "waitState":I
    if-nez v0, :cond_6

    .line 943
    const/4 v2, 0x0

    .line 944
    .end local v17    # "waitedHalf":Z
    .local v2, "waitedHalf":Z
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_0

    .line 968
    .end local v0    # "waitState":I
    .end local v13    # "timeout":J
    .end local v15    # "start":J
    :catchall_4
    move-exception v0

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_d

    .line 945
    .end local v2    # "waitedHalf":Z
    .restart local v0    # "waitState":I
    .restart local v13    # "timeout":J
    .restart local v15    # "start":J
    .restart local v17    # "waitedHalf":Z
    :cond_6
    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 947
    :try_start_a
    monitor-exit v12

    goto :goto_6

    .line 948
    :cond_7
    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 949
    if-nez v17, :cond_8

    .line 950
    const-string v3, "Watchdog"

    const-string v4, "WAITED_UNTIL_PRE_WATCHDOG"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 951
    const/4 v3, 0x1

    .line 954
    .end local v17    # "waitedHalf":Z
    .local v3, "waitedHalf":Z
    :try_start_b
    invoke-direct {v1, v2}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 955
    .end local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v4, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :try_start_c
    invoke-direct {v1, v4}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 956
    .end local v19    # "subject":Ljava/lang/String;
    .local v17, "subject":Ljava/lang/String;
    :try_start_d
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v21, v0

    .end local v0    # "waitState":I
    .local v21, "waitState":I
    iget-object v0, v1, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 957
    .local v2, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    move-object/from16 v22, v17

    move/from16 v17, v3

    move-object v3, v4

    move-object/from16 v4, v22

    goto :goto_7

    .line 968
    .end local v2    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "timeout":J
    .end local v15    # "start":J
    .end local v21    # "waitState":I
    :catchall_5
    move-exception v0

    move v2, v3

    move-object v3, v4

    move-object/from16 v4, v17

    goto/16 :goto_d

    .end local v17    # "subject":Ljava/lang/String;
    .restart local v19    # "subject":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move v2, v3

    move-object v3, v4

    move-object/from16 v4, v19

    goto/16 :goto_d

    .end local v4    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :catchall_7
    move-exception v0

    move v2, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_d

    .line 959
    .end local v3    # "waitedHalf":Z
    .restart local v0    # "waitState":I
    .restart local v13    # "timeout":J
    .restart local v15    # "start":J
    .local v17, "waitedHalf":Z
    :cond_8
    move/from16 v21, v0

    .end local v0    # "waitState":I
    .restart local v21    # "waitState":I
    :try_start_e
    monitor-exit v12

    .line 876
    .end local v5    # "allowRestart":Z
    .end local v6    # "debuggerWasConnected":I
    .end local v7    # "doWaitedPreDump":Z
    .end local v8    # "watchdogTimeoutMillis":J
    .end local v10    # "checkIntervalMillis":J
    .end local v13    # "timeout":J
    .end local v15    # "start":J
    .end local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v19    # "subject":Ljava/lang/String;
    .end local v21    # "waitState":I
    :goto_6
    move/from16 v2, v17

    goto/16 :goto_0

    .line 963
    .restart local v0    # "waitState":I
    .restart local v5    # "allowRestart":Z
    .restart local v6    # "debuggerWasConnected":I
    .restart local v7    # "doWaitedPreDump":Z
    .restart local v8    # "watchdogTimeoutMillis":J
    .restart local v10    # "checkIntervalMillis":J
    .restart local v13    # "timeout":J
    .restart local v15    # "start":J
    .restart local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v19    # "subject":Ljava/lang/String;
    :cond_9
    move/from16 v21, v0

    .end local v0    # "waitState":I
    .restart local v21    # "waitState":I
    const/4 v0, 0x3

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v3, v0

    .line 964
    .end local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v3, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :try_start_f
    invoke-direct {v1, v3}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    move-object v4, v0

    .line 965
    .end local v19    # "subject":Ljava/lang/String;
    .local v4, "subject":Ljava/lang/String;
    :try_start_10
    iget-boolean v0, v1, Lcom/android/server/Watchdog;->mAllowRestart:Z

    move v5, v0

    .line 966
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    move-object v2, v0

    .line 968
    .end local v13    # "timeout":J
    .end local v15    # "start":J
    .end local v21    # "waitState":I
    .restart local v2    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_7
    :try_start_11
    monitor-exit v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 977
    const-wide/16 v12, 0x0

    .line 978
    .local v12, "dueTime":J
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isPerfettoDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 980
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->traceStart()Z

    .line 982
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v18, 0x7530

    add-long v12, v14, v18

    move-wide v13, v12

    goto :goto_8

    .line 978
    :cond_a
    move-wide v13, v12

    .line 986
    .end local v12    # "dueTime":J
    .local v13, "dueTime":J
    :goto_8
    invoke-direct {v1, v7, v4, v2}, Lcom/android/server/Watchdog;->logWatchog(ZLjava/lang/String;Ljava/util/ArrayList;)V

    .line 988
    if-eqz v7, :cond_b

    .line 991
    move/from16 v2, v17

    goto/16 :goto_0

    .line 997
    :cond_b
    iget-object v15, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 998
    :try_start_12
    iget-object v0, v1, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object v12, v0

    .line 999
    .local v12, "controller":Landroid/app/IActivityController;
    monitor-exit v15
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 1000
    if-eqz v12, :cond_d

    .line 1001
    const-string v0, "Watchdog"

    const-string v15, "Reporting stuck state to activity controller"

    invoke-static {v0, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :try_start_13
    const-string v0, "Service dumps disabled due to hung system process."

    invoke-static {v0}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 1005
    invoke-interface {v12, v4}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    .line 1006
    .local v0, "res":I
    if-ltz v0, :cond_c

    .line 1007
    const-string v15, "Watchdog"

    move/from16 v16, v0

    .end local v0    # "res":I
    .local v16, "res":I
    const-string v0, "Activity controller requested to coninue to wait"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_3

    .line 1008
    const/4 v0, 0x0

    .line 1009
    .end local v17    # "waitedHalf":Z
    .local v0, "waitedHalf":Z
    move v2, v0

    goto/16 :goto_0

    .line 1011
    .end local v0    # "waitedHalf":Z
    .end local v16    # "res":I
    .restart local v17    # "waitedHalf":Z
    :catch_3
    move-exception v0

    goto :goto_9

    .line 1006
    .local v0, "res":I
    :cond_c
    move/from16 v16, v0

    .line 1012
    .end local v0    # "res":I
    nop

    .line 1016
    :cond_d
    :goto_9
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1017
    const/4 v6, 0x2

    .line 1019
    :cond_e
    const/4 v15, 0x2

    if-lt v6, v15, :cond_f

    .line 1020
    const-string v0, "Watchdog"

    const-string v15, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    goto/16 :goto_b

    .line 1021
    :cond_f
    if-lez v6, :cond_10

    .line 1022
    const-string v0, "Watchdog"

    const-string v15, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    goto/16 :goto_b

    .line 1023
    :cond_10
    if-nez v5, :cond_11

    .line 1024
    const-string v0, "Watchdog"

    const-string v15, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    goto/16 :goto_b

    .line 1026
    :cond_11
    const-string v0, "Watchdog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {v3}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 1028
    const-string v0, "Watchdog"

    const-string v1, "*** GOODBYE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isPerfettoDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-lez v0, :cond_12

    .line 1031
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, v13, v0

    .line 1033
    .local v0, "timeDelta":J
    const-string v15, "Watchdog"

    move-object/from16 v16, v2

    .end local v2    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v16, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    .end local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const-string v3, "Sleep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms to make sure perfetto log to be dumped completely"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_a

    .line 1030
    .end local v0    # "timeDelta":J
    .end local v16    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v2    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :cond_12
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .line 1038
    .end local v2    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v16    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :goto_a
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->isCrashLoopFound()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1039
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->should_ignore_fatal_count()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1040
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->breakCrashLoop()V

    .line 1042
    :cond_13
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1043
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1046
    :goto_b
    const/4 v2, 0x0

    .line 1047
    .end local v4    # "subject":Ljava/lang/String;
    .end local v5    # "allowRestart":Z
    .end local v6    # "debuggerWasConnected":I
    .end local v7    # "doWaitedPreDump":Z
    .end local v8    # "watchdogTimeoutMillis":J
    .end local v10    # "checkIntervalMillis":J
    .end local v12    # "controller":Landroid/app/IActivityController;
    .end local v13    # "dueTime":J
    .end local v16    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "waitedHalf":Z
    .end local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v2, "waitedHalf":Z
    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 999
    .local v2, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v4    # "subject":Ljava/lang/String;
    .restart local v5    # "allowRestart":Z
    .restart local v6    # "debuggerWasConnected":I
    .restart local v7    # "doWaitedPreDump":Z
    .restart local v8    # "watchdogTimeoutMillis":J
    .restart local v10    # "checkIntervalMillis":J
    .restart local v13    # "dueTime":J
    .restart local v17    # "waitedHalf":Z
    :catchall_8
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .end local v2    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v16    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :goto_c
    :try_start_14
    monitor-exit v15
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_c

    .line 968
    .end local v13    # "dueTime":J
    .end local v16    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v2, v17

    .end local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    goto :goto_d

    .end local v18    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v3    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :catchall_b
    move-exception v0

    move/from16 v2, v17

    goto :goto_d

    .end local v4    # "subject":Ljava/lang/String;
    .restart local v19    # "subject":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move/from16 v2, v17

    move-object/from16 v4, v19

    .end local v17    # "waitedHalf":Z
    .end local v19    # "subject":Ljava/lang/String;
    .local v2, "waitedHalf":Z
    .restart local v4    # "subject":Ljava/lang/String;
    :goto_d
    :try_start_15
    monitor-exit v12
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_d
.end method

.method private writeTimeoutHistory(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1235
    .local p1, "crashHistory":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_1
    const-string/jumbo v2, "ro.boottime.zygote"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1239
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1241
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1243
    .end local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 1241
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1237
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "data":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/Watchdog;
    .end local p1    # "crashHistory":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1241
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/Watchdog;
    .restart local p1    # "crashHistory":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :goto_1
    nop

    .line 1242
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Watchdog"

    const-string v3, "Failed to write file /data/system/watchdog-timeout-history.txt"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .line 683
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    .line 685
    monitor-exit v0

    .line 686
    return-void

    .line 685
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 5
    .param p1, "thread"    # Landroid/os/Handler;

    .line 689
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object v4, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, v4}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    nop

    .end local v1    # "name":Ljava/lang/String;
    monitor-exit v0

    .line 693
    return-void

    .line 692
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 5
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .line 696
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object v4, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, v4}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 699
    invoke-static {v3, p2, p3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withCustomTimeout(Lcom/android/server/Watchdog$HandlerChecker;J)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    .line 698
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    nop

    .end local v1    # "name":Ljava/lang/String;
    monitor-exit v0

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1335
    const-string v0, "WatchdogTimeoutMillis="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1337
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .line 577
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 578
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 581
    return-void
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 746
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 748
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 749
    .local v3, "checker":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 750
    invoke-virtual {v3, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    goto :goto_1

    .line 753
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .end local v3    # "checker":Lcom/android/server/Watchdog$HandlerChecker;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 752
    :cond_0
    :goto_1
    goto :goto_0

    .line 753
    :cond_1
    monitor-exit v0

    .line 754
    return-void

    .line 753
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pauseWatchingCurrentThreadFor(ILjava/lang/String;)V
    .locals 6
    .param p1, "pauseMillis"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 713
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 714
    .local v3, "checker":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 715
    invoke-virtual {v3, p1, p2}, Lcom/android/server/Watchdog$HandlerChecker;->pauseForLocked(ILjava/lang/String;)V

    goto :goto_1

    .line 718
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .end local v3    # "checker":Lcom/android/server/Watchdog$HandlerChecker;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 717
    :cond_0
    :goto_1
    goto :goto_0

    .line 718
    :cond_1
    monitor-exit v0

    .line 719
    return-void

    .line 718
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pauseWatchingMonitorsFor(ILjava/lang/String;)V
    .locals 1
    .param p1, "pauseMillis"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/Watchdog$HandlerChecker;->pauseForLocked(ILjava/lang/String;)V

    .line 730
    return-void
.end method

.method public processDied(Ljava/lang/String;I)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 662
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " died. Pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 666
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 668
    :cond_0
    :goto_0
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 650
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " started. Pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 656
    :cond_0
    :goto_0
    return-void
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rebooting system because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 786
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    goto :goto_0

    .line 787
    :catch_0
    move-exception v1

    .line 789
    :goto_0
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 620
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 621
    const-string/jumbo v1, "system_server_watchdog_timeout_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/Watchdog$SettingsObserver;

    invoke-direct {v2, p1, p0}, Lcom/android/server/Watchdog$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V

    .line 620
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 625
    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 771
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 772
    .local v3, "checker":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 773
    invoke-virtual {v3, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    goto :goto_1

    .line 776
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .end local v3    # "checker":Lcom/android/server/Watchdog$HandlerChecker;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 775
    :cond_0
    :goto_1
    goto :goto_0

    .line 776
    :cond_1
    monitor-exit v0

    .line 777
    return-void

    .line 776
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 2
    .param p1, "controller"    # Landroid/app/IActivityController;

    .line 671
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 673
    monitor-exit v0

    .line 674
    return-void

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAllowRestart(Z)V
    .locals 2
    .param p1, "allowRestart"    # Z

    .line 677
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 679
    monitor-exit v0

    .line 680
    return-void

    .line 679
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 569
    return-void
.end method

.method updateWatchdogTimeout(J)V
    .locals 3
    .param p1, "timeoutMillis"    # J

    .line 632
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x4e20

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 634
    const-wide/16 p1, 0x4e21

    .line 636
    :cond_0
    iput-wide p1, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watchdog timeout updated to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void
.end method
