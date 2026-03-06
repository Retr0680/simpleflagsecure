.class Lcom/android/server/input/InputManagerService$Injector;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIoLooper:Landroid/os/Looper;

.field private final mLooper:Landroid/os/Looper;

.field private final mUEventManager:Lcom/android/server/input/UEventManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/UEventManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "ioLooper"    # Landroid/os/Looper;
    .param p4, "uEventManager"    # Lcom/android/server/input/UEventManager;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    .line 494
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    .line 495
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$Injector;->mIoLooper:Landroid/os/Looper;

    .line 496
    iput-object p4, p0, Lcom/android/server/input/InputManagerService$Injector;->mUEventManager:Lcom/android/server/input/UEventManager;

    .line 497
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getIoLooper()Landroid/os/Looper;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Injector;->mIoLooper:Landroid/os/Looper;

    return-object v0
.end method

.method getKeyboardBacklightController(Lcom/android/server/input/NativeInputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;
    .locals 3
    .param p1, "nativeService"    # Lcom/android/server/input/NativeInputManagerService;

    .line 525
    new-instance v0, Lcom/android/server/input/KeyboardBacklightController;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/input/KeyboardBacklightController;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;)V

    return-object v0
.end method

.method getLooper()Landroid/os/Looper;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method getNativeService(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;
    .locals 2
    .param p1, "service"    # Lcom/android/server/input/InputManagerService;

    .line 516
    new-instance v0, Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/input/NativeInputManagerService$NativeImpl;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/MessageQueue;)V

    return-object v0
.end method

.method getUEventManager()Lcom/android/server/input/UEventManager;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Injector;->mUEventManager:Lcom/android/server/input/UEventManager;

    return-object v0
.end method

.method registerLocalService(Lcom/android/server/input/InputManagerInternal;)V
    .locals 1
    .param p1, "localService"    # Lcom/android/server/input/InputManagerInternal;

    .line 520
    const-class v0, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 521
    return-void
.end method
