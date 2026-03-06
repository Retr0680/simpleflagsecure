.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragState$InputInterceptor;,
        Lcom/android/server/wm/DragState$AnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATED_PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATED_PROPERTY_SCALE:Ljava/lang/String; = "scale"

.field private static final ANIMATED_PROPERTY_X:Ljava/lang/String; = "x"

.field private static final ANIMATED_PROPERTY_Y:Ljava/lang/String; = "y"

.field private static final DIFFERENT_DISPLAY_RETURN_ANIMATION_SCALE:F = 0.75f

.field private static final DRAG_FLAGS_URI_ACCESS:I = 0x3

.field private static final DRAG_FLAGS_URI_PERMISSIONS:I = 0xc3

.field private static final MAX_ANIMATION_DURATION_MS:J = 0x177L

.field private static final MIN_ANIMATION_DURATION_MS:J = 0xc3L


# instance fields
.field mAnimatedScale:F

.field volatile mAnimationCompleted:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field mCallingTaskIdToHide:I

.field mCrossProfileCopyAllowed:Z

.field private final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mCurrentDisplayX:F

.field mCurrentDisplayY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field private final mDisplaySize:Landroid/graphics/Point;

.field final mDragDropController:Lcom/android/server/wm/DragDropController;

.field private mDragInProgress:Z

.field mDragResult:Z

.field mFlags:I

.field mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field mInputSurface:Landroid/view/SurfaceControl;

.field private mIsClosing:Z

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPid:I

.field mRelinquishDragSurfaceToDropTarget:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSourceUserId:I

.field mStartDragAlpha:F

.field mStartDragDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mStartDragDisplayX:F

.field mStartDragDisplayY:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field private final mTmpClipRect:Landroid/graphics/Rect;

.field mToken:Landroid/os/IBinder;

.field final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field mUid:I

.field mUnhandledDropEvent:Landroid/view/DragEvent;


# direct methods
.method public static synthetic $r8$lambda$MlPZji_R9BXfQU8PSK0J4X2swSs(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/DragState;->lambda$createCancelAnimationLocked$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P9DIUXjyorEY8LWyHYsvoeb7Zm4(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/DragState;->lambda$showInputSurface$0(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RZgNOGYZMNjrQ_9TyJK9tLnFLeg(Lcom/android/server/wm/DragState;FFZLcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->lambda$broadcastDragStartedLocked$1(FFZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VKHOxpMDX4IY28xXIQdDb165VGM(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/DragState;->lambda$createReturnAnimationLocked$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "controller"    # Lcom/android/server/wm/DragDropController;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "surface"    # Landroid/view/SurfaceControl;
    .param p5, "flags"    # I
    .param p6, "localWin"    # Landroid/os/IBinder;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 147
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 170
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 171
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 172
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 173
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 174
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 175
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 177
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 178
    return-void
.end method

.method private containsApplicationExtras(Landroid/content/ClipDescription;)Z
    .locals 2
    .param p1, "desc"    # Landroid/content/ClipDescription;

    .line 592
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 593
    return v0

    .line 595
    :cond_0
    const-string v1, "application/vnd.android.activity"

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    nop

    if-nez v1, :cond_1

    .line 596
    const-string v1, "application/vnd.android.shortcut"

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    nop

    if-nez v1, :cond_1

    .line 597
    const-string v1, "application/vnd.android.task"

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 595
    :cond_2
    return v0
.end method

.method private createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 13

    .line 866
    iget v0, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    const/4 v1, -0x1

    const-string v2, "alpha"

    const/4 v3, 0x3

    const-string v4, "scale"

    const/4 v5, 0x2

    const-string v6, "y"

    const/4 v7, 0x1

    const-string v8, "x"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eq v0, v1, :cond_0

    .line 867
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    new-array v12, v5, [F

    aput v1, v12, v9

    aput v10, v12, v7

    .line 868
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v8, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    new-array v10, v5, [F

    aput v1, v10, v9

    aput v8, v10, v7

    .line 870
    invoke-static {v6, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v8, v5, [F

    aput v1, v8, v9

    aput v6, v8, v7

    .line 872
    invoke-static {v4, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v4, v5, [F

    aput v1, v4, v9

    aput v11, v4, v7

    .line 874
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 867
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 876
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v1, v10

    iget v10, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    new-array v12, v5, [F

    aput v1, v12, v9

    aput v10, v12, v7

    .line 877
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v8, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v1, v8

    iget v8, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    new-array v10, v5, [F

    aput v1, v10, v9

    aput v8, v10, v7

    .line 879
    invoke-static {v6, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v6, v5, [F

    aput v1, v6, v9

    aput v11, v6, v7

    .line 881
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v4, v5, [F

    aput v1, v4, v9

    aput v11, v4, v7

    .line 882
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 876
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 885
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :goto_0
    new-instance v1, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState-IA;)V

    .line 886
    .local v1, "listener":Lcom/android/server/wm/DragState$AnimationListener;
    const-wide/16 v2, 0xc3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 887
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 888
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 889
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 891
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 892
    return-object v0
.end method

.method private createDropEvent(FFLcom/android/server/wm/WindowState;)Landroid/view/DragEvent;
    .locals 10
    .param p1, "inWindowX"    # F
    .param p2, "inWindowY"    # F
    .param p3, "touchedWin"    # Lcom/android/server/wm/WindowState;

    .line 322
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 324
    .local v9, "targetUserId":I
    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v1, :cond_0

    .line 326
    new-instance v2, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v5, p0, Lcom/android/server/wm/DragState;->mUid:I

    .line 327
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v7, v1, 0xc3

    iget v8, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    move-object v8, v2

    .local v2, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    goto :goto_0

    .line 330
    .end local v2    # "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :cond_0
    const/4 v2, 0x0

    move-object v8, v2

    .line 332
    .local v8, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :goto_0
    iget v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v1, v9, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->fixUris(I)V

    .line 337
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    .line 338
    .local v6, "targetInterceptsGlobalDrag":Z
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v1, 0x3

    move v7, v6

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object v1

    return-object v1
.end method

.method private createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 12

    .line 811
    iget v0, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    const/4 v1, -0x1

    const-string v2, "alpha"

    const/4 v3, 0x3

    const-string v4, "scale"

    const/4 v5, 0x2

    const-string v6, "y"

    const/4 v7, 0x1

    const-string v8, "x"

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-eq v0, v1, :cond_0

    .line 812
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    new-array v11, v5, [F

    aput v1, v11, v9

    aput v10, v11, v7

    .line 813
    invoke-static {v8, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v8, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    new-array v10, v5, [F

    aput v1, v10, v9

    aput v8, v10, v7

    .line 815
    invoke-static {v6, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v8, v5, [F

    aput v1, v8, v9

    aput v6, v8, v7

    .line 817
    invoke-static {v4, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v4, v5, [F

    aput v1, v4, v9

    const/4 v1, 0x0

    aput v1, v4, v7

    .line 819
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 812
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 820
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0xc3

    .local v1, "duration":J
    goto/16 :goto_0

    .line 821
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "duration":J
    :cond_0
    nop

    .line 833
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v1, v10

    iget v10, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    iget v11, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v10, v11

    new-array v11, v5, [F

    aput v1, v11, v9

    aput v10, v11, v7

    .line 834
    invoke-static {v8, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v8, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v1, v8

    iget v8, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v8, v10

    new-array v10, v5, [F

    aput v1, v10, v9

    aput v8, v10, v7

    .line 836
    invoke-static {v6, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v8, v5, [F

    aput v1, v8, v9

    aput v6, v8, v7

    .line 838
    invoke-static {v4, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    new-array v5, v5, [F

    aput v1, v5, v9

    aput v4, v5, v7

    .line 840
    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 833
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 843
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    sub-float/2addr v1, v2

    .line 844
    .local v1, "translateX":F
    iget v2, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    sub-float/2addr v2, v3

    .line 846
    .local v2, "translateY":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 848
    .local v3, "travelDistance":D
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 850
    .local v5, "displayDiagonal":D
    div-double v7, v3, v5

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v7, v9

    double-to-long v7, v7

    const-wide/16 v9, 0xc3

    add-long/2addr v7, v9

    move-wide v1, v7

    .line 854
    .end local v2    # "translateY":F
    .end local v3    # "travelDistance":D
    .end local v5    # "displayDiagonal":D
    .local v1, "duration":J
    :goto_0
    new-instance v3, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState-IA;)V

    .line 855
    .local v3, "listener":Lcom/android/server/wm/DragState$AnimationListener;
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 856
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 857
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 858
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 860
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 861
    return-object v0
.end method

.method private createUnhandledDropEvent(FF)Landroid/view/DragEvent;
    .locals 9
    .param p1, "inDisplayX"    # F
    .param p2, "inDisplayY"    # F

    .line 312
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x3

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    .end local p1    # "inDisplayX":F
    .end local p2    # "inDisplayY":F
    .local v2, "inDisplayX":F
    .local v3, "inDisplayY":F
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p1

    return-object p1
.end method

.method private isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 8
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "containsAppExtras"    # Z
    .param p3, "interceptsGlobalDrag"    # Z

    .line 602
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 603
    return v0

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    .line 606
    .local v1, "isLocalWindow":Z
    :goto_0
    if-nez v1, :cond_2

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 609
    return v0

    .line 611
    :cond_2
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 613
    return v0

    .line 615
    :cond_3
    iget v2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v0

    .line 616
    .local v2, "isGlobalSameAppDrag":Z
    :goto_1
    iget v4, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v0

    .line 617
    .local v4, "isGlobalDrag":Z
    :goto_2
    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    goto :goto_3

    :cond_7
    move v5, v0

    goto :goto_4

    :goto_3
    move v5, v3

    .line 618
    .local v5, "isAnyGlobalDrag":Z
    :goto_4
    if-eqz v5, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 620
    :cond_8
    if-nez v1, :cond_9

    .line 621
    return v0

    .line 624
    :cond_9
    if-eqz v2, :cond_a

    .line 627
    if-nez p3, :cond_a

    iget v6, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getUid()I

    move-result v7

    if-eq v6, v7, :cond_a

    .line 628
    return v0

    .line 632
    :cond_a
    if-nez p3, :cond_b

    iget-boolean v6, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez v6, :cond_b

    iget v6, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 634
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v6, v7, :cond_c

    :cond_b
    move v0, v3

    .line 632
    :cond_c
    return v0
.end method

.method private synthetic lambda$broadcastDragStartedLocked$1(FFZLcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "containsAppExtras"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 519
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    .line 520
    return-void
.end method

.method private static synthetic lambda$createCancelAnimationLocked$3(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 891
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static synthetic lambda$createReturnAnimationLocked$2(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 860
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static synthetic lambda$showInputSurface$0(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .param p0, "result"    # Ljava/util/concurrent/CompletableFuture;

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private obtainDragEndedEvent(FFZ)Landroid/view/DragEvent;
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "includeDragSurface"    # Z

    .line 776
    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v6, p3

    .end local p1    # "x":F
    .end local p2    # "y":F
    .end local p3    # "includeDragSurface":Z
    .local v2, "x":F
    .local v3, "y":F
    .local v6, "includeDragSurface":Z
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p1

    return-object p1
.end method

.method private obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;
    .locals 10
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "description"    # Landroid/content/ClipDescription;
    .param p5, "data"    # Landroid/content/ClipData;
    .param p6, "includeDragSurface"    # Z
    .param p7, "includeDragFlags"    # Z
    .param p8, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;

    .line 784
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v9

    return-object v9
.end method

.method private obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .locals 13
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "description"    # Landroid/content/ClipDescription;
    .param p5, "data"    # Landroid/content/ClipData;
    .param p6, "includeDragSurface"    # Z
    .param p7, "includeDragFlags"    # Z
    .param p8, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p9, "dragResult"    # Z

    .line 802
    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 803
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-eqz p7, :cond_0

    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 805
    :goto_1
    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_2
    move-object v10, v0

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 802
    :goto_3
    const/4 v7, 0x0

    move v0, p1

    move v1, p2

    move/from16 v2, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v0 .. v12}, Landroid/view/DragEvent;->obtain(IFFFFIILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v3

    return-object v3
.end method

.method private relinquishDragSurfaceToDragSource()Z
    .locals 1

    .line 939
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reportDropWindowLockInner(Landroid/os/IBinder;FF)Z
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "inWindowX"    # F
    .param p3, "inWindowY"    # F

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 366
    return v1

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 370
    .local v0, "touchedWin":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "WindowManager"

    const-wide/16 v5, 0x20

    if-nez v2, :cond_3

    .line 371
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/DragState;->createUnhandledDropEvent(FF)Landroid/view/DragEvent;

    move-result-object v2

    .line 373
    .local v2, "unhandledDropEvent":Landroid/view/DragEvent;
    iget-object v7, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-string v8, "unhandled-drop"

    invoke-virtual {v7, v2, v8}, Lcom/android/server/wm/DragDropController;->notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 376
    return v3

    .line 379
    :cond_1
    const-string v3, "DragDropController#noWindow"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 382
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    .line 383
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drop outside a valid window "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_2
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 385
    return v1

    .line 388
    .end local v2    # "unhandledDropEvent":Landroid/view/DragEvent;
    :cond_3
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending DROP to "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_4
    nop

    .line 390
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, p3

    .line 389
    invoke-direct {p0, v2, v7}, Lcom/android/server/wm/DragState;->createUnhandledDropEvent(FF)Landroid/view/DragEvent;

    move-result-object v2

    .line 392
    .restart local v2    # "unhandledDropEvent":Landroid/view/DragEvent;
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 393
    .local v7, "clientToken":Landroid/os/IBinder;
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/wm/DragState;->createDropEvent(FFLcom/android/server/wm/WindowState;)Landroid/view/DragEvent;

    move-result-object v8

    .line 395
    .local v8, "event":Landroid/view/DragEvent;
    :try_start_0
    const-string v9, "DragDropController#dispatchDrop"

    invoke-static {v5, v6, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 396
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v9, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 399
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-wide/16 v10, 0x1388

    invoke-virtual {v9, v1, v7, v10, v11}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v4, :cond_5

    .line 407
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 409
    :cond_5
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 410
    nop

    .line 411
    iput-object v7, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 412
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    .line 413
    return v3

    .line 406
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 401
    :catch_0
    move-exception v3

    nop

    .line 402
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t send drop notification to win "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    nop

    .line 406
    sget v4, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v9, v9, Lcom/android/server/wm/Session;->mPid:I

    if-eq v4, v9, :cond_6

    .line 407
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 409
    :cond_6
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 404
    return v1

    .line 406
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    sget v3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v3, v4, :cond_7

    .line 407
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 409
    :cond_7
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 410
    throw v1
.end method

.method private sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V
    .locals 16
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "containsAppExtras"    # Z

    .line 533
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    .line 534
    .local v11, "interceptsGlobalDrag":Z
    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_6

    move/from16 v12, p4

    invoke-direct {v1, v10, v12, v11}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const-string v13, "WindowManager"

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending DRAG_STARTED to new window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    const/4 v0, 0x0

    .line 540
    .local v0, "data":Landroid/content/ClipData;
    if-eqz v11, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v2, :cond_2

    .line 541
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 543
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    .line 544
    :cond_1
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    :goto_0
    nop

    .line 545
    .local v2, "extras":Landroid/os/PersistableBundle;
    const-string v3, "android.intent.extra.HIDE_DRAG_SOURCE_TASK_ID"

    iget v4, v1, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 547
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    .line 548
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_2

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding EXTRA_HIDE_DRAG_SOURCE_TASK_ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v2    # "extras":Landroid/os/PersistableBundle;
    :cond_2
    move-object v6, v0

    .end local v0    # "data":Landroid/content/ClipData;
    .local v6, "data":Landroid/content/ClipData;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    goto :goto_1

    .line 555
    .local v5, "description":Landroid/content/ClipDescription;
    :goto_2
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v2

    .line 556
    move/from16 v14, p3

    invoke-virtual {v10, v14}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v15, v0

    .line 557
    .local v15, "relativeToWindowCoords":Landroid/graphics/PointF;
    nop

    .line 569
    iget v3, v15, Landroid/graphics/PointF;->x:F

    iget v4, v15, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object v2

    .line 574
    .local v2, "event":Landroid/view/DragEvent;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 576
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v3, :cond_7

    .line 582
    :goto_3
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    goto :goto_5

    .line 581
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 577
    :catch_0
    move-exception v0

    nop

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to drag-start window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v3, :cond_7

    .line 582
    goto :goto_3

    .line 581
    :goto_4
    sget v3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v4, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v3, v4, :cond_4

    .line 582
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 584
    :cond_4
    throw v0

    .line 534
    .end local v2    # "event":Landroid/view/DragEvent;
    .end local v5    # "description":Landroid/content/ClipDescription;
    .end local v6    # "data":Landroid/content/ClipData;
    .end local v15    # "relativeToWindowCoords":Landroid/graphics/PointF;
    :cond_5
    move/from16 v14, p3

    goto :goto_5

    :cond_6
    move/from16 v14, p3

    move/from16 v12, p4

    .line 586
    :cond_7
    :goto_5
    return-void
.end method

.method private showInputSurface()Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 191
    const-string v1, "Drag and Drop Input Consumer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 192
    const-string v1, "DragState.showInputSurface"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 193
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v0

    .line 197
    .local v0, "h":Landroid/view/InputWindowHandle;
    if-nez v0, :cond_1

    .line 198
    const-string v1, "WindowManager"

    const-string v2, "Drag is in progress but there is no drag window handle."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 211
    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 212
    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 213
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 217
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 218
    .local v1, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 219
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 221
    return-object v1
.end method

.method private targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;

    .line 640
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method broadcastDragStartedLocked(FF)V
    .locals 5
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 497
    const-wide/16 v0, 0x20

    const-string v2, "DragDropController#DRAG_STARTED"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 498
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    .line 499
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 507
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 509
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 510
    .local v1, "userManager":Lcom/android/server/pm/UserManagerInternal;
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 513
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting DRAG_STARTED at ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v0

    .line 518
    .local v0, "containsAppExtras":Z
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DragState;FFZ)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 521
    return-void
.end method

.method cancelDragLocked(Z)V
    .locals 1
    .param p1, "skipAnimation"    # Z

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 699
    return-void

    .line 701
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    .line 710
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 711
    return-void

    .line 707
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 708
    return-void
.end method

.method closeLocked()V
    .locals 12

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 231
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const-string v2, "WindowManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 232
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_0

    const-string v1, "Unregistering drag input channel"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-virtual {v1, v0, v4}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 237
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 241
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 242
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_2

    const-string v0, "Broadcasting DRAG_ENDED"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 244
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    const/4 v5, 0x0

    .line 245
    .local v5, "inWindowX":F
    const/4 v6, 0x0

    .line 246
    .local v6, "inWindowY":F
    const/4 v7, 0x0

    .line 247
    .local v7, "includeDragSurface":Z
    iget-boolean v8, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v8, :cond_3

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    iget v9, p0, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v8, v9, :cond_3

    .line 249
    iget v8, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v5

    .line 250
    iget v8, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v6

    .line 251
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 254
    const/4 v7, 0x1

    .line 257
    :cond_3
    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/wm/DragState;->obtainDragEndedEvent(FFZ)Landroid/view/DragEvent;

    move-result-object v8

    .line 259
    .local v8, "event":Landroid/view/DragEvent;
    :try_start_0
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending DRAG_ENDED to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 261
    :catch_0
    move-exception v9

    goto :goto_2

    .line 260
    :cond_4
    :goto_1
    iget-object v9, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v9, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_3

    .line 261
    :goto_2
    nop

    .line 262
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to drag-end window "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_3
    sget v9, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v10, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v10, v10, Lcom/android/server/wm/Session;->mPid:I

    if-eq v9, v10, :cond_5

    .line 267
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 269
    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    .end local v5    # "inWindowX":F
    .end local v6    # "inWindowY":F
    .end local v7    # "includeDragSurface":Z
    .end local v8    # "event":Landroid/view/DragEvent;
    :cond_5
    goto :goto_0

    .line 270
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 272
    const-wide/16 v4, 0x20

    const-string v0, "DragDropController#DRAG_ENDED"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 276
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 278
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 280
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    .line 281
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v0

    if-nez v0, :cond_9

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_4

    .line 284
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-wide/16 v5, 0x1388

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v4, v5, v6}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V

    .line 287
    :goto_4
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 289
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-nez v0, :cond_b

    .line 290
    const-string v0, "Unexpectedly destroying mSurfaceControl while animation is running"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_b
    iput v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 294
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 295
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 296
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 298
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_c

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    .line 301
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    .line 305
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    .line 306
    return-void
.end method

.method endDragLocked(ZZ)V
    .locals 1
    .param p1, "dropConsumed"    # Z
    .param p2, "relinquishDragSurfaceToDropTarget"    # Z

    .line 683
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 684
    iput-boolean p2, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 685
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 686
    return-void

    .line 688
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 691
    return-void

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 695
    return-void
.end method

.method getInputToken()Landroid/os/IBinder;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 474
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getInputWindowHandle()Landroid/view/InputWindowHandle;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    :goto_0
    return-object v0
.end method

.method isAccessibilityDragDrop()Z
    .locals 1

    .line 935
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isClosing()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    return v0
.end method

.method isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .line 670
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 671
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    if-ne v1, p1, :cond_0

    .line 672
    const/4 v0, 0x1

    return v0

    .line 671
    :cond_0
    nop

    .line 674
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    goto :goto_0

    .line 675
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method register(Landroid/view/Display;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Display;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 484
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    const-string v0, "Registering drag input channel"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_1

    .line 486
    const-string v0, "Duplicate register of drag input channel"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 489
    :cond_1
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 490
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->showInputSurface()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method reportDropWindowLock(Landroid/os/IBinder;FF)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "inWindowX"    # F
    .param p3, "inWindowY"    # F

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x0

    return v0

    .line 357
    :cond_0
    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "DragDropController#DROP"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 358
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLockInner(Landroid/os/IBinder;FF)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 358
    return v2

    .line 360
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 361
    throw v2
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .line 659
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    return-void

    .line 664
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 665
    invoke-direct {p0, v2}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v2

    .line 664
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    .line 667
    :cond_1
    return-void
.end method

.method public targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;

    .line 648
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 649
    return v0

    .line 651
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method updateDragSurfaceLocked(ZIFF)V
    .locals 16
    .param p1, "keepHandling"    # Z
    .param p2, "displayId"    # I
    .param p3, "displayX"    # F
    .param p4, "displayY"    # F

    .line 723
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    .line 724
    return-void

    .line 726
    :cond_0
    iput v2, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    .line 727
    iput v3, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    .line 729
    iget-object v4, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 730
    .local v4, "lastSetDisplayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v5, 0x0

    .line 732
    .local v5, "cursorMovedToDifferentDisplay":Z
    nop

    .line 743
    if-nez p1, :cond_1

    .line 744
    return-void

    .line 748
    :cond_1
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v7, "WindowManager"

    if-eqz v6, :cond_2

    .line 749
    const-string v6, ">>> OPEN TRANSACTION notifyMoveLocked"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_2
    if-eqz v5, :cond_4

    .line 752
    iget v6, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    iget-object v8, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float v8, v8

    mul-float/2addr v6, v8

    iget v8, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 754
    iget v6, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget-object v8, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float v8, v8

    mul-float/2addr v6, v8

    iget v8, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 756
    iget v6, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget-object v8, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float v8, v8

    mul-float/2addr v6, v8

    iget v8, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 758
    iget-object v6, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v9, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 759
    iget-object v6, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v9, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    iget v10, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    invoke-virtual {v6, v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 761
    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v6

    .line 762
    .local v6, "inputWindowHandle":Landroid/view/InputWindowHandle;
    if-nez v6, :cond_3

    .line 763
    const-string v8, "Drag is in progress but there is no drag window handle."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void

    .line 766
    :cond_3
    iput v1, v6, Landroid/view/InputWindowHandle;->displayId:I

    .line 767
    iget-object v7, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v8, v6}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 769
    .end local v6    # "inputWindowHandle":Landroid/view/InputWindowHandle;
    :cond_4
    iget-object v6, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v8, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v8, v2, v8

    iget v9, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v9, v3, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    .line 770
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 771
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v7, 0x2

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    int-to-long v7, v1

    .local v7, "protoLogParam1":J
    iget v9, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v9, v2, v9

    float-to-int v9, v9

    int-to-long v9, v9

    .local v9, "protoLogParam2":J
    iget v11, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v11, v3, v11

    float-to-int v11, v11

    int-to-long v11, v11

    .local v11, "protoLogParam3":J
    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v6, v14, v15, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v14, -0x19ed2542bcb5cf97L    # -5.007157476380257E183

    const/16 v1, 0x54

    invoke-static {v13, v14, v15, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 773
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":J
    .end local v9    # "protoLogParam2":J
    .end local v11    # "protoLogParam3":J
    :cond_5
    return-void
.end method
