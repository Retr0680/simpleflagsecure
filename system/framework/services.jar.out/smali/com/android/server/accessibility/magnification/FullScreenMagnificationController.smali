.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FullScreenMagnificationController"


# instance fields
.field private mAlwaysOnMagnificationEnabled:Z

.field private final mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPointerMotionFilterInstalled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationConnectionStateSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMagnificationFollowTypingEnabled:Z

.field private final mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

.field private final mMainThreadId:J

.field private final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field private final mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

.field private final mScrollerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/widget/Scroller;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mThumbnailSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/accessibility/magnification/MagnificationThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeAnimatorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/animation/TimeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7n_dN5UiM5usi00tn_UsqKkiJYM(IZLcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->lambda$notifyImeWindowVisibilityChanged$2(IZLcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K3AE0MkA_GL-moLGxj_xSVHI3_s(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)Lcom/android/server/accessibility/magnification/MagnificationThumbnail;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->lambda$new$1(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LzH4H8xN2RuqUsumAAtmD1fOgXg(Landroid/content/Context;)Landroid/widget/Scroller;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->lambda$new$0(Landroid/content/Context;)Landroid/widget/Scroller;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NbPaDhBfYnK_t-HFau9nBUtkYsk(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onMagnificationThumbnailFeatureFlagChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Landroid/hardware/display/DisplayManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMagnificationConnectionStateSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationConnectionStateSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMagnificationInfoChangedCallbacks(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainThreadId(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollerSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScrollerSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnailSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mThumbnailSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeAnimatorSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTimeAnimatorSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->logTrace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monScreenTurnedOff(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->traceEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munregisterCallbackLocked(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterCallbackLocked(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtransformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "traceManager"    # Lcom/android/server/accessibility/AccessibilityTraceManager;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "magnificationInfoChangedCallback"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
    .param p5, "scaleProvider"    # Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;
    .param p6, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/accessibility/AccessibilityTraceManager;",
            "Ljava/lang/Object;",
            "Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;",
            "Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 980
    .local p7, "magnificationConnectionStateSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 984
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 985
    const-class v1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/input/InputManagerInternal;

    new-instance v5, Landroid/os/Handler;

    .line 986
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 987
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/input/InputManagerInternal;Landroid/os/Handler;J)V

    new-instance v7, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;

    invoke-direct {v7, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda5;

    invoke-direct {v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda5;-><init>()V

    .line 980
    const/4 v5, 0x0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    .line 996
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 2
    .param p1, "ctx"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "magnificationInfoChangedCallback"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
    .param p4, "scaleProvider"    # Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;
    .param p6, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;",
            "Ljava/lang/Object;",
            "Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;",
            "Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/accessibility/magnification/MagnificationThumbnail;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/Scroller;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/animation/TimeAnimator;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1009
    .local p5, "thumbnailSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/accessibility/magnification/MagnificationThumbnail;>;"
    .local p7, "scrollerSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/widget/Scroller;>;"
    .local p8, "timeAnimatorSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/animation/TimeAnimator;>;"
    .local p9, "magnificationConnectionStateSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mIsPointerMotionFilterInstalled:Z

    .line 1010
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 1011
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 1012
    iput-object p7, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScrollerSupplier:Ljava/util/function/Supplier;

    .line 1013
    iput-object p8, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTimeAnimatorSupplier:Ljava/util/function/Supplier;

    .line 1014
    iput-object p9, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationConnectionStateSupplier:Ljava/util/function/Supplier;

    .line 1015
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    .line 1016
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    .line 1017
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->addInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V

    .line 1018
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 1019
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1020
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    .line 1021
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    invoke-virtual {v0, p6, v1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;->addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1023
    if-eqz p5, :cond_0

    .line 1024
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mThumbnailSupplier:Ljava/util/function/Supplier;

    goto :goto_0

    .line 1026
    :cond_0
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mThumbnailSupplier:Ljava/util/function/Supplier;

    .line 1037
    :goto_0
    return-void
.end method

.method private configurePointerMotionFilter(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1938
    nop

    .line 1939
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 993
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic lambda$new$1(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)Lcom/android/server/accessibility/magnification/MagnificationThumbnail;
    .locals 5
    .param p1, "ctx"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 1027
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;->isFeatureFlagEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 1029
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1030
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v3, Landroid/os/Handler;

    .line 1031
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/os/Handler;)V

    .line 1028
    return-object v0

    .line 1034
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$notifyImeWindowVisibilityChanged$2(IZLcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .locals 0
    .param p0, "displayId"    # I
    .param p1, "shown"    # Z
    .param p2, "callback"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    .line 1860
    invoke-interface {p2, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onImeWindowVisibilityChanged(IZ)V

    .line 1861
    return-void
.end method

.method private logTrace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .line 1959
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManagerInternal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x200

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1961
    return-void
.end method

.method private onMagnificationThumbnailFeatureFlagChanged()V
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1042
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onMagnificationThumbnailFeatureFlagChanged(I)V

    .line 1041
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1044
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1041
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 1044
    .end local v1    # "i":I
    monitor-exit v0

    .line 1045
    return-void

    .line 1044
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onMagnificationThumbnailFeatureFlagChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1048
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1050
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1051
    monitor-exit v0

    return-void

    .line 1054
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1053
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onThumbnailFeatureFlagChanged()V

    .line 1054
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1055
    return-void

    .line 1054
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onScreenTurnedOff()V
    .locals 2

    .line 1866
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;-><init>()V

    .line 1867
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1866
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1868
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1869
    return-void
.end method

.method private traceEnabled()Z
    .locals 3

    .line 1954
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x200

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    return v0
.end method

.method private static transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;
    .locals 1
    .param p0, "animate"    # Z

    .line 2374
    if-eqz p0, :cond_0

    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private unregisterCallbackLocked(IZ)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "delete"    # Z

    .line 1907
    if-eqz p2, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1911
    :cond_0
    const/4 v0, 0x0

    .line 1912
    .local v0, "hasRegister":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1913
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1914
    .local v2, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v0

    .line 1915
    if-eqz v0, :cond_1

    .line 1916
    goto :goto_1

    .line 1915
    :cond_1
    nop

    .line 1912
    .end local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1919
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1920
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->unregister()V

    .line 1921
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->configurePointerMotionFilter(Z)V

    .line 1923
    :cond_3
    return-void
.end method

.method private unregisterLocked(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "delete"    # Z

    .line 1884
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1885
    .local v0, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v0, :cond_0

    .line 1886
    return-void

    .line 1888
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1889
    if-eqz p2, :cond_1

    .line 1890
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1892
    :cond_1
    return-void

    .line 1894
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1895
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregister(Z)V

    goto :goto_0

    .line 1897
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregisterPending(Z)V

    .line 1899
    :goto_0
    return-void
.end method

.method private zoomOutFromService(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1762
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1763
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1764
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 1767
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->zoomOutFromService()V

    .line 1768
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1769
    return-void

    .line 1768
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1765
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0

    return-void

    .line 1768
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    .line 1926
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1927
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1928
    monitor-exit v0

    .line 1929
    return-void

    .line 1928
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelFling(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "id"    # I

    .line 1698
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1699
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1700
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1701
    monitor-exit v0

    return-void

    .line 1704
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1703
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->cancelFling(I)V

    .line 1704
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1705
    return-void

    .line 1704
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCenterX(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 1320
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1321
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1322
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1323
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1326
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1325
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 1326
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCenterY(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 1443
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1444
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1445
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1446
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1449
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1448
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 1449
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 1714
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1715
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1716
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1717
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 1720
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1719
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v2

    monitor-exit v0

    return v2

    .line 1720
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getLastActivatedScale(I)F
    .locals 1
    .param p1, "displayId"    # I

    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    return v0
.end method

.method public getMagnificationBounds(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 1247
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1248
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1249
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1250
    monitor-exit v0

    return-void

    .line 1253
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1252
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 1253
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1254
    return-void

    .line 1253
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 1265
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1266
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1267
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1268
    monitor-exit v0

    return-void

    .line 1271
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1270
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 1271
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1272
    return-void

    .line 1271
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOffsetX(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 1303
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1304
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1305
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1306
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1309
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1308
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 1309
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOffsetY(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 1426
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1427
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1428
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1429
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1432
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1431
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 1432
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPersistedScale(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 1748
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result v0

    const v1, 0x3fa66666    # 1.3f

    sget v2, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public getScale(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 1282
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1284
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1285
    monitor-exit v0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 1288
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1287
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result v2

    monitor-exit v0

    return v2

    .line 1288
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isActivated(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 1208
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1210
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1211
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1214
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1213
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1214
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAlwaysOnMagnificationEnabled()Z
    .locals 1

    .line 1145
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    return v0
.end method

.method public isAtBottomEdge(IF)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "slop"    # F

    .line 1409
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1410
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1411
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1412
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1415
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1414
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtBottomEdge(F)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1415
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAtEdge(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 1337
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1339
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1340
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1343
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1342
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtEdge()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1343
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAtLeftEdge(IF)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "slop"    # F

    .line 1355
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1357
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1358
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1361
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1360
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtLeftEdge(F)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1361
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAtRightEdge(IF)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "slop"    # F

    .line 1373
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1375
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1376
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1379
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1378
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtRightEdge(F)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1379
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAtTopEdge(IF)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "slop"    # F

    .line 1391
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1393
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1394
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1397
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1396
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtTopEdge(F)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1397
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isMagnificationFollowTypingEnabled()Z
    .locals 1

    .line 1137
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    return v0
.end method

.method public isRegistered(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 1193
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1195
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1196
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1199
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1198
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1199
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isZoomedOutFromService(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 1777
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1778
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1779
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 1782
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isZoomedOutFromService()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1783
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1780
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1783
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public magnificationRegionContains(IFF)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1228
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1229
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1230
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1231
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1234
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1233
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->magnificationRegionContains(FF)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1234
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyImeWindowVisibilityChanged(IZ)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "shown"    # Z

    .line 1858
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1859
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;-><init>(IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 1862
    monitor-exit v0

    .line 1863
    return-void

    .line 1862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyScaleForInput(IF)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 1794
    nop

    .line 1795
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getInputManager()Lcom/android/server/input/InputManagerInternal;

    move-result-object v0

    .line 1796
    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->setAccessibilityPointerIconScaleFactor(IF)V

    .line 1798
    return-void
.end method

.method public offsetMagnifiedRegion(IFFI)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "id"    # I

    .line 1662
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1663
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1664
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1665
    monitor-exit v0

    return-void

    .line 1668
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1667
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 1668
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1669
    return-void

    .line 1668
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1178
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 1180
    monitor-exit v0

    .line 1181
    return-void

    .line 1180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1112
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    if-nez v1, :cond_0

    .line 1114
    monitor-exit v0

    return-void

    .line 1129
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1116
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1117
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_1

    .line 1118
    monitor-exit v0

    return-void

    .line 1120
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1121
    monitor-exit v0

    return-void

    .line 1123
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 1124
    .local v2, "magnifiedRegionBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 1125
    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1126
    monitor-exit v0

    return-void

    .line 1128
    :cond_3
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onRectangleOnScreenRequested(IIII)V

    .line 1129
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    .end local v2    # "magnifiedRegionBounds":Landroid/graphics/Rect;
    monitor-exit v0

    .line 1130
    return-void

    .line 1129
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onUserContextChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1156
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1157
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1158
    monitor-exit v0

    return-void

    .line 1169
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1161
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isAlwaysOnMagnificationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1162
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1164
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->zoomOutFromService(I)V

    goto :goto_0

    .line 1167
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 1169
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1170
    return-void

    .line 1169
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public persistScale(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1731
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    .line 1732
    .local v0, "scale":F
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->notifyScaleForInput(IF)V

    .line 1734
    const v1, 0x3fa66666    # 1.3f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 1735
    return-void

    .line 1737
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    .line 1738
    return-void
.end method

.method public register(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1067
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1069
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1070
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;I)V

    move-object v1, v2

    goto :goto_0

    .line 1080
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1072
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1073
    monitor-exit v0

    return-void

    .line 1075
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->register()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1076
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1077
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->registerIfNecessary()V

    .line 1078
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->configurePointerMotionFilter(Z)V

    .line 1080
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_2
    monitor-exit v0

    .line 1081
    return-void

    .line 1080
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    .line 1932
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1933
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1934
    monitor-exit v0

    .line 1935
    return-void

    .line 1934
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 1478
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1480
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1481
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1484
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1483
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1484
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset(IZ)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 1463
    if-eqz p2, :cond_0

    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method public resetAllIfNeeded(I)V
    .locals 3
    .param p1, "connectionId"    # I

    .line 1806
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1807
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1808
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(II)Z

    .line 1807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1810
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1807
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 1810
    .end local v1    # "i":I
    monitor-exit v0

    .line 1811
    return-void

    .line 1810
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetAllIfNeeded(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 1876
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1877
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1878
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(IZ)Z

    .line 1877
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1880
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1877
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 1880
    .end local v1    # "i":I
    monitor-exit v0

    .line 1881
    return-void

    .line 1880
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetIfNeeded(II)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "connectionId"    # I

    .line 1839
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1840
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1841
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1842
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v2

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 1845
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1846
    monitor-exit v0

    return v2

    .line 1847
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1843
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1847
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetIfNeeded(IZ)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 1821
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1822
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1823
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 1826
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1827
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1828
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1824
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1828
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAlwaysOnMagnificationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1141
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    .line 1142
    return-void
.end method

.method public setCenter(IFFZI)Z
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .line 1535
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1536
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v2, v0

    .line 1537
    .local v2, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v2, :cond_0

    .line 1538
    :try_start_1
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    .line 1542
    .end local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v0

    move v4, p2

    move v5, p3

    move v8, p5

    goto :goto_2

    .line 1540
    .restart local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    nop

    .line 1541
    if-eqz p4, :cond_1

    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1540
    :goto_1
    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    move v8, p5

    .end local p2    # "centerX":F
    .end local p3    # "centerY":F
    .end local p5    # "id":I
    .local v4, "centerX":F
    .local v5, "centerY":F
    .local v8, "id":I
    :try_start_2
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p2

    monitor-exit v1

    return p2

    .line 1542
    .end local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v4    # "centerX":F
    .end local v5    # "centerY":F
    .end local v8    # "id":I
    .restart local p2    # "centerX":F
    .restart local p3    # "centerY":F
    .restart local p5    # "id":I
    :catchall_2
    move-exception v0

    move v4, p2

    move v5, p3

    move v8, p5

    .end local p2    # "centerX":F
    .end local p3    # "centerY":F
    .end local p5    # "id":I
    .restart local v4    # "centerX":F
    .restart local v5    # "centerY":F
    .restart local v8    # "id":I
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method setMagnificationFollowTypingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1133
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    .line 1134
    return-void
.end method

.method public setOffset(IFFI)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "id"    # I

    .line 1639
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1640
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1641
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1642
    monitor-exit v0

    return-void

    .line 1645
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1644
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setOffset(FFI)V

    .line 1645
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1646
    return-void

    .line 1645
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setScale(IFFFZZI)Z
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F
    .param p5, "isScaleTransient"    # Z
    .param p6, "animate"    # Z
    .param p7, "id"    # I

    .line 1508
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1509
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    move-object v2, v0

    .line 1510
    .local v2, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v2, :cond_0

    .line 1511
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    .line 1514
    .end local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1513
    .restart local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScale(FFFZZI)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1514
    .end local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScaleAndCenter(IFFFZI)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animate"    # Z
    .param p6, "id"    # I

    .line 1564
    nop

    .line 1565
    invoke-static {p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v6

    .line 1564
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p6

    .end local p1    # "displayId":I
    .end local p2    # "scale":F
    .end local p3    # "centerX":F
    .end local p4    # "centerY":F
    .end local p6    # "id":I
    .local v1, "displayId":I
    .local v2, "scale":F
    .local v3, "centerX":F
    .local v4, "centerY":F
    .local v7, "id":I
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p1

    return p1
.end method

.method public setScaleAndCenter(IFFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "isScaleTransient"    # Z
    .param p6, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p7, "id"    # I

    .line 1616
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1617
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    move-object v2, v0

    .line 1618
    .local v2, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v2, :cond_0

    .line 1619
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    .line 1623
    .end local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1621
    .restart local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1623
    .end local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScaleAndCenter(IFFFZZI)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "isScaleTransient"    # Z
    .param p6, "animate"    # Z
    .param p7, "id"    # I

    .line 1589
    nop

    .line 1590
    invoke-static {p6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v6

    .line 1589
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p7

    .end local p1    # "displayId":I
    .end local p2    # "scale":F
    .end local p3    # "centerX":F
    .end local p4    # "centerY":F
    .end local p5    # "isScaleTransient":Z
    .end local p7    # "id":I
    .local v1, "displayId":I
    .local v2, "scale":F
    .local v3, "centerX":F
    .local v4, "centerY":F
    .local v5, "isScaleTransient":Z
    .local v7, "id":I
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p1

    return p1
.end method

.method public startFling(IFFI)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "xPixelsPerSecond"    # F
    .param p3, "yPixelsPerSecond"    # F
    .param p4, "id"    # I

    .line 1682
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1683
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1684
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1685
    monitor-exit v0

    return-void

    .line 1688
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1687
    .restart local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_0
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->startFling(FFI)V

    .line 1688
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1689
    return-void

    .line 1688
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1966
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MagnificationController["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    const-string v1, ", mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1968
    const-string v1, ", mScaleProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1969
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregister(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1090
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 1092
    monitor-exit v0

    .line 1093
    return-void

    .line 1092
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterAll()V
    .locals 5

    .line 1099
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 1103
    .local v1, "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1104
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 1103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1106
    .end local v1    # "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;>;"
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1103
    .restart local v1    # "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;>;"
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 1106
    .end local v1    # "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;>;"
    .end local v2    # "i":I
    monitor-exit v0

    .line 1107
    return-void

    .line 1106
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
