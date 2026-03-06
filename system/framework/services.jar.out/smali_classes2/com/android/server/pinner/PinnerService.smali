.class public final Lcom/android/server/pinner/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pinner/PinnerService$Injector;,
        Lcom/android/server/pinner/PinnerService$PinnerHandler;,
        Lcom/android/server/pinner/PinnerService$BinderService;,
        Lcom/android/server/pinner/PinnerService$PinnedFileStats;,
        Lcom/android/server/pinner/PinnerService$PinnedApp;,
        Lcom/android/server/pinner/PinnerService$PinRange;,
        Lcom/android/server/pinner/PinnerService$AppKey;
    }
.end annotation


# static fields
.field public static final ANON_REGION_STAT_NAME:Ljava/lang/String; = "[anon]"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ANON_SIZE:J

.field private static final DEVICE_CONFIG_KEY_ANON_SIZE:Ljava/lang/String; = "pin_shared_anon_size"

.field private static final DEVICE_CONFIG_NAMESPACE_ANON_SIZE:Ljava/lang/String; = "runtime_native"

.field private static final KEY_ASSISTANT:I = 0x2

.field private static final KEY_CAMERA:I = 0x0

.field private static final KEY_HOME:I = 0x1

.field private static final MATCH_FLAGS:I = 0xd0000

.field private static final MAX_ANON_SIZE:J = 0x80000000L

.field private static final PAGE_SIZE:I

.field private static final PIN_META_FILENAME:Ljava/lang/String; = "pinlist.meta"

.field private static PROP_PIN_PINLIST:Z = false

.field private static final SYSTEM_GROUP_NAME:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mBinderService:Lcom/android/server/pinner/PinnerService$BinderService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConfiguredAssistantPinBytes:I

.field private final mConfiguredCameraPinBytes:I

.field private final mConfiguredHomePinBytes:I

.field private mConfiguredMaxPinnedMemory:J

.field private final mConfiguredMaxPinnedMemoryPercentage:I

.field private final mConfiguredToPinAssistant:Z

.field private final mConfiguredToPinCamera:Z

.field private final mConfiguredWebviewPinBytes:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentPinnedMemory:J

.field private mCurrentlyPinnedAnonSize:J

.field private final mDeviceConfigAnonSizeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

.field private final mInjector:Lcom/android/server/pinner/PinnerService$Injector;

.field private final mPendingRepin:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPinAnonAddress:J

.field private mPinAnonSize:J

.field private mPinKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pinner/PinnerService$PinnedApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pinner/PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$2PfQLctqG4Okc7wNRRai0fQs5fU(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pinner/PinnerService;->pinApps(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$52c9PjbzKP2HiaB_g7_gqvFiyJA(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pinner/PinnerService;->pinAppsWithUpdatedKeys(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5NlcqPFWoiYpj9p2T8d2xF4yH8M(Lcom/android/server/pinner/PinnerService;IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$R6x7amq8T_0MOzvlOxQEMhh7D0U(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->unpinApps()V

    return-void
.end method

.method public static synthetic $r8$lambda$vknxfPtf9El4XwvHudFnd4mofSM(Ljava/lang/String;Lcom/android/server/pinner/PinnedFile;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pinner/PinnerService;->lambda$getAllPinsForGroup$0(Ljava/lang/String;Lcom/android/server/pinner/PinnedFile;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAmInternal(Lcom/android/server/pinner/PinnerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguredAssistantPinBytes(Lcom/android/server/pinner/PinnerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguredCameraPinBytes(Lcom/android/server/pinner/PinnerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguredHomePinBytes(Lcom/android/server/pinner/PinnerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguredMaxPinnedMemory(Lcom/android/server/pinner/PinnerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguredMaxPinnedMemoryPercentage(Lcom/android/server/pinner/PinnerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pinner/PinnerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentlyPinnedAnonSize(Lcom/android/server/pinner/PinnerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingRepin(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinAnonAddress(Lcom/android/server/pinner/PinnerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPinnedApps(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinnedFiles(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinnerHandler(Lcom/android/server/pinner/PinnerService;)Lcom/android/server/pinner/PinnerService$PinnerHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAllPinsForGroup(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pinner/PinnerService;->getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAvailableGlobalQuota(Lcom/android/server/pinner/PinnerService;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->getAvailableGlobalQuota()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetNameForKey(Lcom/android/server/pinner/PinnerService;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pinner/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandlePinOnStart(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUidActive(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pinner/PinnerService;->handleUidActive(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUidGone(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pinner/PinnerService;->handleUidGone(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pinner/PinnerService;->pinFileInternal(Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshPinAnonConfig(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->refreshPinAnonConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendPinAppMessage(Lcom/android/server/pinner/PinnerService;IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pinner/PinnerService;->sendPinAppMessage(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendPinAppsWithUpdatedKeysMessage(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pinner/PinnerService;->sendPinAppsWithUpdatedKeysMessage(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendUnpinAppsMessage(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->sendUnpinAppsMessage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 112
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    .line 121
    nop

    .line 122
    const-string/jumbo v0, "pinner.use_pinlist"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pinner/PinnerService;->PROP_PIN_PINLIST:Z

    .line 170
    nop

    .line 171
    const-string/jumbo v0, "pinner.pin_shared_anon_size"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pinner/PinnerService;->DEFAULT_ANON_SIZE:J

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 240
    new-instance v0, Lcom/android/server/pinner/PinnerService$Injector;

    invoke-direct {v0}, Lcom/android/server/pinner/PinnerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;-><init>(Landroid/content/Context;Lcom/android/server/pinner/PinnerService$Injector;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pinner/PinnerService$Injector;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/pinner/PinnerService$Injector;

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 156
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    .line 197
    new-instance v0, Lcom/android/server/pinner/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pinner/PinnerService$1;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance v0, Lcom/android/server/pinner/PinnerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/pinner/PinnerService$2;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigAnonSizeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 247
    iput-object p1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    .line 248
    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    .line 249
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pinner/PinnerService$Injector;->getDeviceConfigInterface()Landroid/provider/DeviceConfigInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinCamera:Z

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinAssistant:Z

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredWebviewPinBytes:I

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    .line 265
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 266
    new-instance v0, Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pinner/PinnerService$PinnerHandler;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    .line 268
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 269
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 270
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mAm:Landroid/app/IActivityManager;

    .line 272
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pinner/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->registerUidListener()V

    .line 280
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->registerUserSetupCompleteListener()V

    .line 282
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigAnonSizeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v4, "runtime_native"

    invoke-interface {v1, v4, v2, v3}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pinner/PinnerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private createPinKeys()Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 592
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 595
    .local v0, "pinKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-boolean v1, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinCamera:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    nop

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    .line 597
    const-string/jumbo v4, "pinner.pin_camera"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 596
    const-string/jumbo v5, "runtime_native_boot"

    const-string/jumbo v6, "pin_camera"

    invoke-interface {v1, v5, v6, v4}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    nop

    .line 598
    .local v1, "shouldPinCamera":Z
    if-eqz v1, :cond_1

    .line 599
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_1
    iget v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    if-lez v2, :cond_2

    .line 605
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinAssistant:Z

    if-eqz v2, :cond_3

    .line 608
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_3
    return-object v0
.end method

.method private getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pinner/PinnedFile;",
            ">;"
        }
    .end annotation

    .line 1222
    monitor-enter p0

    .line 1223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1224
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 1225
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1226
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 1227
    .local v0, "filesInGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    monitor-exit p0

    .line 1228
    return-object v0

    .line 1227
    .end local v0    # "filesInGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I
    .param p3, "defaultToSystemApp"    # Z

    .line 539
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 540
    return-object v0

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    .line 544
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 550
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_1

    .line 551
    return-object v0

    .line 554
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v3}, Lcom/android/server/pinner/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 555
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 558
    :cond_2
    if-eqz p3, :cond_6

    .line 559
    iget-object v3, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 561
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 562
    .local v3, "systemAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 563
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 564
    if-nez v3, :cond_3

    .line 565
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .line 568
    :cond_3
    return-object v0

    .line 571
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    :goto_1
    goto :goto_0

    .line 572
    :cond_5
    return-object v3

    .line 575
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "systemAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    return-object v0
.end method

.method private getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "userHandle"    # I

    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private getAvailableGlobalQuota()J
    .locals 4

    .line 833
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p1, "userHandle"    # I

    .line 502
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "cameraIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 511
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_0

    .line 512
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 513
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 519
    :cond_0
    if-nez v3, :cond_1

    .line 520
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 521
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 524
    :cond_1
    return-object v3
.end method

.method private getHomeInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "userHandle"    # I

    .line 528
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 529
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "key"    # I
    .param p2, "userHandle"    # I

    .line 704
    packed-switch p1, :pswitch_data_0

    .line 712
    const/4 v0, 0x0

    return-object v0

    .line 710
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/pinner/PinnerService;->getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 708
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/pinner/PinnerService;->getHomeInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 706
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/pinner/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNameForKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I

    .line 720
    packed-switch p1, :pswitch_data_0

    .line 728
    const-string v0, ""

    return-object v0

    .line 726
    :pswitch_0
    const-string v0, "Assistant"

    return-object v0

    .line 724
    :pswitch_1
    const-string v0, "Home"

    return-object v0

    .line 722
    :pswitch_2
    const-string v0, "Camera"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized getPinKeys()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/server/pinner/PinnerService;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSizeLimitForKey(I)I
    .locals 1
    .param p1, "key"    # I

    .line 816
    packed-switch p1, :pswitch_data_0

    .line 824
    const/4 v0, 0x0

    return v0

    .line 822
    :pswitch_0
    iget v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    return v0

    .line 820
    :pswitch_1
    iget v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    return v0

    .line 818
    :pswitch_2
    iget v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUidForKey(I)I
    .locals 2
    .param p1, "key"    # I

    .line 691
    monitor-enter p0

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnerService$PinnedApp;

    .line 693
    .local v0, "existing":Lcom/android/server/pinner/PinnerService$PinnedApp;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    goto :goto_0

    .line 694
    .end local v0    # "existing":Lcom/android/server/pinner/PinnerService$PinnedApp;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 693
    .restart local v0    # "existing":Lcom/android/server/pinner/PinnerService$PinnedApp;
    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit p0

    return v1

    .line 694
    .end local v0    # "existing":Lcom/android/server/pinner/PinnerService$PinnedApp;
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePinOnStart()V
    .locals 10

    .line 380
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "filesToPin":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 384
    .local v4, "fileToPin":Ljava/lang/String;
    const-string/jumbo v8, "system"

    const/4 v9, 0x1

    const-wide/32 v5, 0x7fffffff

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    .line 383
    .end local v4    # "fileToPin":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->refreshPinAnonConfig()V

    .line 389
    return-void
.end method

.method private handleUidActive(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->updateActiveState(IZ)V

    .line 448
    return-void
.end method

.method private handleUidGone(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->updateActiveState(IZ)V

    .line 435
    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 438
    .local v1, "key":I
    if-ne v1, v3, :cond_0

    .line 439
    monitor-exit p0

    return-void

    .line 442
    .end local v1    # "key":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 441
    .restart local v1    # "key":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    .line 444
    return-void

    .line 442
    .end local v1    # "key":I
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 485
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$getAllPinsForGroup$0(Ljava/lang/String;Lcom/android/server/pinner/PinnedFile;)Z
    .locals 1
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "pf"    # Lcom/android/server/pinner/PinnedFile;

    .line 1225
    iget-object v0, p1, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1105
    sget-boolean v0, Lcom/android/server/pinner/PinnerService;->PROP_PIN_PINLIST:Z

    if-nez v0, :cond_0

    .line 1109
    const/4 v0, 0x0

    return-object v0

    .line 1114
    :cond_0
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 1116
    .local v0, "pinMetaEntry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_1

    .line 1121
    const-string v1, "assets/pinlist.meta"

    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 1124
    :cond_1
    const/4 v1, 0x0

    .line 1125
    .local v1, "pinMetaStream":Ljava/io/InputStream;
    const-string v2, "PinnerService"

    if-eqz v0, :cond_2

    .line 1130
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1136
    :goto_0
    goto :goto_1

    .line 1131
    :catch_0
    move-exception v3

    .line 1132
    .local v3, "ex":Ljava/io/IOException;
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    .line 1133
    const-string v5, "error reading pin metadata \"%s\": pinning as blob"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1132
    invoke-static {v2, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 1138
    :cond_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 1139
    const-string v4, "Could not find pinlist.meta for \"%s\": pinning as blob"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1138
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :goto_1
    return-object v1
.end method

.method private static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 1088
    const/4 v0, 0x0

    .line 1090
    .local v0, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1094
    goto :goto_0

    .line 1091
    :catch_0
    move-exception v1

    .line 1092
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "could not open \"%s\" as zip: pinning as blob"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PinnerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method private pinAnonRegion()V
    .locals 17

    .line 749
    move-object/from16 v1, p0

    iget-wide v2, v1, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-string v2, "PinnerService"

    if-nez v0, :cond_0

    .line 750
    const-string/jumbo v0, "pinAnonRegion: releasing pinned region"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService;->unpinAnonRegion()V

    .line 752
    return-void

    .line 754
    :cond_0
    iget-wide v6, v1, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    .line 755
    .local v6, "alignedPinSize":J
    sget v0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v8, v0

    rem-long v8, v6, v8

    cmp-long v0, v8, v4

    if-eqz v0, :cond_1

    .line 756
    sget v0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v8, v0

    rem-long v8, v6, v8

    sub-long/2addr v6, v8

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pinAnonRegion: aligning size to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v10, v6

    goto :goto_0

    .line 755
    :cond_1
    move-wide v10, v6

    .line 759
    .end local v6    # "alignedPinSize":J
    .local v10, "alignedPinSize":J
    :goto_0
    iget-wide v6, v1, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    .line 760
    iget-wide v6, v1, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    cmp-long v0, v6, v10

    if-nez v0, :cond_2

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pinAnonRegion: already pinned region of size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void

    .line 764
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pinAnonRegion: resetting pinned region for new size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService;->unpinAnonRegion()V

    .line 767
    :cond_3
    const-wide/16 v6, 0x0

    .line 771
    .local v6, "address":J
    :try_start_0
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v3, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int v12, v0, v3

    sget v0, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v3, Landroid/system/OsConstants;->MAP_ANONYMOUS:I

    or-int v13, v0, v3

    new-instance v14, Ljava/io/FileDescriptor;

    invoke-direct {v14}, Ljava/io/FileDescriptor;-><init>()V

    const-wide/16 v15, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v8 .. v16}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v8

    move-wide v6, v8

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "tempUnsafe":Lsun/misc/Unsafe;
    const-class v3, Lsun/misc/Unsafe;

    .line 777
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lsun/misc/Unsafe;>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    const/4 v14, 0x1

    if-ge v13, v9, :cond_5

    aget-object v15, v8, v13

    .line 778
    .local v15, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v15, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 779
    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 780
    .local v14, "obj":Ljava/lang/Object;
    invoke-virtual {v3, v14}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 781
    invoke-virtual {v3, v14}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lsun/misc/Unsafe;

    move-object/from16 v0, v16

    .end local v0    # "tempUnsafe":Lsun/misc/Unsafe;
    .local v16, "tempUnsafe":Lsun/misc/Unsafe;
    goto :goto_2

    .line 798
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lsun/misc/Unsafe;>;"
    .end local v14    # "obj":Ljava/lang/Object;
    .end local v15    # "f":Ljava/lang/reflect/Field;
    .end local v16    # "tempUnsafe":Lsun/misc/Unsafe;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 794
    :catch_0
    move-exception v0

    goto :goto_3

    .line 777
    .restart local v0    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lsun/misc/Unsafe;>;"
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 784
    :cond_5
    if-eqz v0, :cond_7

    .line 787
    const-string/jumbo v8, "setMemory"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v13, v9, v12

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v9, v14

    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x2

    aput-object v12, v9, v13

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 788
    .local v8, "setMemory":Ljava/lang/reflect/Method;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    filled-new-array {v9, v12, v13}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-static {v6, v7, v10, v11}, Landroid/system/Os;->mlock(JJ)V

    .line 790
    iput-wide v10, v1, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 791
    iput-wide v6, v1, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    .line 792
    const-wide/16 v6, -0x1

    .line 793
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pinAnonRegion success, size="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    nop

    .end local v0    # "tempUnsafe":Lsun/misc/Unsafe;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lsun/misc/Unsafe;>;"
    .end local v8    # "setMemory":Ljava/lang/reflect/Method;
    cmp-long v0, v6, v4

    if-ltz v0, :cond_6

    .line 799
    invoke-static {v6, v7, v10, v11}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 802
    :cond_6
    return-void

    .line 785
    .restart local v0    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lsun/misc/Unsafe;>;"
    :cond_7
    :try_start_1
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Couldn\'t get Unsafe"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v6    # "address":J
    .end local v10    # "alignedPinSize":J
    .end local p0    # "this":Lcom/android/server/pinner/PinnerService;
    throw v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    .end local v0    # "tempUnsafe":Lsun/misc/Unsafe;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lsun/misc/Unsafe;>;"
    .restart local v6    # "address":J
    .restart local v10    # "alignedPinSize":J
    .restart local p0    # "this":Lcom/android/server/pinner/PinnerService;
    :goto_3
    nop

    .line 795
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not pin anon region of size "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 798
    cmp-long v2, v6, v4

    if-ltz v2, :cond_8

    .line 799
    invoke-static {v6, v7, v10, v11}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 796
    :cond_8
    return-void

    .line 798
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    cmp-long v2, v6, v4

    if-ltz v2, :cond_9

    .line 799
    invoke-static {v6, v7, v10, v11}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 801
    :cond_9
    throw v0
.end method

.method private pinApp(IIZ)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "userHandle"    # I
    .param p3, "force"    # Z

    .line 668
    invoke-direct {p0, p1}, Lcom/android/server/pinner/PinnerService;->getUidForKey(I)I

    move-result v0

    .line 672
    .local v0, "uid":I
    if-nez p3, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 673
    monitor-enter p0

    .line 674
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    monitor-exit p0

    .line 676
    return-void

    .line 675
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 678
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pinner/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 679
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, p1}, Lcom/android/server/pinner/PinnerService;->unpinApp(I)V

    .line 680
    if-eqz v1, :cond_1

    .line 681
    invoke-direct {p0, p1, v1}, Lcom/android/server/pinner/PinnerService;->pinAppInternal(ILandroid/content/pm/ApplicationInfo;)V

    .line 683
    :cond_1
    return-void
.end method

.method private pinAppInternal(ILandroid/content/pm/ApplicationInfo;)V
    .locals 13
    .param p1, "key"    # I
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 843
    if-nez p2, :cond_0

    .line 844
    return-void

    .line 847
    :cond_0
    new-instance v0, Lcom/android/server/pinner/PinnerService$PinnedApp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/pinner/PinnerService$PinnedApp;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pinner/PinnerService-IA;)V

    move-object v8, v0

    .line 848
    .local v8, "pinnedApp":Lcom/android/server/pinner/PinnerService$PinnedApp;
    monitor-enter p0

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 853
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pinner/PinnerService;->getSizeLimitForKey(I)I

    move-result v9

    .line 854
    .local v9, "pinSizeLimit":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 855
    .local v10, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 858
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    nop

    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 859
    .local v3, "splitApk":Ljava/lang/String;
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    .end local v3    # "splitApk":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 863
    :cond_1
    int-to-long v0, v9

    .line 865
    .local v0, "apkPinSizeLimit":J
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v3, v0

    .end local v0    # "apkPinSizeLimit":J
    .local v3, "apkPinSizeLimit":J
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 866
    .local v2, "apk":Ljava/lang/String;
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_2

    .line 867
    const-string v0, "PinnerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reached to the pin size limit. Skipping: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    goto :goto_1

    .line 872
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pinner/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object v6

    .line 873
    .local v6, "pinGroup":Ljava/lang/String;
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 874
    .local v7, "shouldPinDeps":Z
    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    move-result-object v12

    .line 875
    .local v12, "pf":Lcom/android/server/pinner/PinnedFile;
    if-nez v12, :cond_3

    .line 876
    const-string v0, "PinnerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to pin "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    goto :goto_1

    .line 883
    :cond_3
    monitor-enter p0

    .line 884
    :try_start_1
    iget-object v0, v8, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    iget-wide v0, v12, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v3, v0

    .line 888
    .end local v2    # "apk":Ljava/lang/String;
    .end local v6    # "pinGroup":Ljava/lang/String;
    .end local v7    # "shouldPinDeps":Z
    .end local v12    # "pf":Lcom/android/server/pinner/PinnedFile;
    goto :goto_1

    .line 885
    .restart local v2    # "apk":Ljava/lang/String;
    .restart local v6    # "pinGroup":Ljava/lang/String;
    .restart local v7    # "shouldPinDeps":Z
    .restart local v12    # "pf":Lcom/android/server/pinner/PinnedFile;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 889
    .end local v2    # "apk":Ljava/lang/String;
    .end local v6    # "pinGroup":Ljava/lang/String;
    .end local v7    # "shouldPinDeps":Z
    .end local v12    # "pf":Lcom/android/server/pinner/PinnedFile;
    :cond_4
    return-void

    .line 850
    .end local v3    # "apkPinSizeLimit":J
    .end local v9    # "pinSizeLimit":I
    .end local v10    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private pinApps(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->pinAppsInternal(IZ)V

    .line 620
    return-void
.end method

.method private pinAppsInternal(IZ)V
    .locals 4
    .param p1, "userHandle"    # I
    .param p2, "updateKeys"    # Z

    .line 631
    if-eqz p2, :cond_1

    .line 632
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 633
    .local v0, "newKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 636
    const-string v1, "PinnerService"

    const-string v2, "Attempted to update a list of apps, but apps were already pinned. Skipping."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    monitor-exit p0

    return-void

    .line 643
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 642
    :cond_0
    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 643
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 646
    .end local v0    # "newKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 647
    .local v0, "currentPinKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 648
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 649
    .local v3, "key":I
    invoke-direct {p0, v3, p1, v2}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    .line 647
    .end local v3    # "key":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    nop

    .line 651
    .end local v1    # "i":I
    return-void
.end method

.method private pinAppsWithUpdatedKeys(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 623
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->pinAppsInternal(IZ)V

    .line 624
    return-void
.end method

.method private pinFileInternal(Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;
    .locals 6
    .param p1, "fileToPin"    # Ljava/lang/String;
    .param p2, "maxBytesToPin"    # J
    .param p4, "attemptPinIntrospection"    # Z

    .line 1058
    const/4 v0, 0x0

    .line 1059
    .local v0, "fileAsZip":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 1061
    .local v1, "pinRangeStream":Ljava/io/InputStream;
    if-eqz p4, :cond_0

    .line 1062
    :try_start_0
    invoke-static {p1}, Lcom/android/server/pinner/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1078
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1065
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1066
    invoke-static {v0, p1}, Lcom/android/server/pinner/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 1068
    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1069
    .local v3, "use_pinlist":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 1070
    new-instance v2, Lcom/android/server/pinner/PinRangeSourceStream;

    invoke-direct {v2, v1}, Lcom/android/server/pinner/PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    .line 1071
    :cond_3
    new-instance v4, Lcom/android/server/pinner/PinRangeSourceStatic;

    const v5, 0x7fffffff

    invoke-direct {v4, v2, v5}, Lcom/android/server/pinner/PinRangeSourceStatic;-><init>(II)V

    move-object v2, v4

    :goto_2
    nop

    .line 1072
    .local v2, "pinRangeSource":Lcom/android/server/pinner/PinRangeSource;
    invoke-static {p1, p2, p3, v2}, Lcom/android/server/pinner/PinnerService;->pinFileRanges(Ljava/lang/String;JLcom/android/server/pinner/PinRangeSource;)Lcom/android/server/pinner/PinnedFile;

    move-result-object v4

    .line 1073
    .local v4, "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    if-eqz v4, :cond_4

    .line 1074
    iput-boolean v3, v4, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_4
    nop

    .line 1078
    invoke-static {v1}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    .line 1079
    invoke-static {v0}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    .line 1076
    return-object v4

    .line 1078
    .end local v2    # "pinRangeSource":Lcom/android/server/pinner/PinRangeSource;
    .end local v3    # "use_pinlist":Z
    .end local v4    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    :goto_3
    invoke-static {v1}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    .line 1079
    invoke-static {v0}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    .line 1080
    throw v2
.end method

.method private static pinFileRanges(Ljava/lang/String;JLcom/android/server/pinner/PinRangeSource;)Lcom/android/server/pinner/PinnedFile;
    .locals 30
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "maxBytesToPin"    # J
    .param p3, "pinRangeSource"    # Lcom/android/server/pinner/PinRangeSource;

    .line 1156
    move-object/from16 v5, p0

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v1, v0

    .line 1157
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, -0x1

    .line 1158
    .local v2, "address":J
    const-wide/16 v6, 0x0

    .line 1161
    .local v6, "mapSize":J
    const-wide/16 v8, 0x0

    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v4, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int v10, v0, v4

    .line 1162
    .local v10, "openFlags":I
    const/4 v0, 0x0

    invoke-static {v5, v10, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object/from16 v17, v0

    .line 1163
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .local v17, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-static/range {v17 .. v17}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    const-wide/32 v11, 0x7fffffff

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    long-to-int v0, v0

    int-to-long v13, v0

    .line 1164
    .end local v6    # "mapSize":J
    .local v13, "mapSize":J
    :try_start_2
    sget v15, Landroid/system/OsConstants;->PROT_READ:I

    sget v16, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v18, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v11 .. v19}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v0
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-wide v1, v0

    .line 1167
    .end local v2    # "address":J
    .local v1, "address":J
    :try_start_3
    new-instance v0, Lcom/android/server/pinner/PinnerService$PinRange;

    invoke-direct {v0}, Lcom/android/server/pinner/PinnerService$PinRange;-><init>()V

    .line 1168
    .local v0, "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    const-wide/16 v3, 0x0

    .line 1171
    .local v3, "bytesPinned":J
    sget v6, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v6, v6

    rem-long v6, p1, v6
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 1172
    :try_start_4
    sget v6, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v6, v6

    rem-long v6, p1, v6
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-long v6, p1, v6

    move-wide/from16 v18, v6

    move-wide v6, v3

    .end local p1    # "maxBytesToPin":J
    .local v6, "maxBytesToPin":J
    goto :goto_0

    .line 1214
    .end local v0    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .end local v3    # "bytesPinned":J
    .end local v6    # "maxBytesToPin":J
    .end local v10    # "openFlags":I
    .restart local p1    # "maxBytesToPin":J
    :catchall_0
    move-exception v0

    move-wide/from16 v18, p1

    move-wide v2, v1

    move-wide/from16 v26, v8

    move-wide v6, v13

    move-object/from16 v1, v17

    goto/16 :goto_5

    .line 1210
    :catch_0
    move-exception v0

    move-wide/from16 v18, p1

    move-wide v2, v1

    move-wide/from16 v26, v8

    move-wide v6, v13

    move-object/from16 v1, v17

    goto/16 :goto_4

    .line 1171
    .restart local v0    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .restart local v3    # "bytesPinned":J
    .restart local v10    # "openFlags":I
    :cond_0
    move-wide/from16 v18, p1

    move-wide v6, v3

    .line 1175
    .end local v3    # "bytesPinned":J
    .end local p1    # "maxBytesToPin":J
    .local v6, "bytesPinned":J
    .local v18, "maxBytesToPin":J
    :goto_0
    cmp-long v3, v6, v18

    if-gez v3, :cond_4

    move-object/from16 v3, p3

    :try_start_5
    invoke-virtual {v3, v0}, Lcom/android/server/pinner/PinRangeSource;->read(Lcom/android/server/pinner/PinnerService$PinRange;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1176
    iget v4, v0, Lcom/android/server/pinner/PinnerService$PinRange;->start:I

    int-to-long v11, v4

    .line 1177
    .local v11, "pinStart":J
    iget v4, v0, Lcom/android/server/pinner/PinnerService$PinRange;->length:I
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-wide/from16 v26, v8

    int-to-long v8, v4

    .line 1178
    .local v8, "pinLength":J
    move-wide v15, v13

    move-wide v13, v11

    .end local v11    # "pinStart":J
    .local v13, "pinStart":J
    .local v15, "mapSize":J
    const-wide/16 v11, 0x0

    :try_start_6
    invoke-static/range {v11 .. v16}, Lcom/android/server/pinner/PinnerUtils;->clamp(JJJ)J

    move-result-wide v11
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-wide/from16 v28, v15

    move-wide v15, v13

    move-wide/from16 v13, v28

    .line 1179
    .end local v15    # "mapSize":J
    .restart local v11    # "pinStart":J
    .local v13, "mapSize":J
    const-wide/16 v20, 0x0

    sub-long v24, v13, v11

    move-wide/from16 v22, v8

    .end local v8    # "pinLength":J
    .local v22, "pinLength":J
    :try_start_7
    invoke-static/range {v20 .. v25}, Lcom/android/server/pinner/PinnerUtils;->clamp(JJJ)J

    move-result-wide v8
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1180
    .end local v22    # "pinLength":J
    .restart local v8    # "pinLength":J
    move-wide v15, v1

    move-object v2, v0

    .end local v0    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .end local v1    # "address":J
    .local v2, "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .local v15, "address":J
    sub-long v0, v18, v6

    :try_start_8
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1189
    .end local v8    # "pinLength":J
    .local v0, "pinLength":J
    sget v4, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v8, v4

    rem-long v8, v11, v8

    add-long/2addr v0, v8

    .line 1190
    sget v4, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v8, v4

    rem-long v8, v11, v8

    sub-long/2addr v11, v8

    .line 1191
    sget v4, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v8, v4

    rem-long v8, v0, v8

    cmp-long v4, v8, v26

    if-eqz v4, :cond_1

    .line 1192
    sget v4, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v8, v4

    sget v4, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    move-wide/from16 p1, v0

    .end local v0    # "pinLength":J
    .local p1, "pinLength":J
    int-to-long v0, v4

    rem-long v0, p1, v0

    sub-long/2addr v8, v0

    add-long v0, p1, v8

    move-wide/from16 v22, v0

    .end local p1    # "pinLength":J
    .restart local v0    # "pinLength":J
    goto :goto_1

    .line 1214
    .end local v0    # "pinLength":J
    .end local v2    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .end local v6    # "bytesPinned":J
    .end local v10    # "openFlags":I
    .end local v11    # "pinStart":J
    :catchall_1
    move-exception v0

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    goto/16 :goto_5

    .line 1210
    :catch_1
    move-exception v0

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    goto/16 :goto_4

    .line 1191
    .restart local v0    # "pinLength":J
    .restart local v2    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .restart local v6    # "bytesPinned":J
    .restart local v10    # "openFlags":I
    .restart local v11    # "pinStart":J
    :cond_1
    move-wide/from16 p1, v0

    .end local v0    # "pinLength":J
    .restart local p1    # "pinLength":J
    move-wide/from16 v22, p1

    .line 1194
    .end local p1    # "pinLength":J
    .restart local v22    # "pinLength":J
    :goto_1
    const-wide/16 v20, 0x0

    sub-long v24, v18, v6

    invoke-static/range {v20 .. v25}, Lcom/android/server/pinner/PinnerUtils;->clamp(JJJ)J

    move-result-wide v0

    .line 1196
    .end local v22    # "pinLength":J
    .restart local v0    # "pinLength":J
    cmp-long v4, v0, v26

    if-lez v4, :cond_2

    .line 1202
    add-long v8, v15, v11

    invoke-static {v8, v9, v0, v1}, Landroid/system/Os;->mlock(JJ)V

    .line 1204
    :cond_2
    add-long/2addr v6, v0

    .line 1205
    .end local v0    # "pinLength":J
    .end local v11    # "pinStart":J
    move-object v0, v2

    move-wide v1, v15

    move-wide/from16 v8, v26

    goto/16 :goto_0

    .line 1214
    .end local v2    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .end local v6    # "bytesPinned":J
    .end local v10    # "openFlags":I
    .end local v15    # "address":J
    .restart local v1    # "address":J
    :catchall_2
    move-exception v0

    move-wide v15, v1

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    .end local v1    # "address":J
    .restart local v15    # "address":J
    goto/16 :goto_5

    .line 1210
    .end local v15    # "address":J
    .restart local v1    # "address":J
    :catch_2
    move-exception v0

    move-wide v15, v1

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    .end local v1    # "address":J
    .restart local v15    # "address":J
    goto/16 :goto_4

    .line 1214
    .end local v13    # "mapSize":J
    .restart local v1    # "address":J
    .local v15, "mapSize":J
    :catchall_3
    move-exception v0

    move-wide v13, v15

    move-wide v15, v1

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    .end local v1    # "address":J
    .restart local v13    # "mapSize":J
    .local v15, "address":J
    goto/16 :goto_5

    .line 1210
    .end local v13    # "mapSize":J
    .restart local v1    # "address":J
    .local v15, "mapSize":J
    :catch_3
    move-exception v0

    move-wide v13, v15

    move-wide v15, v1

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    .end local v1    # "address":J
    .restart local v13    # "mapSize":J
    .local v15, "address":J
    goto/16 :goto_4

    .line 1214
    .end local v15    # "address":J
    .restart local v1    # "address":J
    :catchall_4
    move-exception v0

    move-wide v15, v1

    move-wide/from16 v26, v8

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    .end local v1    # "address":J
    .restart local v15    # "address":J
    goto/16 :goto_5

    .line 1210
    .end local v15    # "address":J
    .restart local v1    # "address":J
    :catch_4
    move-exception v0

    move-wide v15, v1

    move-wide/from16 v26, v8

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    .end local v1    # "address":J
    .restart local v15    # "address":J
    goto/16 :goto_4

    .line 1175
    .end local v15    # "address":J
    .local v0, "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .restart local v1    # "address":J
    .restart local v6    # "bytesPinned":J
    .restart local v10    # "openFlags":I
    :cond_3
    :goto_2
    move-wide v15, v1

    move-wide/from16 v26, v8

    move-object v2, v0

    .end local v0    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .end local v1    # "address":J
    .restart local v2    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .restart local v15    # "address":J
    goto :goto_3

    .end local v2    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .end local v15    # "address":J
    .restart local v0    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .restart local v1    # "address":J
    :cond_4
    move-object/from16 v3, p3

    goto :goto_2

    .line 1207
    .end local v0    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .end local v1    # "address":J
    .restart local v2    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .restart local v15    # "address":J
    :goto_3
    new-instance v0, Lcom/android/server/pinner/PinnedFile;
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v8, v2

    move-wide v3, v13

    move-wide v1, v15

    .end local v2    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .end local v13    # "mapSize":J
    .end local v15    # "address":J
    .restart local v1    # "address":J
    .local v3, "mapSize":J
    .local v8, "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    :try_start_9
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pinner/PinnedFile;-><init>(JJLjava/lang/String;J)V
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1208
    .end local v1    # "address":J
    .end local v3    # "mapSize":J
    .local v0, "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    .restart local v13    # "mapSize":J
    .restart local v15    # "address":J
    const-wide/16 v1, -0x1

    .line 1209
    .end local v15    # "address":J
    .restart local v1    # "address":J
    nop

    .line 1214
    invoke-static/range {v17 .. v17}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    .line 1215
    cmp-long v3, v1, v26

    if-ltz v3, :cond_5

    .line 1216
    invoke-static {v1, v2, v13, v14}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 1209
    :cond_5
    return-object v0

    .line 1214
    .end local v0    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    .end local v6    # "bytesPinned":J
    .end local v8    # "pinRange":Lcom/android/server/pinner/PinnerService$PinRange;
    .end local v10    # "openFlags":I
    .end local v13    # "mapSize":J
    .restart local v3    # "mapSize":J
    :catchall_5
    move-exception v0

    move-wide v15, v1

    move-wide v13, v3

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    .end local v1    # "address":J
    .end local v3    # "mapSize":J
    .restart local v13    # "mapSize":J
    .restart local v15    # "address":J
    goto/16 :goto_5

    .line 1210
    .end local v13    # "mapSize":J
    .end local v15    # "address":J
    .restart local v1    # "address":J
    .restart local v3    # "mapSize":J
    :catch_5
    move-exception v0

    move-wide v15, v1

    move-wide v13, v3

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    .end local v1    # "address":J
    .end local v3    # "mapSize":J
    .restart local v13    # "mapSize":J
    .restart local v15    # "address":J
    goto :goto_4

    .line 1214
    .end local v15    # "address":J
    .end local v18    # "maxBytesToPin":J
    .restart local v1    # "address":J
    .local p1, "maxBytesToPin":J
    :catchall_6
    move-exception v0

    move-wide v15, v1

    move-wide/from16 v26, v8

    move-wide/from16 v18, p1

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    .end local v1    # "address":J
    .restart local v15    # "address":J
    goto/16 :goto_5

    .line 1210
    .end local v15    # "address":J
    .restart local v1    # "address":J
    :catch_6
    move-exception v0

    move-wide v15, v1

    move-wide/from16 v26, v8

    move-wide/from16 v18, p1

    move-wide v6, v13

    move-wide v2, v15

    move-object/from16 v1, v17

    .end local v1    # "address":J
    .restart local v15    # "address":J
    goto :goto_4

    .line 1214
    .end local v15    # "address":J
    .local v2, "address":J
    :catchall_7
    move-exception v0

    move-wide/from16 v26, v8

    move-wide/from16 v18, p1

    move-wide v6, v13

    move-object/from16 v1, v17

    goto :goto_5

    .line 1210
    :catch_7
    move-exception v0

    move-wide/from16 v26, v8

    move-wide/from16 v18, p1

    move-wide v6, v13

    move-object/from16 v1, v17

    goto :goto_4

    .line 1214
    .end local v13    # "mapSize":J
    .local v6, "mapSize":J
    :catchall_8
    move-exception v0

    move-wide/from16 v26, v8

    move-wide/from16 v18, p1

    move-object/from16 v1, v17

    goto :goto_5

    .line 1210
    :catch_8
    move-exception v0

    move-wide/from16 v26, v8

    move-wide/from16 v18, p1

    move-object/from16 v1, v17

    goto :goto_4

    .line 1214
    .end local v17    # "fd":Ljava/io/FileDescriptor;
    .local v1, "fd":Ljava/io/FileDescriptor;
    :catchall_9
    move-exception v0

    move-wide/from16 v26, v8

    move-wide/from16 v18, p1

    goto :goto_5

    .line 1210
    :catch_9
    move-exception v0

    move-wide/from16 v26, v8

    move-wide/from16 v18, p1

    .end local p1    # "maxBytesToPin":J
    .restart local v18    # "maxBytesToPin":J
    :goto_4
    nop

    .line 1211
    .local v0, "ex":Landroid/system/ErrnoException;
    :try_start_a
    const-string v4, "PinnerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not pin file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1212
    nop

    .line 1214
    invoke-static {v1}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    .line 1215
    cmp-long v4, v2, v26

    if-ltz v4, :cond_6

    .line 1216
    invoke-static {v2, v3, v6, v7}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 1212
    :cond_6
    const/4 v4, 0x0

    return-object v4

    .line 1214
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catchall_a
    move-exception v0

    :goto_5
    invoke-static {v1}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    .line 1215
    cmp-long v4, v2, v26

    if-ltz v4, :cond_7

    .line 1216
    invoke-static {v2, v3, v6, v7}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 1218
    :cond_7
    throw v0
.end method

.method private pinOptimizedDexDependencies(Lcom/android/server/pinner/PinnedFile;JLandroid/content/pm/ApplicationInfo;)J
    .locals 17
    .param p1, "pinnedFile"    # Lcom/android/server/pinner/PinnedFile;
    .param p2, "maxBytesToPin"    # J
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 970
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    if-nez v6, :cond_0

    .line 971
    const-wide/16 v2, 0x0

    return-wide v2

    .line 974
    :cond_0
    const-wide/16 v2, 0x0

    .line 975
    .local v2, "bytesPinned":J
    iget-object v0, v6, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    const-string v4, ".jar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iget-object v4, v6, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v0, v4

    if-eqz v0, :cond_6

    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, "abi":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 978
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 980
    :cond_1
    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 981
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v5, v4

    move-object v8, v0

    goto :goto_0

    .line 980
    :cond_2
    move-object v8, v0

    .line 984
    .end local v0    # "abi":Ljava/lang/String;
    .local v8, "abi":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 985
    .local v9, "arch":Ljava/lang/String;
    const/4 v5, 0x0

    .line 987
    .local v5, "files":[Ljava/lang/String;
    :try_start_0
    iget-object v0, v6, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-static {v0, v9}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 989
    move-object v10, v5

    goto :goto_1

    .line 988
    :catch_0
    move-exception v0

    move-object v10, v5

    .line 990
    .end local v5    # "files":[Ljava/lang/String;
    .local v10, "files":[Ljava/lang/String;
    :goto_1
    if-nez v10, :cond_3

    .line 991
    return-wide v2

    .line 993
    :cond_3
    array-length v11, v10

    move-wide v12, v2

    move v14, v4

    move-wide/from16 v3, p2

    .end local v2    # "bytesPinned":J
    .end local p2    # "maxBytesToPin":J
    .local v3, "maxBytesToPin":J
    .local v12, "bytesPinned":J
    :goto_2
    if-ge v14, v11, :cond_5

    aget-object v2, v10, v14

    .line 995
    .local v2, "file":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    .line 997
    iget-object v0, v1, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pinner/PinnerService$Injector;->pinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object v5

    .line 999
    .local v5, "df":Lcom/android/server/pinner/PinnedFile;
    if-nez v5, :cond_4

    .line 1000
    const-string v0, "PinnerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to pin ART file = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return-wide v12

    .line 1003
    :cond_4
    iget-object v0, v6, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    iput-object v0, v5, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    .line 1004
    iget-object v0, v6, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    move-wide/from16 p2, v3

    move-object v4, v2

    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "maxBytesToPin":J
    .local v4, "file":Ljava/lang/String;
    .restart local p2    # "maxBytesToPin":J
    iget-wide v2, v5, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long v2, p2, v2

    .line 1006
    .end local p2    # "maxBytesToPin":J
    .local v2, "maxBytesToPin":J
    move-wide v15, v2

    .end local v2    # "maxBytesToPin":J
    .local v15, "maxBytesToPin":J
    iget-wide v2, v5, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v2, v12

    .line 1007
    .end local v12    # "bytesPinned":J
    .local v2, "bytesPinned":J
    monitor-enter p0

    .line 1008
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v12, v5, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v12, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    monitor-exit p0

    .line 993
    .end local v4    # "file":Ljava/lang/String;
    .end local v5    # "df":Lcom/android/server/pinner/PinnedFile;
    add-int/lit8 v14, v14, 0x1

    move-wide v12, v2

    move-wide v3, v15

    goto :goto_2

    .line 1009
    .restart local v4    # "file":Ljava/lang/String;
    .restart local v5    # "df":Lcom/android/server/pinner/PinnedFile;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 993
    .end local v2    # "bytesPinned":J
    .end local v4    # "file":Ljava/lang/String;
    .end local v5    # "df":Lcom/android/server/pinner/PinnedFile;
    .end local v15    # "maxBytesToPin":J
    .restart local v3    # "maxBytesToPin":J
    .restart local v12    # "bytesPinned":J
    :cond_5
    move-wide/from16 p2, v3

    .end local v3    # "maxBytesToPin":J
    .restart local p2    # "maxBytesToPin":J
    move-wide/from16 v2, p2

    goto :goto_3

    .line 975
    .end local v8    # "abi":Ljava/lang/String;
    .end local v9    # "arch":Ljava/lang/String;
    .end local v10    # "files":[Ljava/lang/String;
    .end local v12    # "bytesPinned":J
    .restart local v2    # "bytesPinned":J
    :cond_6
    move-wide v12, v2

    move-wide/from16 v2, p2

    .line 1012
    .end local p2    # "maxBytesToPin":J
    .local v2, "maxBytesToPin":J
    .restart local v12    # "bytesPinned":J
    :goto_3
    return-wide v12
.end method

.method private refreshPinAnonConfig()V
    .locals 6

    .line 736
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "pin_shared_anon_size"

    sget-wide v2, Lcom/android/server/pinner/PinnerService;->DEFAULT_ANON_SIZE:J

    const-string/jumbo v4, "runtime_native"

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 738
    .local v0, "newPinAnonSize":J
    const-wide v2, 0x80000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 739
    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 740
    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    .line 741
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->pinAnonRegion()V

    .line 743
    :cond_0
    return-void
.end method

.method private registerUidListener()V
    .locals 5

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mAm:Landroid/app/IActivityManager;

    new-instance v1, Lcom/android/server/pinner/PinnerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/pinner/PinnerService$4;-><init>(Lcom/android/server/pinner/PinnerService;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PinnerService"

    const-string v2, "Failed to register uid observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private registerUserSetupCompleteListener()V
    .locals 5

    .line 397
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 398
    .local v0, "userSetupCompleteUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/pinner/PinnerService$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/pinner/PinnerService$3;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 410
    return-void
.end method

.method private sendPinAppMessage(IIZ)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "userHandle"    # I
    .param p3, "force"    # Z

    .line 657
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;-><init>()V

    .line 658
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 657
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 659
    return-void
.end method

.method private sendPinAppsMessage(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 579
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda3;-><init>()V

    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 579
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 581
    return-void
.end method

.method private sendPinAppsWithUpdatedKeysMessage(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 584
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda1;-><init>()V

    .line 585
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 584
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 586
    return-void
.end method

.method private sendUnpinAppsMessage()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 589
    return-void
.end method

.method private unpinAnonRegion()V
    .locals 6

    .line 805
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 806
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    iget-wide v4, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    invoke-static {v0, v1, v4, v5}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 808
    :cond_0
    iput-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    .line 809
    iput-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 810
    return-void
.end method

.method private unpinApp(I)V
    .locals 4
    .param p1, "key"    # I

    .line 471
    monitor-enter p0

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnerService$PinnedApp;

    .line 473
    .local v0, "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    if-nez v0, :cond_0

    .line 474
    monitor-exit p0

    return-void

    .line 478
    .end local v0    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 476
    .restart local v0    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 478
    .end local v0    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    .local v1, "pinnedAppFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pinner/PinnedFile;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    .line 480
    .local v2, "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    iget-object v3, v2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    .line 481
    .end local v2    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    goto :goto_0

    .line 482
    :cond_1
    return-void

    .line 478
    .end local v1    # "pinnedAppFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pinner/PinnedFile;>;"
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private unpinApps()V
    .locals 3

    .line 462
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 463
    .local v0, "pinKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 464
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 465
    .local v2, "key":I
    invoke-direct {p0, v2}, Lcom/android/server/pinner/PinnerService;->unpinApp(I)V

    .line 463
    .end local v2    # "key":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 467
    .end local v1    # "i":I
    return-void
.end method

.method private updateActiveState(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "active"    # Z

    .line 451
    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 453
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pinner/PinnerService$PinnedApp;

    .line 454
    .local v1, "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    iget v2, v1, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_0

    .line 455
    iput-boolean p2, v1, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    goto :goto_1

    .line 458
    .end local v0    # "i":I
    .end local v1    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 452
    .restart local v0    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 458
    .end local v0    # "i":I
    monitor-exit p0

    .line 459
    return-void

    .line 458
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dumpDataForStatsd()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pinner/PinnerService$PinnedFileStats;",
            ">;"
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v0, "pinnedFileStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnerService$PinnedFileStats;>;"
    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    .line 349
    .local v2, "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    new-instance v3, Lcom/android/server/pinner/PinnerService$PinnedFileStats;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4, v2}, Lcom/android/server/pinner/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/pinner/PinnedFile;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    nop

    .end local v2    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    goto :goto_0

    .line 358
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 353
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pinner/PinnerService$PinnedApp;

    .line 354
    .local v3, "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    iget-object v4, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pinner/PinnerService$PinnedApp;

    iget-object v4, v4, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pinner/PinnedFile;

    .line 355
    .local v5, "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    new-instance v6, Lcom/android/server/pinner/PinnerService$PinnedFileStats;

    iget v7, v3, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    invoke-direct {v6, v7, v5}, Lcom/android/server/pinner/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/pinner/PinnedFile;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    nop

    .end local v5    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    goto :goto_2

    .line 354
    :cond_1
    nop

    .line 357
    .end local v2    # "key":I
    .end local v3    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    goto :goto_1

    .line 358
    :cond_2
    monitor-exit p0

    .line 359
    return-object v0

    .line 358
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPinnerStats()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/pinner/PinnedFileStat;",
            ">;"
        }
    .end annotation

    .line 1278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .local v0, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/pinner/PinnedFileStat;>;"
    monitor-enter p0

    .line 1281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1282
    .local v1, "pinnedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pinner/PinnedFile;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1283
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pinner/PinnedFile;

    .line 1284
    .local v3, "pf":Lcom/android/server/pinner/PinnedFile;
    new-instance v4, Landroid/app/pinner/PinnedFileStat;

    iget-object v5, v3, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    iget-wide v6, v3, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    iget-object v8, v3, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/pinner/PinnedFileStat;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 1285
    .local v4, "stat":Landroid/app/pinner/PinnedFileStat;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    .end local v3    # "pf":Lcom/android/server/pinner/PinnedFile;
    .end local v4    # "stat":Landroid/app/pinner/PinnedFileStat;
    goto :goto_0

    .line 1287
    :cond_0
    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1288
    new-instance v2, Landroid/app/pinner/PinnedFileStat;

    const-string v3, "[anon]"

    iget-wide v4, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    const-string v6, "[anon]"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/pinner/PinnedFileStat;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    :cond_1
    return-object v0

    .line 1282
    .end local v1    # "pinnedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pinner/PinnedFile;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getWebviewPinQuota()I
    .locals 3

    .line 489
    nop

    .line 492
    iget v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredWebviewPinBytes:I

    .line 493
    .local v0, "quota":I
    const-string/jumbo v1, "pinner.pin_webview_size"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 494
    .local v1, "overrideQuota":I
    if-eq v1, v2, :cond_0

    .line 496
    move v0, v1

    .line 498
    :cond_0
    return v0
.end method

.method public onStart()V
    .locals 6

    .line 291
    nop

    .line 292
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    int-to-long v2, v2

    .line 293
    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->clamp(JII)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    .line 295
    new-instance v0, Lcom/android/server/pinner/PinnerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/pinner/PinnerService$BinderService;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mBinderService:Lcom/android/server/pinner/PinnerService$BinderService;

    .line 296
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mBinderService:Lcom/android/server/pinner/PinnerService$BinderService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pinner/PinnerService$Injector;->publishBinderService(Lcom/android/server/pinner/PinnerService;Landroid/os/Binder;)V

    .line 297
    const-class v0, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    invoke-direct {p0, v4}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    .line 301
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 311
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 312
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-direct {p0, v0}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    .line 315
    :cond_0
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 319
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 320
    .local v0, "userId":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-direct {p0, v0}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    .line 324
    :cond_0
    return-void
.end method

.method public pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;
    .locals 15
    .param p1, "fileToPin"    # Ljava/lang/String;
    .param p2, "bytesRequestedToPin"    # J
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "groupName"    # Ljava/lang/String;
    .param p6, "pinOptimizedDeps"    # Z

    .line 909
    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    monitor-enter p0

    .line 910
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnedFile;

    move-object v6, v0

    .line 911
    .local v6, "existingPin":Lcom/android/server/pinner/PinnedFile;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 912
    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 913
    iget-wide v0, v6, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 915
    return-object v7

    .line 922
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    .line 926
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->getAvailableGlobalQuota()J

    move-result-wide v8

    .line 928
    .local v8, "remainingQuota":J
    nop

    .line 929
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_2

    .line 930
    const-string v0, "PinnerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached pin quota, skipping file: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-object v7

    .line 933
    :cond_2
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 936
    .end local p2    # "bytesRequestedToPin":J
    .local v3, "bytesRequestedToPin":J
    const-string v0, ".apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 938
    .local v5, "isApk":Z
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pinner/PinnerService$Injector;->pinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object v10

    .line 940
    move-wide v11, v3

    .end local v3    # "bytesRequestedToPin":J
    .local v10, "pf":Lcom/android/server/pinner/PinnedFile;
    .local v11, "bytesRequestedToPin":J
    if-nez v10, :cond_3

    .line 941
    const-string v0, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to pin file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    return-object v7

    .line 944
    :cond_3
    if-eqz p5, :cond_4

    move-object/from16 v0, p5

    goto :goto_0

    :cond_4
    const-string v0, ""

    :goto_0
    iput-object v0, v10, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    .line 946
    iget-wide v3, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-wide v13, v10, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v3, v13

    iput-wide v3, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 948
    monitor-enter p0

    .line 949
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v3, v10, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    if-eqz p6, :cond_5

    .line 953
    iget-wide v3, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 954
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->getAvailableGlobalQuota()J

    move-result-wide v13

    move-object/from16 v7, p4

    invoke-direct {p0, v10, v13, v14, v7}, Lcom/android/server/pinner/PinnerService;->pinOptimizedDexDependencies(Lcom/android/server/pinner/PinnedFile;JLandroid/content/pm/ApplicationInfo;)J

    move-result-wide v13

    add-long/2addr v3, v13

    iput-wide v3, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    goto :goto_1

    .line 952
    :cond_5
    move-object/from16 v7, p4

    .line 957
    :goto_1
    return-object v10

    .line 950
    :catchall_0
    move-exception v0

    move-object/from16 v7, p4

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 911
    .end local v5    # "isApk":Z
    .end local v6    # "existingPin":Lcom/android/server/pinner/PinnedFile;
    .end local v8    # "remainingQuota":J
    .end local v10    # "pf":Lcom/android/server/pinner/PinnedFile;
    .end local v11    # "bytesRequestedToPin":J
    .restart local p2    # "bytesRequestedToPin":J
    :catchall_2
    move-exception v0

    move-object/from16 v7, p4

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method public unpinFile(Ljava/lang/String;)J
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;

    .line 1245
    monitor-enter p0

    .line 1246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnedFile;

    .line 1247
    .local v0, "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1248
    if-nez v0, :cond_0

    .line 1250
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1252
    :cond_0
    iget-wide v1, v0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1253
    .local v1, "unpinnedBytes":J
    invoke-virtual {v0}, Lcom/android/server/pinner/PinnedFile;->close()V

    .line 1254
    monitor-enter p0

    .line 1258
    :try_start_1
    iget-wide v3, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-wide v5, v0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 1260
    iget-object v3, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v4, v0, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    iget-object v3, v0, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pinner/PinnedFile;

    .line 1262
    .local v4, "dep":Lcom/android/server/pinner/PinnedFile;
    if-nez v4, :cond_1

    .line 1263
    goto :goto_0

    .line 1265
    :cond_1
    iget-wide v5, v4, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v1, v5

    .line 1266
    iget-wide v5, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-wide v7, v4, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 1267
    iget-object v5, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v6, v4, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    nop

    .end local v4    # "dep":Lcom/android/server/pinner/PinnedFile;
    goto :goto_0

    .line 1272
    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_2
    monitor-exit p0

    .line 1274
    return-wide v1

    .line 1272
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1247
    .end local v0    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    .end local v1    # "unpinnedBytes":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public unpinGroup(Ljava/lang/String;)V
    .locals 4
    .param p1, "group"    # Ljava/lang/String;

    .line 1231
    invoke-direct {p0, p1}, Lcom/android/server/pinner/PinnerService;->getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1232
    .local v0, "pinnedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    .line 1233
    .local v2, "pf":Lcom/android/server/pinner/PinnedFile;
    iget-object v3, v2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    .line 1234
    .end local v2    # "pf":Lcom/android/server/pinner/PinnedFile;
    goto :goto_0

    .line 1235
    :cond_0
    return-void
.end method

.method public update(Landroid/util/ArraySet;Z)V
    .locals 7
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 332
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 333
    .local v0, "pinKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 334
    .local v1, "currentUser":I
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 335
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 336
    .local v3, "key":I
    invoke-direct {p0, v3, v1}, Lcom/android/server/pinner/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 337
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating pinned files for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " force="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PinnerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0, v3, v1, p2}, Lcom/android/server/pinner/PinnerService;->sendPinAppMessage(IIZ)V

    .line 334
    .end local v3    # "key":I
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 342
    .end local v2    # "i":I
    return-void
.end method
