.class public Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "CameraServiceProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraServiceProxy$TaskInfo;,
        Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;,
        Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;,
        Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;,
        Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;,
        Lcom/android/server/camera/CameraServiceProxy$CameraEvent;,
        Lcom/android/server/camera/CameraServiceProxy$DeviceStateFlags;
    }
.end annotation


# static fields
.field private static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field private static final DEBUG:Z = false

.field public static final HIDL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PREVIEW_FPS:F = 60.0f

.field private static final MAX_PREVIEW_FPS_90:F = 90.0f

.field private static final MAX_PREVIEW_FPS_90_PROP:Ljava/lang/String; = "camera.max.preview.fps90.enable"

.field private static final MAX_STREAM_STATISTICS:I = 0x5

.field private static final MAX_USAGE_HISTORY:I = 0x14

.field private static final MIN_PREVIEW_FPS:F = 30.0f

.field private static final MSG_NOTIFY_DEVICE_STATE:I = 0x2

.field private static final MSG_SWITCH_USER:I = 0x1

.field private static final NATIVE_SERVICES_OF_INTEREST:[Ljava/lang/String;

.field private static final NFC_NOTIFICATION_PROP:Ljava/lang/String; = "ro.camera.notify_nfc"

.field public static final OVERRIDE_CAMERA_RESIZABLE_AND_SDK_CHECK:J = 0xb6a427eL

.field public static final OVERRIDE_CAMERA_ROTATE_AND_CROP_DEFAULTS:J = 0xb476b84L

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final RETRY_TIMES:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field private static final THIRDPARTY_CAMERA_USAGE:Ljava/lang/String; = "thirdpartycamera_usage"

.field private static final nfcInterfaceToken:Landroid/os/IBinder;


# instance fields
.field private final mActiveCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraEventHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private mCameraServiceRaw:Landroid/hardware/ICameraService;

.field private final mContext:Landroid/content/Context;

.field private mDeviceState:I

.field private final mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastCameraUsageUid:I

.field private mLastReportedDeviceState:I

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final mMaxPreviewFps90Enable:Z

.field private final mNotifyNfc:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$5G_IkwUKgH-F5subAPhsf_avzH0(Lcom/android/server/camera/CameraServiceProxy;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabledCameraUsers(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastUser(Lcom/android/server/camera/CameraServiceProxy;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastCameraUsageUid(Lcom/android/server/camera/CameraServiceProxy;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastCameraUsageUid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCameraServiceRawLocked(Lcom/android/server/camera/CameraServiceProxy;)Landroid/hardware/ICameraService;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misNTCameraApp(Lcom/android/server/camera/CameraServiceProxy;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->isNTCameraApp(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyDeviceStateWithRetries(Lcom/android/server/camera/CameraServiceProxy;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetries(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySwitchWithRetries(Lcom/android/server/camera/CameraServiceProxy;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUsbDeviceHotplugLocked(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/usb/UsbDevice;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/camera/CameraServiceProxy;->notifyUsbDeviceHotplugLocked(Landroid/hardware/usb/UsbDevice;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchUserLocked(Lcom/android/server/camera/CameraServiceProxy;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActivityCount(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/CameraSessionStats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->updateActivityCount(Landroid/hardware/CameraSessionStats;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFeatureCombinationQuery(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/CameraFeatureCombinationStats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->updateFeatureCombinationQuery(Landroid/hardware/CameraFeatureCombinationStats;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcameraFacingToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcameraStateToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smdumpStackTraces(IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->dumpStackTraces(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 256
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    .line 1693
    const-string v0, "/system/bin/cameraserver"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->NATIVE_SERVICES_OF_INTEREST:[Ljava/lang/String;

    .line 1698
    const-string v0, "android.hardware.camera.provider.ICameraProvider/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    .line 1703
    const-string v0, "android.hardware.camera.provider@2.4::ICameraProvider"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->HIDL_INTERFACES_OF_INTEREST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 999
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastCameraUsageUid:I

    .line 252
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 260
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 596
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;-><init>(Lcom/android/server/camera/CameraServiceProxy;Lcom/android/server/camera/CameraServiceProxy-IA;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    .line 607
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 747
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 1115
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$3;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$3;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 1000
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 1001
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "CameraService_proxy"

    const/4 v3, -0x4

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 1002
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 1003
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 1005
    const-string/jumbo v0, "ro.camera.notify_nfc"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    move v4, v1

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 1009
    const-string v0, "camera.max.preview.fps90.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mMaxPreviewFps90Enable:Z

    .line 1013
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 1016
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    invoke-direct {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 1023
    return-void
.end method

.method private static addAidlInterfacesOfInterest(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1737
    .local p0, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    .line 1738
    .local v0, "infos":[Landroid/os/ServiceDebugInfo;
    if-nez v0, :cond_0

    return-void

    .line 1740
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1741
    .local v3, "info":Landroid/os/ServiceDebugInfo;
    sget-object v4, Lcom/android/server/camera/CameraServiceProxy;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    iget-object v5, v3, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/camera/CameraServiceProxy;->matchesAidlInterfacePrefixes([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1743
    iget v4, v3, Landroid/os/ServiceDebugInfo;->debugPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1740
    .end local v3    # "info":Landroid/os/ServiceDebugInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1746
    :cond_2
    return-void
.end method

.method private static addHidlInterfacesOfInterest(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1709
    .local p0, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 1710
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 1711
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 1712
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

    .line 1713
    .local v3, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1714
    goto :goto_0

    .line 1717
    :cond_0
    sget-object v4, Lcom/android/server/camera/CameraServiceProxy;->HIDL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v5, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1718
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1721
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v3    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1720
    .restart local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .restart local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 1712
    :cond_2
    nop

    .line 1723
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    goto :goto_3

    .line 1721
    :goto_2
    nop

    .line 1722
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraService_proxy"

    const-string v2, "Remote exception while querying HIDL service manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1724
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method private static cameraFacingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cameraFacing"    # I

    .line 1606
    packed-switch p0, :pswitch_data_0

    .line 1612
    const-string v0, "CAMERA_FACING_UNKNOWN"

    return-object v0

    .line 1609
    :pswitch_0
    const-string v0, "CAMERA_FACING_EXTERNAL"

    return-object v0

    .line 1608
    :pswitch_1
    const-string v0, "CAMERA_FACING_FRONT"

    return-object v0

    .line 1607
    :pswitch_2
    const-string v0, "CAMERA_FACING_BACK"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static cameraFeatureCombinationToString(J)Ljava/lang/String;
    .locals 5
    .param p0, "featureCombination"    # J

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v0, "combinationStr":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1669
    const-string v1, "60fps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    :cond_0
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1673
    const-string/jumbo v1, "stabilization "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    :cond_1
    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 1676
    const-string/jumbo v1, "hlg10 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    :cond_2
    const-wide/16 v1, 0x8

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 1679
    const-string/jumbo v1, "jpeg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    :cond_3
    const-wide/16 v1, 0x10

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 1682
    const-string/jumbo v1, "jpeg_r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    :cond_4
    const-wide/16 v1, 0x20

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 1685
    const-string v1, "4k "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    :cond_5
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static cameraFeatureCombinationTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "featureCombinationType"    # I

    .line 1655
    packed-switch p0, :pswitch_data_0

    .line 1663
    const-string v0, "FEATURE_COMBINATION_TYPE_UNKNOWN"

    return-object v0

    .line 1659
    :pswitch_0
    const-string v0, "QUERY_SESSION_CHARACTERISTICS"

    return-object v0

    .line 1657
    :pswitch_1
    const-string v0, "QUERY_FEATURE_COMBINATION"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static cameraHistogramTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cameraHistogramType"    # I

    .line 1616
    packed-switch p0, :pswitch_data_0

    .line 1622
    const-string v0, "HISTOGRAM_TYPE_UNKNOWN"

    return-object v0

    .line 1618
    :pswitch_0
    const-string v0, "HISTOGRAM_TYPE_CAPTURE_LATENCY"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "newCameraState"    # I

    .line 1595
    packed-switch p0, :pswitch_data_0

    .line 1602
    const-string v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    .line 1599
    :pswitch_0
    const-string v0, "CAMERA_STATE_CLOSED"

    return-object v0

    .line 1598
    :pswitch_1
    const-string v0, "CAMERA_STATE_IDLE"

    return-object v0

    .line 1597
    :pswitch_2
    const-string v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    .line 1596
    :pswitch_3
    const-string v0, "CAMERA_STATE_OPEN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private clearDeviceStateFlags(I)V
    .locals 3
    .param p1, "deviceStateFlags"    # I

    .line 1056
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1057
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1058
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 1059
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    iget v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    if-eq v1, v2, :cond_0

    .line 1060
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    goto :goto_0

    .line 1062
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 1063
    return-void

    .line 1062
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dumpStackTraces(IZ)V
    .locals 11
    .param p0, "pid"    # I
    .param p1, "isNativePid"    # Z

    .line 1770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 1771
    .local v1, "dalvikPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1772
    .local v0, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 1773
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1775
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    :goto_0
    invoke-static {}, Lcom/android/server/camera/CameraServiceProxy;->getRelevantNativePids()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1780
    nop

    .line 1782
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    new-instance v9, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    .line 1780
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    .line 1786
    return-void
.end method

.method private getCameraServiceRawLocked()Landroid/hardware/ICameraService;
    .locals 5

    .line 1250
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    if-nez v0, :cond_1

    .line 1251
    const-string/jumbo v0, "media.camera"

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1252
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1253
    return-object v1

    .line 1256
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    nop

    .line 1262
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_0

    .line 1257
    :catch_0
    move-exception v2

    .line 1258
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CameraService_proxy"

    const-string v4, "Could not link to death of native camera service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    return-object v1

    .line 1264
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    return-object v0
.end method

.method public static getCropRotateScale(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/camera/CameraServiceProxy$TaskInfo;IIZ)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskInfo"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
    .param p3, "displayRotation"    # I
    .param p4, "lensFacing"    # I
    .param p5, "ignoreResizableAndSdkCheck"    # Z

    .line 658
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 659
    return v0

    .line 665
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "CameraService_proxy"

    if-eqz v1, :cond_1

    .line 667
    const-string v1, "Disable Rotate and Crop to avoid conflicts with WM force rotation treatment."

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return v0

    .line 673
    :cond_1
    const/4 v1, 0x1

    if-eqz p4, :cond_2

    if-eq p4, v1, :cond_2

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lensFacing="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Crop-rotate-scale is disabled."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return v0

    .line 682
    :cond_2
    if-nez p5, :cond_3

    invoke-static {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->isMOrBelow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    if-eqz v3, :cond_3

    .line 684
    const-string v1, "The activity is N or above and claims to support resizeable-activity. Crop-rotate-scale is disabled."

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return v0

    .line 690
    :cond_3
    iget-boolean v3, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    if-nez v3, :cond_4

    iget-boolean v3, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    if-nez v3, :cond_4

    .line 691
    const-string v1, "Non-fixed orientation activity. Crop-rotate-scale is disabled."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return v0

    .line 696
    :cond_4
    packed-switch p3, :pswitch_data_0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported display rotation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return v0

    .line 707
    :pswitch_0
    const/16 v3, 0x10e

    .line 708
    .local v3, "rotationDegree":I
    goto :goto_0

    .line 704
    .end local v3    # "rotationDegree":I
    :pswitch_1
    const/16 v3, 0xb4

    .line 705
    .restart local v3    # "rotationDegree":I
    goto :goto_0

    .line 701
    .end local v3    # "rotationDegree":I
    :pswitch_2
    const/16 v3, 0x5a

    .line 702
    .restart local v3    # "rotationDegree":I
    goto :goto_0

    .line 698
    .end local v3    # "rotationDegree":I
    :pswitch_3
    const/4 v3, 0x0

    .line 699
    .restart local v3    # "rotationDegree":I
    nop

    .line 714
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display.getRotation()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isFixedOrientationPortrait="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isFixedOrientationLandscape="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    if-nez v3, :cond_5

    .line 727
    return v0

    .line 729
    :cond_5
    if-nez p4, :cond_6

    .line 731
    rsub-int v3, v3, 0x168

    .line 734
    :cond_6
    sparse-switch v3, :sswitch_data_0

    .line 743
    return v0

    .line 738
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 740
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 736
    :sswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .locals 7
    .param p1, "currentUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 1283
    .local v0, "userProfiles":[I
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1285
    .local v1, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v0, v4

    .line 1286
    .local v5, "id":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1285
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1289
    :cond_0
    nop

    .line 1292
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/camera/CameraServiceProxy;->isAutomotive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1297
    :cond_1
    return-object v1
.end method

.method private getMinFps(Landroid/hardware/CameraSessionStats;)F
    .locals 3
    .param p1, "cameraState"    # Landroid/hardware/CameraSessionStats;

    .line 1404
    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getMaxPreviewFps()F

    move-result v0

    .line 1405
    .local v0, "maxFps":F
    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private static getRelevantNativePids()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1752
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1753
    .local v0, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->addHidlInterfacesOfInterest(Ljava/util/Set;)V

    .line 1754
    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->addAidlInterfacesOfInterest(Ljava/util/Set;)V

    .line 1756
    sget-object v1, Lcom/android/server/camera/CameraServiceProxy;->NATIVE_SERVICES_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 1757
    .local v1, "nativePids":[I
    if-eqz v1, :cond_0

    .line 1758
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    nop

    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 1759
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1758
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1763
    :cond_0
    return-object v0
.end method

.method private isAutomotive()Z
    .locals 2

    .line 1278
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isMOrBelow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 644
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CameraService_proxy"

    const-string v3, "Package name not found!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isNTCameraApp(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1626
    const-string v0, ""

    .line 1627
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1630
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "com.nothing.camera"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1631
    const/4 v1, 0x1

    return v1

    .line 1633
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "folded"    # Ljava/lang/Boolean;

    .line 1017
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 1018
    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->setDeviceStateFlags(I)V

    goto :goto_0

    .line 1020
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->clearDeviceStateFlags(I)V

    .line 1022
    :goto_0
    return-void
.end method

.method private static matchesAidlInterfacePrefixes([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "interfacePrefixes"    # [Ljava/lang/String;
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 1728
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 1729
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1730
    const/4 v0, 0x1

    return v0

    .line 1729
    :cond_0
    nop

    .line 1728
    .end local v3    # "prefix":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1733
    :cond_1
    return v1
.end method

.method private notifyCameraserverLocked(ILjava/util/Set;)Z
    .locals 6
    .param p1, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1324
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1325
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    const/4 v1, 0x0

    const-string v2, "CameraService_proxy"

    if-nez v0, :cond_0

    .line 1326
    const-string v3, "Could not notify cameraserver, camera service not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    return v1

    .line 1331
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->toArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    nop

    .line 1337
    const/4 v1, 0x1

    return v1

    .line 1332
    :catch_0
    move-exception v3

    .line 1333
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not notify cameraserver, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    return v1
.end method

.method private notifyDeviceStateChangeLocked(I)Z
    .locals 6
    .param p1, "deviceState"    # I

    .line 1360
    invoke-direct {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1361
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    const/4 v1, 0x0

    const-string v2, "CameraService_proxy"

    if-nez v0, :cond_0

    .line 1362
    const-string v3, "Could not notify cameraserver, camera service not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    return v1

    .line 1367
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Landroid/hardware/ICameraService;->notifyDeviceStateChange(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    nop

    .line 1373
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    .line 1374
    const/4 v1, 0x1

    return v1

    .line 1368
    :catch_0
    move-exception v3

    .line 1369
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not notify cameraserver, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    return v1
.end method

.method private notifyDeviceStateWithRetries(I)V
    .locals 2
    .param p1, "retries"    # I

    .line 1341
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1342
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 1343
    monitor-exit v0

    .line 1344
    return-void

    .line 1343
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyDeviceStateWithRetriesLocked(I)V
    .locals 6
    .param p1, "retries"    # I

    .line 1347
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateChangeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    return-void

    .line 1350
    :cond_0
    if-gtz p1, :cond_1

    .line 1351
    return-void

    .line 1353
    :cond_1
    const-string v0, "CameraService_proxy"

    const-string v1, "Could not notify camera service of device state change, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1356
    return-void
.end method

.method private notifyNfcService(Z)V
    .locals 4
    .param p1, "enablePolling"    # Z

    .line 1570
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/nfc/NfcManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 1571
    .local v0, "nfcManager":Landroid/nfc/NfcManager;
    const-string v1, "Could not connect to NFC service to notify it of camera state"

    const-string v2, "CameraService_proxy"

    if-nez v0, :cond_0

    .line 1572
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return-void

    .line 1575
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 1576
    .local v3, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-nez v3, :cond_1

    .line 1577
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    return-void

    .line 1581
    :cond_1
    invoke-virtual {v3, p1}, Landroid/nfc/NfcAdapter;->setReaderModePollingEnabled(Z)V

    .line 1582
    return-void
.end method

.method private notifySwitchWithRetries(I)V
    .locals 2
    .param p1, "retries"    # I

    .line 1301
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1302
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 1303
    monitor-exit v0

    .line 1304
    return-void

    .line 1303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifySwitchWithRetriesLocked(I)V
    .locals 6
    .param p1, "retries"    # I

    .line 1307
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1308
    return-void

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyCameraserverLocked(ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    const/4 p1, 0x0

    .line 1313
    :cond_1
    if-gtz p1, :cond_2

    .line 1314
    return-void

    .line 1316
    :cond_2
    const-string v0, "CameraService_proxy"

    const-string v2, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1319
    return-void
.end method

.method private notifyUsbDeviceHotplugLocked(Landroid/hardware/usb/UsbDevice;Z)Z
    .locals 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "attached"    # Z

    .line 1379
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1383
    invoke-direct {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1384
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    const-string v2, "CameraService_proxy"

    if-nez v0, :cond_0

    .line 1385
    const-string v3, "Could not notify cameraserver, camera service not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return v1

    .line 1390
    :cond_0
    if-eqz p2, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    .line 1391
    :cond_1
    const/4 v3, 0x3

    :goto_0
    nop

    .line 1392
    .local v3, "eventType":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v5

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-interface {v4, v3, v5}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    .end local v3    # "eventType":I
    nop

    .line 1398
    const/4 v1, 0x1

    return v1

    .line 1393
    :catch_0
    move-exception v3

    .line 1394
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not notify cameraserver, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    return v1

    .line 1400
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method private setDeviceStateFlags(I)V
    .locals 3
    .param p1, "deviceStateFlags"    # I

    .line 1036
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1038
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 1039
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    iget v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    if-eq v1, v2, :cond_0

    .line 1040
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    goto :goto_0

    .line 1042
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 1043
    return-void

    .line 1042
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchUserLocked(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 1268
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 1269
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    .line 1270
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1272
    :cond_0
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 1273
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 1275
    :cond_1
    return-void
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1585
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1586
    .local v0, "len":I
    new-array v1, v0, [I

    .line 1587
    .local v1, "ret":[I
    const/4 v2, 0x0

    .line 1588
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1589
    .local v4, "i":Ljava/lang/Integer;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "idx":I
    .local v5, "idx":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 1590
    .end local v4    # "i":Ljava/lang/Integer;
    move v2, v5

    goto :goto_0

    .line 1591
    .end local v5    # "idx":I
    .restart local v2    # "idx":I
    :cond_0
    return-object v1
.end method

.method private updateActivityCount(Landroid/hardware/CameraSessionStats;)V
    .locals 46
    .param p1, "cameraState"    # Landroid/hardware/CameraSessionStats;

    .line 1409
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getCameraId()Ljava/lang/String;

    move-result-object v3

    .line 1410
    .local v3, "cameraId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    move-result v15

    .line 1411
    .local v15, "newCameraState":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    move-result v4

    .line 1412
    .local v4, "facing":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getClientName()Ljava/lang/String;

    move-result-object v5

    .line 1413
    .local v5, "clientName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getApiLevel()I

    move-result v6

    .line 1414
    .local v6, "apiLevel":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->isNdk()Z

    move-result v7

    .line 1415
    .local v7, "isNdk":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getSessionType()I

    move-result v10

    .line 1416
    .local v10, "sessionType":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getInternalReconfigureCount()I

    move-result v17

    .line 1417
    .local v17, "internalReconfigureCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getLatencyMs()I

    move-result v9

    .line 1418
    .local v9, "latencyMs":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getRequestCount()J

    move-result-wide v18

    .line 1419
    .local v18, "requestCount":J
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getResultErrorCount()J

    move-result-wide v20

    .line 1420
    .local v20, "resultErrorCount":J
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getDeviceErrorFlag()Z

    move-result v11

    .line 1421
    .local v11, "deviceError":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getStreamStats()Ljava/util/List;

    move-result-object v23

    .line 1422
    .local v23, "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUserTag()Ljava/lang/String;

    move-result-object v24

    .line 1423
    .local v24, "userTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getVideoStabilizationMode()I

    move-result v25

    .line 1424
    .local v25, "videoStabilizationMode":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUsedUltraWide()Z

    move-result v26

    .line 1425
    .local v26, "usedUltraWide":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUsedZoomOverride()Z

    move-result v27

    .line 1426
    .local v27, "usedZoomOverride":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getLogId()J

    move-result-wide v12

    .line 1427
    .local v12, "logId":J
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getSessionIndex()I

    move-result v14

    .line 1428
    .local v14, "sessionIdx":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getExtensionSessionStats()Landroid/hardware/CameraExtensionSessionStats;

    move-result-object v29

    .line 1429
    .local v29, "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    nop

    .line 1430
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getMostRequestedFpsRange()Landroid/util/Range;

    move-result-object v28

    .line 1431
    nop

    .line 1433
    .local v28, "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1435
    :try_start_0
    iget-object v0, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_16

    .line 1436
    .local v0, "wasEmpty":Z
    packed-switch v15, :pswitch_data_0

    move-object/from16 v41, v2

    move-object/from16 v16, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move-object/from16 v40, v28

    move-object/from16 v39, v29

    goto/16 :goto_a

    .line 1507
    :pswitch_0
    :try_start_1
    iget-object v8, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1508
    .local v16, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-eqz v16, :cond_2

    .line 1510
    move/from16 v22, v11

    .end local v11    # "deviceError":Z
    .local v22, "deviceError":Z
    :try_start_2
    invoke-virtual/range {v16 .. v29}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v8, v16

    move-object/from16 v16, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move-object/from16 v40, v28

    move-object/from16 v39, v29

    .line 1514
    .end local v22    # "deviceError":Z
    .end local v24    # "userTag":Ljava/lang/String;
    .end local v25    # "videoStabilizationMode":I
    .end local v26    # "usedUltraWide":Z
    .end local v27    # "usedZoomOverride":Z
    .end local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .local v8, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .restart local v11    # "deviceError":Z
    .local v16, "userTag":Ljava/lang/String;
    .local v36, "videoStabilizationMode":I
    .local v37, "usedUltraWide":Z
    .local v38, "usedZoomOverride":Z
    .local v39, "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .local v40, "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v22, v3

    .end local v3    # "cameraId":Ljava/lang/String;
    .local v22, "cameraId":Ljava/lang/String;
    :try_start_3
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1516
    const/4 v11, 0x0

    .line 1520
    const/4 v3, 0x0

    .line 1521
    .local v3, "stillActivePackage":Z
    const/16 v24, 0x0

    move/from16 v25, v3

    move/from16 v3, v24

    .local v3, "i":I
    .local v25, "stillActivePackage":Z
    :goto_0
    move/from16 v24, v4

    .end local v4    # "facing":I
    .local v24, "facing":I
    :try_start_4
    iget-object v4, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1522
    iget-object v4, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v4, v4, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1523
    const/4 v4, 0x1

    .line 1524
    .end local v25    # "stillActivePackage":Z
    .local v4, "stillActivePackage":Z
    move v3, v4

    goto :goto_1

    .line 1521
    .end local v4    # "stillActivePackage":Z
    .restart local v25    # "stillActivePackage":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v24

    goto :goto_0

    .line 1554
    .end local v0    # "wasEmpty":Z
    .end local v3    # "i":I
    .end local v8    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v25    # "stillActivePackage":Z
    :catchall_0
    move-exception v0

    move-object/from16 v41, v2

    move-object/from16 v3, v22

    move/from16 v4, v24

    goto/16 :goto_c

    .line 1521
    .restart local v0    # "wasEmpty":Z
    .restart local v3    # "i":I
    .restart local v8    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .restart local v25    # "stillActivePackage":Z
    :cond_1
    move/from16 v3, v25

    .line 1529
    .end local v25    # "stillActivePackage":Z
    .local v3, "stillActivePackage":Z
    :goto_1
    if-nez v3, :cond_3

    .line 1530
    const-class v4, Lcom/android/server/wm/WindowManagerInternal;

    .line 1531
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    .line 1532
    .local v4, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->removeRefreshRateRangeForPackage(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1554
    .end local v0    # "wasEmpty":Z
    .end local v3    # "stillActivePackage":Z
    .end local v8    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v24    # "facing":I
    .local v4, "facing":I
    :catchall_1
    move-exception v0

    move/from16 v24, v4

    move-object/from16 v41, v2

    move-object/from16 v3, v22

    .end local v4    # "facing":I
    .restart local v24    # "facing":I
    goto/16 :goto_c

    .end local v11    # "deviceError":Z
    .end local v16    # "userTag":Ljava/lang/String;
    .end local v36    # "videoStabilizationMode":I
    .end local v37    # "usedUltraWide":Z
    .end local v38    # "usedZoomOverride":Z
    .end local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .end local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v3, "cameraId":Ljava/lang/String;
    .restart local v4    # "facing":I
    .local v22, "deviceError":Z
    .local v24, "userTag":Ljava/lang/String;
    .local v25, "videoStabilizationMode":I
    .restart local v26    # "usedUltraWide":Z
    .restart local v27    # "usedZoomOverride":Z
    .restart local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    :catchall_2
    move-exception v0

    move/from16 v11, v22

    move-object/from16 v16, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move-object/from16 v40, v28

    move-object/from16 v39, v29

    move-object/from16 v22, v3

    move/from16 v24, v4

    move-object/from16 v41, v2

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "facing":I
    .end local v25    # "videoStabilizationMode":I
    .end local v26    # "usedUltraWide":Z
    .end local v27    # "usedZoomOverride":Z
    .end local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v11    # "deviceError":Z
    .restart local v16    # "userTag":Ljava/lang/String;
    .local v22, "cameraId":Ljava/lang/String;
    .local v24, "facing":I
    .restart local v36    # "videoStabilizationMode":I
    .restart local v37    # "usedUltraWide":Z
    .restart local v38    # "usedZoomOverride":Z
    .restart local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_c

    .line 1508
    .end local v22    # "cameraId":Ljava/lang/String;
    .end local v36    # "videoStabilizationMode":I
    .end local v37    # "usedUltraWide":Z
    .end local v38    # "usedZoomOverride":Z
    .end local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .end local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v0    # "wasEmpty":Z
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "facing":I
    .local v16, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .local v24, "userTag":Ljava/lang/String;
    .restart local v25    # "videoStabilizationMode":I
    .restart local v26    # "usedUltraWide":Z
    .restart local v27    # "usedZoomOverride":Z
    .restart local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    :cond_2
    move-object/from16 v22, v3

    move-object/from16 v8, v16

    move-object/from16 v16, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move-object/from16 v40, v28

    move-object/from16 v39, v29

    move/from16 v24, v4

    .line 1535
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "facing":I
    .end local v25    # "videoStabilizationMode":I
    .end local v26    # "usedUltraWide":Z
    .end local v27    # "usedZoomOverride":Z
    .end local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v8    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .local v16, "userTag":Ljava/lang/String;
    .restart local v22    # "cameraId":Ljava/lang/String;
    .local v24, "facing":I
    .restart local v36    # "videoStabilizationMode":I
    .restart local v37    # "usedUltraWide":Z
    .restart local v38    # "usedZoomOverride":Z
    .restart local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    :goto_2
    const/4 v3, 0x0

    :try_start_5
    invoke-direct {v1, v3, v5}, Lcom/android/server/camera/CameraServiceProxy;->updateCameraUsageInfo(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 1536
    const/4 v3, 0x3

    if-ne v15, v3, :cond_4

    .line 1537
    move-object v3, v2

    :try_start_6
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object v4, v8

    .end local v8    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .local v4, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    const/4 v8, 0x2

    move-object/from16 v41, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v4

    move/from16 v4, v24

    .end local v24    # "facing":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .local v4, "facing":I
    .local v22, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_start_7
    invoke-direct/range {v2 .. v14}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v45, v3

    move-object v3, v2

    move-object/from16 v2, v45

    .line 1541
    .local v2, "cameraId":Ljava/lang/String;
    .local v3, "closeEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_start_8
    iget-object v8, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1554
    .end local v0    # "wasEmpty":Z
    .end local v3    # "closeEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v22    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :catchall_3
    move-exception v0

    move-object v3, v2

    goto/16 :goto_c

    .end local v2    # "cameraId":Ljava/lang/String;
    .local v3, "cameraId":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "cameraId":Ljava/lang/String;
    .restart local v2    # "cameraId":Ljava/lang/String;
    goto/16 :goto_c

    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v4    # "facing":I
    .local v22, "cameraId":Ljava/lang/String;
    .restart local v24    # "facing":I
    :catchall_5
    move-exception v0

    move-object/from16 v41, v3

    :goto_3
    move-object/from16 v2, v22

    move/from16 v4, v24

    move-object v3, v2

    .end local v22    # "cameraId":Ljava/lang/String;
    .end local v24    # "facing":I
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v4    # "facing":I
    goto/16 :goto_c

    .line 1536
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v4    # "facing":I
    .restart local v0    # "wasEmpty":Z
    .restart local v8    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .restart local v22    # "cameraId":Ljava/lang/String;
    .restart local v24    # "facing":I
    :cond_4
    move-object/from16 v41, v2

    move-object/from16 v2, v22

    move/from16 v4, v24

    move-object/from16 v22, v8

    .line 1544
    .end local v8    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v24    # "facing":I
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v4    # "facing":I
    .local v22, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :goto_4
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v8, 0x14

    if-le v3, v8, :cond_5

    .line 1545
    invoke-virtual {v1}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1550
    .end local v22    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :cond_5
    move-object v3, v2

    goto/16 :goto_a

    .line 1554
    .end local v0    # "wasEmpty":Z
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v4    # "facing":I
    .local v22, "cameraId":Ljava/lang/String;
    .restart local v24    # "facing":I
    :catchall_6
    move-exception v0

    move-object/from16 v41, v2

    goto :goto_3

    .end local v16    # "userTag":Ljava/lang/String;
    .end local v22    # "cameraId":Ljava/lang/String;
    .end local v36    # "videoStabilizationMode":I
    .end local v37    # "usedUltraWide":Z
    .end local v38    # "usedZoomOverride":Z
    .end local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .end local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "facing":I
    .local v24, "userTag":Ljava/lang/String;
    .restart local v25    # "videoStabilizationMode":I
    .restart local v26    # "usedUltraWide":Z
    .restart local v27    # "usedZoomOverride":Z
    .restart local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    :catchall_7
    move-exception v0

    move-object/from16 v41, v2

    move-object v2, v3

    move-object/from16 v16, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move-object/from16 v40, v28

    move-object/from16 v39, v29

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v24    # "userTag":Ljava/lang/String;
    .end local v25    # "videoStabilizationMode":I
    .end local v26    # "usedUltraWide":Z
    .end local v27    # "usedZoomOverride":Z
    .end local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v16    # "userTag":Ljava/lang/String;
    .restart local v36    # "videoStabilizationMode":I
    .restart local v37    # "usedUltraWide":Z
    .restart local v38    # "usedZoomOverride":Z
    .restart local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_c

    .line 1460
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v16    # "userTag":Ljava/lang/String;
    .end local v36    # "videoStabilizationMode":I
    .end local v37    # "usedUltraWide":Z
    .end local v38    # "usedZoomOverride":Z
    .end local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .end local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v0    # "wasEmpty":Z
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v24    # "userTag":Ljava/lang/String;
    .restart local v25    # "videoStabilizationMode":I
    .restart local v26    # "usedUltraWide":Z
    .restart local v27    # "usedZoomOverride":Z
    .restart local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    :pswitch_1
    move-object/from16 v41, v2

    move-object v2, v3

    move-object/from16 v16, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move-object/from16 v40, v28

    move-object/from16 v39, v29

    const/4 v3, 0x0

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v24    # "userTag":Ljava/lang/String;
    .end local v25    # "videoStabilizationMode":I
    .end local v26    # "usedUltraWide":Z
    .end local v27    # "usedZoomOverride":Z
    .end local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v16    # "userTag":Ljava/lang/String;
    .restart local v36    # "videoStabilizationMode":I
    .restart local v37    # "usedUltraWide":Z
    .restart local v38    # "usedZoomOverride":Z
    .restart local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 1461
    .local v8, "alreadyActivePackage":Z
    const/16 v22, 0x0

    move/from16 v3, v22

    .local v3, "i":I
    :goto_5
    move-object/from16 v22, v2

    .end local v2    # "cameraId":Ljava/lang/String;
    .restart local v22    # "cameraId":Ljava/lang/String;
    :try_start_9
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_10

    if-ge v3, v2, :cond_7

    .line 1462
    :try_start_a
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v2, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v2, :cond_6

    .line 1463
    const/4 v8, 0x1

    .line 1464
    move/from16 v42, v8

    goto :goto_6

    .line 1461
    :cond_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v22

    goto :goto_5

    .line 1554
    .end local v0    # "wasEmpty":Z
    .end local v3    # "i":I
    .end local v8    # "alreadyActivePackage":Z
    :catchall_8
    move-exception v0

    move-object/from16 v3, v22

    goto/16 :goto_c

    .line 1461
    .restart local v0    # "wasEmpty":Z
    .restart local v3    # "i":I
    .restart local v8    # "alreadyActivePackage":Z
    :cond_7
    move/from16 v42, v8

    .line 1467
    .end local v3    # "i":I
    .end local v8    # "alreadyActivePackage":Z
    .local v42, "alreadyActivePackage":Z
    :goto_6
    const/4 v2, 0x1

    :try_start_b
    invoke-direct {v1, v2, v5}, Lcom/android/server/camera/CameraServiceProxy;->updateCameraUsageInfo(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    .line 1470
    if-nez v42, :cond_9

    .line 1471
    :try_start_c
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 1472
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 1473
    .local v2, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/camera/CameraServiceProxy;->getMinFps(Landroid/hardware/CameraSessionStats;)F

    move-result v3

    .line 1476
    .local v3, "minFps":F
    iget-boolean v8, v1, Lcom/android/server/camera/CameraServiceProxy;->mMaxPreviewFps90Enable:Z

    if-eqz v8, :cond_8

    if-eqz v5, :cond_8

    const-string/jumbo v8, "org.telegram.messenger"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1477
    const-string v8, "CameraService_proxy"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    move/from16 v24, v4

    .end local v4    # "facing":I
    .local v24, "facing":I
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move/from16 v25, v6

    .end local v6    # "apiLevel":I
    .local v25, "apiLevel":I
    :try_start_e
    const-string/jumbo v6, "updateActivityCount addRefreshRateRangeForPackage 2:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-virtual {v2, v5, v3, v6}, Lcom/android/server/wm/WindowManagerInternal;->addRefreshRateRangeForPackage(Ljava/lang/String;FF)V

    goto :goto_7

    .line 1554
    .end local v0    # "wasEmpty":Z
    .end local v2    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    .end local v3    # "minFps":F
    .end local v42    # "alreadyActivePackage":Z
    :catchall_9
    move-exception v0

    move-object/from16 v3, v22

    move/from16 v4, v24

    move/from16 v6, v25

    goto/16 :goto_c

    .end local v25    # "apiLevel":I
    .restart local v6    # "apiLevel":I
    :catchall_a
    move-exception v0

    move/from16 v25, v6

    move-object/from16 v3, v22

    move/from16 v4, v24

    .end local v6    # "apiLevel":I
    .restart local v25    # "apiLevel":I
    goto/16 :goto_c

    .end local v24    # "facing":I
    .end local v25    # "apiLevel":I
    .restart local v4    # "facing":I
    .restart local v6    # "apiLevel":I
    :catchall_b
    move-exception v0

    move/from16 v24, v4

    move/from16 v25, v6

    move-object/from16 v3, v22

    .end local v4    # "facing":I
    .end local v6    # "apiLevel":I
    .restart local v24    # "facing":I
    .restart local v25    # "apiLevel":I
    goto/16 :goto_c

    .line 1476
    .end local v24    # "facing":I
    .end local v25    # "apiLevel":I
    .restart local v0    # "wasEmpty":Z
    .restart local v2    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v3    # "minFps":F
    .restart local v4    # "facing":I
    .restart local v6    # "apiLevel":I
    .restart local v42    # "alreadyActivePackage":Z
    :cond_8
    move/from16 v24, v4

    move/from16 v25, v6

    .line 1481
    .end local v4    # "facing":I
    .end local v6    # "apiLevel":I
    .restart local v24    # "facing":I
    .restart local v25    # "apiLevel":I
    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->addRefreshRateRangeForPackage(Ljava/lang/String;FF)V

    .line 1483
    const-string v6, "CameraService_proxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateActivityCount addRefreshRateRangeForPackage 1:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_7

    .line 1470
    .end local v2    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    .end local v3    # "minFps":F
    .end local v24    # "facing":I
    .end local v25    # "apiLevel":I
    .restart local v4    # "facing":I
    .restart local v6    # "apiLevel":I
    :cond_9
    move/from16 v24, v4

    move/from16 v25, v6

    .line 1490
    .end local v4    # "facing":I
    .end local v6    # "apiLevel":I
    .restart local v24    # "facing":I
    .restart local v25    # "apiLevel":I
    :goto_7
    :try_start_f
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    const/4 v8, 0x3

    move-object/from16 v3, v22

    move/from16 v4, v24

    move/from16 v6, v25

    const/16 v30, 0x0

    .end local v22    # "cameraId":Ljava/lang/String;
    .end local v24    # "facing":I
    .end local v25    # "apiLevel":I
    .local v3, "cameraId":Ljava/lang/String;
    .restart local v4    # "facing":I
    .restart local v6    # "apiLevel":I
    :try_start_10
    invoke-direct/range {v2 .. v14}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    .line 1494
    .local v2, "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    iget-object v8, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v22, v8

    check-cast v22, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 1495
    .local v22, "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-eqz v22, :cond_a

    .line 1496
    const-string v8, "CameraService_proxy"

    move-object/from16 v43, v2

    .end local v2    # "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .local v43, "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    move/from16 v44, v4

    .end local v4    # "facing":I
    .local v44, "facing":I
    :try_start_11
    const-string v4, "Camera "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was already marked as active"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    move/from16 v2, v30

    const-string v30, ""

    new-instance v4, Landroid/util/Range;

    .line 1500
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v8, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v35, Landroid/hardware/CameraExtensionSessionStats;

    invoke-direct/range {v35 .. v35}, Landroid/hardware/CameraExtensionSessionStats;-><init>()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 1497
    move-object/from16 v29, v23

    .end local v23    # "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    .local v29, "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v31, -0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v34, v4

    :try_start_12
    invoke-virtual/range {v22 .. v35}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    move-object/from16 v2, v22

    move-object/from16 v23, v29

    .line 1502
    .end local v22    # "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v29    # "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    .local v2, "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .restart local v23    # "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    :try_start_13
    iget-object v4, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    move/from16 v4, v44

    goto/16 :goto_a

    .line 1554
    .end local v0    # "wasEmpty":Z
    .end local v2    # "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v42    # "alreadyActivePackage":Z
    .end local v43    # "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :catchall_c
    move-exception v0

    move/from16 v4, v44

    goto/16 :goto_c

    .end local v23    # "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    .restart local v29    # "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    :catchall_d
    move-exception v0

    move-object/from16 v23, v29

    move/from16 v4, v44

    .end local v29    # "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    .restart local v23    # "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    goto/16 :goto_c

    .end local v44    # "facing":I
    .restart local v4    # "facing":I
    :catchall_e
    move-exception v0

    move/from16 v44, v4

    .end local v4    # "facing":I
    .restart local v44    # "facing":I
    goto/16 :goto_c

    .line 1495
    .end local v44    # "facing":I
    .restart local v0    # "wasEmpty":Z
    .local v2, "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .restart local v4    # "facing":I
    .restart local v22    # "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .restart local v42    # "alreadyActivePackage":Z
    :cond_a
    move-object/from16 v43, v2

    move/from16 v44, v4

    move-object/from16 v2, v22

    .end local v4    # "facing":I
    .end local v22    # "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .local v2, "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .restart local v43    # "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .restart local v44    # "facing":I
    goto/16 :goto_a

    .line 1554
    .end local v0    # "wasEmpty":Z
    .end local v2    # "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v6    # "apiLevel":I
    .end local v42    # "alreadyActivePackage":Z
    .end local v43    # "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v44    # "facing":I
    .local v22, "cameraId":Ljava/lang/String;
    .restart local v24    # "facing":I
    .restart local v25    # "apiLevel":I
    :catchall_f
    move-exception v0

    move-object/from16 v3, v22

    move/from16 v44, v24

    move/from16 v6, v25

    move/from16 v4, v44

    .end local v22    # "cameraId":Ljava/lang/String;
    .end local v24    # "facing":I
    .end local v25    # "apiLevel":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v6    # "apiLevel":I
    .restart local v44    # "facing":I
    goto/16 :goto_c

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v44    # "facing":I
    .restart local v4    # "facing":I
    .restart local v22    # "cameraId":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move/from16 v44, v4

    move-object/from16 v3, v22

    .end local v4    # "facing":I
    .end local v22    # "cameraId":Ljava/lang/String;
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v44    # "facing":I
    goto/16 :goto_c

    .line 1443
    .end local v16    # "userTag":Ljava/lang/String;
    .end local v36    # "videoStabilizationMode":I
    .end local v37    # "usedUltraWide":Z
    .end local v38    # "usedZoomOverride":Z
    .end local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .end local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v44    # "facing":I
    .restart local v0    # "wasEmpty":Z
    .restart local v4    # "facing":I
    .local v24, "userTag":Ljava/lang/String;
    .local v25, "videoStabilizationMode":I
    .restart local v26    # "usedUltraWide":Z
    .restart local v27    # "usedZoomOverride":Z
    .restart local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v29, "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    :pswitch_2
    move-object/from16 v41, v2

    move/from16 v44, v4

    move-object/from16 v16, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move-object/from16 v40, v28

    move-object/from16 v39, v29

    .end local v4    # "facing":I
    .end local v24    # "userTag":Ljava/lang/String;
    .end local v25    # "videoStabilizationMode":I
    .end local v26    # "usedUltraWide":Z
    .end local v27    # "usedZoomOverride":Z
    .end local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v16    # "userTag":Ljava/lang/String;
    .restart local v36    # "videoStabilizationMode":I
    .restart local v37    # "usedUltraWide":Z
    .restart local v38    # "usedZoomOverride":Z
    .restart local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v44    # "facing":I
    :try_start_14
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_15

    .line 1444
    .local v2, "audioManager":Landroid/media/AudioManager;
    if-eqz v2, :cond_c

    .line 1446
    if-nez v44, :cond_b

    .line 1447
    :try_start_15
    const-string v4, "back"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    goto :goto_8

    :cond_b
    :try_start_16
    const-string/jumbo v4, "front"

    :goto_8
    nop

    .line 1448
    .local v4, "facingStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    move-object/from16 v22, v3

    .end local v3    # "cameraId":Ljava/lang/String;
    .restart local v22    # "cameraId":Ljava/lang/String;
    :try_start_17
    const-string v3, "cameraFacing="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1449
    .local v3, "facingParameter":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    goto :goto_9

    .line 1554
    .end local v0    # "wasEmpty":Z
    .end local v2    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "facingParameter":Ljava/lang/String;
    .end local v4    # "facingStr":Ljava/lang/String;
    :catchall_11
    move-exception v0

    move-object/from16 v3, v22

    move/from16 v4, v44

    goto :goto_c

    .end local v22    # "cameraId":Ljava/lang/String;
    .local v3, "cameraId":Ljava/lang/String;
    :catchall_12
    move-exception v0

    move-object/from16 v22, v3

    move/from16 v4, v44

    .end local v3    # "cameraId":Ljava/lang/String;
    .restart local v22    # "cameraId":Ljava/lang/String;
    goto :goto_c

    .line 1444
    .end local v22    # "cameraId":Ljava/lang/String;
    .restart local v0    # "wasEmpty":Z
    .restart local v2    # "audioManager":Landroid/media/AudioManager;
    .restart local v3    # "cameraId":Ljava/lang/String;
    :cond_c
    move-object/from16 v22, v3

    .line 1451
    .end local v3    # "cameraId":Ljava/lang/String;
    .restart local v22    # "cameraId":Ljava/lang/String;
    :goto_9
    move-object v3, v2

    .end local v2    # "audioManager":Landroid/media/AudioManager;
    .local v3, "audioManager":Landroid/media/AudioManager;
    :try_start_18
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_14

    const/4 v8, 0x1

    move-object/from16 v4, v22

    move-object/from16 v22, v3

    move-object v3, v4

    move/from16 v4, v44

    .end local v44    # "facing":I
    .local v3, "cameraId":Ljava/lang/String;
    .local v4, "facing":I
    .local v22, "audioManager":Landroid/media/AudioManager;
    :try_start_19
    invoke-direct/range {v2 .. v14}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    .line 1455
    .local v2, "openEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    iget-object v8, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    nop

    .line 1550
    .end local v2    # "openEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v22    # "audioManager":Landroid/media/AudioManager;
    :goto_a
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    .line 1551
    .local v2, "isEmpty":Z
    iget-boolean v8, v1, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v8, :cond_d

    if-eq v0, v2, :cond_d

    .line 1552
    invoke-direct {v1, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    goto :goto_b

    .line 1554
    .end local v0    # "wasEmpty":Z
    .end local v2    # "isEmpty":Z
    :catchall_13
    move-exception v0

    goto :goto_c

    :cond_d
    :goto_b
    monitor-exit v41

    .line 1555
    return-void

    .line 1554
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "facing":I
    .local v22, "cameraId":Ljava/lang/String;
    .restart local v44    # "facing":I
    :catchall_14
    move-exception v0

    move-object/from16 v3, v22

    move/from16 v4, v44

    .end local v22    # "cameraId":Ljava/lang/String;
    .end local v44    # "facing":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "facing":I
    goto :goto_c

    .end local v4    # "facing":I
    .restart local v44    # "facing":I
    :catchall_15
    move-exception v0

    move/from16 v4, v44

    .end local v44    # "facing":I
    .restart local v4    # "facing":I
    goto :goto_c

    .end local v16    # "userTag":Ljava/lang/String;
    .end local v36    # "videoStabilizationMode":I
    .end local v37    # "usedUltraWide":Z
    .end local v38    # "usedZoomOverride":Z
    .end local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .end local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v24    # "userTag":Ljava/lang/String;
    .restart local v25    # "videoStabilizationMode":I
    .restart local v26    # "usedUltraWide":Z
    .restart local v27    # "usedZoomOverride":Z
    .restart local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    :catchall_16
    move-exception v0

    move-object/from16 v41, v2

    move-object/from16 v16, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move-object/from16 v40, v28

    move-object/from16 v39, v29

    .end local v24    # "userTag":Ljava/lang/String;
    .end local v25    # "videoStabilizationMode":I
    .end local v26    # "usedUltraWide":Z
    .end local v27    # "usedZoomOverride":Z
    .end local v28    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v29    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v16    # "userTag":Ljava/lang/String;
    .restart local v36    # "videoStabilizationMode":I
    .restart local v37    # "usedUltraWide":Z
    .restart local v38    # "usedZoomOverride":Z
    .restart local v39    # "extSessionStats":Landroid/hardware/CameraExtensionSessionStats;
    .restart local v40    # "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_c
    monitor-exit v41
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_13

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateCameraUsageInfo(ILjava/lang/String;)V
    .locals 5
    .param p1, "useStatus"    # I
    .param p2, "mClientName"    # Ljava/lang/String;

    .line 1638
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastCameraUsageUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1639
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastCameraUsageUid:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastCameraUsageUid:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->isNTCameraApp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastCameraUsageUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1642
    .local v0, "usageData":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-string v2, "CameraService_proxy"

    if-eqz v1, :cond_0

    .line 1643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCameraUsageInfo :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1645
    .local v1, "ident":J
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "thirdpartycamera_usage"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1646
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1647
    .end local v1    # "ident":J
    goto :goto_0

    .line 1648
    :cond_0
    const-string/jumbo v1, "updateCameraUsageInfo failed"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    .end local v0    # "usageData":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private updateFeatureCombinationQuery(Landroid/hardware/CameraFeatureCombinationStats;)V
    .locals 4
    .param p1, "featureCombStats"    # Landroid/hardware/CameraFeatureCombinationStats;

    .line 1558
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1559
    :try_start_0
    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;

    invoke-direct {v1, p1}, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;-><init>(Landroid/hardware/CameraFeatureCombinationStats;)V

    .line 1561
    .local v1, "e":Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    .line 1564
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V

    goto :goto_0

    .line 1566
    .end local v1    # "e":Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 1567
    return-void

    .line 1566
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1183
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1184
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 1187
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 1188
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 1190
    iget-boolean v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 1191
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    goto :goto_0

    .line 1193
    .end local v1    # "wasEmpty":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 1194
    return-void

    .line 1193
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpCameraEvents()V
    .locals 5

    .line 1232
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1235
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3}, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;-><init>(Lcom/android/server/camera/CameraServiceProxy;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1238
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1242
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1244
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1245
    nop

    .line 1246
    return-void

    .line 1244
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1245
    throw v2

    .line 1239
    .end local v0    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method getUsageEventCount()I
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1067
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraServiceProxy error, invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1072
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetries(I)V

    .line 1073
    goto :goto_0

    .line 1069
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    .line 1070
    nop

    .line 1078
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 1141
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    .line 1145
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    .line 1146
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object v0

    .line 1147
    .local v0, "displayIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1148
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->onDisplayAdded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1150
    .end local v0    # "displayIds":[I
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1147
    .restart local v0    # "displayIds":[I
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 1152
    .end local v0    # "displayIds":[I
    .end local v1    # "i":I
    goto :goto_2

    .line 1150
    :goto_1
    nop

    .line 1151
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraService_proxy"

    const-string v2, "Failed to register display window listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 1155
    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 1157
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1083
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 1084
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_1

    .line 1090
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1091
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1092
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1093
    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1094
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1095
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1096
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1097
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1101
    const/16 v1, 0x73

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v1}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    goto :goto_0

    .line 1104
    :catch_0
    move-exception v1

    .line 1105
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CameraService_proxy"

    const-string v3, "Failed to register process observer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1110
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const-string/jumbo v1, "media.camera.proxy"

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1111
    const-class v1, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0, v1, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1112
    return-void

    .line 1086
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UserManagerService must start before CameraServiceProxy!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1161
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1165
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    goto :goto_0

    .line 1167
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 1168
    return-void

    .line 1167
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 1172
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1173
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 1174
    monitor-exit v0

    .line 1175
    return-void

    .line 1174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
