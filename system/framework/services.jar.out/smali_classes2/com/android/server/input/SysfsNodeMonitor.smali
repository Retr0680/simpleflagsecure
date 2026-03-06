.class final Lcom/android/server/input/SysfsNodeMonitor;
.super Ljava/lang/Object;
.source "SysfsNodeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SYSFS_NODE_MONITORING_TIMEOUT_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private final mNative:Lcom/android/server/input/NativeInputManagerService;

.field private final mUEventListenersByDeviceId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventManager:Lcom/android/server/input/UEventManager;


# direct methods
.method public static synthetic $r8$lambda$jsLQvX7rv9bx_iMb9KuwO8ozKj8(Lcom/android/server/input/SysfsNodeMonitor;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->lambda$startMonitoring$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/input/SysfsNodeMonitor;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNative(Lcom/android/server/input/SysfsNodeMonitor;)Lcom/android/server/input/NativeInputManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartMonitoring(Lcom/android/server/input/SysfsNodeMonitor;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->startMonitoring(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopMonitoring(Lcom/android/server/input/SysfsNodeMonitor;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->stopMonitoring(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Lcom/android/server/input/SysfsNodeMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeService"    # Lcom/android/server/input/NativeInputManagerService;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "uEventManager"    # Lcom/android/server/input/UEventManager;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventListenersByDeviceId:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Lcom/android/server/input/SysfsNodeMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/SysfsNodeMonitor$1;-><init>(Lcom/android/server/input/SysfsNodeMonitor;)V

    iput-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 61
    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p4, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventManager:Lcom/android/server/input/UEventManager;

    .line 65
    return-void
.end method

.method private static formatDevPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 132
    if-eqz p0, :cond_0

    const-string v0, "/sys"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$startMonitoring$0(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->stopMonitoring(I)V

    return-void
.end method

.method private startMonitoring(I)V
    .locals 7
    .param p1, "deviceId"    # I

    .line 93
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 94
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    sget-boolean v1, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not listening to sysfs node changes for internal input device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    return-void

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, p1}, Lcom/android/server/input/NativeInputManagerService;->getSysfsRootPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/input/SysfsNodeMonitor;->formatDevPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "sysfsRootPath":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 106
    sget-boolean v2, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 107
    sget-object v2, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sysfs node not found for external input device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_3
    return-void

    .line 111
    :cond_4
    sget-boolean v2, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 112
    sget-object v2, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start listening to sysfs node changes for input device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_5
    new-instance v2, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

    invoke-direct {v2, p0}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;-><init>(Lcom/android/server/input/SysfsNodeMonitor;)V

    .line 116
    .local v2, "listener":Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;
    iget-object v3, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventListenersByDeviceId:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    iget-object v3, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventManager:Lcom/android/server/input/UEventManager;

    invoke-interface {v3, v2, v1}, Lcom/android/server/input/UEventManager;->addListener(Lcom/android/server/input/UEventManager$UEventListener;Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v3, v1}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/SysfsNodeMonitor;I)V

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method

.method private stopMonitoring(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .line 136
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventListenersByDeviceId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

    .line 137
    .local v0, "listener":Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;
    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    sget-boolean v1, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 141
    sget-object v1, Lcom/android/server/input/SysfsNodeMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop listening to sysfs node changes for input device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventManager:Lcom/android/server/input/UEventManager;

    invoke-interface {v1, v0}, Lcom/android/server/input/UEventManager;->removeListener(Lcom/android/server/input/UEventManager$UEventListener;)V

    .line 144
    return-void
.end method


# virtual methods
.method public systemRunning()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    .line 69
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget-object v2, p0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 71
    .local v3, "deviceId":I
    iget-object v4, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-interface {v4, v3}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceAdded(I)V

    .line 70
    .end local v3    # "deviceId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method
