.class Lcom/android/server/companion/virtual/InputController;
.super Ljava/lang/Object;
.source "InputController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/InputController$NativeWrapper;,
        Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;,
        Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;,
        Lcom/android/server/companion/virtual/InputController$DeviceCreationException;,
        Lcom/android/server/companion/virtual/InputController$WaitForDevice;,
        Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;,
        Lcom/android/server/companion/virtual/InputController$PhysType;
    }
.end annotation


# static fields
.field static final NAVIGATION_TOUCHPAD_DEVICE_TYPE:Ljava/lang/String; = "touchNavigation"

.field static final PHYS_TYPE_DPAD:Ljava/lang/String; = "Dpad"

.field static final PHYS_TYPE_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field static final PHYS_TYPE_MOUSE:Ljava/lang/String; = "Mouse"

.field static final PHYS_TYPE_NAVIGATION_TOUCHPAD:Ljava/lang/String; = "NavigationTouchpad"

.field static final PHYS_TYPE_ROTARY_ENCODER:Ljava/lang/String; = "RotaryEncoder"

.field static final PHYS_TYPE_STYLUS:Ljava/lang/String; = "Stylus"

.field static final PHYS_TYPE_TOUCHSCREEN:Ljava/lang/String; = "Touchscreen"

.field private static final TAG:Ljava/lang/String; = "VirtualInputController"

.field private static final sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputDeviceDescriptors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

.field private final mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$01sEoYmFLrArypyzJcRPU3RVqhM(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->lambda$createDpad$1(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LU3qwNeZqBTpQt435BDblRAWSxE(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->lambda$createMouse$3(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Uu-r0qSTZ4oUo4yYfoRNcHCFv8Q(Landroid/os/Handler;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/virtual/InputController;->lambda$new$0(Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Uv1DNnuIOQk4S6cgtXSLvY3wmoM(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/companion/virtual/InputController;->lambda$createTouchscreen$4(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XRZ4I4aEkG5eqjgHu047xsm9Yzo(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/companion/virtual/InputController;->lambda$createNavigationTouchpad$5(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e7OjR5ys8FqU-mOd2TEfStRWlT8(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->lambda$createRotaryEncoder$7(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h4q6hXa3_j37gjmyGaYo4ibHyEc()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/companion/virtual/InputController;->lambda$addDeviceForTesting$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$kzjMsROvXK3A4Nscl_kfjh6nkIM(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/companion/virtual/InputController;->lambda$createStylus$6(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n7Xuh-Fem3ZZvob9nNb1xk3wyec(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->lambda$createKeyboard$2(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/companion/virtual/InputController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeCloseUinput(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/InputController;->nativeCloseUinput(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteButtonEvent(JIIJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteDpadKeyEvent(JIIJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteDpadKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteKeyEvent(JIIJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteRelativeEvent(JFFJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteRelativeEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteRotaryEncoderScrollEvent(JFJ)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->nativeWriteRotaryEncoderScrollEvent(JFJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteScrollEvent(JFFJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteScrollEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteStylusButtonEvent(JIIJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteStylusButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/android/server/companion/virtual/InputController;->nativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/android/server/companion/virtual/InputController;->nativeWriteTouchEvent(JIIIFFFFJ)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;)V
    .locals 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "windowManager"    # Landroid/view/WindowManager;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 111
    new-instance v1, Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-direct {v1}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;-><init>()V

    new-instance v5, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "windowManager":Landroid/view/WindowManager;
    .end local p3    # "attributionSource":Landroid/content/AttributionSource;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "windowManager":Landroid/view/WindowManager;
    .local v4, "attributionSource":Landroid/content/AttributionSource;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;-><init>(Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V

    .line 114
    return-void
.end method

.method constructor <init>(Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V
    .locals 1
    .param p1, "nativeWrapper"    # Lcom/android/server/companion/virtual/InputController$NativeWrapper;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowManager"    # Landroid/view/WindowManager;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "threadVerifier"    # Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 121
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 123
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 124
    const-class v0, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 125
    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    .line 126
    iput-object p4, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 127
    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    .line 128
    return-void
.end method

.method private closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "inputDeviceDescriptor"    # Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 236
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 237
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->closeUinput(J)V

    .line 238
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getPhys()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "phys":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerInternal;->unsetTypeAssociation(Ljava/lang/String;)V

    .line 246
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerInternal;->removeKeyboardLayoutAssociation(Ljava/lang/String;)V

    .line 249
    :cond_1
    return-void
.end method

.method private createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .param p5, "deviceToken"    # Landroid/os/IBinder;
    .param p6, "displayId"    # I
    .param p7, "phys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 801
    .local p8, "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    move-object/from16 v1, p5

    move-object/from16 v8, p7

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    invoke-interface {v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;->isValidThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    invoke-direct {p0, p2}, Lcom/android/server/companion/virtual/InputController;->validateDeviceName(Ljava/lang/String;)V

    .line 813
    move/from16 v7, p6

    invoke-direct {p0, v7, v8}, Lcom/android/server/companion/virtual/InputController;->setUniqueIdAssociation(ILjava/lang/String;)V

    .line 814
    :try_start_0
    new-instance v2, Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;III)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .local v2, "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    :try_start_1
    invoke-interface/range {p8 .. p8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 817
    .local v3, "ptr":J
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 825
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->waitForDeviceCreation()I

    move-result v10

    .line 827
    .local v10, "inputDeviceId":I
    new-instance v5, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;

    invoke-direct {v5, p0, v1}, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;-><init>(Lcom/android/server/companion/virtual/InputController;Landroid/os/IBinder;)V
    :try_end_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 829
    .local v5, "binderDeathRecipient":Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v1, v5, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 833
    nop

    .line 837
    nop

    .line 838
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_4
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 841
    .end local v2    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    nop

    .line 843
    iget-object v11, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 844
    :try_start_5
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    move v6, p1

    move-object v9, p2

    move/from16 v7, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;-><init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 849
    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->getMetricIdForInputType(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "metricId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 851
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 853
    :cond_0
    return-void

    .line 847
    .end local v0    # "metricId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 838
    .end local v3    # "ptr":J
    .end local v5    # "binderDeathRecipient":Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;
    .end local v10    # "inputDeviceId":I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 814
    .restart local v2    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_1

    .line 834
    .restart local v3    # "ptr":J
    :catch_1
    move-exception v0

    goto :goto_0

    .line 830
    .restart local v5    # "binderDeathRecipient":Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;
    .restart local v10    # "inputDeviceId":I
    :catch_2
    move-exception v0

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_7
    new-instance v6, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    const-string v7, "Client died before virtual device could be created."

    invoke-direct {v6, v7, v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .end local v3    # "ptr":J
    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "type":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    .end local p6    # "displayId":I
    .end local p7    # "phys":Ljava/lang/String;
    .end local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    throw v6
    :try_end_7
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 834
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "binderDeathRecipient":Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;
    .end local v10    # "inputDeviceId":I
    .restart local v2    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .restart local v3    # "ptr":J
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "type":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    .restart local p6    # "displayId":I
    .restart local p7    # "phys":Ljava/lang/String;
    .restart local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    :goto_0
    nop

    .line 835
    .local v0, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :try_start_8
    iget-object v5, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->closeUinput(J)V

    .line 836
    nop

    .end local v2    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "type":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    .end local p6    # "displayId":I
    .end local p7    # "phys":Ljava/lang/String;
    .end local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    throw v0

    .line 818
    .end local v0    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v2    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "type":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    .restart local p6    # "displayId":I
    .restart local p7    # "phys":Ljava/lang/String;
    .restart local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    :cond_1
    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A native error occurred when creating virtual input device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    .end local v2    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "type":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    .end local p6    # "displayId":I
    .end local p7    # "phys":Ljava/lang/String;
    .end local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 814
    .end local v3    # "ptr":J
    .restart local v2    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "type":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    .restart local p6    # "displayId":I
    .restart local p7    # "phys":Ljava/lang/String;
    .restart local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    :goto_1
    :try_start_9
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_a
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "type":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    .end local p6    # "displayId":I
    .end local p7    # "phys":Ljava/lang/String;
    .end local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    :goto_2
    throw v3
    :try_end_a
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_a .. :try_end_a} :catch_0

    .line 838
    .end local v2    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "type":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    .restart local p6    # "displayId":I
    .restart local p7    # "phys":Ljava/lang/String;
    .restart local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    :goto_3
    nop

    .line 839
    .restart local v0    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 840
    throw v0

    .line 802
    .end local v0    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Virtual device creation should happen on an auxiliary thread (e.g. binder thread) and not from the handler\'s thread."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createPhys(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .line 297
    sget-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "virtual%s:%d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMetricIdForInputType(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 856
    packed-switch p0, :pswitch_data_0

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No metric known for input type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualInputController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v0, 0x0

    return-object v0

    .line 870
    :pswitch_0
    const-string/jumbo v0, "virtual_devices.value_virtual_rotary_created_count"

    return-object v0

    .line 868
    :pswitch_1
    const-string/jumbo v0, "virtual_devices.value_virtual_stylus_created_count"

    return-object v0

    .line 866
    :pswitch_2
    const-string/jumbo v0, "virtual_devices.value_virtual_navigationtouchpad_created_count"

    return-object v0

    .line 864
    :pswitch_3
    const-string/jumbo v0, "virtual_devices.value_virtual_dpad_created_count"

    return-object v0

    .line 862
    :pswitch_4
    const-string/jumbo v0, "virtual_devices.value_virtual_touchscreen_created_count"

    return-object v0

    .line 860
    :pswitch_5
    const-string/jumbo v0, "virtual_devices.value_virtual_mouse_created_count"

    return-object v0

    .line 858
    :pswitch_6
    const-string/jumbo v0, "virtual_devices.value_virtual_keyboard_created_count"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$addDeviceForTesting$8()V
    .locals 0

    .line 455
    return-void
.end method

.method private synthetic lambda$createDpad$1(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$createKeyboard$2(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$createMouse$3(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$createNavigationTouchpad$5(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 7
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;
    .param p5, "height"    # I
    .param p6, "width"    # I

    .line 194
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "vendorId":I
    .end local p3    # "productId":I
    .end local p4    # "phys":Ljava/lang/String;
    .end local p5    # "height":I
    .end local p6    # "width":I
    .local v1, "deviceName":Ljava/lang/String;
    .local v2, "vendorId":I
    .local v3, "productId":I
    .local v4, "phys":Ljava/lang/String;
    .local v5, "height":I
    .local v6, "width":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createRotaryEncoder$7(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$createStylus$6(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 7
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;
    .param p5, "height"    # I
    .param p6, "width"    # I

    .line 208
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "vendorId":I
    .end local p3    # "productId":I
    .end local p4    # "phys":Ljava/lang/String;
    .end local p5    # "height":I
    .end local p6    # "width":I
    .local v1, "deviceName":Ljava/lang/String;
    .local v2, "vendorId":I
    .local v3, "productId":I
    .local v4, "phys":Ljava/lang/String;
    .local v5, "height":I
    .local v6, "width":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createTouchscreen$4(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 7
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;
    .param p5, "height"    # I
    .param p6, "width"    # I

    .line 182
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "vendorId":I
    .end local p3    # "productId":I
    .end local p4    # "phys":Ljava/lang/String;
    .end local p5    # "height":I
    .end local p6    # "width":I
    .local v1, "deviceName":Ljava/lang/String;
    .local v2, "vendorId":I
    .local v3, "productId":I
    .local v4, "phys":Ljava/lang/String;
    .local v5, "height":I
    .local v6, "width":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$new$0(Landroid/os/Handler;)Z
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .line 113
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static native nativeCloseUinput(J)V
.end method

.method private static native nativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
.end method

.method private static native nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
.end method

.method private static native nativeWriteButtonEvent(JIIJ)Z
.end method

.method private static native nativeWriteDpadKeyEvent(JIIJ)Z
.end method

.method private static native nativeWriteKeyEvent(JIIJ)Z
.end method

.method private static native nativeWriteRelativeEvent(JFFJ)Z
.end method

.method private static native nativeWriteRotaryEncoderScrollEvent(JFJ)Z
.end method

.method private static native nativeWriteScrollEvent(JFFJ)Z
.end method

.method private static native nativeWriteStylusButtonEvent(JIIJ)Z
.end method

.method private static native nativeWriteStylusMotionEvent(JIIIIIIIJ)Z
.end method

.method private static native nativeWriteTouchEvent(JIIIFFFFJ)Z
.end method

.method private setUniqueIdAssociation(ILjava/lang/String;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "phys"    # Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 302
    .local v0, "displayUniqueId":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/hardware/input/InputManagerGlobal;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private validateDeviceName(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    invoke-static {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->-$$Nest$fgetmName(Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    new-instance v2, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input device name already in use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "deviceName":Ljava/lang/String;
    throw v2

    .line 293
    .end local v1    # "i":I
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "deviceName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 287
    .restart local v1    # "i":I
    :cond_1
    nop

    .line 293
    .end local v1    # "i":I
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addDeviceForTesting(Landroid/os/IBinder;JIILjava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "deviceToken"    # Landroid/os/IBinder;
    .param p2, "ptr"    # J
    .param p4, "type"    # I
    .param p5, "displayId"    # I
    .param p6, "phys"    # Ljava/lang/String;
    .param p7, "deviceName"    # Ljava/lang/String;
    .param p8, "inputDeviceId"    # I

    .line 453
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    new-instance v5, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;-><init>()V

    move-wide v3, p2

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;-><init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    monitor-exit v1

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method close()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 133
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 136
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 137
    .local v3, "token":Landroid/os/IBinder;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 138
    .local v4, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 139
    invoke-direct {p0, v3, v4}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    goto :goto_0

    .line 141
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;>;"
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method createDpad(Ljava/lang/String;IILandroid/os/IBinder;I)V
    .locals 10
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "deviceToken"    # Landroid/os/IBinder;
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 146
    const-string v0, "Dpad"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "phys":Ljava/lang/String;
    new-instance v1, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "vendorId":I
    .end local p3    # "productId":I
    .local v3, "deviceName":Ljava/lang/String;
    .local v4, "vendorId":I
    .local v5, "productId":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v2, 0x4

    move v7, p5

    move-object v9, v1

    move-object v8, v6

    move-object v1, p0

    move-object v6, p4

    .end local p4    # "deviceToken":Landroid/os/IBinder;
    .end local p5    # "displayId":I
    .local v6, "deviceToken":Landroid/os/IBinder;
    .local v7, "displayId":I
    .local v8, "phys":Ljava/lang/String;
    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 150
    return-void
.end method

.method createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "deviceToken"    # Landroid/os/IBinder;
    .param p5, "displayId"    # I
    .param p6, "languageTag"    # Ljava/lang/String;
    .param p7, "layoutType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 155
    const-string v0, "Keyboard"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "phys":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual {v0, v8, v10, v11}, Lcom/android/server/input/InputManagerInternal;->addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v8

    move-object v1, v9

    .end local v8    # "phys":Ljava/lang/String;
    .local v6, "phys":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6    # "phys":Ljava/lang/String;
    .restart local v8    # "phys":Ljava/lang/String;
    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    nop

    .line 166
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v8    # "phys":Ljava/lang/String;
    .restart local v6    # "phys":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v8, v6

    .line 163
    .end local v6    # "phys":Ljava/lang/String;
    .local v0, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v8    # "phys":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v2, v8}, Lcom/android/server/input/InputManagerInternal;->removeKeyboardLayoutAssociation(Ljava/lang/String;)V

    .line 164
    throw v0
.end method

.method createMouse(Ljava/lang/String;IILandroid/os/IBinder;I)V
    .locals 10
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "deviceToken"    # Landroid/os/IBinder;
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 170
    const-string v0, "Mouse"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "phys":Ljava/lang/String;
    new-instance v1, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "vendorId":I
    .end local p3    # "productId":I
    .local v3, "deviceName":Ljava/lang/String;
    .local v4, "vendorId":I
    .local v5, "productId":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v2, 0x2

    move v7, p5

    move-object v9, v1

    move-object v8, v6

    move-object v1, p0

    move-object v6, p4

    .end local p4    # "deviceToken":Landroid/os/IBinder;
    .end local p5    # "displayId":I
    .local v6, "deviceToken":Landroid/os/IBinder;
    .local v7, "displayId":I
    .local v8, "phys":Ljava/lang/String;
    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 174
    return-void
.end method

.method createNavigationTouchpad(Ljava/lang/String;IILandroid/os/IBinder;III)V
    .locals 10
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "deviceToken"    # Landroid/os/IBinder;
    .param p5, "displayId"    # I
    .param p6, "height"    # I
    .param p7, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 189
    const-string v0, "NavigationTouchpad"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, "phys":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    const-string/jumbo v1, "touchNavigation"

    invoke-virtual {v0, v8, v1}, Lcom/android/server/input/InputManagerInternal;->setTypeAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_0
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda7;
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p6

    move-object v6, v8

    move-object v1, v9

    move/from16 v8, p7

    .end local v8    # "phys":Ljava/lang/String;
    .local v6, "phys":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v6

    .end local v6    # "phys":Ljava/lang/String;
    .restart local v8    # "phys":Ljava/lang/String;
    const/4 v2, 0x5

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 199
    nop

    .line 200
    return-void

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v8    # "phys":Ljava/lang/String;
    .restart local v6    # "phys":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v8, v6

    .line 197
    .end local v6    # "phys":Ljava/lang/String;
    .local v0, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v8    # "phys":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v2, v8}, Lcom/android/server/input/InputManagerInternal;->unsetTypeAssociation(Ljava/lang/String;)V

    .line 198
    throw v0
.end method

.method createRotaryEncoder(Ljava/lang/String;IILandroid/os/IBinder;I)V
    .locals 10
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "deviceToken"    # Landroid/os/IBinder;
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 214
    const-string v0, "RotaryEncoder"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "phys":Ljava/lang/String;
    new-instance v1, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "vendorId":I
    .end local p3    # "productId":I
    .local v3, "deviceName":Ljava/lang/String;
    .local v4, "vendorId":I
    .local v5, "productId":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v2, 0x7

    move v7, p5

    move-object v9, v1

    move-object v8, v6

    move-object v1, p0

    move-object v6, p4

    .end local p4    # "deviceToken":Landroid/os/IBinder;
    .end local p5    # "displayId":I
    .local v6, "deviceToken":Landroid/os/IBinder;
    .local v7, "displayId":I
    .local v8, "phys":Ljava/lang/String;
    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 219
    return-void
.end method

.method createStylus(Ljava/lang/String;IILandroid/os/IBinder;III)V
    .locals 10
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "deviceToken"    # Landroid/os/IBinder;
    .param p5, "displayId"    # I
    .param p6, "height"    # I
    .param p7, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 205
    const-string v0, "Stylus"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "phys":Ljava/lang/String;
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda8;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p6

    move-object v6, v8

    move-object v1, v9

    move/from16 v8, p7

    .end local v8    # "phys":Ljava/lang/String;
    .local v6, "phys":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)V

    move-object v8, v6

    .end local v6    # "phys":Ljava/lang/String;
    .restart local v8    # "phys":Ljava/lang/String;
    const/4 v2, 0x6

    move-object v1, p0

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 210
    return-void
.end method

.method createTouchscreen(Ljava/lang/String;IILandroid/os/IBinder;III)V
    .locals 10
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "deviceToken"    # Landroid/os/IBinder;
    .param p5, "displayId"    # I
    .param p6, "height"    # I
    .param p7, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 179
    const-string v0, "Touchscreen"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "phys":Ljava/lang/String;
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p6

    move-object v6, v8

    move-object v1, v9

    move/from16 v8, p7

    .end local v8    # "phys":Ljava/lang/String;
    .local v6, "phys":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)V

    move-object v8, v6

    .end local v6    # "phys":Ljava/lang/String;
    .restart local v8    # "phys":Ljava/lang/String;
    const/4 v2, 0x3

    move-object v1, p0

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 184
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "fout"    # Ljava/io/PrintWriter;

    .line 433
    const-string v0, "    InputController: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_0
    const-string v1, "      Active descriptors: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 438
    .local v2, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        ptr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          creationOrder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getCreationOrderNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          phys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getPhys()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          inputDeviceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getInputDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    .end local v2    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 447
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 436
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 447
    .end local v1    # "i":I
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 380
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 383
    .local v1, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-eqz v1, :cond_0

    .line 387
    const-class v2, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerInternal;

    .line 388
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v3

    .line 387
    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerInternal;->getCursorPosition(I)Landroid/graphics/PointF;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 389
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 384
    .restart local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not get cursor position for input device for given token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v2

    .line 389
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getInputDeviceDescriptors()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 462
    .local v0, "inputDeviceDescriptors":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;>;"
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 464
    monitor-exit v1

    .line 465
    return-object v0

    .line 464
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getInputDeviceId(Landroid/os/IBinder;)I
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 255
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 257
    .local v1, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getInputDeviceId()I

    move-result v2

    monitor-exit v0

    return v2

    .line 261
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 258
    .restart local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not get device id for given token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v2

    .line 261
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseButtonEvent;

    .line 330
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 333
    .local v0, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-nez v0, :cond_0

    .line 334
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 338
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 336
    .restart local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 337
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getButtonCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 336
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeButtonEvent(JIIJ)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 338
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualKeyEvent;

    .line 306
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 309
    .local v0, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-nez v0, :cond_0

    .line 310
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 314
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 312
    .restart local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 313
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 312
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeDpadKeyEvent(JIIJ)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 314
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualKeyEvent;

    .line 318
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 321
    .local v0, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-nez v0, :cond_0

    .line 322
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 326
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 324
    .restart local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 325
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 324
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeKeyEvent(JIIJ)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 326
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseRelativeEvent;

    .line 356
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 359
    .local v0, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-nez v0, :cond_0

    .line 360
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 364
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 362
    .restart local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 363
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeX()F

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeY()F

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 362
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeRelativeEvent(JFFJ)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 364
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;

    .line 420
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 423
    .local v0, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-nez v0, :cond_0

    .line 424
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 429
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 426
    .restart local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 427
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->getScrollAmount()F

    move-result v5

    .line 428
    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->getEventTimeNanos()J

    move-result-wide v6

    .line 426
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeRotaryEncoderScrollEvent(JFJ)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 429
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseScrollEvent;

    .line 368
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 371
    .local v0, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-nez v0, :cond_0

    .line 372
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 376
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 374
    .restart local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 375
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getXAxisMovement()F

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getYAxisMovement()F

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 374
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeScrollEvent(JFFJ)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 376
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualStylusButtonEvent;

    .line 407
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 410
    .local v0, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-nez v0, :cond_0

    .line 411
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 415
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 413
    .restart local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 414
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getButtonCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 413
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeStylusButtonEvent(JIIJ)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 415
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualStylusMotionEvent;

    .line 393
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 394
    :try_start_0
    iget-object v0, v1, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 396
    .local v0, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-nez v0, :cond_0

    .line 397
    monitor-exit v2

    const/4 v2, 0x0

    return v2

    .line 403
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 399
    .restart local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    iget-object v4, v1, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v5

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getToolType()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getX()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getY()I

    move-result v10

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getPressure()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getTiltX()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getTiltY()I

    move-result v13

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getEventTimeNanos()J

    move-result-wide v14

    .line 399
    invoke-virtual/range {v4 .. v15}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeStylusMotionEvent(JIIIIIIIJ)Z

    move-result v4

    monitor-exit v2

    return v4

    .line 403
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualTouchEvent;

    .line 342
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 343
    :try_start_0
    iget-object v0, v1, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 345
    .local v0, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-nez v0, :cond_0

    .line 346
    monitor-exit v2

    const/4 v2, 0x0

    return v2

    .line 352
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 348
    .restart local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    iget-object v4, v1, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v5

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getPointerId()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getToolType()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getAction()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getX()F

    move-result v10

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getY()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getPressure()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getMajorAxisSize()F

    move-result v13

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getEventTimeNanos()J

    move-result-wide v14

    .line 348
    invoke-virtual/range {v4 .. v15}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeTouchEvent(JIIIFFFFJ)Z

    move-result v4

    monitor-exit v2

    return v4

    .line 352
    .end local v0    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setDisplayEligibilityForPointerCapture(ZI)V
    .locals 1
    .param p1, "isEligible"    # Z
    .param p2, "displayId"    # I

    .line 273
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/input/InputManagerInternal;->setDisplayEligibilityForPointerCapture(IZ)V

    .line 274
    return-void
.end method

.method setDisplayImePolicy(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "policy"    # I

    .line 277
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->setDisplayImePolicy(II)V

    .line 278
    return-void
.end method

.method setMouseScalingEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "displayId"    # I

    .line 269
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->setMouseScalingEnabled(ZI)V

    .line 270
    return-void
.end method

.method setShowPointerIcon(ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "displayId"    # I

    .line 265
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->setPointerIconVisible(ZI)V

    .line 266
    return-void
.end method

.method unregisterInputDevice(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 222
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 225
    .local v1, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-nez v1, :cond_0

    .line 226
    const-string v2, "VirtualInputController"

    const-string v3, "Could not unregister input device for given token."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 228
    .restart local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    .line 230
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :goto_0
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
