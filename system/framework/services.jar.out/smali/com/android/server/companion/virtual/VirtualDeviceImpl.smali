.class final Lcom/android/server/companion/virtual/VirtualDeviceImpl;
.super Landroid/companion/virtual/IVirtualDevice$Stub;
.source "VirtualDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;,
        Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;,
        Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;,
        Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_VIRTUAL_DISPLAY_FLAGS:I = 0x6140

.field private static final DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DO_NOT_SHOW_TOAST_WHEN_SECURE_SURFACE_SHOWN:J = 0x128b08e3L

.field private static final PENDING_TRAMPOLINE_TIMEOUT_MS:J = 0x1388L

.field private static final PERSISTENT_ID_PREFIX_CDM_ASSOCIATION:Ljava/lang/String; = "companion:"

.field private static final TAG:Ljava/lang/String; = "VirtualDeviceImpl"


# instance fields
.field private mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field private mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

.field private final mActivityPolicyExemptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityPolicyPackageExemptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppToken:Landroid/os/IBinder;

.field private final mAssociationInfo:Landroid/companion/AssociationInfo;

.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mBaseVirtualDisplayFlags:I

.field private final mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

.field private final mContext:Landroid/content/Context;

.field private mDefaultShowPointerIcon:Z

.field private final mDeviceId:I

.field private final mDevicePolicies:Landroid/util/SparseIntArray;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mInputController:Lcom/android/server/companion/virtual/InputController;

.field private final mIntentInterceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleList:Landroid/os/LocaleList;

.field private mLockdownActive:Z

.field private final mOwnerPackageName:Ljava/lang/String;

.field private final mOwnerUid:I

.field private final mParams:Landroid/companion/virtual/VirtualDeviceParams;

.field private final mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

.field private final mPersistentDeviceId:Ljava/lang/String;

.field private final mPowerLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

.field private mRequestedToBeAwake:Z

.field private final mRunningAppsChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSensorController:Lcom/android/server/companion/virtual/SensorController;

.field private final mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

.field private mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

.field private mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

.field private final mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

.field private final mVirtualDeviceLock:Ljava/lang/Object;

.field private final mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

.field private final mVirtualDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RaugeT8uCZZ5nfGjgxbmta7PqXg(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$launchPendingIntent$0(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z53MQXY6IsRZRvjFonPCLjY24-0(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$createVirtualDisplay$1(ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uN140wfIUX0kWtdsfc-KpevIzLQ(ILcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$isInputDeviceOwnedByVirtualDevice$2(ILcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAttributionSource(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/content/AttributionSource;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntentInterceptors(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOwnerPackageName(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOwnerUid(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldShowBlockedActivityDialog(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->shouldShowBlockedActivityDialog(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 159
    const-string v0, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "associationInfo"    # Landroid/companion/AssociationInfo;
    .param p3, "service"    # Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
    .param p4, "virtualDeviceLog"    # Lcom/android/server/companion/virtual/VirtualDeviceLog;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .param p7, "deviceId"    # I
    .param p8, "cameraAccessController"    # Lcom/android/server/companion/virtual/CameraAccessController;
    .param p9, "pendingTrampolineCallback"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;
    .param p10, "activityListener"    # Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .param p11, "soundEffectListener"    # Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;
    .param p13, "params"    # Landroid/companion/virtual/VirtualDeviceParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/companion/AssociationInfo;",
            "Lcom/android/server/companion/virtual/VirtualDeviceManagerService;",
            "Lcom/android/server/companion/virtual/VirtualDeviceLog;",
            "Landroid/os/IBinder;",
            "Landroid/content/AttributionSource;",
            "I",
            "Lcom/android/server/companion/virtual/CameraAccessController;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;",
            "Landroid/companion/virtual/IVirtualDeviceActivityListener;",
            "Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            ")V"
        }
    .end annotation

    .line 388
    .local p12, "runningAppsChangedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/util/ArraySet<Ljava/lang/Integer;>;>;"
    nop

    .line 403
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v15

    .line 404
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isVirtualCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    .line 406
    const/4 v1, 0x5

    move-object/from16 v14, p13

    invoke-virtual {v14, v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result v1

    move/from16 v7, p7

    invoke-direct {v0, v1, v7}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;-><init>(II)V

    move-object/from16 v16, v0

    goto :goto_0

    .line 407
    :cond_0
    move/from16 v7, p7

    move-object/from16 v14, p13

    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 388
    :goto_0
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v16}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;Landroid/hardware/display/DisplayManagerGlobal;Lcom/android/server/companion/virtual/camera/VirtualCameraController;)V

    .line 408
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;Landroid/hardware/display/DisplayManagerGlobal;Lcom/android/server/companion/virtual/camera/VirtualCameraController;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "associationInfo"    # Landroid/companion/AssociationInfo;
    .param p3, "service"    # Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
    .param p4, "virtualDeviceLog"    # Lcom/android/server/companion/virtual/VirtualDeviceLog;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "attributionSource"    # Landroid/content/AttributionSource;
    .param p7, "deviceId"    # I
    .param p8, "inputController"    # Lcom/android/server/companion/virtual/InputController;
    .param p9, "cameraAccessController"    # Lcom/android/server/companion/virtual/CameraAccessController;
    .param p10, "pendingTrampolineCallback"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;
    .param p11, "activityListener"    # Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .param p12, "soundEffectListener"    # Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;
    .param p14, "params"    # Landroid/companion/virtual/VirtualDeviceParams;
    .param p15, "displayManager"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p16, "virtualCameraController"    # Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/companion/AssociationInfo;",
            "Lcom/android/server/companion/virtual/VirtualDeviceManagerService;",
            "Lcom/android/server/companion/virtual/VirtualDeviceLog;",
            "Landroid/os/IBinder;",
            "Landroid/content/AttributionSource;",
            "I",
            "Lcom/android/server/companion/virtual/InputController;",
            "Lcom/android/server/companion/virtual/CameraAccessController;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;",
            "Landroid/companion/virtual/IVirtualDeviceActivityListener;",
            "Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            "Landroid/hardware/display/DisplayManagerGlobal;",
            "Lcom/android/server/companion/virtual/camera/VirtualCameraController;",
            ")V"
        }
    .end annotation

    .line 427
    .local p13, "runningAppsChangedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/util/ArraySet<Ljava/lang/Integer;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct {v1}, Landroid/companion/virtual/IVirtualDevice$Stub;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 206
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    .line 211
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    .line 217
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 219
    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 224
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    .line 225
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    .line 227
    iput-boolean v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    .line 236
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    .line 428
    move-object/from16 v12, p4

    iput-object v12, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 429
    invoke-virtual/range {p6 .. p6}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    .line 430
    move-object/from16 v13, p6

    iput-object v13, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 431
    invoke-virtual {v13}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v14

    .line 432
    .local v14, "ownerUserHandle":Landroid/os/UserHandle;
    invoke-virtual {v6, v14, v11}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 433
    iput-object v7, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 434
    if-nez v7, :cond_0

    .line 435
    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    .line 437
    move-object/from16 v15, p3

    iput-object v15, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 438
    move-object/from16 v3, p10

    iput-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    .line 439
    move-object/from16 v4, p11

    iput-object v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 440
    move-object/from16 v5, p12

    iput-object v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 441
    move-object/from16 v2, p13

    iput-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    .line 442
    invoke-virtual {v13}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    iput v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    .line 443
    iput v9, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 444
    iput-object v8, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    .line 445
    move-object/from16 v11, p14

    iput-object v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 446
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicies()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 447
    move-object/from16 v7, p15

    iput-object v7, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    .line 448
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 449
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 451
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ADD_TRUSTED_DISPLAY"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 455
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires ADD_TRUSTED_DISPLAY permission to set a custom clipboard policy."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_2
    :goto_1
    const/16 v0, 0x6140

    .line 461
    .local v0, "flags":I
    iget-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getLockState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 462
    iget-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ADD_ALWAYS_UNLOCKED_DISPLAY"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 467
    or-int/lit16 v0, v0, 0x1000

    move v2, v0

    goto :goto_2

    .line 464
    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires ADD_ALWAYS_UNLOCKED_DISPLAY permission to create an always unlocked virtual device."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    :cond_4
    move v2, v0

    .line 469
    .end local v0    # "flags":I
    .local v2, "flags":I
    :goto_2
    iput v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mBaseVirtualDisplayFlags:I

    .line 471
    if-nez v10, :cond_5

    .line 472
    new-instance v0, Lcom/android/server/companion/virtual/InputController;

    .line 473
    invoke-virtual {v6}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    move/from16 v16, v2

    .end local v2    # "flags":I
    .local v16, "flags":I
    const-class v2, Landroid/view/WindowManager;

    .line 474
    invoke-virtual {v6, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-direct {v0, v3, v2, v4}, Lcom/android/server/companion/virtual/InputController;-><init>(Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;)V

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    goto :goto_3

    .line 476
    .end local v16    # "flags":I
    .restart local v2    # "flags":I
    :cond_5
    move/from16 v16, v2

    .end local v2    # "flags":I
    .restart local v16    # "flags":I
    iput-object v10, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 478
    :goto_3
    new-instance v0, Lcom/android/server/companion/virtual/SensorController;

    iget v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    iget-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 479
    invoke-virtual {v4}, Landroid/companion/virtual/VirtualDeviceParams;->getVirtualSensorCallback()Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    move-result-object v4

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getVirtualSensorConfigs()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/virtual/SensorController;-><init>(Landroid/companion/virtual/IVirtualDevice;ILandroid/content/AttributionSource;Landroid/companion/virtual/sensor/IVirtualSensorCallback;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    .line 480
    move-object/from16 v2, p9

    iput-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    .line 481
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v0, :cond_6

    .line 482
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/CameraAccessController;->startObservingIfNeeded()V

    .line 484
    :cond_6
    move-object/from16 v3, p16

    iput-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    .line 486
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v8, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    nop

    .line 490
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    iget v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    invoke-virtual {v0, v9, v4}, Lcom/android/server/companion/virtual/VirtualDeviceLog;->logCreated(II)V

    .line 492
    new-instance v0, Landroid/companion/virtual/VirtualDevice;

    .line 493
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v4}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/companion/virtual/VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDevice;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    .line 495
    new-instance v0, Landroid/util/ArraySet;

    .line 496
    iget-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result v2

    if-nez v2, :cond_7

    .line 497
    iget-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedActivities()Ljava/util/Set;

    move-result-object v2

    goto :goto_4

    .line 498
    :cond_7
    iget-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedActivities()Ljava/util/Set;

    move-result-object v2

    :goto_4
    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 500
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 501
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "imeId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting custom input method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as default for virtual device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VirtualDeviceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v2

    iget v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v2, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V

    .line 507
    .end local v0    # "imeId":Ljava/lang/String;
    :cond_8
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private checkCallerIsDeviceOwner()V
    .locals 2

    .line 1667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    if-ne v0, v1, :cond_0

    .line 1671
    return-void

    .line 1668
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not the owner of this virtual device"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkDisplayOwnedByVirtualDeviceLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1659
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    return-void

    .line 1660
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid displayId: Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not associated with this virtual device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkVirtualInputDeviceDisplayIdAssociation(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 1644
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1646
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1647
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 1648
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1649
    .local v1, "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    .line 1650
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Cannot create input device associated with an untrusted display"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "displayId":I
    throw v2

    .line 1653
    .end local v1    # "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "displayId":I
    :catchall_0
    move-exception v1

    goto :goto_1

    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1655
    :cond_2
    :goto_2
    return-void
.end method

.method static createPersistentDeviceId(I)Ljava/lang/String;
    .locals 2
    .param p0, "associationId"    # I

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "companion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createWakeLockForDisplay(I)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p1, "displayId"    # I

    .line 1528
    nop

    .line 1529
    const/4 v0, 0x0

    return-object v0
.end method

.method private createWindowPolicyController(Ljava/util/Set;)Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/companion/virtual/GenericWindowPolicyController;"
        }
    .end annotation

    .line 1436
    .local p1, "displayCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    .line 1437
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v9, v0

    .line 1438
    .local v9, "activityLaunchAllowedByDefault":Z
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 1439
    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getDefaultNavigationPolicy()I

    move-result v0

    if-nez v0, :cond_1

    move v12, v3

    goto :goto_1

    :cond_1
    move v12, v2

    .line 1440
    .local v12, "crossTaskNavigationAllowedByDefault":Z
    :goto_1
    nop

    .line 1441
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v0

    if-nez v0, :cond_2

    move/from16 v16, v3

    goto :goto_2

    :cond_2
    move/from16 v16, v2

    .line 1443
    .local v16, "showTasksInHostDeviceRecents":Z
    :goto_2
    iget-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1444
    :try_start_0
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    if-nez v0, :cond_3

    .line 1445
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl-IA;)V

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    goto :goto_3

    .line 1464
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 1448
    :cond_3
    :goto_3
    new-instance v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget-object v7, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1452
    invoke-direct {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAllowedUserHandles()Landroid/util/ArraySet;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    iget-object v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    .line 1457
    if-eqz v12, :cond_4

    .line 1458
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v0

    move-object v13, v0

    goto :goto_4

    .line 1459
    :cond_4
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v0

    move-object v13, v0

    :goto_4
    iget-object v14, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 1463
    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getHomeComponent()Landroid/content/ComponentName;

    move-result-object v17

    const/16 v5, 0x2000

    const/high16 v6, 0x80000

    move-object/from16 v15, p1

    invoke-direct/range {v4 .. v17}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;-><init>(IILandroid/content/AttributionSource;Landroid/util/ArraySet;ZLjava/util/Set;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;Ljava/util/Set;ZLandroid/content/ComponentName;)V

    monitor-exit v2

    .line 1448
    return-object v4

    .line 1464
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAllowedUserHandles()Landroid/util/ArraySet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 1558
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1559
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1561
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 1562
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1563
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getAllProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 1564
    .local v6, "profile":Landroid/os/UserHandle;
    nop

    .line 1565
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1564
    invoke-virtual {v3, v7}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v7

    .line 1566
    .local v7, "nearbyAppStreamingPolicy":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    if-nez v7, :cond_1

    :cond_0
    goto :goto_1

    .line 1569
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1570
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v8}, Landroid/companion/virtual/VirtualDeviceParams;->getUsersWithMatchingAccounts()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1571
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1576
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v6    # "profile":Landroid/os/UserHandle;
    .end local v7    # "nearbyAppStreamingPolicy":I
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 1568
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v4    # "userManager":Landroid/os/UserManager;
    .restart local v6    # "profile":Landroid/os/UserHandle;
    .restart local v7    # "nearbyAppStreamingPolicy":I
    :goto_1
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    .end local v6    # "profile":Landroid/os/UserHandle;
    .end local v7    # "nearbyAppStreamingPolicy":I
    :cond_2
    :goto_2
    goto :goto_0

    .line 1563
    :cond_3
    nop

    .line 1576
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "userManager":Landroid/os/UserManager;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1577
    nop

    .line 1578
    return-object v0

    .line 1576
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1577
    throw v3
.end method

.method private getDisplayIdsWhereUidIsRunning(I)Landroid/util/IntArray;
    .locals 4
    .param p1, "uid"    # I

    .line 1799
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 1800
    .local v0, "displayIdsForUid":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1801
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1802
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->containsUid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1803
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    .line 1806
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1801
    .restart local v2    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1806
    .end local v2    # "i":I
    monitor-exit v1

    .line 1807
    return-object v0

    .line 1806
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getTargetDisplayIdForInput(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 1428
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1430
    .local v0, "displayManager":Landroid/hardware/display/DisplayManagerInternal;
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    move-result v1

    .line 1431
    .local v1, "mirroredDisplayId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    return v2
.end method

.method private hasCustomAudioInputSupportInternal()Z
    .locals 7

    .line 1373
    nop

    .line 1376
    nop

    .line 1380
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1381
    return v0

    .line 1383
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1385
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1386
    .local v3, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/audiopolicy/AudioMix;

    .line 1387
    .local v5, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/audiopolicy/AudioMix;->matchesVirtualDeviceId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1388
    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v0, :cond_1

    .line 1389
    nop

    .line 1393
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1389
    return v0

    .line 1393
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    .end local v5    # "mix":Landroid/media/audiopolicy/AudioMix;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1391
    .restart local v3    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    goto :goto_0

    .line 1386
    :cond_2
    nop

    .line 1393
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1394
    nop

    .line 1395
    const/4 v0, 0x0

    return v0

    .line 1393
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1394
    throw v0
.end method

.method private static isVirtualCameraEnabled()Z
    .locals 1

    .line 1931
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->nativeVirtualCameraServiceBuildFlagEnabled()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$createVirtualDisplay$1(ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "displayWrapper"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    .param p3, "showPointer"    # Z
    .param p4, "gwpc"    # Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1509
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/companion/virtual/InputController;->setMouseScalingEnabled(ZI)V

    .line 1510
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/companion/virtual/InputController;->setDisplayEligibilityForPointerCapture(ZI)V

    .line 1512
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/companion/virtual/InputController;->setShowPointerIcon(ZI)V

    .line 1514
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/companion/virtual/InputController;->setDisplayImePolicy(II)V

    goto :goto_0

    .line 1517
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setShowInHostDeviceRecents(Z)V

    .line 1519
    :goto_0
    return-void
.end method

.method private static synthetic lambda$isInputDeviceOwnedByVirtualDevice$2(ILcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)Z
    .locals 1
    .param p0, "inputDeviceId"    # I
    .param p1, "inputDeviceDescriptor"    # Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 1818
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getInputDeviceId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$launchPendingIntent$0(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .locals 3
    .param p1, "pendingTrampoline"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 672
    iget-object v0, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 674
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    .line 675
    return-void
.end method

.method private static native nativeVirtualCameraServiceBuildFlagEnabled()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private releaseOwnedVirtualDisplayResources(Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;)V
    .locals 1
    .param p1, "virtualDisplayWrapper"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1717
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->releaseWakeLock()V

    .line 1718
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 1720
    return-void
.end method

.method private sendPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 763
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 764
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 766
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 773
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 766
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    .end local p2    # "pendingIntent":Landroid/app/PendingIntent;
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 774
    return-void
.end method

.method private shouldShowBlockedActivityDialog(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "blockedComponent"    # Landroid/content/ComponentName;
    .param p2, "blockedAppStreamingActivityComponent"    # Landroid/content/ComponentName;

    .line 1545
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1548
    return v1

    .line 1550
    :cond_0
    nop

    .line 1554
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .locals 5
    .param p1, "exemption"    # Landroid/companion/virtual/ActivityPolicyExemption;

    .line 689
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 690
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getDisplayId()I

    move-result v0

    .line 691
    .local v0, "displayId":I
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_1

    .line 692
    :cond_0
    nop

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 697
    if-eq v0, v2, :cond_3

    .line 698
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 699
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 700
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v2

    .line 701
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Landroid/content/ComponentName;)V

    goto/16 :goto_2

    .line 721
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 702
    :cond_2
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 703
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v2

    .line 704
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Ljava/lang/String;)V

    goto :goto_2

    .line 707
    :cond_3
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 708
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 709
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 710
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    .line 711
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Landroid/content/ComponentName;)V

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .end local v2    # "i":I
    goto :goto_2

    .line 713
    :cond_5
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    .line 714
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 715
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 716
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    .line 717
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Ljava/lang/String;)V

    .line 715
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 721
    .end local v2    # "i":I
    :cond_6
    :goto_2
    monitor-exit v1

    .line 722
    return-void

    .line 721
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public binderDied()V
    .locals 0

    .line 834
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->close()V

    .line 835
    return-void
.end method

.method public canCreateMirrorDisplays()Z
    .locals 2

    .line 1369
    sget-object v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceProfile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 10

    .line 779
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->removeVirtualDevice(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    iget v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/companion/virtual/VirtualDeviceLog;->logClosed(II)V

    .line 786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 789
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 790
    :try_start_1
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 791
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    .line 792
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v3

    goto/16 :goto_3

    .line 794
    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 795
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 796
    .local v3, "virtualDisplaysToBeReleased":[Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 797
    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    aput-object v6, v3, v5

    .line 796
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 799
    .end local v5    # "i":I
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 800
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    :try_start_2
    array-length v2, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v2, :cond_3

    aget-object v7, v3, v6

    .line 803
    .local v7, "virtualDisplayWrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v7}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getToken()Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 808
    invoke-direct {p0, v7}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->releaseOwnedVirtualDisplayResources(Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;)V

    .line 802
    .end local v7    # "virtualDisplayWrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 825
    .end local v3    # "virtualDisplaysToBeReleased":[Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 811
    .restart local v3    # "virtualDisplaysToBeReleased":[Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    :cond_3
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    invoke-interface {v2, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 812
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v2, :cond_4

    .line 813
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/CameraAccessController;->stopObservingIfNeeded()V

    .line 817
    :cond_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 818
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v2

    iget v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v2, v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V

    .line 822
    :cond_5
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController;->close()V

    .line 823
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/SensorController;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 825
    .end local v3    # "virtualDisplaysToBeReleased":[Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    nop

    .line 827
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz v2, :cond_6

    .line 828
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->close()V

    .line 830
    :cond_6
    return-void

    .line 800
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 825
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    throw v2
.end method

.method public createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;)I
    .locals 9
    .param p1, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;

    .line 1470
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1472
    nop

    .line 1473
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getFlags()I

    move-result v0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 1475
    .local v1, "isTrustedDisplay":Z
    if-nez v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    goto :goto_1

    .line 1476
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "All displays must be trusted for devices with custom clipboard policy."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1480
    :goto_1
    nop

    .line 1481
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayCategories()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createWindowPolicyController(Ljava/util/Set;)Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v6

    .line 1486
    .local v6, "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v7, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    move-object v5, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .end local p2    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .local v3, "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .local v4, "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/display/DisplayManagerInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    move-result p1

    .line 1488
    move-object p2, v3

    move-object v8, v4

    move-object v3, v5

    .end local v3    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .end local v4    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .local v8, "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .local p1, "displayId":I
    .local p2, "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 1489
    return p1

    .line 1497
    :cond_3
    iget-object v2, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1498
    :try_start_0
    iget-object v0, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1502
    iget-object v0, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1503
    .local v5, "displayWrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    iget-boolean v0, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 1504
    .local v0, "showPointer":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    invoke-virtual {v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->acquireWakeLock()V

    .line 1506
    invoke-virtual {v6, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->registerRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 1508
    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;

    move v4, p1

    move-object v7, v6

    move v6, v0

    .end local v0    # "showPointer":Z
    .end local p1    # "displayId":I
    .local v4, "displayId":I
    .local v6, "showPointer":Z
    .local v7, "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    invoke-direct/range {v2 .. v7}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    move-object v6, v7

    .end local v7    # "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .restart local v0    # "showPointer":Z
    .local v6, "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1521
    const-string/jumbo p1, "virtual_devices.value_virtual_display_created_count"

    iget-object v2, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1523
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    .line 1521
    invoke-static {p1, v2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1524
    return v4

    .line 1504
    .end local v0    # "showPointer":Z
    .end local v4    # "displayId":I
    .end local v5    # "displayWrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    .restart local p1    # "displayId":I
    :catchall_0
    move-exception v0

    move v4, p1

    move-object p1, v0

    .end local p1    # "displayId":I
    .restart local v4    # "displayId":I
    goto :goto_2

    .line 1499
    .end local v4    # "displayId":I
    .restart local p1    # "displayId":I
    :cond_4
    move v4, p1

    .end local p1    # "displayId":I
    .restart local v4    # "displayId":I
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Virtual device was not notified about the creation of display with ID "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isTrustedDisplay":Z
    .end local v4    # "displayId":I
    .end local v6    # "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .end local v8    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p2    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    throw p1

    .line 1504
    .restart local v1    # "isTrustedDisplay":Z
    .restart local v4    # "displayId":I
    .restart local v6    # "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .restart local v8    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p2    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "config"    # Landroid/hardware/input/VirtualDpadConfig;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 974
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 975
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 976
    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 977
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 979
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getVendorId()I

    move-result v5

    .line 980
    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getProductId()I

    move-result v6

    .line 981
    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result v8
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 979
    move-object v7, p2

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .local v7, "deviceToken":Landroid/os/IBinder;
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/companion/virtual/InputController;->createDpad(Ljava/lang/String;IILandroid/os/IBinder;I)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 986
    nop

    .line 987
    return-void

    .line 985
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 982
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .line 985
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catchall_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    goto :goto_1

    .line 982
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    :goto_0
    nop

    .line 983
    .local p2, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "ident":J
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "config":Landroid/hardware/input/VirtualDpadConfig;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 985
    .end local p2    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v1    # "ident":J
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/input/VirtualDpadConfig;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 986
    throw p2
.end method

.method public createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "config"    # Landroid/hardware/input/VirtualKeyboardConfig;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 991
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 992
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 993
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 996
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getVendorId()I

    move-result v5

    .line 997
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getProductId()I

    move-result v6

    .line 998
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result v8

    .line 999
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLayoutType()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 996
    move-object v7, p2

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .local v7, "deviceToken":Landroid/os/IBinder;
    :try_start_1
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/companion/virtual/InputController;->createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1001
    :try_start_2
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 1002
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1006
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1007
    nop

    .line 1008
    return-void

    .line 1002
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "ident":J
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "config":Landroid/hardware/input/VirtualKeyboardConfig;
    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1006
    .restart local v1    # "ident":J
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/input/VirtualKeyboardConfig;
    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 1003
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .line 1006
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catchall_2
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    goto :goto_1

    .line 1003
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    :goto_0
    nop

    .line 1004
    .local p2, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "ident":J
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "config":Landroid/hardware/input/VirtualKeyboardConfig;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1006
    .end local p2    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v1    # "ident":J
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/input/VirtualKeyboardConfig;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1007
    throw p2
.end method

.method public createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "config"    # Landroid/hardware/input/VirtualMouseConfig;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 1012
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1017
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getVendorId()I

    move-result v5

    .line 1018
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getProductId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getAssociatedDisplayId()I

    move-result v8
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1017
    move-object v7, p2

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .local v7, "deviceToken":Landroid/os/IBinder;
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/companion/virtual/InputController;->createMouse(Ljava/lang/String;IILandroid/os/IBinder;I)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1023
    nop

    .line 1024
    return-void

    .line 1022
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 1019
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .line 1022
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catchall_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    goto :goto_1

    .line 1019
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    :goto_0
    nop

    .line 1020
    .local p2, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "ident":J
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "config":Landroid/hardware/input/VirtualMouseConfig;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1022
    .end local p2    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v1    # "ident":J
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/input/VirtualMouseConfig;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1023
    throw p2
.end method

.method public createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "config"    # Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 1047
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1048
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1050
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1052
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 1053
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getVendorId()I

    move-result v5

    .line 1054
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getProductId()I

    move-result v6

    .line 1055
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result v8

    .line 1056
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getWidth()I

    move-result v10
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1052
    move-object v7, p2

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .local v7, "deviceToken":Landroid/os/IBinder;
    :try_start_1
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/companion/virtual/InputController;->createNavigationTouchpad(Ljava/lang/String;IILandroid/os/IBinder;III)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1060
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1061
    nop

    .line 1062
    return-void

    .line 1060
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 1057
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .line 1060
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catchall_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    goto :goto_1

    .line 1057
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    :goto_0
    nop

    .line 1058
    .local p2, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "ident":J
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "config":Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1060
    .end local p2    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v1    # "ident":J
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1061
    throw p2
.end method

.method public createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "config"    # Landroid/hardware/input/VirtualRotaryEncoderConfig;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 1086
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1087
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1088
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1089
    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1090
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1092
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getVendorId()I

    move-result v5

    .line 1093
    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getProductId()I

    move-result v6

    .line 1094
    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result v8
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1092
    move-object v7, p2

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .local v7, "deviceToken":Landroid/os/IBinder;
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/companion/virtual/InputController;->createRotaryEncoder(Ljava/lang/String;IILandroid/os/IBinder;I)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1098
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    nop

    .line 1100
    return-void

    .line 1098
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 1095
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .line 1098
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catchall_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    goto :goto_1

    .line 1095
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    :goto_0
    nop

    .line 1096
    .local p2, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "ident":J
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "config":Landroid/hardware/input/VirtualRotaryEncoderConfig;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1098
    .end local p2    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v1    # "ident":J
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/input/VirtualRotaryEncoderConfig;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    throw p2
.end method

.method public createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "config"    # Landroid/hardware/input/VirtualStylusConfig;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 1067
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1068
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1069
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1070
    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1071
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1073
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getVendorId()I

    move-result v5

    .line 1074
    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getProductId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getAssociatedDisplayId()I

    move-result v8

    .line 1075
    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getWidth()I

    move-result v10
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1073
    move-object v7, p2

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .local v7, "deviceToken":Landroid/os/IBinder;
    :try_start_1
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/companion/virtual/InputController;->createStylus(Ljava/lang/String;IILandroid/os/IBinder;III)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1080
    nop

    .line 1081
    return-void

    .line 1079
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 1076
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .line 1079
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catchall_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    goto :goto_1

    .line 1076
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    :goto_0
    nop

    .line 1077
    .local p2, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "ident":J
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "config":Landroid/hardware/input/VirtualStylusConfig;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1079
    .end local p2    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v1    # "ident":J
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/input/VirtualStylusConfig;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1080
    throw p2
.end method

.method public createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "config"    # Landroid/hardware/input/VirtualTouchscreenConfig;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 1029
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1030
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1031
    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1034
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getVendorId()I

    move-result v5

    .line 1035
    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getProductId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getAssociatedDisplayId()I

    move-result v8

    .line 1036
    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getWidth()I

    move-result v10
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1034
    move-object v7, p2

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .local v7, "deviceToken":Landroid/os/IBinder;
    :try_start_1
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/companion/virtual/InputController;->createTouchscreen(Ljava/lang/String;IILandroid/os/IBinder;III)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1041
    nop

    .line 1042
    return-void

    .line 1040
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 1037
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .line 1040
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catchall_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    goto :goto_1

    .line 1037
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    move-object v7, p2

    move-object p2, v0

    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    :goto_0
    nop

    .line 1038
    .local p2, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "ident":J
    .end local v7    # "deviceToken":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "config":Landroid/hardware/input/VirtualTouchscreenConfig;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1040
    .end local p2    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v1    # "ident":J
    .restart local v7    # "deviceToken":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/input/VirtualTouchscreenConfig;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1041
    throw p2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1400
    const-string v0, "    "

    .line 1401
    .local v0, "indent":Ljava/lang/String;
    const-string v1, "  VirtualDevice: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mDeviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAssociationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAssociationId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mOwnerPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/companion/virtual/VirtualDeviceParams;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mVirtualDisplayIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1409
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1414
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1409
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 1412
    .end local v2    # "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mDevicePolicies: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mDefaultShowPointerIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v1, p2}, Lcom/android/server/companion/virtual/InputController;->dump(Ljava/io/PrintWriter;)V

    .line 1416
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {v1, p2}, Lcom/android/server/companion/virtual/SensorController;->dump(Ljava/io/PrintWriter;)V

    .line 1417
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz v1, :cond_1

    .line 1418
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1420
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "hasCustomAudioInputSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->hasCustomAudioInputSupportInternal()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1420
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    return-void

    .line 1414
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAssociationId()I
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez v0, :cond_0

    .line 613
    const/4 v0, 0x0

    goto :goto_0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 612
    :goto_0
    return v0
.end method

.method public getAudioPlaybackSessionId()I
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getAudioPlaybackSessionId()I

    move-result v0

    return v0
.end method

.method public getAudioRecordingSessionId()I
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getAudioRecordingSessionId()I

    move-result v0

    return v0
.end method

.method getBaseVirtualDisplayFlags()I
    .locals 1

    .line 537
    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mBaseVirtualDisplayFlags:I

    return v0
.end method

.method getCameraAccessController()Lcom/android/server/companion/virtual/CameraAccessController;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    return-object v0
.end method

.method public getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1194
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/InputController;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1194
    return-object v2

    .line 1196
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    throw v2
.end method

.method public getDeviceId()I
    .locals 1

    .line 601
    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    return v0
.end method

.method getDeviceLocaleList()Landroid/os/LocaleList;
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    monitor-exit v0

    return-object v1

    .line 563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDevicePolicy(I)I
    .locals 3
    .param p1, "policyType"    # I

    .line 583
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceProfile()Ljava/lang/String;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getDimDurationMillis()J
    .locals 2

    .line 1727
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getDimDuration()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisplayIds()[I
    .locals 5

    .line 1736
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1737
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1738
    .local v1, "size":I
    new-array v2, v1, [I

    .line 1739
    .local v2, "displayIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1740
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 1739
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1743
    .end local v1    # "size":I
    .end local v2    # "displayIds":[I
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1739
    .restart local v1    # "size":I
    .restart local v2    # "displayIds":[I
    .restart local v3    # "i":I
    :cond_0
    nop

    .line 1742
    .end local v3    # "i":I
    monitor-exit v0

    return-object v2

    .line 1743
    .end local v1    # "size":I
    .end local v2    # "displayIds":[I
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getDisplayWindowPolicyControllerForTest(I)Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .locals 2
    .param p1, "displayId"    # I

    .line 1749
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1750
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1751
    .local v1, "virtualDisplayWrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0

    goto :goto_0

    .line 1753
    :cond_0
    const/4 v0, 0x0

    .line 1752
    :goto_0
    return-object v0

    .line 1751
    .end local v1    # "virtualDisplayWrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getInputDeviceId(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1117
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/InputController;->getInputDeviceId(Landroid/os/IBinder;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    return v2

    .line 1119
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1120
    throw v2
.end method

.method getOwnerUid()I
    .locals 1

    .line 1723
    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    return v0
.end method

.method public getPersistentDeviceId()Ljava/lang/String;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method getPublicVirtualDeviceObject()Landroid/companion/virtual/VirtualDevice;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    return-object v0
.end method

.method getScreenOffTimeoutMillis()J
    .locals 2

    .line 1731
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getScreenOffTimeout()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getSensorControllerForTest()Lcom/android/server/companion/virtual/SensorController;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    return-object v0
.end method

.method getVirtualAudioControllerForTesting()Lcom/android/server/companion/virtual/audio/VirtualAudioController;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    return-object v0
.end method

.method public getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;
    .locals 2
    .param p1, "cameraConfig"    # Landroid/companion/virtual/camera/VirtualCameraConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1356
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->getCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1357
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Virtual camera controller is not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getVirtualSensorByHandle(I)Landroid/companion/virtual/sensor/VirtualSensor;
    .locals 1
    .param p1, "handle"    # I

    .line 1283
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/SensorController;->getSensorByHandle(I)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation

    .line 1277
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1278
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/SensorController;->getSensorList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public goToSleep()V
    .locals 3

    .line 619
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 620
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    .line 622
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 625
    .local v0, "ident":J
    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->goToSleepInternal(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    nop

    .line 629
    return-void

    .line 627
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    throw v2

    .line 622
    .end local v0    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method goToSleepInternal(I)V
    .locals 8
    .param p1, "reason"    # I

    .line 1674
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1675
    .local v2, "now":J
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v6, v0

    .line 1676
    .local v6, "displayIds":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v0, v4, :cond_2

    .line 1678
    :try_start_1
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1679
    .local v4, "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1680
    goto :goto_1

    .line 1682
    :cond_0
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1683
    .local v5, "displayId":I
    invoke-virtual {v6, v5}, Landroid/util/IntArray;->add(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1685
    .end local v0    # "i":I
    .end local v4    # "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    .end local v5    # "displayId":I
    :catchall_0
    move-exception v0

    move v4, p1

    goto :goto_3

    .line 1677
    .restart local v0    # "i":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1685
    .end local v0    # "i":I
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1686
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1687
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v1

    const/4 v5, 0x0

    move v4, p1

    .end local p1    # "reason":I
    .local v4, "reason":I
    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->goToSleep(IJII)V

    .line 1686
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v4    # "reason":I
    .restart local p1    # "reason":I
    :cond_3
    nop

    .line 1689
    .end local v7    # "i":I
    return-void

    .line 1685
    :catchall_1
    move-exception v0

    move v4, p1

    .end local p1    # "reason":I
    .restart local v4    # "reason":I
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public hasCustomAudioInputSupport()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1364
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->hasCustomAudioInputSupportInternal()Z

    move-result v0

    return v0
.end method

.method isAppRunningOnVirtualDevice(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1761
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1762
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1763
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->containsUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1764
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1767
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1762
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1767
    .end local v1    # "i":I
    monitor-exit v0

    .line 1768
    const/4 v0, 0x0

    return v0

    .line 1767
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isDisplayOwnedByVirtualDevice(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 1811
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1812
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1813
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isInputDeviceOwnedByVirtualDevice(I)Z
    .locals 2
    .param p1, "inputDeviceId"    # I

    .line 1817
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController;->getInputDeviceDescriptors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 653
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 654
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 657
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 660
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->sendPendingIntent(ILandroid/app/PendingIntent;)V

    .line 661
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 666
    :goto_0
    goto :goto_1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "VirtualDeviceImpl"

    const-string v4, "Pending intent canceled"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    invoke-virtual {p3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 668
    :cond_0
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    invoke-direct {v0, p2, p3, p1, v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;-><init>(Landroid/app/PendingIntent;Landroid/os/ResultReceiver;ILcom/android/server/companion/virtual/VirtualDeviceImpl-IA;)V

    .line 670
    .local v0, "pendingTrampoline":Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {v3, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->startWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    .line 671
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->sendPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    .line 683
    goto :goto_1

    .line 678
    :catch_1
    move-exception v3

    .line 679
    .local v3, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "VirtualDeviceImpl"

    const-string v5, "Pending intent canceled"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    invoke-virtual {p3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 682
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    .line 685
    .end local v0    # "pendingTrampoline":Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    .end local v3    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_1
    return-void

    .line 657
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onAudioSessionEnded()V
    .locals 2

    .line 870
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 871
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-eqz v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    .line 874
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 877
    return-void

    .line 876
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "routingCallback"    # Landroid/companion/virtual/audio/IAudioRoutingCallback;
    .param p3, "configChangedCallback"    # Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    .line 855
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 856
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 858
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-nez v1, :cond_0

    .line 859
    new-instance v1, Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-direct {v1, v2, v3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;-><init>(Landroid/content/Context;Landroid/content/AttributionSource;)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 860
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 861
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v1

    .line 862
    .local v1, "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->startListening(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    goto :goto_0

    .line 865
    .end local v1    # "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onLockdownChanged(Z)V
    .locals 3
    .param p1, "lockdownActive"    # Z

    .line 510
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    if-eq p1, v1, :cond_1

    .line 512
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    .line 513
    iget-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    if-eqz v1, :cond_0

    .line 514
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->goToSleepInternal(I)V

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 515
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    if-eqz v1, :cond_1

    .line 516
    const-string v1, "android.server.companion.virtual:LOCKDOWN_ENDED"

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->wakeUpInternal(ILjava/lang/String;)V

    .line 520
    :cond_1
    :goto_0
    monitor-exit v0

    .line 521
    return-void

    .line 520
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 840
    .local p1, "runningUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/CameraAccessController;->blockCameraAccessIfNeeded(Ljava/util/Set;)V

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 844
    return-void
.end method

.method public onVirtualDisplayCreated(ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/window/DisplayWindowPolicyController;)V
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p3, "dwpc"    # Landroid/window/DisplayWindowPolicyController;

    .line 1590
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1591
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v9, v0

    .line 1592
    .local v9, "isMirrorDisplay":Z
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1593
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    .line 1596
    .local v8, "isTrustedDisplay":Z
    :goto_1
    move-object v6, p3

    check-cast v6, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 1597
    .local v6, "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    invoke-virtual {v6, p1, v9}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setDisplayId(IZ)V

    .line 1599
    if-eqz v8, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createWakeLockForDisplay(I)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1600
    .local v7, "wakeLock":Landroid/os/PowerManager$WakeLock;
    :goto_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1601
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_3

    .line 1602
    :try_start_1
    const-string v0, "VirtualDeviceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual device already has a virtual display with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1607
    :catchall_0
    move-exception v0

    move-object v5, p2

    goto :goto_4

    .line 1605
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, p2

    .end local p2    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .local v5, "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    :try_start_3
    invoke-direct/range {v4 .. v9}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/os/PowerManager$WakeLock;ZZ)V

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1607
    monitor-exit v1

    .line 1608
    return-void

    .line 1607
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v5    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .restart local p2    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    :catchall_2
    move-exception v0

    move-object v5, p2

    .end local p2    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .restart local v5    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method onVirtualDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 1623
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1625
    .local v1, "virtualDisplayWrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1627
    if-nez v1, :cond_0

    .line 1628
    const-string v0, "VirtualDeviceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t have a virtual display with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-void

    .line 1633
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1635
    .local v2, "ident":J
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->releaseOwnedVirtualDisplayResources(Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1637
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    nop

    .line 1639
    return-void

    .line 1637
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    throw v0

    .line 1625
    .end local v1    # "virtualDisplayWrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    .end local v2    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method playSoundEffect(I)V
    .locals 3
    .param p1, "effectType"    # I

    .line 1823
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;->onPlaySoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    goto :goto_0

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "VirtualDeviceImpl"

    const-string v2, "Unable to invoke sound effect listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1827
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V
    .locals 3
    .param p1, "intentInterceptor"    # Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 1312
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1314
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1315
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    monitor-enter v0

    .line 1316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    monitor-exit v0

    .line 1318
    return-void

    .line 1317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 2
    .param p1, "cameraConfig"    # Landroid/companion/virtual/camera/VirtualCameraConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1333
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1335
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->registerCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;Landroid/content/AttributionSource;)V

    .line 1339
    return-void

    .line 1336
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Virtual camera controller is not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .locals 5
    .param p1, "exemption"    # Landroid/companion/virtual/ActivityPolicyExemption;

    .line 726
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 727
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getDisplayId()I

    move-result v0

    .line 728
    .local v0, "displayId":I
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_1

    .line 729
    :cond_0
    nop

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 734
    if-eq v0, v2, :cond_3

    .line 735
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 736
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 737
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v2

    .line 738
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Landroid/content/ComponentName;)V

    goto/16 :goto_2

    .line 758
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 739
    :cond_2
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 740
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v2

    .line 741
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Ljava/lang/String;)V

    goto :goto_2

    .line 744
    :cond_3
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 745
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 746
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 747
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    .line 748
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Landroid/content/ComponentName;)V

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .end local v2    # "i":I
    goto :goto_2

    .line 750
    :cond_5
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    .line 751
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 752
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 753
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    .line 754
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Ljava/lang/String;)V

    .line 752
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 758
    .end local v2    # "i":I
    :cond_6
    :goto_2
    monitor-exit v1

    .line 759
    return-void

    .line 758
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseButtonEvent;

    .line 1148
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1151
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    return v2

    .line 1153
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1154
    throw v2
.end method

.method public sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualKeyEvent;

    .line 1126
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1129
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    return v2

    .line 1131
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1132
    throw v2
.end method

.method public sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualKeyEvent;

    .line 1137
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1140
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    return v2

    .line 1142
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1143
    throw v2
.end method

.method public sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseRelativeEvent;

    .line 1170
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1173
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1173
    return v2

    .line 1175
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    throw v2
.end method

.method public sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;

    .line 1231
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1234
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1234
    return v2

    .line 1236
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1237
    throw v2
.end method

.method public sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseScrollEvent;

    .line 1181
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1184
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1184
    return v2

    .line 1186
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1187
    throw v2
.end method

.method public sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;

    .line 1300
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1303
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/SensorController;->sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1303
    return v2

    .line 1305
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1306
    throw v2
.end method

.method public sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/companion/virtual/sensor/VirtualSensorEvent;

    .line 1288
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1291
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/SensorController;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    return v2

    .line 1293
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1294
    throw v2
.end method

.method public sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualStylusButtonEvent;

    .line 1217
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1222
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1222
    return v2

    .line 1224
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1225
    throw v2
.end method

.method public sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualStylusMotionEvent;

    .line 1203
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1205
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1208
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1208
    return v2

    .line 1210
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1211
    throw v2
.end method

.method public sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualTouchEvent;

    .line 1159
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1162
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1162
    return v2

    .line 1164
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1165
    throw v2
.end method

.method public setDevicePolicy(II)V
    .locals 7
    .param p1, "policyType"    # I
    .param p2, "devicePolicy"    # I

    .line 882
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 884
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 938
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cannot be changed at runtime. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :pswitch_1
    nop

    .line 932
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    monitor-exit v0

    goto/16 :goto_b

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 913
    :pswitch_2
    nop

    nop

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADD_TRUSTED_DISPLAY"

    .line 914
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 916
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ADD_TRUSTED_DISPLAY permission to set a custom clipboard policy."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 920
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 921
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 922
    .local v1, "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_2

    .line 923
    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "All displays must be trusted for devices with custom clipboard policy."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "policyType":I
    .end local p2    # "devicePolicy":I
    throw v3

    .line 928
    .end local v0    # "i":I
    .end local v1    # "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "policyType":I
    .restart local p2    # "devicePolicy":I
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 920
    .restart local v0    # "i":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 927
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    monitor-exit v2

    .line 929
    goto/16 :goto_b

    .line 928
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 899
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 900
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v3

    if-eq v3, p2, :cond_5

    .line 901
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 902
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_4

    .line 910
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 904
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 905
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 906
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v4

    if-nez p2, :cond_6

    move v5, v1

    goto :goto_6

    :cond_6
    move v5, v0

    .line 907
    :goto_6
    invoke-virtual {v4, v5}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setActivityLaunchDefaultAllowed(Z)V

    .line 905
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    nop

    .line 910
    .end local v3    # "i":I
    monitor-exit v2

    .line 911
    goto :goto_b

    .line 910
    :goto_7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 886
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 887
    :try_start_3
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 888
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 889
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 890
    .local v4, "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 891
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v5

    if-nez p2, :cond_8

    move v6, v1

    goto :goto_9

    :cond_8
    move v6, v0

    .line 892
    :goto_9
    invoke-virtual {v5, v6}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setShowInHostDeviceRecents(Z)V

    goto :goto_a

    .line 896
    .end local v3    # "i":I
    .end local v4    # "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    :catchall_3
    move-exception v0

    goto :goto_c

    .line 888
    .restart local v3    # "i":I
    :cond_9
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    nop

    .line 896
    .end local v3    # "i":I
    monitor-exit v2

    .line 897
    nop

    .line 941
    :goto_b
    return-void

    .line 896
    :goto_c
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDevicePolicyForDisplay(III)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "policyType"    # I
    .param p3, "devicePolicy"    # I

    .line 947
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 948
    nop

    .line 951
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 953
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 966
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cannot be changed for a specific display. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "displayId":I
    .end local p2    # "policyType":I
    .end local p3    # "devicePolicy":I
    throw v1

    .line 969
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "displayId":I
    .restart local p2    # "policyType":I
    .restart local p3    # "devicePolicy":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 962
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    if-nez p3, :cond_0

    move v1, v2

    .line 963
    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setActivityLaunchDefaultAllowed(Z)V

    .line 964
    goto :goto_0

    .line 955
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 956
    .local v3, "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 957
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v4

    if-nez p3, :cond_1

    move v1, v2

    .line 958
    :cond_1
    invoke-virtual {v4, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setShowInHostDeviceRecents(Z)V

    .line 969
    .end local v3    # "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 970
    return-void

    .line 969
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDisplayImePolicy(II)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "policy"    # I

    .line 1262
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1263
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1264
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 1265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1268
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->setDisplayImePolicy(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1270
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1271
    nop

    .line 1272
    return-void

    .line 1270
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1271
    throw v2

    .line 1265
    .end local v0    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setListeners(Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)V
    .locals 0
    .param p1, "activityListener"    # Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .param p2, "soundEffectListener"    # Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 576
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 577
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 578
    return-void
.end method

.method public setShowPointerIcon(Z)V
    .locals 8
    .param p1, "showPointerIcon"    # Z

    .line 1242
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1245
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1246
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 1247
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1248
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1249
    .local v4, "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    goto :goto_1

    .line 1254
    .end local v3    # "i":I
    .end local v4    # "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1250
    .restart local v3    # "i":I
    .restart local v4    # "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    :goto_1
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-boolean v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    iget-object v7, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 1251
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1250
    invoke-virtual {v5, v6, v7}, Lcom/android/server/companion/virtual/InputController;->setShowPointerIcon(ZI)V

    .line 1247
    .end local v4    # "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1254
    .end local v3    # "i":I
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    nop

    .line 1258
    return-void

    .line 1254
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "showPointerIcon":Z
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1256
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "showPointerIcon":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    throw v2
.end method

.method showToastWhereUidIsRunning(IIILandroid/os/Looper;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "resId"    # I
    .param p3, "duration"    # I
    .param p4, "looper"    # Landroid/os/Looper;

    .line 1776
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;ILandroid/os/Looper;)V

    .line 1777
    return-void
.end method

.method showToastWhereUidIsRunning(ILjava/lang/String;ILandroid/os/Looper;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .param p4, "looper"    # Landroid/os/Looper;

    .line 1784
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayIdsWhereUidIsRunning(I)Landroid/util/IntArray;

    move-result-object v0

    .line 1785
    .local v0, "displayIdsForUid":Landroid/util/IntArray;
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1786
    return-void

    .line 1788
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1789
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1790
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 1791
    .local v3, "display":Landroid/view/Display;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Display;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1792
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p4, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 1793
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1789
    .end local v3    # "display":Landroid/view/Display;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1796
    .end local v2    # "i":I
    return-void
.end method

.method public unregisterInputDevice(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1104
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1107
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/InputController;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    nop

    .line 1111
    return-void

    .line 1109
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    throw v2
.end method

.method public unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V
    .locals 3
    .param p1, "intentInterceptor"    # Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    .line 1323
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    monitor-enter v0

    .line 1326
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    monitor-exit v0

    .line 1328
    return-void

    .line 1327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 2
    .param p1, "cameraConfig"    # Landroid/companion/virtual/camera/VirtualCameraConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1344
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1346
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 1350
    return-void

    .line 1347
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Virtual camera controller is not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wakeUp()V
    .locals 4

    .line 633
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 634
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    .line 636
    iget-boolean v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    if-eqz v2, :cond_0

    .line 637
    const-string v1, "VirtualDeviceImpl"

    const-string v2, "Cannot wake up device during lockdown."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    monitor-exit v0

    return-void

    .line 640
    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 643
    .local v2, "ident":J
    :try_start_1
    const-string v0, "android.server.companion.virtual:DEVICE_ON"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->wakeUpInternal(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 646
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    nop

    .line 648
    return-void

    .line 646
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    throw v0

    .line 640
    .end local v2    # "ident":J
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method wakeUpInternal(ILjava/lang/String;)V
    .locals 8
    .param p1, "reason"    # I
    .param p2, "details"    # Ljava/lang/String;

    .line 1692
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1693
    .local v1, "now":J
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v6, v0

    .line 1694
    .local v6, "displayIds":Landroid/util/IntArray;
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1695
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v0, v4, :cond_2

    .line 1696
    :try_start_1
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1697
    .local v4, "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1698
    goto :goto_1

    .line 1700
    :cond_0
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1701
    .local v5, "displayId":I
    invoke-virtual {v6, v5}, Landroid/util/IntArray;->add(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1703
    .end local v0    # "i":I
    .end local v4    # "wrapper":Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
    .end local v5    # "displayId":I
    :catchall_0
    move-exception v0

    move-object v4, p2

    goto :goto_3

    .line 1695
    .restart local v0    # "i":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1703
    .end local v0    # "i":I
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1704
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1705
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v5

    move v3, p1

    move-object v4, p2

    .end local p1    # "reason":I
    .end local p2    # "details":Ljava/lang/String;
    .local v3, "reason":I
    .local v4, "details":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    .line 1704
    .end local v3    # "reason":I
    .restart local p1    # "reason":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v4    # "details":Ljava/lang/String;
    .restart local p2    # "details":Ljava/lang/String;
    :cond_3
    nop

    .line 1707
    .end local v7    # "i":I
    return-void

    .line 1703
    :catchall_1
    move-exception v0

    move-object v4, p2

    .end local p2    # "details":Ljava/lang/String;
    .restart local v4    # "details":Ljava/lang/String;
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method
