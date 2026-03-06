.class public Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;,
        Lcom/android/server/clipboard/ClipboardService$Clipboard;,
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final CLIP_DATA_TYPES_UNKNOWN:[I

.field public static final DEFAULT_CLIPBOARD_TIMEOUT_MILLIS:J = 0x36ee80L

.field private static final DEFAULT_MAX_CLASSIFICATION_LENGTH:I = 0x190

.field public static final PROPERTY_AUTO_CLEAR_ENABLED:Ljava/lang/String; = "auto_clear_enabled"

.field public static final PROPERTY_AUTO_CLEAR_TIMEOUT:Ljava/lang/String; = "auto_clear_timeout"

.field private static final PROPERTY_MAX_CLASSIFICATION_LENGTH:Ljava/lang/String; = "max_classification_length"

.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private mAllowVirtualDeviceSilos:Z

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

.field private final mClipboardMonitor:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field private final mClipboards:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/clipboard/ClipboardService$Clipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mMaxClassificationLength:I

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mShowAccessNotifications:Z

.field private final mUgm:Landroid/app/IUriGrantsManager;

.field private final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private final mUm:Landroid/os/IUserManager;

.field private final mVdm:Landroid/companion/virtual/VirtualDeviceManager;

.field private final mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field private mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

.field private mVirtualDeviceRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mWm:Lcom/android/server/wm/WindowManagerInternal;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$-iVajhu1BdDLwVL21Gia1rYVqHs(Landroid/content/ClipData;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$2(Landroid/content/ClipData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ztocsQ0UcPtrhccM09yKp3YwrI(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$0(Landroid/content/ClipData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7KoTDMHoMReNv9FaUWUQ84N8AqY(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$1(Landroid/content/ClipData;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i-TpVE8l_CLZQqJ0xPbAIb9y5rw(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->lambda$notifyTextClassifierLocked$6(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jJFv3zAvb_A-0-b2Lx2yX-CeeW8(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->lambda$showAccessNotificationLocked$5(Ljava/lang/String;ILandroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kjkWPqxIFXcn85FolUIVmCDrYVA(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->lambda$startClassificationLocked$4(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$y1KAIyB809nPOPX3NCfiDWMeAGE(Lcom/android/server/clipboard/ClipboardService;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$3(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmClipboards(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkerHandler(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDataOwner(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwner(Landroid/content/ClipData;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;III)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;IIIZ)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;II)Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingDeviceId(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetIntendingUserId(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleWriteClipDataStats(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->scheduleWriteClipDataStats(Landroid/content/ClipData;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 155
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/clipboard/ClipboardService;->CLIP_DATA_TYPES_UNKNOWN:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 183
    iput-boolean v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    .line 187
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 198
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 199
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 200
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 201
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 203
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 204
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    :goto_0
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 206
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 207
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 208
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 209
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 210
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 211
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string v1, "clipboard"

    invoke-interface {v0, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 212
    .local v0, "permOwner":Landroid/os/IBinder;
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 213
    sget-boolean v2, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v2, :cond_1

    .line 214
    new-instance v2, Lcom/android/server/clipboard/EmulatorClipboardMonitor;

    new-instance v3, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {v2, v3}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;-><init>(Ljava/util/function/Consumer;)V

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    goto :goto_1

    .line 223
    :cond_1
    sget-boolean v2, Landroid/os/Build;->IS_ARC:Z

    if-eqz v2, :cond_2

    .line 224
    new-instance v2, Lcom/android/server/clipboard/ArcClipboardMonitor;

    new-instance v3, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {v2, v3}, Lcom/android/server/clipboard/ArcClipboardMonitor;-><init>(Ljava/util/function/BiConsumer;)V

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    goto :goto_1

    .line 228
    :cond_2
    new-instance v2, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    .line 231
    :goto_1
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    .line 232
    nop

    .line 233
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    .line 232
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 235
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ClipboardService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, "workerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 237
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    .line 238
    return-void
.end method

.method private addActiveOwnerLocked(IILjava/lang/String;)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 1245
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 1246
    .local v1, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1247
    .local v6, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1249
    .local v7, "oldIdentity":J
    const-wide/16 v3, 0x0

    move v5, p1

    move-object v2, p3

    .end local p1    # "uid":I
    .end local p3    # "pkg":Ljava/lang/String;
    .local v2, "pkg":Ljava/lang/String;
    .local v5, "uid":I
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;JII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 1253
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1254
    nop

    .line 1255
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p1

    .line 1256
    .local p1, "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    if-eqz p1, :cond_1

    iget-object p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 1257
    invoke-virtual {p3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1258
    iget-object p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {p3}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    .line 1259
    .local p3, "N":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1260
    iget-object v3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    iget v4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 1261
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1260
    invoke-direct {p0, v3, v4, v2, v9}, Lcom/android/server/clipboard/ClipboardService;->grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1263
    .end local v0    # "i":I
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1265
    .end local p3    # "N":I
    :cond_1
    return-void

    .line 1250
    .end local p1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling uid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not own package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "targetUserHandle":I
    .end local v7    # "oldIdentity":J
    .end local p0    # "this":Lcom/android/server/clipboard/ClipboardService;
    .end local p2    # "deviceId":I
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1253
    .restart local v1    # "pm":Landroid/content/pm/PackageManagerInternal;
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v5    # "uid":I
    .restart local v6    # "targetUserHandle":I
    .restart local v7    # "oldIdentity":J
    .restart local p0    # "this":Lcom/android/server/clipboard/ClipboardService;
    .restart local p2    # "deviceId":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1254
    throw p1
.end method

.method private applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V
    .locals 2
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .param p3, "links"    # Landroid/view/textclassifier/TextLinks;
    .param p4, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/clipboard/ClipboardService$Clipboard;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/view/textclassifier/TextLinks;",
            "Landroid/view/textclassifier/TextClassifier;",
            ")V"
        }
    .end annotation

    .line 1156
    .local p2, "confidences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 1157
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ClipDescription;->setConfidenceScores(Ljava/util/Map;)V

    .line 1158
    invoke-virtual {p3}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1159
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ClipData$Item;->setTextLinks(Landroid/view/textclassifier/TextLinks;)V

    .line 1161
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    .line 1162
    return-void
.end method

.method private checkDataOwner(Landroid/content/ClipData;I)V
    .locals 3
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .line 1208
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 1209
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1210
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwner(Landroid/content/ClipData$Item;I)V

    .line 1209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1212
    .end local v1    # "i":I
    return-void
.end method

.method private checkItemOwner(Landroid/content/ClipData$Item;I)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "uid"    # I

    .line 1198
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1199
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    .line 1201
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1202
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1203
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    .line 1205
    :cond_1
    return-void
.end method

.method private checkUriOwner(Landroid/net/Uri;I)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I

    .line 1183
    if-eqz p1, :cond_1

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v4, p2

    goto :goto_1

    .line 1185
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1188
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1189
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1191
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1188
    const/4 v5, 0x0

    const/4 v7, 0x1

    move v4, p2

    .end local p2    # "sourceUid":I
    .local v4, "sourceUid":I
    :try_start_1
    invoke-interface/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1193
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1194
    nop

    .line 1195
    return-void

    .line 1193
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v4    # "sourceUid":I
    .restart local p2    # "sourceUid":I
    :catchall_1
    move-exception v0

    move v4, p2

    move-object p2, v0

    .end local p2    # "sourceUid":I
    .restart local v4    # "sourceUid":I
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1194
    throw p2

    .line 1183
    .end local v1    # "ident":J
    .end local v4    # "sourceUid":I
    .restart local p2    # "sourceUid":I
    :cond_1
    move v4, p2

    .end local p2    # "sourceUid":I
    .restart local v4    # "sourceUid":I
    :goto_1
    return-void
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;III)Z
    .locals 8
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I
    .param p6, "intendingDeviceId"    # I

    .line 1308
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "op":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "uid":I
    .end local p5    # "userId":I
    .end local p6    # "intendingDeviceId":I
    .local v1, "op":I
    .local v2, "callingPackage":Ljava/lang/String;
    .local v3, "attributionTag":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "userId":I
    .local v6, "intendingDeviceId":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p1

    return p1
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;IIIZ)Z
    .locals 11
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I
    .param p6, "intendingDeviceId"    # I
    .param p7, "shouldNoteOp"    # Z

    .line 1324
    move v2, p4

    move/from16 v6, p5

    move/from16 v7, p6

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p4, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1326
    const/4 v0, -0x1

    const-string v4, "ClipboardService"

    const/4 v8, 0x0

    if-ne v7, v0, :cond_0

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard access denied to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to invalid device id"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return v8

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v5, "android.permission.READ_CLIPBOARD_IN_BACKGROUND"

    invoke-virtual {v0, v5, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1335
    const/4 v0, 0x1

    .local v0, "allowed":Z
    goto :goto_0

    .line 1338
    .end local v0    # "allowed":Z
    :cond_1
    invoke-direct {p0, v6, p2}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    .line 1341
    .restart local v0    # "allowed":Z
    :goto_0
    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1383
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown clipboard appop "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1380
    :pswitch_0
    const/4 v0, 0x1

    .line 1381
    move v10, v0

    goto :goto_4

    .line 1348
    :pswitch_1
    if-nez v0, :cond_4

    .line 1349
    invoke-direct {p0, v7, p4}, Lcom/android/server/clipboard/ClipboardService;->isDefaultDeviceAndUidFocused(II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1350
    invoke-direct {p0, v7, p4}, Lcom/android/server/clipboard/ClipboardService;->isVirtualDeviceAndUidFocused(II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1351
    invoke-direct {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v8

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v9

    :goto_2
    move v0, v5

    .line 1353
    :cond_4
    if-nez v0, :cond_5

    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v5, :cond_5

    .line 1360
    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-virtual {v5, p4, v6}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    .line 1362
    :cond_5
    if-nez v0, :cond_6

    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v5, :cond_6

    .line 1369
    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    invoke-virtual {v5, p4, v6}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    .line 1371
    :cond_6
    if-nez v0, :cond_8

    if-eqz v7, :cond_8

    .line 1374
    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    nop

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 1375
    invoke-virtual {v5, v7}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result v5

    if-ne v5, v2, :cond_7

    move v5, v9

    goto :goto_3

    :cond_7
    move v5, v8

    :goto_3
    move v0, v5

    move v10, v0

    goto :goto_4

    .line 1385
    :cond_8
    move v10, v0

    .end local v0    # "allowed":Z
    .local v10, "allowed":Z
    :goto_4
    if-nez v10, :cond_9

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Denying clipboard access to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", application is not in focus nor is it a system service for user "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return v8

    .line 1393
    :cond_9
    if-eqz p7, :cond_a

    .line 1394
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "appOpsResult":I
    goto :goto_5

    .line 1396
    .end local v0    # "appOpsResult":I
    :cond_a
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p4, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    .line 1399
    .restart local v0    # "appOpsResult":I
    :goto_5
    if-nez v0, :cond_b

    move v8, v9

    :cond_b
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;
    .locals 3
    .param p1, "userId"    # I

    .line 1626
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 1627
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassificationManager;

    return-object v1
.end method

.method private deviceUsesDefaultClipboard(I)Z
    .locals 3
    .param p1, "deviceId"    # I

    .line 466
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result v1

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 467
    :goto_1
    return v0
.end method

.method private doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .locals 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .param p4, "userId"    # I
    .param p5, "deviceId"    # I

    .line 1104
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v0, v2}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v6

    .line 1105
    .local v6, "request":Landroid/view/textclassifier/TextLinks$Request;
    invoke-interface {v3, v6}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v7

    .line 1108
    .local v7, "links":Landroid/view/textclassifier/TextLinks;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    .line 1109
    .local v8, "confidences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-virtual {v7}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 1110
    .local v9, "link":Landroid/view/textclassifier/TextLinks$TextLink;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v9}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 1111
    invoke-virtual {v9, v10}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v11

    .line 1112
    .local v11, "entity":Ljava/lang/String;
    invoke-virtual {v9, v11}, Landroid/view/textclassifier/TextLinks$TextLink;->getConfidenceScore(Ljava/lang/String;)F

    move-result v12

    .line 1113
    .local v12, "conf":F
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v13, v12, v13

    if-lez v13, :cond_0

    .line 1114
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    .end local v11    # "entity":Ljava/lang/String;
    .end local v12    # "conf":F
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 1117
    .end local v9    # "link":Landroid/view/textclassifier/TextLinks$TextLink;
    .end local v10    # "i":I
    goto :goto_0

    .line 1119
    :cond_2
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1120
    :try_start_0
    invoke-direct {v1, v4, v5}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v0

    .line 1121
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    if-nez v0, :cond_3

    .line 1122
    monitor-exit v9

    return-void

    .line 1149
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :catchall_0
    move-exception v0

    move-object/from16 v11, p2

    goto :goto_5

    .line 1124
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :cond_3
    iget-object v10, v0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v11, p2

    if-ne v10, v11, :cond_a

    .line 1125
    :try_start_1
    invoke-direct {v1, v0, v8, v7, v3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    .line 1129
    invoke-virtual {v1, v4}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v10

    .line 1130
    .local v10, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v10, :cond_9

    .line 1131
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .line 1132
    .local v12, "size":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v12, :cond_8

    .line 1133
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    .line 1134
    .local v14, "id":I
    if-eq v14, v4, :cond_6

    .line 1135
    const-string/jumbo v15, "no_sharing_into_profile"

    invoke-direct {v1, v15, v14}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    .line 1137
    .local v15, "canCopyIntoProfile":Z
    if-eqz v15, :cond_5

    .line 1138
    invoke-direct {v1, v14, v5}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1139
    .local v17, "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    if-eqz v17, :cond_4

    .line 1140
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .local v0, "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .local v16, "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    invoke-direct {v1, v0, v2}, Lcom/android/server/clipboard/ClipboardService;->hasTextLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1141
    invoke-direct {v1, v0, v8, v7, v3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    goto :goto_3

    .line 1149
    .end local v0    # "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .end local v10    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "size":I
    .end local v13    # "i":I
    .end local v14    # "id":I
    .end local v15    # "canCopyIntoProfile":Z
    .end local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1139
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .restart local v10    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "size":I
    .restart local v13    # "i":I
    .restart local v14    # "id":I
    .restart local v15    # "canCopyIntoProfile":Z
    .restart local v17    # "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .local v0, "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .restart local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    goto :goto_3

    .line 1137
    .end local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .restart local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    goto :goto_3

    .line 1134
    .end local v15    # "canCopyIntoProfile":Z
    .end local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :cond_6
    move-object/from16 v16, v0

    .line 1132
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .end local v14    # "id":I
    .restart local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :cond_7
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto :goto_2

    .end local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :cond_8
    move-object/from16 v16, v0

    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .restart local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    goto :goto_4

    .line 1130
    .end local v12    # "size":I
    .end local v13    # "i":I
    .end local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :cond_9
    move-object/from16 v16, v0

    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .restart local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    goto :goto_4

    .line 1124
    .end local v10    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v16    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :cond_a
    move-object/from16 v16, v0

    .line 1149
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :goto_4
    monitor-exit v9

    .line 1150
    return-void

    .line 1149
    :goto_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "deviceId"    # I

    .line 879
    const-string v0, "ClipboardService"

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 880
    .local v1, "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    if-nez v1, :cond_2

    .line 882
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v3, p1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getClipboardLocked called with not running userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    return-object v2

    .line 886
    :catch_0
    move-exception v3

    goto :goto_0

    .line 889
    :cond_0
    nop

    .line 890
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 891
    invoke-virtual {v3, p2}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getClipboardLocked called with invalid (possibly released) deviceId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-object v2

    .line 896
    :cond_1
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$Clipboard;

    invoke-direct {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService$Clipboard;-><init>(II)V

    move-object v1, v0

    .line 897
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 886
    :goto_0
    nop

    .line 887
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException calling UserManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-object v2

    .line 899
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-object v1
.end method

.method private getIntendingDeviceId(II)I
    .locals 7
    .param p1, "requestedDeviceId"    # I
    .param p2, "uid"    # I

    .line 416
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 417
    return v1

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 422
    .local v0, "virtualDeviceIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 423
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    const/4 v4, -0x1

    if-nez v3, :cond_2

    .line 424
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    .line 425
    :cond_1
    monitor-exit v2

    return v4

    .line 427
    :catchall_0
    move-exception v1

    goto :goto_6

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    const/4 v2, 0x1

    .line 432
    .local v2, "allDevicesHaveDefaultClipboard":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 433
    .local v5, "deviceId":I
    invoke-direct {p0, v5}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 434
    const/4 v2, 0x0

    .line 435
    goto :goto_1

    .line 433
    :cond_3
    nop

    .line 437
    .end local v5    # "deviceId":I
    goto :goto_0

    .line 441
    :cond_4
    :goto_1
    if-nez p1, :cond_6

    .line 442
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    return v1

    .line 450
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 451
    move v3, v1

    goto :goto_3

    .line 452
    :cond_7
    move v3, p1

    :goto_3
    nop

    .line 454
    .local v3, "clipboardDeviceId":I
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v4, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result v4

    if-eq v4, p2, :cond_b

    .line 455
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    :cond_8
    goto :goto_5

    .line 461
    :cond_9
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 462
    .local v4, "fallbackDeviceId":I
    invoke-direct {p0, v4}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    move v1, v4

    :goto_4
    return v1

    .line 457
    .end local v4    # "fallbackDeviceId":I
    :cond_b
    :goto_5
    return v3

    .line 427
    .end local v2    # "allDevicesHaveDefaultClipboard":Z
    .end local v3    # "clipboardDeviceId":I
    :goto_6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getIntendingUid(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result v0

    .line 402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 401
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method private getIntendingUserId(Ljava/lang/String;I)I
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 380
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 381
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, p2, :cond_0

    move-object v10, p1

    move v6, p2

    goto :goto_0

    .line 385
    :cond_0
    move v2, v1

    .line 386
    .local v2, "intendingUserId":I
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 387
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 386
    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "checkClipboardServiceCallingUser"

    move-object v10, p1

    move v6, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .local v6, "userId":I
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 390
    .end local v2    # "intendingUserId":I
    .local p1, "intendingUserId":I
    return p1

    .line 381
    .end local v6    # "userId":I
    .end local v10    # "packageName":Ljava/lang/String;
    .local p1, "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :cond_1
    move-object v10, p1

    move v6, p2

    .line 382
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .restart local v6    # "userId":I
    .restart local v10    # "packageName":Ljava/lang/String;
    :goto_0
    return v1
.end method

.method private getToastContexts(Lcom/android/server/clipboard/ClipboardService$Clipboard;I)Landroid/util/ArraySet;
    .locals 7
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .param p2, "accessDeviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/clipboard/ClipboardService$Clipboard;",
            "I)",
            "Landroid/util/ArraySet<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1522
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1523
    .local v0, "contexts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/Context;>;"
    iget v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 1527
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1530
    :cond_1
    if-nez p2, :cond_2

    iget v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v1, :cond_4

    .line 1533
    :cond_3
    return-object v0

    .line 1538
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1539
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v2, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDisplayIdsForDevice(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 1540
    .local v2, "displayIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v3

    .line 1542
    .local v3, "topFocusedDisplayId":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1543
    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    .line 1544
    .local v4, "display":Landroid/view/Display;
    if-eqz v4, :cond_5

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1546
    return-object v0

    .line 1550
    .end local v4    # "display":Landroid/view/Display;
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 1551
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    .line 1552
    .local v5, "display":Landroid/view/Display;
    if-eqz v5, :cond_6

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1550
    .end local v5    # "display":Landroid/view/Display;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    nop

    .line 1556
    .end local v4    # "i":I
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getToastContexts Couldn\'t find any VirtualDisplays for VirtualDevice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ClipboardService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1564
    :cond_8
    return-object v0
.end method

.method private grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "sourceUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 1234
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 1237
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1238
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1239
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 1241
    :cond_1
    return-void
.end method

.method private grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 1216
    if-eqz p1, :cond_1

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v5, p2

    move-object v6, p3

    move v10, p4

    goto :goto_3

    .line 1218
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1220
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 1221
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 1223
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1220
    const/4 v8, 0x1

    move v5, p2

    move-object v6, p3

    move v10, p4

    .end local p2    # "sourceUid":I
    .end local p3    # "targetPkg":Ljava/lang/String;
    .end local p4    # "targetUserId":I
    .local v5, "sourceUid":I
    .local v6, "targetPkg":Ljava/lang/String;
    .local v10, "targetUserId":I
    :try_start_1
    invoke-interface/range {v3 .. v10}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1228
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1229
    goto :goto_2

    .line 1228
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 1225
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1228
    .end local v5    # "sourceUid":I
    .end local v6    # "targetPkg":Ljava/lang/String;
    .end local v10    # "targetUserId":I
    .restart local p2    # "sourceUid":I
    .restart local p3    # "targetPkg":Ljava/lang/String;
    .restart local p4    # "targetUserId":I
    :catchall_1
    move-exception v0

    move v5, p2

    move-object v6, p3

    move v10, p4

    move-object p2, v0

    .end local p2    # "sourceUid":I
    .end local p3    # "targetPkg":Ljava/lang/String;
    .end local p4    # "targetUserId":I
    .restart local v5    # "sourceUid":I
    .restart local v6    # "targetPkg":Ljava/lang/String;
    .restart local v10    # "targetUserId":I
    goto :goto_1

    .line 1225
    .end local v5    # "sourceUid":I
    .end local v6    # "targetPkg":Ljava/lang/String;
    .end local v10    # "targetUserId":I
    .restart local p2    # "sourceUid":I
    .restart local p3    # "targetPkg":Ljava/lang/String;
    .restart local p4    # "targetUserId":I
    :catch_1
    move-exception v0

    move v5, p2

    move-object v6, p3

    move v10, p4

    .end local p2    # "sourceUid":I
    .end local p3    # "targetPkg":Ljava/lang/String;
    .end local p4    # "targetUserId":I
    .restart local v5    # "sourceUid":I
    .restart local v6    # "targetPkg":Ljava/lang/String;
    .restart local v10    # "targetUserId":I
    goto :goto_0

    .line 1228
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1229
    throw p2

    .line 1230
    :goto_2
    return-void

    .line 1216
    .end local v1    # "ident":J
    .end local v5    # "sourceUid":I
    .end local v6    # "targetPkg":Ljava/lang/String;
    .end local v10    # "targetUserId":I
    .restart local p2    # "sourceUid":I
    .restart local p3    # "targetPkg":Ljava/lang/String;
    .restart local p4    # "targetUserId":I
    :cond_1
    move v5, p2

    move-object v6, p3

    move v10, p4

    .end local p2    # "sourceUid":I
    .end local p3    # "targetPkg":Ljava/lang/String;
    .end local p4    # "targetUserId":I
    .restart local v5    # "sourceUid":I
    .restart local v6    # "targetPkg":Ljava/lang/String;
    .restart local v10    # "targetUserId":I
    :goto_3
    return-void
.end method

.method private hasRestriction(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ClipboardService"

    const-string v2, "Remote Exception calling UserManager.getUserRestrictions: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    const/4 v1, 0x1

    return v1
.end method

.method private hasTextLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 1166
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v1, 0x0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 1167
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    nop

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 1168
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1166
    :goto_0
    return v1
.end method

.method private isDefaultDeviceAndUidFocused(II)Z
    .locals 1
    .param p1, "intendingDeviceId"    # I
    .param p2, "uid"    # I

    .line 1403
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDefaultIme(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1416
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, "defaultIme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1419
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1420
    .local v1, "imeComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 1421
    return v2

    .line 1423
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1424
    .local v2, "imePkg":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 1426
    .end local v1    # "imeComponent":Landroid/content/ComponentName;
    .end local v2    # "imePkg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private isDeviceLocked(II)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "deviceId"    # I

    .line 1172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1174
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 1176
    .local v2, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroid/app/KeyguardManager;->isDeviceLocked(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 1178
    .end local v2    # "keyguardManager":Landroid/app/KeyguardManager;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1176
    .restart local v2    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_0
    const/4 v3, 0x0

    .line 1178
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    return v3

    .line 1178
    .end local v2    # "keyguardManager":Landroid/app/KeyguardManager;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    throw v2
.end method

.method private isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    return v0

    .line 356
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isText(Landroid/content/ClipData;)Z
    .locals 4
    .param p0, "data"    # Landroid/content/ClipData;

    .line 1574
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1575
    return v1

    .line 1577
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1579
    .local v0, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1580
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    .line 1579
    :goto_0
    return v1
.end method

.method private isVirtualDeviceAndUidFocused(II)Z
    .locals 4
    .param p1, "intendingDeviceId"    # I
    .param p2, "uid"    # I

    .line 1407
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 1410
    :cond_1
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v1

    .line 1411
    .local v1, "topFocusedDisplayId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v2, v1}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v2

    .line 1412
    .local v2, "focusedDeviceId":I
    if-ne v2, p1, :cond_2

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 1408
    .end local v1    # "topFocusedDisplayId":I
    .end local v2    # "focusedDeviceId":I
    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/content/ClipData;)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 215
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, v1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v1

    .line 217
    .local v1, "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    if-eqz v1, :cond_0

    .line 218
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    goto :goto_0

    .line 221
    .end local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$new$1(Landroid/content/ClipData;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "uid"    # Ljava/lang/Integer;

    .line 225
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    .line 226
    return-void
.end method

.method private static synthetic lambda$new$2(Landroid/content/ClipData;)V
    .locals 0
    .param p0, "clip"    # Landroid/content/ClipData;

    .line 228
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 233
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    return-void
.end method

.method private static synthetic lambda$notifyTextClassifierLocked$6(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/view/textclassifier/TextClassifier;)V
    .locals 3
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .param p2, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1612
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;-><init>(I)V

    new-instance v1, Landroid/view/textclassifier/TextClassificationContext$Builder;

    const-string v2, "clipboard"

    invoke-direct {v1, p0, v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v1

    .line 1615
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    iget-object v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    .line 1619
    const-string/jumbo v2, "source_package"

    invoke-static {v2, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1618
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    .line 1620
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->build()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    move-result-object v0

    .line 1621
    .local v0, "pasteEvent":Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;
    invoke-interface {p2, v0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    .line 1622
    return-void
.end method

.method private synthetic lambda$scheduleWriteClipDataStats$7(IILandroid/util/IntArray;I)V
    .locals 7
    .param p1, "sourceUid"    # I
    .param p2, "intendingUid"    # I
    .param p3, "mimeTypes"    # Landroid/util/IntArray;
    .param p4, "secondsSinceSet"    # I

    .line 1676
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1679
    invoke-virtual {v0, p2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v4

    .line 1680
    invoke-virtual {p3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    .line 1676
    const/16 v1, 0x418

    move v2, p1

    move v3, p2

    move v6, p4

    .end local p1    # "sourceUid":I
    .end local p2    # "intendingUid":I
    .end local p4    # "secondsSinceSet":I
    .local v2, "sourceUid":I
    .local v3, "intendingUid":I
    .local v6, "secondsSinceSet":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[II)V

    return-void
.end method

.method private synthetic lambda$scheduleWriteClipDataStats$8(II)V
    .locals 7
    .param p1, "sourceUid"    # I
    .param p2, "intendingUid"    # I

    .line 1683
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1686
    invoke-virtual {v0, p2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v4

    sget-object v5, Lcom/android/server/clipboard/ClipboardService;->CLIP_DATA_TYPES_UNKNOWN:[I

    .line 1683
    const/16 v1, 0x418

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    .end local p1    # "sourceUid":I
    .end local p2    # "intendingUid":I
    .local v2, "sourceUid":I
    .local v3, "intendingUid":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[II)V

    return-void
.end method

.method private synthetic lambda$showAccessNotificationLocked$5(Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "toastContexts"    # Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1479
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 1480
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1479
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1481
    .local v0, "callingAppLabel":Ljava/lang/CharSequence;
    nop

    .line 1482
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x104070d

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, "message":Ljava/lang/String;
    const-string v2, "ClipboardService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1485
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 1487
    .local v3, "toastContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/util/SafetyProtectionUtils;->shouldShowSafetyProtectionResources(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1489
    const v6, 0x10800b5

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1490
    .local v4, "safetyProtectionIcon":Landroid/graphics/drawable/Drawable;
    nop

    .line 1491
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 1490
    invoke-static {v3, v6, v1, v5, v4}, Landroid/widget/Toast;->makeCustomToastWithIcon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;

    move-result-object v5

    .line 1493
    .end local v4    # "safetyProtectionIcon":Landroid/graphics/drawable/Drawable;
    .local v5, "toastToShow":Landroid/widget/Toast;
    goto :goto_1

    .line 1500
    .end local v0    # "callingAppLabel":Ljava/lang/CharSequence;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "toastContext":Landroid/content/Context;
    .end local v5    # "toastToShow":Landroid/widget/Toast;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1494
    .restart local v0    # "callingAppLabel":Ljava/lang/CharSequence;
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "toastContext":Landroid/content/Context;
    :cond_0
    nop

    .line 1495
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 1494
    invoke-static {v3, v4, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    move-object v5, v4

    .line 1498
    .restart local v5    # "toastToShow":Landroid/widget/Toast;
    :goto_1
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    .end local v3    # "toastContext":Landroid/content/Context;
    .end local v5    # "toastToShow":Landroid/widget/Toast;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1502
    .end local v0    # "callingAppLabel":Ljava/lang/CharSequence;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "i":I
    nop

    .line 1503
    :goto_2
    return-void
.end method

.method private synthetic lambda$startClassificationLocked$4(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "classifier"    # Landroid/view/textclassifier/TextClassifier;
    .param p4, "userId"    # I
    .param p5, "deviceId"    # I

    .line 1097
    invoke-direct/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V

    return-void
.end method

.method private static mimeTypeToClipDataType(Ljava/lang/String;)I
    .locals 9
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 1631
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x7

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "application/octet-stream"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "text/plain"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_2
    const-string v0, "application/vnd.android.shortcut"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "text/vnd.android.intent"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "text/html"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_5
    const-string v0, "application/vnd.android.activity"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "text/uri-list"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_7
    const-string v0, "application/vnd.android.task"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1649
    return v7

    .line 1645
    :pswitch_0
    return v8

    .line 1643
    :pswitch_1
    return v1

    .line 1641
    :pswitch_2
    return v6

    .line 1639
    :pswitch_3
    return v3

    .line 1637
    :pswitch_4
    return v5

    .line 1635
    :pswitch_5
    return v2

    .line 1633
    :pswitch_6
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x7c0f397b -> :sswitch_7
        -0x7035d0ff -> :sswitch_6
        -0x50a9fbf1 -> :sswitch_5
        -0x4081b8b3 -> :sswitch_4
        -0x3d8f0761 -> :sswitch_3
        -0x26012ba -> :sswitch_2
        0x30b78e68 -> :sswitch_1
        0x463e3f9d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V
    .locals 4
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 1587
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    .line 1588
    return-void

    .line 1590
    :cond_0
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1591
    .local v0, "item":Landroid/content/ClipData$Item;
    if-nez v0, :cond_1

    .line 1592
    return-void

    .line 1594
    :cond_1
    iget-object v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->isText(Landroid/content/ClipData;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1595
    return-void

    .line 1597
    :cond_2
    iget-object v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 1599
    .local v1, "textClassifier":Landroid/view/textclassifier/TextClassifier;
    if-nez v1, :cond_3

    .line 1600
    return-void

    .line 1603
    :cond_3
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1604
    return-void

    .line 1607
    :cond_4
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1608
    return-void

    .line 1610
    :cond_5
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1611
    new-instance v2, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1, v1}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/view/textclassifier/TextClassifier;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1623
    return-void
.end method

.method private registerVirtualDeviceListener()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 250
    :cond_1
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v0, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 260
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-virtual {v0, v1, v2}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    .line 261
    return-void

    .line 248
    :goto_0
    return-void
.end method

.method private revokeItemPermission(Landroid/content/ClipData$Item;I)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "sourceUid"    # I

    .line 1282
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1285
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1286
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1287
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1289
    :cond_1
    return-void
.end method

.method private revokeUriPermission(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I

    .line 1268
    if-eqz p1, :cond_0

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1270
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1272
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 1273
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 1275
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {p1, v5}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 1272
    const/4 v6, 0x1

    invoke-interface {v2, v3, v4, v6, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1278
    nop

    .line 1279
    return-void

    .line 1277
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1278
    throw v2

    .line 1268
    .end local v0    # "ident":J
    :goto_0
    return-void
.end method

.method private revokeUris(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V
    .locals 4
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 1292
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    .line 1293
    return-void

    .line 1295
    :cond_0
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 1296
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1297
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeItemPermission(Landroid/content/ClipData$Item;I)V

    .line 1296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1299
    .end local v1    # "i":I
    return-void
.end method

.method private scheduleWriteClipDataStats(Landroid/content/ClipData;II)V
    .locals 0
    .param p1, "clipData"    # Landroid/content/ClipData;
    .param p2, "sourceUid"    # I
    .param p3, "intendingUid"    # I

    .line 1655
    nop

    .line 1656
    return-void
.end method

.method private sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V
    .locals 12
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 1041
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1042
    .local v1, "ident":J
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1044
    .local v3, "n":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1046
    :try_start_0
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 1047
    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 1049
    .local v0, "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    iget-object v7, v0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mAttributionTag:Ljava/lang/String;

    iget v9, v0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    iget v5, v0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 1054
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget v11, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    .line 1049
    const/16 v6, 0x1d

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1056
    iget-object v5, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/IOnPrimaryClipChangedListener;

    .line 1057
    invoke-interface {v5}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1065
    .end local v0    # "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    .end local v4    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1059
    .restart local v4    # "i":I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1062
    :cond_0
    :goto_1
    goto :goto_3

    .line 1065
    .end local v4    # "i":I
    :goto_2
    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1066
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1067
    throw v0

    .line 1044
    .restart local v4    # "i":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1065
    .end local v4    # "i":I
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1066
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1067
    nop

    .line 1068
    return-void
.end method

.method private setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V
    .locals 10
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "uid"    # I
    .param p3, "deviceId"    # I
    .param p4, "sourcePackage"    # Ljava/lang/String;

    .line 938
    if-nez p3, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 942
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 945
    .local v0, "userId":I
    invoke-direct {p0, v0, p3}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v1

    .line 946
    .local v1, "clipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    if-nez v1, :cond_1

    .line 947
    return-void

    .line 949
    :cond_1
    invoke-direct {p0, v1, p1, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 952
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 953
    .local v2, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v2, :cond_6

    .line 954
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 955
    .local v3, "size":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 956
    const-string/jumbo v5, "no_cross_profile_copy_paste"

    invoke-direct {p0, v5, v0}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 960
    .local v5, "canCopy":Z
    if-nez v5, :cond_2

    .line 961
    const/4 p1, 0x0

    goto :goto_1

    .line 962
    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    .line 971
    :cond_3
    new-instance v6, Landroid/content/ClipData;

    invoke-direct {v6, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    move-object p1, v6

    .line 972
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_4

    .line 973
    new-instance v7, Landroid/content/ClipData$Item;

    invoke-virtual {p1, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {p1, v6, v7}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    .line 972
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 975
    .end local v6    # "i":I
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->fixUrisLight(I)V

    .line 977
    :goto_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v3, :cond_6

    .line 978
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    .line 979
    .local v7, "id":I
    if-eq v7, v0, :cond_5

    .line 980
    const-string/jumbo v8, "no_sharing_into_profile"

    invoke-direct {p0, v8, v7}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v8

    xor-int/2addr v8, v4

    .line 982
    .local v8, "canCopyIntoProfile":Z
    if-eqz v8, :cond_5

    .line 983
    invoke-direct {p0, v7, p3}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v9

    .line 984
    .local v9, "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    if-eqz v9, :cond_5

    .line 985
    invoke-direct {p0, v9, p1, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 977
    .end local v7    # "id":I
    .end local v8    # "canCopyIntoProfile":Z
    .end local v9    # "relatedClipboard":Lcom/android/server/clipboard/ClipboardService$Clipboard;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 993
    .end local v3    # "size":I
    .end local v5    # "canCopy":Z
    .end local v6    # "i":I
    :cond_6
    return-void
.end method

.method private setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .locals 2
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "uid"    # I
    .param p4, "sourcePackage"    # Ljava/lang/String;

    .line 1005
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1006
    .local v0, "userId":I
    if-eqz p2, :cond_0

    .line 1007
    iget v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->startClassificationLocked(Landroid/content/ClipData;II)V

    .line 1010
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 1011
    return-void
.end method

.method private setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .locals 3
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "uid"    # I
    .param p4, "sourcePackage"    # Ljava/lang/String;

    .line 1016
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    .line 1017
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1018
    if-nez p2, :cond_0

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    .line 1019
    return-void

    .line 1021
    :cond_0
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 1022
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1023
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1024
    if-eqz p2, :cond_1

    .line 1025
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 1026
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    goto :goto_0

    .line 1028
    :cond_1
    const/16 v0, 0x270f

    iput v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    .line 1031
    :goto_0
    if-eqz p2, :cond_2

    .line 1032
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 1033
    .local v0, "description":Landroid/content/ClipDescription;
    if-eqz v0, :cond_2

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ClipDescription;->setTimestamp(J)V

    .line 1037
    .end local v0    # "description":Landroid/content/ClipDescription;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    .line 1038
    return-void
.end method

.method private showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;I)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .param p5, "accessDeviceId"    # I

    .line 1438
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    .line 1439
    return-void

    .line 1441
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1443
    iget-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 1441
    const-string v2, "clipboard_show_access_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1444
    return-void

    .line 1447
    :cond_1
    iget v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1448
    return-void

    .line 1451
    :cond_2
    invoke-direct {p0, p3, p1}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1452
    return-void

    .line 1454
    :cond_3
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    nop

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 1455
    invoke-virtual {v0, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1456
    return-void

    .line 1458
    :cond_4
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    nop

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 1459
    invoke-virtual {v0, p2, p3}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1460
    return-void

    .line 1462
    :cond_5
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.SUPPRESS_CLIPBOARD_ACCESS_NOTIFICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 1464
    return-void

    .line 1467
    :cond_6
    iget v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget v1, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    .line 1468
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result v0

    if-ne v0, p2, :cond_7

    .line 1469
    return-void

    .line 1472
    :cond_7
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1473
    return-void

    .line 1476
    :cond_8
    invoke-direct {p0, p4, p5}, Lcom/android/server/clipboard/ClipboardService;->getToastContexts(Lcom/android/server/clipboard/ClipboardService$Clipboard;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1477
    .local v0, "toastContexts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/Context;>;"
    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;ILandroid/util/ArraySet;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1505
    iget-object v1, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1506
    return-void
.end method

.method private startClassificationLocked(Landroid/content/ClipData;II)V
    .locals 10
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "userId"    # I
    .param p3, "deviceId"    # I

    .line 1073
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 1074
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v2, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    if-le v0, v2, :cond_1

    move-object v4, p1

    move v6, p2

    move v7, p3

    goto :goto_1

    .line 1080
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1082
    .local v8, "ident":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;

    move-result-object v0

    new-instance v2, Landroid/view/textclassifier/TextClassificationContext$Builder;

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-direct {v2, v4, v5}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v2

    .line 1083
    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    .local v5, "classifier":Landroid/view/textclassifier/TextClassifier;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1091
    nop

    .line 1092
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v5}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 1093
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    .line 1095
    return-void

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    .end local p1    # "clip":Landroid/content/ClipData;
    .end local p2    # "userId":I
    .end local p3    # "deviceId":I
    .local v4, "clip":Landroid/content/ClipData;
    .local v6, "userId":I
    .local v7, "deviceId":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1098
    return-void

    .line 1090
    .end local v4    # "clip":Landroid/content/ClipData;
    .end local v5    # "classifier":Landroid/view/textclassifier/TextClassifier;
    .end local v6    # "userId":I
    .end local v7    # "deviceId":I
    .restart local p1    # "clip":Landroid/content/ClipData;
    .restart local p2    # "userId":I
    .restart local p3    # "deviceId":I
    :catchall_0
    move-exception v0

    move-object v4, p1

    move v6, p2

    move v7, p3

    move-object p1, v0

    .end local p1    # "clip":Landroid/content/ClipData;
    .end local p2    # "userId":I
    .end local p3    # "deviceId":I
    .restart local v4    # "clip":Landroid/content/ClipData;
    .restart local v6    # "userId":I
    .restart local v7    # "deviceId":I
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1091
    throw p1

    .line 1074
    .end local v4    # "clip":Landroid/content/ClipData;
    .end local v6    # "userId":I
    .end local v7    # "deviceId":I
    .end local v8    # "ident":J
    .restart local p1    # "clip":Landroid/content/ClipData;
    .restart local p2    # "userId":I
    .restart local p3    # "deviceId":I
    :cond_3
    move-object v4, p1

    move v6, p2

    move v7, p3

    .line 1075
    .end local p1    # "clip":Landroid/content/ClipData;
    .end local p2    # "userId":I
    .end local p3    # "deviceId":I
    .restart local v4    # "clip":Landroid/content/ClipData;
    .restart local v6    # "userId":I
    .restart local v7    # "deviceId":I
    :goto_1
    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    .line 1077
    return-void
.end method

.method private updateConfig()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    const-string v1, "clipboard"

    const-string/jumbo v2, "show_access_notifications"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 276
    const-string v1, "clipboard"

    const-string v2, "allow_virtualdevice_silos"

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    .line 280
    const-string v1, "clipboard"

    const-string/jumbo v2, "max_classification_length"

    const/16 v3, 0x190

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getRelatedProfiles(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 904
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 906
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    .local v2, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 912
    nop

    .line 913
    return-object v2

    .line 911
    .end local v2    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 907
    :catch_0
    move-exception v2

    nop

    .line 908
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "ClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception calling UserManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    nop

    .line 911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 909
    const/4 v3, 0x0

    return-object v3

    .line 911
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 912
    throw v2
.end method

.method public onStart()V
    .locals 2

    .line 242
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService-IA;)V

    const-string v1, "clipboard"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 243
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->registerVirtualDeviceListener()V

    .line 244
    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 265
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 267
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPrimaryClipInternal(Landroid/content/ClipData;I)V
    .locals 3
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .line 930
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    .line 932
    monitor-exit v0

    .line 933
    return-void

    .line 932
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;I)V
    .locals 2
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "uid"    # I

    .line 997
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 999
    monitor-exit v0

    .line 1000
    return-void

    .line 999
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
