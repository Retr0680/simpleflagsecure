.class public Lcom/android/server/accessibility/MouseKeysInterceptor;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MouseKeysInterceptor.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final INTERVAL_MILLIS:I = 0xa

.field private static final KEY_NOT_SET:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MouseKeysInterceptor"

.field private static final MESSAGE_MOVE_MOUSE_POINTER:I = 0x1

.field private static final MESSAGE_SCROLL_MOUSE_POINTER:I = 0x2

.field public static final MOUSE_POINTER_MOVEMENT_STEP:F = 1.8f

.field public static final MOUSE_SCROLL_STEP:F = 0.2f


# instance fields
.field private mActiveInputDeviceId:I

.field private mActiveMoveKey:I

.field private mActiveScrollKey:I

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mCreateVirtualMouseThread:Ljava/lang/Thread;

.field private final mDeviceKeyCodeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private mLastTimeKeyActionPerformed:J

.field private mScrollToggleOn:Z

.field mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

.field private mVirtualMouse:Landroid/hardware/input/VirtualMouse;


# direct methods
.method public static synthetic $r8$lambda$bmlvUec6jxm8e9vAdANaoGIFYyk(Lcom/android/server/accessibility/MouseKeysInterceptor;Landroid/view/KeyEvent;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->lambda$onKeyEvent$1(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dSqd1rgrVUZV5NMqrkklERpGuZ0(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wk5OZrrrRXLaJvhXFs3Q-lNgiRo(Lcom/android/server/accessibility/MouseKeysInterceptor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->lambda$onDestroy$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 72
    const-string v0, "MouseKeysInterceptor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/hardware/input/InputManager;Landroid/os/Looper;I)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "inputManager"    # Landroid/hardware/input/InputManager;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "displayId"    # I

    .line 218
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    .line 103
    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 114
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    .line 123
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    .line 219
    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 220
    iput-object p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    .line 221
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p4}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCreateVirtualMouseThread:Ljava/lang/Thread;

    .line 229
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCreateVirtualMouseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 233
    return-void
.end method

.method private createVirtualMouse(I)Landroid/hardware/input/VirtualMouse;
    .locals 4
    .param p1, "displayId"    # I

    .line 461
    nop

    .line 462
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 463
    .local v0, "localVdm":Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder;

    invoke-direct {v1}, Landroid/companion/virtual/VirtualDeviceParams$Builder;-><init>()V

    .line 464
    const-string v2, "Mouse Keys Virtual Device"

    invoke-virtual {v1, v2}, Landroid/companion/virtual/VirtualDeviceParams$Builder;->setName(Ljava/lang/String;)Landroid/companion/virtual/VirtualDeviceParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams$Builder;->build()Landroid/companion/virtual/VirtualDeviceParams;

    move-result-object v1

    .line 463
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->createVirtualDevice(Landroid/companion/virtual/VirtualDeviceParams;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    .line 465
    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    new-instance v2, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-direct {v2}, Landroid/hardware/input/VirtualMouseConfig$Builder;-><init>()V

    .line 467
    const-string v3, "Mouse Keys Virtual Mouse"

    invoke-virtual {v2, v3}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 468
    invoke-virtual {v2, p1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 469
    invoke-virtual {v2}, Landroid/hardware/input/VirtualMouseConfig$Builder;->build()Landroid/hardware/input/VirtualMouseConfig;

    move-result-object v2

    .line 465
    invoke-virtual {v1, v2}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;

    move-result-object v1

    .line 470
    .local v1, "virtualMouse":Landroid/hardware/input/VirtualMouse;
    return-object v1
.end method

.method private isMouseButtonKey(ILandroid/view/InputDevice;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "inputDevice"    # Landroid/view/InputDevice;

    .line 443
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    nop

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 444
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 443
    :goto_1
    return v0
.end method

.method private isMouseKey(II)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "deviceId"    # I

    .line 438
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 439
    .local v0, "keyCodeToEnumMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    return v1
.end method

.method private isMouseScrollKey(ILandroid/view/InputDevice;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "inputDevice"    # Landroid/view/InputDevice;

    .line 448
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    nop

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 449
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    nop

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 450
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    nop

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 451
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 448
    :goto_1
    return v0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->createVirtualMouse(I)Landroid/hardware/input/VirtualMouse;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    .line 228
    return-void
.end method

.method private synthetic lambda$onDestroy$2()V
    .locals 2

    .line 621
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 622
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    .line 623
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 624
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 625
    return-void
.end method

.method private synthetic lambda$onKeyEvent$1(Landroid/view/KeyEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->onKeyEventInternal(Landroid/view/KeyEvent;I)V

    .line 489
    return-void
.end method

.method private onKeyEventInternal(Landroid/view/KeyEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 494
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 495
    .local v0, "isDown":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 496
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    .line 497
    iget-object v3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    iget v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 499
    .local v3, "inputDevice":Landroid/view/InputDevice;
    iget-object v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 500
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->initializeDeviceToEnumMap(Landroid/view/InputDevice;)V

    .line 503
    :cond_1
    iget v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    invoke-direct {p0, v2, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isMouseKey(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 505
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    goto/16 :goto_2

    .line 506
    :cond_2
    const/4 v4, 0x2

    const-string v5, "MouseKeysInterceptor"

    const/4 v6, -0x1

    if-eqz v0, :cond_9

    .line 507
    sget-object v7, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v7, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v7

    if-ne v2, v7, :cond_4

    .line 508
    iget-boolean v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    xor-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    .line 509
    sget-boolean v1, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scroll toggle "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-eqz v4, :cond_3

    const-string v4, "ON"

    goto :goto_1

    :cond_3
    const-string v4, "OFF"

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 512
    :cond_4
    sget-object v5, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 513
    const/16 v4, 0xb

    invoke-direct {p0, v1, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    goto/16 :goto_2

    .line 517
    :cond_5
    sget-object v5, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v5

    if-ne v2, v5, :cond_6

    .line 518
    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    goto/16 :goto_2

    .line 522
    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isMouseButtonKey(ILandroid/view/InputDevice;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 523
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->performMouseButtonAction(I)V

    goto :goto_2

    .line 524
    :cond_7
    iget-boolean v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-eqz v5, :cond_8

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isMouseScrollKey(ILandroid/view/InputDevice;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 527
    iget v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    if-ne v1, v6, :cond_c

    .line 528
    iput v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    .line 529
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 530
    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 536
    :cond_8
    iget v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    if-ne v4, v6, :cond_c

    .line 537
    iput v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 538
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 539
    iget-object v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 544
    :cond_9
    iget v7, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    if-ne v7, v2, :cond_a

    .line 546
    iput v6, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 547
    iget-object v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 548
    :cond_a
    iget v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    if-ne v1, v2, :cond_b

    .line 550
    iput v6, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    .line 551
    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 553
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping event with key code: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\', with no matching down event from deviceId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_c
    :goto_2
    return-void
.end method

.method private performMouseButtonAction(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .line 340
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v0

    .line 342
    .local v0, "mouseKeyEvent":Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    .line 345
    move v1, v2

    goto :goto_0

    .line 344
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 343
    :pswitch_1
    const/4 v1, 0x1

    .line 345
    :goto_0
    nop

    .line 347
    .local v1, "buttonCode":I
    if-eq v1, v2, :cond_0

    .line 348
    const/16 v3, 0xb

    invoke-direct {p0, v1, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    .line 350
    const/16 v3, 0xc

    invoke-direct {p0, v1, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    .line 353
    :cond_0
    sget-boolean v3, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 354
    const-string v3, "MouseKeysInterceptor"

    if-ne v1, v2, :cond_1

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button code is unknown for mouse key event: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performed mouse key event: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for button action"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performMousePointerAction(I)V
    .locals 7
    .param p1, "keyCode"    # I

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "x":F
    const/4 v1, 0x0

    .line 389
    .local v1, "y":F
    iget v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v2, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v2

    .line 392
    .local v2, "mouseKeyEvent":Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const v4, -0x4019999a    # -1.8f

    const v5, 0x3fe66666    # 1.8f

    const/high16 v6, 0x40000000    # 2.0f

    packed-switch v3, :pswitch_data_0

    .line 426
    const/4 v0, 0x0

    .line 427
    const/4 v1, 0x0

    goto :goto_0

    .line 403
    :pswitch_0
    invoke-static {v6}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v3

    div-float v0, v5, v3

    .line 404
    invoke-static {v6}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v3

    div-float v1, v5, v3

    .line 405
    goto :goto_0

    .line 398
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-nez v3, :cond_0

    .line 399
    const v1, 0x3fe66666    # 1.8f

    goto :goto_0

    .line 394
    :pswitch_2
    invoke-static {v6}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v3

    div-float v0, v4, v3

    .line 395
    invoke-static {v6}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v3

    div-float v1, v5, v3

    .line 396
    goto :goto_0

    .line 410
    :pswitch_3
    const v0, 0x3fe66666    # 1.8f

    .line 411
    goto :goto_0

    .line 407
    :pswitch_4
    const v0, -0x4019999a    # -1.8f

    .line 408
    goto :goto_0

    .line 422
    :pswitch_5
    invoke-static {v6}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v3

    div-float v0, v5, v3

    .line 423
    invoke-static {v6}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v3

    div-float v1, v4, v3

    .line 424
    goto :goto_0

    .line 417
    :pswitch_6
    iget-boolean v3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-nez v3, :cond_0

    .line 418
    const v1, -0x4019999a    # -1.8f

    goto :goto_0

    .line 413
    :pswitch_7
    invoke-static {v6}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v3

    div-float v0, v4, v3

    .line 414
    invoke-static {v6}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v3

    div-float v1, v4, v3

    .line 415
    nop

    .line 430
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseRelativeEvent(FF)V

    .line 431
    sget-boolean v3, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performed mouse key event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for relative pointer movement (x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MouseKeysInterceptor"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private performMouseScrollAction(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .line 295
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v0

    .line 297
    .local v0, "mouseKeyEvent":Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    const/4 v1, 0x0

    .line 298
    .local v1, "x":F
    const/4 v2, 0x0

    .line 300
    .local v2, "y":F
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 314
    :pswitch_0
    const/4 v1, 0x0

    .line 315
    const/4 v2, 0x0

    goto :goto_0

    .line 305
    :pswitch_1
    const v2, -0x41b33333    # -0.2f

    .line 306
    goto :goto_0

    .line 311
    :pswitch_2
    const v1, -0x41b33333    # -0.2f

    .line 312
    goto :goto_0

    .line 308
    :pswitch_3
    const v1, 0x3e4ccccd    # 0.2f

    .line 309
    goto :goto_0

    .line 302
    :pswitch_4
    const v2, 0x3e4ccccd    # 0.2f

    .line 303
    nop

    .line 318
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseScrollEvent(FF)V

    .line 319
    sget-boolean v3, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performed mouse key event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for scroll action with axis movement (x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MouseKeysInterceptor"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendVirtualMouseButtonEvent(II)V
    .locals 2
    .param p1, "buttonCode"    # I
    .param p2, "actionCode"    # I

    .line 262
    invoke-direct {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    .line 263
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v1, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    invoke-direct {v1}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;-><init>()V

    .line 264
    invoke-virtual {v1, p2}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->setAction(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1, p1}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->setButtonCode(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->build()Landroid/hardware/input/VirtualMouseButtonEvent;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Landroid/hardware/input/VirtualMouse;->sendButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)V

    .line 268
    return-void
.end method

.method private sendVirtualMouseRelativeEvent(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 252
    invoke-direct {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    .line 253
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v1, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    invoke-direct {v1}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;-><init>()V

    .line 254
    invoke-virtual {v1, p1}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->setRelativeX(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    move-result-object v1

    .line 255
    invoke-virtual {v1, p2}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->setRelativeY(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->build()Landroid/hardware/input/VirtualMouseRelativeEvent;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Landroid/hardware/input/VirtualMouse;->sendRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)V

    .line 258
    return-void
.end method

.method private sendVirtualMouseScrollEvent(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 272
    invoke-direct {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    .line 273
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v1, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    invoke-direct {v1}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;-><init>()V

    .line 274
    invoke-virtual {v1, p1}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->setXAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    move-result-object v1

    .line 275
    invoke-virtual {v1, p2}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->setYAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->build()Landroid/hardware/input/VirtualMouseScrollEvent;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Landroid/hardware/input/VirtualMouse;->sendScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)V

    .line 278
    return-void
.end method

.method private waitForVirtualMouseCreation()V
    .locals 2

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCreateVirtualMouseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    nop

    .line 248
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 246
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 569
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 576
    const-string v0, "MouseKeysInterceptor"

    const-string v1, "Unexpected message type"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v0, 0x0

    return v0

    .line 573
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor;->handleMouseMessage(JII)V

    goto :goto_0

    .line 571
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->handleMouseMessage(JII)V

    .line 580
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMouseMessage(JII)V
    .locals 4
    .param p1, "currentTime"    # J
    .param p3, "activeKey"    # I
    .param p4, "messageType"    # I

    .line 602
    iget-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 603
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 604
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->performMousePointerAction(I)V

    goto :goto_0

    .line 605
    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 606
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->performMouseScrollAction(I)V

    .line 608
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 610
    :cond_2
    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 614
    :cond_3
    return-void
.end method

.method public initializeDeviceToEnumMap(Landroid/view/InputDevice;)V
    .locals 7
    .param p1, "inputDevice"    # Landroid/view/InputDevice;

    .line 200
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v0

    .line 201
    .local v0, "deviceId":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 202
    .local v1, "keyCodeToEnumMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;>;"
    invoke-static {}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 203
    .local v5, "mouseKeyEventType":Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v6

    .line 204
    .local v6, "keyCode":I
    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    .end local v5    # "mouseKeyEventType":Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .end local v6    # "keyCode":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->close()V

    .line 631
    :cond_0
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 635
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .line 651
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 653
    .local v0, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->initializeDeviceToEnumMap(Landroid/view/InputDevice;)V

    .line 656
    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 639
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 640
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 482
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MouseKeysInterceptor.onKeyEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    return-void
.end method
