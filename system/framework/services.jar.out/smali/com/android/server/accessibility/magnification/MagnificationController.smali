.class public Lcom/android/server/accessibility/magnification/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;
.implements Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;,
        Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;,
        Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationScaleStepProvider;,
        Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;,
        Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;,
        Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;,
        Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;,
        Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;,
        Lcom/android/server/accessibility/magnification/MagnificationController$PanDirection;,
        Lcom/android/server/accessibility/magnification/MagnificationController$ZoomDirection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final KEYBOARD_REPEAT_INTERVAL_MS:I = 0x3c

.field public static final PAN_DIRECTION_DOWN:I = 0x3

.field public static final PAN_DIRECTION_LEFT:I = 0x0

.field public static final PAN_DIRECTION_RIGHT:I = 0x1

.field public static final PAN_DIRECTION_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MagnificationController"

.field public static final ZOOM_DIRECTION_IN:I = 0x0

.field public static final ZOOM_DIRECTION_OUT:I = 0x1


# instance fields
.field private final mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mActivePanDirections:[Z

.field private mActivePanDisplay:I

.field private mActiveZoomDirection:I

.field private mActiveZoomDisplay:I

.field private final mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

.field private mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field private final mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialKeyboardRepeatIntervalMs:I

.field private final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field private final mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

.field private mLastPannedTime:J

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationCapabilities:I

.field private mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

.field private final mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;

.field private mRepeatKeysEnabled:Z

.field private final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field private final mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

.field private final mSupportWindowMagnification:Z

.field private mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

.field private final mTempPoint:Landroid/graphics/PointF;

.field private final mTransitionModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I

.field private final mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;


# direct methods
.method public static synthetic $r8$lambda$-JjdcX8hsnJgy97WdKBAPK8G4lU(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->maybeContinueZoom()V

    return-void
.end method

.method public static synthetic $r8$lambda$R3k8N3qbC-xGQ3K5bFGkfo5pSVk(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->maybeContinuePan()V

    return-void
.end method

.method public static synthetic $r8$lambda$RK4GNS1IfZDRx9pPFHvEPIoaYjc(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->lambda$getFullScreenMagnificationController$1()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hDLBh-fi6zCVpWqZQdsbmMSqy4A(Lcom/android/server/accessibility/magnification/MagnificationController;IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationController;->lambda$transitionMagnificationConfigMode$0(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAms(Lcom/android/server/accessibility/magnification/MagnificationController;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDisableMagnificationCallbackLocked(Lcom/android/server/accessibility/magnification/MagnificationController;ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTransitionState(Lcom/android/server/accessibility/magnification/MagnificationController;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMagnificationUIControls(Lcom/android/server/accessibility/magnification/MagnificationController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;)V
    .locals 7
    .param p1, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "fullScreenMagnificationController"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .param p5, "magnificationConnectionManager"    # Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .param p6, "scaleProvider"    # Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;
    .param p7, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p8, "looper"    # Landroid/os/Looper;
    .param p9, "systemClock"    # Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;)V

    .line 359
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 360
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 361
    move-object/from16 v1, p9

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    .line 362
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;)V
    .locals 5
    .param p1, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "scaleProvider"    # Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;
    .param p5, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "looper"    # Landroid/os/Looper;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 121
    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    .line 122
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    .line 126
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    .line 127
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    .line 129
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    .line 130
    iput v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    .line 132
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    .line 137
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    .line 139
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    .line 142
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 143
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 145
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 147
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 333
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 334
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 335
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    .line 336
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 337
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 338
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    .line 339
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController-IA;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    .line 340
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 341
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->setUiChangesForAccessibilityCallbacks(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;)V

    .line 342
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.window_magnification"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    .line 344
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationScaleStepProvider;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationScaleStepProvider;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

    .line 345
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;

    .line 347
    new-instance v0, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    invoke-direct {v0, p3}, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    .line 348
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 349
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 348
    invoke-virtual {v0, v1, v3}, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 350
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private assignMagnificationWindowManagerDelegateByMode(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 734
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 736
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    .line 735
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 737
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 739
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    .line 738
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 743
    :goto_0
    return-void
.end method

.method private disableFullScreenMagnificationIfNeeded(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 867
    nop

    .line 868
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 870
    .local v0, "fullScreenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    nop

    .line 871
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 872
    .local v1, "isMagnifyByExternalRequest":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 874
    :cond_1
    invoke-virtual {v0, p1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 876
    :cond_2
    return-void
.end method

.method private disableWindowMagnificationIfNeeded(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 910
    nop

    .line 911
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    .line 912
    .local v0, "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    .line 915
    :cond_0
    return-void
.end method

.method private getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "targetMode"    # I

    .line 1135
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 1136
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 1137
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterX(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 1141
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterY(I)F

    move-result v2

    .line 1140
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    .line 1138
    :cond_1
    :goto_0
    return-object v1

    .line 1143
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    nop

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 1144
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 1147
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 1148
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v2

    .line 1147
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1150
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    return-object v0

    .line 1145
    :cond_4
    :goto_2
    return-object v1
.end method

.method private getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .locals 1
    .param p1, "displayId"    # I

    .line 1049
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    return-object v0
.end method

.method private getTargetModeScaleFromCurrentMagnification(II)F
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "targetMode"    # I

    .line 703
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    return v0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v0

    return v0
.end method

.method private handleUserInteractionChanged(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 497
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 498
    return-void

    .line 500
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 501
    return-void
.end method

.method private isMagnificationConnectionManagerInitialized()Z
    .locals 2

    .line 1129
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isMagnificationSystemUIConnectionReady()Z
    .locals 1

    .line 1098
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isMagnificationConnectionManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1098
    :goto_0
    return v0
.end method

.method private synthetic lambda$getFullScreenMagnificationController$1()Ljava/lang/Boolean;
    .locals 1

    .line 1090
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isMagnificationSystemUIConnectionReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$transitionMagnificationConfigMode$0(IIZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "targetMode"    # I
    .param p3, "success"    # Z

    .line 643
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    return-void
.end method

.method private logMagnificationModeWithImeOnIfNeeded(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 1064
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1067
    .local v1, "currentActivateMode":I
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 1071
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithIme(I)V

    .line 1073
    return-void

    .line 1071
    .end local v1    # "currentActivateMode":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1069
    .restart local v1    # "currentActivateMode":I
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 1071
    .end local v1    # "currentActivateMode":I
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private maybeContinuePan()V
    .locals 4

    .line 458
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 459
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 462
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->panMagnificationByStep(I[Z)V

    .line 464
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;-><init>()V

    .line 466
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 465
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 469
    :cond_2
    return-void
.end method

.method private maybeContinueZoom()V
    .locals 4

    .line 472
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 473
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->scaleMagnificationByStep(II)V

    .line 474
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>()V

    .line 476
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 475
    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 481
    :cond_0
    return-void
.end method

.method private panMagnificationByStep(I[Z)V
    .locals 17
    .param p1, "displayId"    # I
    .param p2, "directions"    # [Z

    .line 1216
    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v8, p2

    array-length v1, v8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 1217
    const-string v1, "MagnificationController"

    const-string v3, "Invalid number of panning directions"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void

    .line 1220
    :cond_0
    nop

    .line 1221
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v9

    .line 1222
    .local v9, "fullscreenActivated":Z
    nop

    .line 1223
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v10

    .line 1224
    .local v10, "windowActivated":Z
    if-nez v9, :cond_1

    if-nez v10, :cond_1

    .line 1225
    return-void

    .line 1228
    :cond_1
    const/4 v1, 0x0

    aget-boolean v3, v8, v1

    .line 1229
    const/4 v4, 0x1

    aget-boolean v5, v8, v4

    add-int/2addr v3, v5

    .line 1230
    const/4 v5, 0x2

    aget-boolean v6, v8, v5

    add-int/2addr v3, v6

    .line 1231
    const/4 v6, 0x3

    aget-boolean v7, v8, v6

    add-int v11, v3, v7

    .line 1232
    .local v11, "numDirections":I
    if-nez v11, :cond_2

    .line 1233
    return-void

    .line 1236
    :cond_2
    if-eqz v9, :cond_3

    .line 1237
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v3

    goto :goto_0

    .line 1238
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v3

    :goto_0
    nop

    .line 1239
    .local v3, "scale":F
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;

    invoke-interface {v7, v3, v2}, Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;->nextPanStep(FI)F

    move-result v7

    .line 1246
    .local v7, "step":F
    if-ne v11, v5, :cond_4

    .line 1247
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v12}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v12

    div-float/2addr v7, v12

    move v12, v7

    goto :goto_1

    .line 1246
    :cond_4
    move v12, v7

    .line 1252
    .end local v7    # "step":F
    .local v12, "step":F
    :goto_1
    const/4 v7, 0x0

    .line 1253
    .local v7, "offsetX":F
    const/4 v13, 0x0

    .line 1254
    .local v13, "offsetY":F
    aget-boolean v1, v8, v1

    if-eqz v1, :cond_5

    .line 1255
    sub-float/2addr v7, v12

    .line 1257
    :cond_5
    aget-boolean v1, v8, v4

    if-eqz v1, :cond_6

    .line 1258
    add-float/2addr v7, v12

    move v14, v7

    goto :goto_2

    .line 1257
    :cond_6
    move v14, v7

    .line 1260
    .end local v7    # "offsetX":F
    .local v14, "offsetX":F
    :goto_2
    aget-boolean v1, v8, v5

    if-eqz v1, :cond_7

    .line 1261
    sub-float/2addr v13, v12

    .line 1263
    :cond_7
    aget-boolean v1, v8, v6

    if-eqz v1, :cond_8

    .line 1264
    add-float/2addr v13, v12

    .line 1267
    :cond_8
    if-eqz v9, :cond_9

    .line 1268
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v15

    .line 1269
    .local v15, "centerX":F
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v16

    .line 1270
    .local v16, "centerY":F
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    add-float v4, v15, v14

    add-float v5, v16, v13

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 1272
    .end local v15    # "centerX":F
    .end local v16    # "centerY":F
    goto :goto_3

    .line 1273
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2, v14, v13}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    .line 1277
    :goto_3
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    .line 1278
    return-void
.end method

.method private scaleMagnificationByStep(II)V
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "direction"    # I

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    .line 1191
    .local v0, "magnificationScale":F
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

    invoke-interface {v1, v0, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;->nextScaleStep(FI)F

    move-result v4

    .line 1193
    .local v4, "nextMagnificationScale":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v3, p1

    .end local p1    # "displayId":I
    .local v3, "displayId":I
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    goto :goto_0

    .line 1188
    .end local v0    # "magnificationScale":F
    .end local v3    # "displayId":I
    .end local v4    # "nextMagnificationScale":F
    .restart local p1    # "displayId":I
    :cond_0
    move v3, p1

    .line 1198
    .end local p1    # "displayId":I
    .restart local v3    # "displayId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result p1

    .line 1201
    .local p1, "magnificationScale":F
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;->nextScaleStep(FI)F

    move-result v0

    .line 1203
    .local v0, "nextMagnificationScale":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(IF)V

    .line 1205
    .end local v0    # "nextMagnificationScale":F
    .end local p1    # "magnificationScale":F
    :cond_1
    return-void
.end method

.method private setCurrentMagnificationModeAndSwitchDelegate(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 728
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->assignMagnificationWindowManagerDelegateByMode(II)V

    .line 730
    return-void
.end method

.method private setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "callback"    # Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    .line 1054
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1059
    return-void
.end method

.method private setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "displayId"    # Ljava/lang/Integer;
    .param p2, "targetMode"    # Ljava/lang/Integer;

    .line 691
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 697
    :goto_0
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldNotifyMagnificationChange(II)Z
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "changeMode"    # I

    .line 844
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 846
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    .line 862
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 846
    :cond_0
    move v1, v2

    :goto_0
    nop

    .line 847
    .local v1, "fullScreenActivated":Z
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 848
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    nop

    .line 849
    .local v4, "windowEnabled":Z
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 850
    .local v5, "transitionMode":Ljava/lang/Integer;
    if-ne p2, v3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    const/4 v6, 0x2

    if-ne p2, v6, :cond_4

    if-eqz v4, :cond_4

    :cond_3
    if-nez v5, :cond_4

    .line 853
    monitor-exit v0

    return v3

    .line 855
    :cond_4
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    .line 857
    monitor-exit v0

    return v3

    .line 859
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne p2, v6, :cond_6

    .line 860
    monitor-exit v0

    return v3

    .line 862
    .end local v1    # "fullScreenActivated":Z
    .end local v4    # "windowEnabled":Z
    .end local v5    # "transitionMode":Ljava/lang/Integer;
    :cond_6
    monitor-exit v0

    .line 863
    return v2

    .line 862
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateMagnificationUIControls(II)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    .line 507
    .local v0, "isActivated":Z
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    :try_start_0
    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    if-ne v5, v4, :cond_0

    move v5, v3

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 508
    :cond_0
    move v5, v2

    :goto_0
    nop

    .line 510
    .local v5, "showModeSwitchButton":Z
    if-eqz v0, :cond_2

    iget v6, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    if-eq v6, v4, :cond_1

    iget v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    nop

    .line 513
    .local v2, "enableSettingsPanel":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    if-eqz v5, :cond_3

    .line 516
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->showMagnificationButton(II)Z

    goto :goto_1

    .line 518
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationButton(I)Z

    .line 521
    :goto_1
    if-nez v2, :cond_4

    .line 524
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationSettingsPanel(I)Z

    .line 526
    :cond_4
    return-void

    .line 513
    .end local v2    # "enableSettingsPanel":Z
    .end local v5    # "showModeSwitchButton":Z
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .locals 10

    .line 1081
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v0, :cond_0

    .line 1083
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1085
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    iget-object v8, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, p0

    :try_start_1
    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)V

    iput-object v2, v6, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    goto :goto_0

    .line 1093
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, p0

    goto :goto_1

    .line 1082
    :cond_0
    move-object v6, p0

    .line 1093
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1094
    iget-object v0, v6, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-object v0

    .line 1093
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getInitialKeyboardRepeatIntervalMs()I
    .locals 1

    .line 493
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    return v0
.end method

.method public getLastMagnificationActivatedMode(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 931
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 934
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .locals 8

    .line 1118
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-nez v0, :cond_0

    .line 1120
    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1121
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p0

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    iput-object v2, v5, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    goto :goto_0

    .line 1125
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, p0

    goto :goto_1

    .line 1119
    :cond_0
    move-object v5, p0

    .line 1124
    :goto_0
    iget-object v0, v5, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    monitor-exit v1

    return-object v0

    .line 1125
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasDisableMagnificationCallback(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 716
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    nop

    .line 718
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v1

    .line 719
    .local v1, "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    if-eqz v1, :cond_0

    .line 720
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 722
    .end local v1    # "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 719
    .restart local v1    # "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    :cond_0
    nop

    .line 722
    .end local v1    # "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    monitor-exit v0

    .line 723
    const/4 v0, 0x0

    return v0

    .line 722
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isActivated(II)Z
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 1162
    const/4 v0, 0x0

    .line 1163
    .local v0, "isActivated":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    .line 1164
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1165
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v3, :cond_0

    .line 1166
    monitor-exit v1

    return v2

    .line 1169
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1168
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v2

    move v0, v2

    .line 1169
    monitor-exit v1

    goto :goto_2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1170
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 1171
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1172
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-nez v3, :cond_2

    .line 1173
    monitor-exit v1

    return v2

    .line 1176
    :catchall_1
    move-exception v2

    goto :goto_1

    .line 1175
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v2

    move v0, v2

    .line 1176
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1178
    :cond_3
    :goto_2
    return v0
.end method

.method public isAlwaysOnMagnificationFeatureFlagEnabled()Z
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->isFeatureFlagEnabled()Z

    move-result v0

    return v0
.end method

.method public isFullScreenMagnificationControllerInitialized()Z
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1108
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logMagnificationModeWithIme(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 958
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationModeWithImeOn(I)V

    .line 959
    return-void
.end method

.method public logMagnificationUsageState(IJF)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "duration"    # J
    .param p4, "scale"    # F

    .line 947
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationUsageState(IJF)V

    .line 948
    return-void
.end method

.method public onAccessibilityActionPerformed(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 383
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 384
    return-void
.end method

.method public onChangeMagnificationMode(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I

    .line 798
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 799
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 998
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onDisplayRemoved(I)V

    goto :goto_0

    .line 1009
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1002
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz v1, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onDisplayRemoved(I)V

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1006
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1007
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1008
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1009
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onDisplayRemoved(I)V

    .line 1011
    return-void

    .line 1009
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onFullScreenMagnificationActivationState(IZ)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "activated"    # Z

    .line 880
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    .line 881
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onFullscreenMagnificationActivationChanged(IZ)Z

    .line 883
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 884
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v3}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 886
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 888
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 890
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 892
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableWindowMagnificationIfNeeded(I)V

    goto :goto_0

    .line 890
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 897
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 899
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v2}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 900
    invoke-virtual {v4, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 901
    .local v2, "duration":J
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getLastActivatedScale(I)F

    move-result v4

    .line 902
    .local v4, "scale":F
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 903
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJF)V

    .line 906
    .end local v2    # "duration":J
    .end local v4    # "scale":F
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 907
    return-void

    .line 902
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 822
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 825
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v2

    .line 824
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onUserMagnificationScaleChanged(IIF)Z

    .line 827
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 829
    :cond_0
    return-void
.end method

.method public onImeWindowVisibilityChanged(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "shown"    # Z

    .line 919
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 921
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onImeWindowVisibilityChanged(IZ)V

    .line 923
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 924
    return-void

    .line 921
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onKeyboardInteractionStop()V
    .locals 1

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    .line 453
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    .line 454
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    .line 455
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public onPanMagnificationStart(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "direction"    # I

    .line 400
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 401
    .local v0, "isAlreadyPanning":Z
    :goto_0
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    .line 402
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    aput-boolean v2, v1, p2

    .line 404
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->panMagnificationByStep(I[Z)V

    .line 405
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;-><init>()V

    .line 407
    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    int-to-long v3, v3

    .line 406
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 410
    :cond_1
    return-void
.end method

.method public onPanMagnificationStop(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 415
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 416
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    .line 423
    :cond_0
    return-void
.end method

.method public onPerformScaleAction(IFZ)V
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "updatePersistence"    # Z

    .line 366
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    xor-int/lit8 v6, p3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    move v2, p1

    move v3, p2

    .end local p1    # "displayId":I
    .end local p2    # "scale":F
    .local v2, "displayId":I
    .local v3, "scale":F
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZZI)Z

    .line 370
    if-eqz p3, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->persistScale(I)V

    goto :goto_0

    .line 373
    .end local v2    # "displayId":I
    .end local v3    # "scale":F
    .restart local p1    # "displayId":I
    .restart local p2    # "scale":F
    :cond_0
    move v2, p1

    move v3, p2

    .end local p1    # "displayId":I
    .end local p2    # "scale":F
    .restart local v2    # "displayId":I
    .restart local v3    # "scale":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(IF)V

    .line 375
    if-eqz p3, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->persistScale(I)V

    .line 379
    :cond_1
    :goto_0
    return-void
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 750
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;

    move-object v2, v0

    .line 752
    .local v2, "delegate":Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    if-eqz v2, :cond_0

    .line 754
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "displayId":I
    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .local v3, "displayId":I
    .local v4, "left":I
    .local v5, "top":I
    .local v6, "right":I
    .local v7, "bottom":I
    invoke-interface/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;->onRectangleOnScreenRequested(IIIII)V

    goto :goto_0

    .line 753
    .end local v3    # "displayId":I
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v6    # "right":I
    .end local v7    # "bottom":I
    .restart local p1    # "displayId":I
    .restart local p2    # "left":I
    .restart local p3    # "top":I
    .restart local p4    # "right":I
    .restart local p5    # "bottom":I
    :cond_0
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 756
    .end local p1    # "displayId":I
    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .restart local v3    # "displayId":I
    .restart local v4    # "left":I
    .restart local v5    # "top":I
    .restart local v6    # "right":I
    .restart local v7    # "bottom":I
    :goto_0
    return-void

    .line 752
    .end local v2    # "delegate":Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;
    .end local v3    # "displayId":I
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v6    # "right":I
    .end local v7    # "bottom":I
    .restart local p1    # "displayId":I
    .restart local p2    # "left":I
    .restart local p3    # "top":I
    .restart local p4    # "right":I
    .restart local p5    # "bottom":I
    :catchall_0
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object p1, v0

    .end local p1    # "displayId":I
    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .restart local v3    # "displayId":I
    .restart local v4    # "left":I
    .restart local v5    # "top":I
    .restart local v6    # "right":I
    .restart local v7    # "bottom":I
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1
.end method

.method public onRequestMagnificationSpec(II)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "serviceId"    # I

    .line 761
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 763
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 764
    .local v1, "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    if-eqz v1, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    .line 768
    :cond_0
    return-void

    .line 764
    .end local v1    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onScaleMagnificationStart(II)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "direction"    # I

    .line 428
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 431
    return-void

    .line 433
    :cond_0
    iput p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    .line 434
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->scaleMagnificationByStep(II)V

    .line 436
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>()V

    .line 438
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    int-to-long v2, v2

    .line 437
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 441
    :cond_1
    return-void
.end method

.method public onScaleMagnificationStop(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 445
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    if-ne p1, v0, :cond_0

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    .line 448
    :cond_0
    return-void
.end method

.method public onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 803
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 806
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v3

    .line 805
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onUserMagnificationScaleChanged(IIF)Z

    .line 808
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 809
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 811
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v1

    .line 810
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 812
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 813
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 814
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v0

    .line 815
    .local v0, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 817
    .end local v0    # "config":Landroid/accessibilityservice/MagnificationConfig;
    :cond_0
    return-void
.end method

.method public onTouchInteractionEnd(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    .line 394
    return-void
.end method

.method public onTouchInteractionStart(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 388
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    .line 389
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1017
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onUserRemoved(I)V

    .line 1018
    return-void
.end method

.method public onWindowMagnificationActivationState(IZ)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "activated"    # Z

    .line 772
    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v3}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 775
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 777
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 779
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 781
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableFullScreenMagnificationIfNeeded(I)V

    goto :goto_0

    .line 779
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 785
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 788
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v2}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 789
    .local v2, "duration":J
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getLastActivatedScale(I)F

    move-result v4

    .line 790
    .local v4, "scale":F
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 791
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJF)V

    .line 793
    .end local v2    # "duration":J
    .end local v4    # "scale":F
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 794
    return-void

    .line 790
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setAlwaysOnMagnificationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setAlwaysOnMagnificationEnabled(Z)V

    .line 1041
    return-void
.end method

.method public setMagnificationCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I

    .line 1021
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 1022
    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setMagnificationFollowTypingEnabled(Z)V

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setMagnificationFollowTypingEnabled(Z)V

    .line 1032
    return-void
.end method

.method public setRepeatKeysEnabled(Z)V
    .locals 0
    .param p1, "isRepeatKeysEnabled"    # Z

    .line 484
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    .line 485
    return-void
.end method

.method public setRepeatKeysTimeoutMs(I)V
    .locals 0
    .param p1, "repeatKeysTimeoutMs"    # I

    .line 488
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    .line 489
    return-void
.end method

.method public supportWindowMagnification()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    return v0
.end method

.method public transitionMagnificationConfigMode(ILandroid/accessibilityservice/MagnificationConfig;ZI)V
    .locals 18
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/accessibilityservice/MagnificationConfig;
    .param p3, "animate"    # Z
    .param p4, "id"    # I

    .line 612
    move-object/from16 v1, p0

    move/from16 v3, p1

    iget-object v10, v1, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 613
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v0

    move v11, v0

    .line 614
    .local v11, "targetMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->isActivated()Z

    move-result v0

    move v12, v0

    .line 615
    .local v12, "targetActivated":Z
    invoke-direct {v1, v3, v11}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v0

    move-object v13, v0

    .line 616
    .local v13, "currentCenter":Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v14, v0

    .line 617
    .local v14, "magnificationCenter":Landroid/graphics/PointF;
    if-eqz v13, :cond_2

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget v0, v13, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 678
    .end local v11    # "targetMode":I
    .end local v12    # "targetActivated":Z
    .end local v13    # "currentCenter":Landroid/graphics/PointF;
    .end local v14    # "magnificationCenter":Landroid/graphics/PointF;
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 620
    .restart local v11    # "targetMode":I
    .restart local v12    # "targetActivated":Z
    .restart local v13    # "currentCenter":Landroid/graphics/PointF;
    .restart local v14    # "magnificationCenter":Landroid/graphics/PointF;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v0

    :goto_0
    nop

    .line 621
    .local v0, "centerX":F
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    iget v2, v13, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 623
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v2

    :goto_1
    nop

    .line 624
    .local v2, "centerY":F
    invoke-virtual {v14, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 627
    .end local v0    # "centerX":F
    .end local v2    # "centerY":F
    :cond_2
    nop

    .line 628
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v0

    move-object v15, v0

    .line 629
    .local v15, "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    if-eqz v15, :cond_3

    .line 630
    const-string v0, "MagnificationController"

    const-string v2, "Discard previous animation request"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v15}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    .line 633
    :cond_3
    nop

    .line 634
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v2

    move-object v9, v2

    .line 635
    .local v9, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    nop

    .line 636
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v2

    .line 637
    .local v2, "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 638
    invoke-direct {v1, v3, v11}, Lcom/android/server/accessibility/magnification/MagnificationController;->getTargetModeScaleFromCurrentMagnification(II)F

    move-result v0

    move v4, v0

    goto :goto_2

    .line 639
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v0

    :goto_2
    nop

    .line 641
    .local v4, "targetScale":F
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 642
    if-eqz p3, :cond_5

    .line 643
    :try_start_2
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1, v3, v11}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v0

    goto :goto_3

    .line 672
    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v9

    move/from16 v16, v12

    move-object v12, v5

    goto/16 :goto_6

    .line 644
    :cond_5
    move-object v7, v5

    :goto_3
    nop

    .line 646
    .local v7, "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    const/4 v0, 0x2

    const/4 v6, 0x0

    if-ne v11, v0, :cond_7

    .line 647
    :try_start_3
    invoke-virtual {v9, v3, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 648
    if-eqz v12, :cond_6

    .line 649
    move-object v6, v5

    :try_start_4
    iget v5, v14, Landroid/graphics/PointF;->x:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v8, v6

    :try_start_5
    iget v6, v14, Landroid/graphics/PointF;->y:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v16, v12

    move-object v12, v8

    move/from16 v8, p4

    .end local v12    # "targetActivated":Z
    .local v16, "targetActivated":Z
    :try_start_6
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-object/from16 v17, v2

    move-object v2, v9

    goto/16 :goto_5

    .line 672
    .end local v7    # "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v9

    goto/16 :goto_6

    .end local v16    # "targetActivated":Z
    .restart local v12    # "targetActivated":Z
    :catchall_3
    move-exception v0

    move/from16 v16, v12

    move-object v12, v8

    :goto_4
    move-object/from16 v17, v2

    move-object v2, v9

    .end local v12    # "targetActivated":Z
    .restart local v16    # "targetActivated":Z
    goto/16 :goto_6

    .end local v16    # "targetActivated":Z
    .restart local v12    # "targetActivated":Z
    :catchall_4
    move-exception v0

    move/from16 v16, v12

    move-object v12, v6

    goto :goto_4

    .line 653
    .restart local v7    # "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    :cond_6
    move/from16 v16, v12

    move-object v12, v5

    .end local v12    # "targetActivated":Z
    .restart local v16    # "targetActivated":Z
    invoke-virtual {v2, v3, v6}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v17, v2

    move-object v2, v9

    goto :goto_5

    .line 672
    .end local v7    # "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    .end local v16    # "targetActivated":Z
    .restart local v12    # "targetActivated":Z
    :catchall_5
    move-exception v0

    move/from16 v16, v12

    move-object v12, v5

    goto :goto_4

    .line 655
    .restart local v7    # "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    :cond_7
    move/from16 v16, v12

    move-object v12, v5

    .end local v12    # "targetActivated":Z
    .restart local v16    # "targetActivated":Z
    const/4 v0, 0x1

    if-ne v11, v0, :cond_a

    .line 656
    :try_start_7
    invoke-virtual {v2, v3, v6, v12}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 658
    if-eqz v16, :cond_9

    .line 659
    invoke-virtual {v9, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-nez v0, :cond_8

    .line 660
    :try_start_8
    invoke-virtual {v9, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 662
    :cond_8
    :try_start_9
    iget v5, v14, Landroid/graphics/PointF;->x:F

    iget v6, v14, Landroid/graphics/PointF;->y:F
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object v8, v7

    .end local v7    # "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    .local v8, "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    const/4 v7, 0x0

    move-object/from16 v17, v2

    move-object v2, v9

    move/from16 v9, p4

    .end local v9    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .local v2, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .local v17, "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    :try_start_a
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-object v7, v8

    .end local v8    # "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    .restart local v7    # "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    goto :goto_5

    .line 672
    .end local v7    # "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    :catchall_6
    move-exception v0

    goto :goto_6

    .end local v17    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .local v2, "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .restart local v9    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    :catchall_7
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v9

    .end local v9    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .local v2, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v17    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    goto :goto_6

    .line 666
    .end local v17    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .local v2, "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .restart local v7    # "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    .restart local v9    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    :cond_9
    move-object/from16 v17, v2

    move-object v2, v9

    .end local v9    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .local v2, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v17    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 667
    invoke-virtual {v2, v3, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_5

    .line 655
    .end local v17    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .local v2, "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .restart local v9    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    :cond_a
    move-object/from16 v17, v2

    move-object v2, v9

    .line 672
    .end local v7    # "magnificationAnimationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    .end local v9    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .local v2, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v17    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    :cond_b
    :goto_5
    if-nez p3, :cond_c

    .line 673
    :try_start_b
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v3, v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 676
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v12}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 677
    nop

    .line 678
    .end local v2    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v4    # "targetScale":F
    .end local v11    # "targetMode":I
    .end local v13    # "currentCenter":Landroid/graphics/PointF;
    .end local v14    # "magnificationCenter":Landroid/graphics/PointF;
    .end local v15    # "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .end local v16    # "targetActivated":Z
    .end local v17    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    monitor-exit v10

    .line 679
    return-void

    .line 672
    .local v2, "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .restart local v4    # "targetScale":F
    .restart local v9    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v11    # "targetMode":I
    .restart local v12    # "targetActivated":Z
    .restart local v13    # "currentCenter":Landroid/graphics/PointF;
    .restart local v14    # "magnificationCenter":Landroid/graphics/PointF;
    .restart local v15    # "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    :catchall_8
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v9

    move/from16 v16, v12

    move-object v12, v5

    .end local v9    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v12    # "targetActivated":Z
    .local v2, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .restart local v16    # "targetActivated":Z
    .restart local v17    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    :goto_6
    if-nez p3, :cond_d

    .line 673
    iget-object v5, v1, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5, v3, v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 676
    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5, v12}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 677
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/magnification/MagnificationController;
    .end local p1    # "displayId":I
    .end local p2    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .end local p3    # "animate":Z
    .end local p4    # "id":I
    throw v0

    .line 678
    .end local v2    # "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v4    # "targetScale":F
    .end local v11    # "targetMode":I
    .end local v13    # "currentCenter":Landroid/graphics/PointF;
    .end local v14    # "magnificationCenter":Landroid/graphics/PointF;
    .end local v15    # "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .end local v16    # "targetActivated":Z
    .end local v17    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .restart local p0    # "this":Lcom/android/server/accessibility/magnification/MagnificationController;
    .restart local p1    # "displayId":I
    .restart local p2    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .restart local p3    # "animate":Z
    .restart local p4    # "id":I
    :goto_7
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public transitionMagnificationModeLocked(IILcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;)V
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "targetMode"    # I
    .param p3, "transitionCallBack"    # Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 545
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    .line 546
    return-void

    .line 549
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v8

    .line 550
    .local v8, "currentCenter":Landroid/graphics/PointF;
    nop

    .line 551
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v0

    .line 553
    .local v0, "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    if-nez v8, :cond_1

    if-nez v0, :cond_1

    .line 554
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    .line 555
    return-void

    .line 558
    :cond_1
    const-string v2, "MagnificationController"

    if-eqz v0, :cond_3

    .line 559
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->-$$Nest$fgetmCurrentMode(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 560
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->restoreToCurrentMagnificationMode()V

    .line 561
    return-void

    .line 563
    :cond_2
    const-string v1, "discard duplicate request"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 568
    :cond_3
    if-nez v8, :cond_4

    .line 569
    const-string v3, "Invalid center, ignore it"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    .line 571
    return-void

    .line 574
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 576
    nop

    .line 577
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    .line 578
    .local v1, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    nop

    .line 579
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v10

    .line 580
    .local v10, "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getTargetModeScaleFromCurrentMagnification(II)F

    move-result v7

    .line 581
    .local v7, "scale":F
    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    const/4 v9, 0x1

    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v4, p3

    .end local p1    # "displayId":I
    .end local p2    # "targetMode":I
    .end local p3    # "transitionCallBack":Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;
    .local v4, "transitionCallBack":Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;
    .local v5, "displayId":I
    .local v6, "targetMode":I
    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;IIFLandroid/graphics/PointF;Z)V

    .line 585
    .local v2, "animationEndCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    invoke-direct {p0, v5, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    .line 587
    const/4 p1, 0x2

    if-ne v6, p1, :cond_5

    .line 588
    invoke-virtual {v1, v5, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_0

    .line 590
    :cond_5
    const/4 p1, 0x0

    invoke-virtual {v10, v5, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 593
    :goto_0
    return-void
.end method

.method public updateUserIdIfNeeded(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 968
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    if-ne v0, p1, :cond_0

    .line 969
    return-void

    .line 971
    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 974
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 976
    .local v1, "fullMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 977
    .local v2, "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 978
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 979
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 980
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 981
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onUserChanged(I)V

    .line 984
    if-eqz v1, :cond_1

    .line 985
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(Z)V

    .line 987
    :cond_1
    if-eqz v2, :cond_2

    .line 988
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableAllWindowMagnifiers()V

    .line 990
    :cond_2
    return-void

    .line 981
    .end local v1    # "fullMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .end local v2    # "magnificationConnectionManager":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
