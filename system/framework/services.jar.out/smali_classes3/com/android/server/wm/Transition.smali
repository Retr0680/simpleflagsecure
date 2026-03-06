.class Lcom/android/server/wm/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Transition$ReadyTrackerOld;,
        Lcom/android/server/wm/Transition$ReadyTracker;,
        Lcom/android/server/wm/Transition$IContainerFreezer;,
        Lcom/android/server/wm/Transition$Token;,
        Lcom/android/server/wm/Transition$ChangeInfo;,
        Lcom/android/server/wm/Transition$ScreenshotFreezer;,
        Lcom/android/server/wm/Transition$ReadyCondition;,
        Lcom/android/server/wm/Transition$Targets;,
        Lcom/android/server/wm/Transition$ParallelType;,
        Lcom/android/server/wm/Transition$TransitionState;
    }
.end annotation


# static fields
.field static final PARALLEL_TYPE_MUTUAL:I = 0x1

.field static final PARALLEL_TYPE_NONE:I = 0x0

.field static final PARALLEL_TYPE_RECENTS:I = 0x2

.field private static final STATE_ABORT:I = 0x3

.field private static final STATE_COLLECTING:I = 0x0

.field private static final STATE_FINISHED:I = 0x4

.field private static final STATE_PENDING:I = -0x1

.field private static final STATE_PLAYING:I = 0x2

.field private static final STATE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Transition"

.field private static final TRACE_NAME_PLAY_TRANSITION:Ljava/lang/String; = "playing"


# instance fields
.field mAnimationTrack:I

.field private mCanPipOnFinish:Z

.field mChainHead:Lcom/android/server/wm/ActionChain;

.field final mChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

.field private mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

.field mConfigAtEndActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

.field final mController:Lcom/android/server/wm/TransitionController;

.field private mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mFlags:I

.field private mForcePlaying:Z

.field private mIsAnimationPerfLockAcquired:Z

.field mIsPlayerEnabled:Z

.field private mIsRecentsInterrupt:Z

.field private mIsSeamlessRotation:Z

.field final mLogger:Lcom/android/server/wm/TransitionController$Logger;

.field private mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

.field private mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

.field private final mOnTopTasksAtReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTopTasksStart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideBackgroundColor:I

.field private mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field mParallelCollectType:I

.field final mParticipants:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mPerf:Landroid/util/BoostFramework;

.field private mPipActivity:Lcom/android/server/wm/ActivityRecord;

.field mPriorVisibilityMightBeDirty:Z

.field final mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

.field private final mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

.field private mRecentsDisplayId:I

.field private mStartTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mState:I

.field mStatusBarTransitionDelay:J

.field private final mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field private mSyncId:I

.field private final mTargetDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Lcom/android/server/wm/Transition$Token;

.field mTransactionCompletedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientHideTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientLaunches:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionEndedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final mType:I

.field private final mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6P0d0TdcueYXfvom7E_tR-J1fP0(Ljava/lang/Runnable;Landroid/view/SurfaceControl$TransactionStats;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lambda$onTransactionReady$8(Ljava/lang/Runnable;Landroid/view/SurfaceControl$TransactionStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7u-fn7VqmBuRsg7PdONkj6v3G7w(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->lambda$finishTransition$5(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JF5kuO075N6GGSCYS1rcdSlMiJI(Lcom/android/server/wm/Transition;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->lambda$postCleanupOnFailure$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$M6wH2HEM1Z7mDppJQRMyBRlOzWk(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Transition;->lambda$setTransientLaunch$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SYsgHpqfl5XMocCZiY-l8D62cxM(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->lambda$findAnimLayoutParamsActivityRecord$11(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SZu63gJM1sDweH3PrOJU3kTDLPM(Lcom/android/server/wm/Transition;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/Transition;->lambda$setConfigAtEnd$1(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y8P9-rV0qdsR0ipKKvEe0HQAsN0(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Transition;->lambda$findAnimLayoutParamsActivityRecord$10(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ae2rOBsvLNpO5hISqyOOeQUaP48(Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->lambda$addOnTopTasks$2(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kPxQ7qFowyfVDQtPYc35gZ7JoMs(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lambda$commitConfigAtEndActivities$6(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-oAoCfJkscbIwo8-SCNzjktQkg(Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->lambda$sendRemoteCallback$3(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nm-N6zwqOkYjJbrt2zNKNbMnT08(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->lambda$findAnimLayoutParamsActivityRecord$12(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tznWdmYk4DuTLhN0IJ0SMRe633A(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Transition;->lambda$finishTransition$4(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ufArhAiG3KdgsKRoZwUPQwqztPs(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->lambda$commitConfigAtEndActivities$7(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zFYOP9SbyNZGO20udggjvZF1vsk(Landroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lambda$applyDisplayChangeIfNeeded$13(Landroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsSeamlessRotation(Lcom/android/server/wm/Transition;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/wm/Transition;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSyncId(Lcom/android/server/wm/Transition;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mapplyReady(Lcom/android/server/wm/Transition;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetDisplayId(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisInputMethod(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->isInputMethod(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisReadyGroup(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisTranslucent(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->isTranslucent(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "flags"    # I
    .param p3, "controller"    # Lcom/android/server/wm/TransitionController;
    .param p4, "syncEngine"    # Lcom/android/server/wm/BLASTSyncEngine;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 222
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 226
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mPerf:Landroid/util/BoostFramework;

    .line 227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mIsAnimationPerfLockAcquired:Z

    .line 231
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 238
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 241
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 259
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 265
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    .line 266
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

    .line 272
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    .line 278
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 288
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 291
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 302
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 303
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 305
    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 306
    new-instance v3, Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-direct {v3, v1}, Lcom/android/server/wm/Transition$ReadyTrackerOld;-><init>(Lcom/android/server/wm/Transition-IA;)V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 307
    new-instance v3, Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-direct {v3, p0}, Lcom/android/server/wm/Transition$ReadyTracker;-><init>(Lcom/android/server/wm/Transition;)V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 309
    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 317
    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    .line 318
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 328
    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    .line 330
    new-instance v3, Lcom/android/server/wm/TransitionController$Logger;

    invoke-direct {v3}, Lcom/android/server/wm/TransitionController$Logger;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 333
    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    .line 339
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 366
    iput v2, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 374
    iput v2, p0, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    .line 380
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 383
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mChainHead:Lcom/android/server/wm/ActionChain;

    .line 387
    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mIsRecentsInterrupt:Z

    .line 454
    iput p1, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 455
    iput p2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 456
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 457
    iput-object p4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 458
    new-instance v0, Lcom/android/server/wm/Transition$Token;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Transition$Token;-><init>(Lcom/android/server/wm/Transition;)V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wm/TransitionController$Logger;->mCreateWallTimeMs:J

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 464
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mPerf:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mPerf:Landroid/util/BoostFramework;

    .line 468
    :cond_0
    return-void
.end method

.method private static addCustomActivityTransition(Lcom/android/server/wm/ActivityRecord;ZLandroid/window/TransitionInfo$AnimationOptions;)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 4
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "open"    # Z
    .param p2, "animOptions"    # Landroid/window/TransitionInfo$AnimationOptions;

    .line 3523
    nop

    .line 3524
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->getCustomAnimation(Z)Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    move-result-object v0

    .line 3525
    .local v0, "customAnim":Lcom/android/server/wm/ActivityRecord$CustomAppTransition;
    if-eqz v0, :cond_1

    .line 3526
    if-nez p2, :cond_0

    .line 3527
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3528
    invoke-static {v1}, Landroid/window/TransitionInfo$AnimationOptions;->makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p2

    .line 3529
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p2, v1}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    .line 3531
    :cond_0
    iget v1, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    iget v2, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    iget v3, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    invoke-virtual {p2, p1, v1, v2, v3}, Landroid/window/TransitionInfo$AnimationOptions;->addCustomActivityTransition(ZIII)V

    .line 3534
    :cond_1
    return-object p2
.end method

.method private static addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "dc"    # Lcom/android/server/wm/DisplayContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 1000
    .local p1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1002
    .local v0, "topNotAlwaysOnTop":Lcom/android/server/wm/Task;
    if-nez v0, :cond_0

    return-void

    .line 1005
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isNtPopUpView()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1007
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    .line 1009
    return-void
.end method

.method private static addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 988
    .local p1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 989
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 990
    .local v1, "child":Lcom/android/server/wm/Task;
    if-nez v1, :cond_0

    return-void

    .line 991
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 988
    .end local v1    # "child":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 992
    .restart local v1    # "child":Lcom/android/server/wm/Task;
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    invoke-static {v1, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    .line 994
    nop

    .line 996
    .end local v0    # "i":I
    .end local v1    # "child":Lcom/android/server/wm/Task;
    :cond_2
    return-void
.end method

.method private addToTopChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 2
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 2550
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2551
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2552
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2554
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 2555
    return-void
.end method

.method private applyReady()V
    .locals 9

    .line 1195
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useFullReadyTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTracker;->isReady()Z

    move-result v0

    .local v0, "ready":Z
    goto :goto_0

    .line 1200
    .end local v0    # "ready":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    move-result v0

    .line 1202
    .restart local v0    # "ready":Z
    :goto_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_2

    move v1, v0

    .local v1, "protoLogParam0":Z
    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v2

    .local v2, "protoLogParam1":J
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x36b50dd81b48ce0fL    # -1.2018282467695568E45

    const/4 v8, 0x7

    invoke-static {v4, v6, v7, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1204
    .end local v1    # "protoLogParam0":Z
    .end local v2    # "protoLogParam1":J
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    move-result v1

    .line 1205
    .local v1, "changed":Z
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 1206
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/TransitionController$Logger;->mReadyTimeNs:J

    .line 1207
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1208
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1209
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 1208
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 1211
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1212
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

    .line 1213
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TransitionController;->onTransitionPopulated(Lcom/android/server/wm/Transition;)V

    .line 1215
    :cond_4
    return-void
.end method

.method static assignLayers(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")V"
        }
    .end annotation

    .line 1322
    .local p0, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 1324
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-boolean v0, v1, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 1327
    nop

    .line 1328
    return-void

    .line 1326
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-boolean v0, v2, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 1327
    throw v1
.end method

.method static asyncTraceBegin(Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 3784
    const-wide/16 v0, 0x20

    const-string v2, "Transition"

    invoke-static {v0, v1, v2, p0, p1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 3785
    return-void
.end method

.method static asyncTraceEnd(I)V
    .locals 3
    .param p0, "cookie"    # I

    .line 3788
    const-wide/16 v0, 0x20

    const-string v2, "Transition"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 3789
    return-void
.end method

.method private static buildCleanupTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V
    .locals 4
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "info"    # Landroid/window/TransitionInfo;

    .line 1335
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 1336
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 1337
    .local v2, "c":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1338
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1342
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v1

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 1343
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1344
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1345
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1344
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1335
    .end local v2    # "c":Landroid/window/TransitionInfo$Change;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 1348
    .end local v0    # "i":I
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1349
    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 1350
    .local v2, "leash":Landroid/view/SurfaceControl;
    if-nez v2, :cond_3

    goto :goto_2

    .line 1351
    :cond_3
    invoke-virtual {p0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1348
    .end local v2    # "leash":Landroid/view/SurfaceControl;
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    nop

    .line 1353
    .end local v0    # "i":I
    return-void
.end method

.method private buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;[Lcom/android/server/wm/DisplayContent;)V
    .locals 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "participantDisplays"    # [Lcom/android/server/wm/DisplayContent;

    .line 1274
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_5

    .line 1275
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1276
    .local v2, "target":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1277
    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1278
    .local v1, "targetLeash":Landroid/view/SurfaceControl;
    invoke-static {v2}, Lcom/android/server/wm/Transition;->getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v3

    .line 1281
    .local v3, "origParent":Landroid/view/SurfaceControl;
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_2

    .line 1283
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-boolean v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mIsKeyguardGoingAway:Z

    if-eqz v4, :cond_1

    .line 1284
    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1285
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1287
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip buildFinishTransaction. target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Transition"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    goto :goto_1

    .line 1292
    :cond_2
    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1293
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1294
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1295
    invoke-virtual {p1, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1296
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1300
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    nop

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1301
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_4

    .line 1302
    :cond_3
    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/wm/Transition;->resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V

    .line 1274
    .end local v1    # "targetLeash":Landroid/view/SurfaceControl;
    .end local v2    # "target":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v3    # "origParent":Landroid/view/SurfaceControl;
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    nop

    .line 1306
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    if-eqz v0, :cond_6

    .line 1307
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    invoke-interface {v0, p1}, Lcom/android/server/wm/Transition$IContainerFreezer;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    .line 1311
    :cond_6
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_7

    .line 1312
    aget-object v2, p3, v0

    invoke-static {v2, p1}, Lcom/android/server/wm/Transition;->assignLayers(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)V

    .line 1311
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    nop

    .line 1315
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 1316
    invoke-virtual {p2, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1315
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    nop

    .line 1318
    .end local v0    # "i":I
    return-void
.end method

.method private static calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 7
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Landroid/window/TransitionInfo$AnimationOptions;"
        }
    .end annotation

    .line 3471
    .local p1, "sortedTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    const/4 v0, 0x0

    .line 3475
    .local v0, "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    const/4 v1, 0x0

    .line 3476
    .local v1, "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3477
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3476
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3478
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3479
    nop

    .line 3481
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 3482
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3483
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/android/server/wm/Transition;->addCustomActivityTransition(Lcom/android/server/wm/ActivityRecord;ZLandroid/window/TransitionInfo$AnimationOptions;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    .line 3485
    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Lcom/android/server/wm/Transition;->addCustomActivityTransition(Lcom/android/server/wm/ActivityRecord;ZLandroid/window/TransitionInfo$AnimationOptions;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    .line 3488
    .end local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    nop

    .line 3489
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->findAnimLayoutParamsActivityRecord(ILjava/util/ArrayList;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3490
    .local v2, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3

    .line 3491
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    .line 3492
    .local v4, "mainWindow":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v4, :cond_4

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 3493
    .local v3, "animLp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    if-eqz v3, :cond_6

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v5, :cond_6

    .line 3498
    if-eqz v0, :cond_5

    .line 3499
    invoke-virtual {v0, v3}, Landroid/window/TransitionInfo$AnimationOptions;->addOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2

    .line 3501
    :cond_5
    nop

    .line 3502
    invoke-static {v3}, Landroid/window/TransitionInfo$AnimationOptions;->makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    .line 3503
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v5}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    .line 3506
    :cond_6
    :goto_2
    return-object v0
.end method

.method static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;"
        }
    .end annotation

    .line 3036
    .local p0, "participants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p1, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0xa51bfd09a803dffL

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v4, v5, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3040
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/server/wm/Transition$Targets;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/wm/Transition$Targets;-><init>(Lcom/android/server/wm/Transition-IA;)V

    .line 3041
    .local v0, "targets":Lcom/android/server/wm/Transition$Targets;
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 3042
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 3043
    .local v4, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3044
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v5, v5, v1

    nop

    if-eqz v5, :cond_4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, -0x64940b6165c5c105L

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v7, v8, v2, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3045
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    goto :goto_1

    .line 3049
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 3051
    :cond_2
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3053
    .local v5, "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    invoke-virtual {v5}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3054
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v6, v6, v1

    nop

    if-eqz v6, :cond_4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    .local v7, "protoLogParam1":Z
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v6, v9}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v10, -0x7032121ad5e4ca8aL

    const/16 v12, 0xc

    invoke-static {v8, v10, v11, v12, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3055
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":Z
    goto :goto_1

    .line 3058
    :cond_3
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 3041
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v5    # "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    nop

    .line 3060
    .end local v3    # "i":I
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x100392630555c6f8L

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5, v6, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3063
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_6
    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->tryPromote(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V

    .line 3065
    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->populateParentChanges(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V

    .line 3067
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$Targets;->getListSortedByZ()Ljava/util/ArrayList;

    move-result-object v3

    .line 3068
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x7f8e28b736a5c6c8L    # -1.587897648457723E-306

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5, v6, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3069
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_7
    return-object v3
.end method

.method static calculateTransitionInfo(IILjava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo;
    .locals 43
    .param p0, "type"    # I
    .param p1, "flags"    # I
    .param p3, "startT"    # Landroid/view/SurfaceControl$Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")",
            "Landroid/window/TransitionInfo;"
        }
    .end annotation

    .line 3245
    .local p2, "sortedTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Landroid/window/TransitionInfo;

    invoke-direct {v4, v0, v1}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 3246
    .local v4, "out":Landroid/window/TransitionInfo;
    invoke-static {v4, v2, v3}, Lcom/android/server/wm/Transition;->calculateTransitionRoots(Landroid/window/TransitionInfo;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V

    .line 3247
    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 3248
    return-object v4

    .line 3251
    :cond_0
    nop

    .line 3252
    invoke-static {v0, v2}, Lcom/android/server/wm/Transition;->calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v5

    .line 3254
    .local v5, "animOptionsForActivityTransition":Landroid/window/TransitionInfo$AnimationOptions;
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 3256
    .local v6, "occludedAtEndContainers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3257
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_24

    .line 3258
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3259
    .local v9, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    iget-object v10, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3260
    .local v10, "target":Lcom/android/server/wm/WindowContainer;
    new-instance v11, Landroid/window/TransitionInfo$Change;

    .line 3261
    iget-object v12, v10, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v12, :cond_1

    iget-object v12, v10, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v12

    goto :goto_1

    .line 3262
    :cond_1
    const/4 v12, 0x0

    :goto_1
    invoke-static {v10, v3}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-direct {v11, v12, v14}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    move-object v15, v11

    .line 3264
    .local v15, "change":Landroid/window/TransitionInfo$Change;
    iget-object v11, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v11, :cond_2

    .line 3265
    iget-object v11, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    iget-object v11, v11, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 3267
    :cond_2
    iget-object v11, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v11, :cond_3

    iget-object v11, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    iget-object v11, v11, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v11, :cond_3

    .line 3268
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eq v11, v12, :cond_3

    .line 3269
    iget-object v11, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    iget-object v11, v11, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/window/TransitionInfo$Change;->setLastParent(Landroid/window/WindowContainerToken;)V

    .line 3271
    :cond_3
    invoke-virtual {v9, v10}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v11

    invoke-virtual {v15, v11}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 3272
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    iput v11, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    .line 3273
    iget-object v11, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v11}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 3276
    and-int/lit16 v11, v1, 0x100

    const/4 v12, 0x1

    if-eqz v11, :cond_4

    .line 3277
    iput-boolean v12, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mIsKeyguardGoingAway:Z

    .line 3279
    :cond_4
    const/high16 v11, 0x20000

    and-int/2addr v11, v1

    if-eqz v11, :cond_5

    .line 3280
    iput-boolean v12, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mIsMoveTaskToBack:Z

    .line 3283
    :cond_5
    const/16 v11, 0xb

    if-ne v0, v11, :cond_6

    .line 3284
    iput-boolean v12, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mIsWakeTransit:Z

    .line 3289
    :cond_6
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v11

    iput v11, v15, Landroid/window/TransitionInfo$Change;->mActivityType:I

    .line 3291
    invoke-virtual {v9, v10}, Lcom/android/server/wm/Transition$ChangeInfo;->getChangeFlags(Lcom/android/server/wm/WindowContainer;)I

    move-result v11

    invoke-virtual {v15, v11}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 3292
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v11

    iput v11, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    .line 3293
    iget v11, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    invoke-static {v10}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v14

    invoke-virtual {v15, v11, v14}, Landroid/window/TransitionInfo$Change;->setDisplayId(II)V

    .line 3297
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    const/4 v14, 0x3

    if-eq v11, v14, :cond_7

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-ne v11, v12, :cond_9

    .line 3298
    :cond_7
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v11

    sub-int/2addr v11, v12

    .local v11, "occIndex":I
    :goto_2
    if-ltz v11, :cond_9

    .line 3299
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v10, v13}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3300
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v13

    const v16, 0x8000

    or-int v13, v13, v16

    invoke-virtual {v15, v13}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 3301
    goto :goto_3

    .line 3298
    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 3305
    .end local v11    # "occIndex":I
    :cond_9
    :goto_3
    const/4 v11, 0x4

    invoke-virtual {v15, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v11

    nop

    if-nez v11, :cond_b

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-eq v11, v12, :cond_a

    .line 3306
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-eq v11, v14, :cond_a

    .line 3307
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    const/4 v13, 0x6

    if-ne v11, v13, :cond_b

    .line 3308
    :cond_a
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3311
    :cond_b
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    .line 3312
    .local v11, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v13

    .line 3313
    .local v13, "taskFragment":Lcom/android/server/wm/TaskFragment;
    move/from16 v16, v12

    if-eqz v13, :cond_c

    .line 3314
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v17, v16

    goto :goto_4

    :cond_c
    const/16 v17, 0x0

    :goto_4
    move/from16 v34, v17

    .line 3316
    .local v34, "isEmbeddedTaskFragment":Z
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v17

    goto :goto_5

    :cond_d
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v35, v17

    .line 3317
    .local v35, "taskFragmentToken":Landroid/os/IBinder;
    move-object/from16 v12, v35

    .end local v35    # "taskFragmentToken":Landroid/os/IBinder;
    .local v12, "taskFragmentToken":Landroid/os/IBinder;
    invoke-virtual {v15, v12}, Landroid/window/TransitionInfo$Change;->setTaskFragmentToken(Landroid/os/IBinder;)V

    .line 3318
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    .line 3320
    .local v14, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v11, :cond_10

    .line 3321
    new-instance v16, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct/range {v16 .. v16}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    move-object/from16 v18, v16

    .line 3322
    .local v18, "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v18

    .end local v18    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v0, "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v11, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 3323
    invoke-virtual {v15, v0}, Landroid/window/TransitionInfo$Change;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 3324
    move-object/from16 v16, v0

    .end local v0    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v16, "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {v11}, Lcom/android/server/wm/Transition;->getTaskRotationAnimation(Lcom/android/server/wm/Task;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 3325
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3326
    .local v0, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_f

    .line 3327
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3328
    nop

    .line 3329
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v1

    .line 3328
    invoke-virtual {v15, v1}, Landroid/window/TransitionInfo$Change;->setAllowEnterPip(Z)V

    .line 3331
    :cond_e
    invoke-static {v15, v11, v0}, Lcom/android/server/wm/Transition;->setEndFixedRotationIfNeeded(Landroid/window/TransitionInfo$Change;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 3333
    .end local v0    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v16    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_f
    goto :goto_6

    :cond_10
    iget v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 3334
    const/4 v0, 0x3

    invoke-virtual {v15, v0}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 3337
    :goto_6
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 3338
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3339
    .local v1, "bounds":Landroid/graphics/Rect;
    move-object/from16 v35, v0

    .end local v0    # "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v35, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3340
    .local v0, "parentBounds":Landroid/graphics/Rect;
    move-object/from16 v36, v5

    .end local v5    # "animOptionsForActivityTransition":Landroid/window/TransitionInfo$AnimationOptions;
    .local v36, "animOptionsForActivityTransition":Landroid/window/TransitionInfo$AnimationOptions;
    iget v5, v1, Landroid/graphics/Rect;->left:I

    move/from16 v16, v5

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, v16, v5

    move-object/from16 v37, v6

    .end local v6    # "occludedAtEndContainers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local v37, "occludedAtEndContainers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    iget v6, v1, Landroid/graphics/Rect;->top:I

    move/from16 v16, v6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v16, v6

    invoke-virtual {v15, v5, v6}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    .line 3342
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v15, v5, v6}, Landroid/window/TransitionInfo$Change;->setEndParentSize(II)V

    .line 3343
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 3344
    .local v5, "endRotation":I
    if-eqz v14, :cond_11

    .line 3348
    invoke-virtual {v15, v0}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 3349
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    move-result v6

    nop

    if-eqz v6, :cond_13

    iget-object v6, v14, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3350
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v6

    if-nez v6, :cond_13

    .line 3352
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    goto :goto_7

    .line 3354
    :cond_11
    invoke-static {v10}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v10, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v6, :cond_12

    .line 3355
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    move-result v6

    nop

    if-eqz v6, :cond_12

    iget-object v6, v10, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3356
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v6

    if-nez v6, :cond_12

    .line 3359
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 3360
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    goto :goto_7

    .line 3362
    :cond_12
    invoke-virtual {v15, v1}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 3365
    :cond_13
    :goto_7
    if-nez v14, :cond_14

    if-eqz v34, :cond_15

    :cond_14
    goto :goto_8

    :cond_15
    move-object/from16 v38, v0

    move-object/from16 v39, v1

    goto :goto_c

    .line 3367
    :goto_8
    if-eqz v14, :cond_16

    .line 3368
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    goto :goto_9

    .line 3369
    :cond_16
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    :goto_9
    nop

    .line 3370
    .local v6, "organizedTf":Lcom/android/server/wm/TaskFragment;
    nop

    nop

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v16

    .line 3371
    invoke-virtual/range {v16 .. v16}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    move-result v16

    if-eqz v16, :cond_17

    .line 3375
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v16

    .line 3376
    invoke-virtual/range {v16 .. v16}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    move-result v16

    move-object/from16 v38, v0

    move/from16 v0, v16

    .local v16, "backgroundColor":I
    goto :goto_b

    .line 3380
    .end local v16    # "backgroundColor":I
    :cond_17
    if-eqz v14, :cond_18

    .line 3381
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16

    goto :goto_a

    .line 3382
    :cond_18
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16

    :goto_a
    nop

    .line 3383
    .local v16, "parentTask":Lcom/android/server/wm/Task;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v18

    move-object/from16 v38, v0

    move/from16 v0, v18

    .line 3387
    .end local v16    # "parentTask":Lcom/android/server/wm/Task;
    .local v0, "backgroundColor":I
    .local v38, "parentBounds":Landroid/graphics/Rect;
    :goto_b
    move-object/from16 v39, v1

    .end local v1    # "bounds":Landroid/graphics/Rect;
    .local v39, "bounds":Landroid/graphics/Rect;
    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    .line 3390
    .end local v0    # "backgroundColor":I
    .end local v6    # "organizedTf":Lcom/android/server/wm/TaskFragment;
    :goto_c
    const/4 v0, 0x0

    .line 3391
    .local v0, "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    if-eqz v14, :cond_19

    if-eqz v36, :cond_19

    .line 3392
    move-object/from16 v0, v36

    move/from16 v40, v7

    move/from16 v41, v8

    goto :goto_e

    .line 3393
    :cond_19
    if-eqz v34, :cond_1b

    .line 3394
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v1

    .line 3395
    .local v1, "params":Landroid/window/TaskFragmentAnimationParams;
    invoke-virtual {v1}, Landroid/window/TaskFragmentAnimationParams;->hasOverrideAnimation()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 3397
    nop

    .line 3398
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    .line 3399
    move-object/from16 v16, v0

    .end local v0    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .local v16, "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    invoke-virtual {v1}, Landroid/window/TaskFragmentAnimationParams;->getOpenAnimationResId()I

    move-result v0

    move-object/from16 v18, v1

    .end local v1    # "params":Landroid/window/TaskFragmentAnimationParams;
    .local v18, "params":Landroid/window/TaskFragmentAnimationParams;
    invoke-virtual/range {v18 .. v18}, Landroid/window/TaskFragmentAnimationParams;->getChangeAnimationResId()I

    move-result v1

    .line 3400
    move/from16 v40, v7

    .end local v7    # "count":I
    .local v40, "count":I
    invoke-virtual/range {v18 .. v18}, Landroid/window/TaskFragmentAnimationParams;->getCloseAnimationResId()I

    move-result v7

    .line 3397
    move/from16 v41, v8

    const/4 v8, 0x0

    .end local v8    # "i":I
    .local v41, "i":I
    invoke-static {v6, v0, v1, v7, v8}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    .line 3401
    .end local v16    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .restart local v0    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    goto :goto_e

    .line 3395
    .end local v18    # "params":Landroid/window/TaskFragmentAnimationParams;
    .end local v40    # "count":I
    .end local v41    # "i":I
    .restart local v1    # "params":Landroid/window/TaskFragmentAnimationParams;
    .restart local v7    # "count":I
    .restart local v8    # "i":I
    :cond_1a
    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move/from16 v40, v7

    move/from16 v41, v8

    .end local v0    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .end local v1    # "params":Landroid/window/TaskFragmentAnimationParams;
    .end local v7    # "count":I
    .end local v8    # "i":I
    .restart local v16    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .restart local v18    # "params":Landroid/window/TaskFragmentAnimationParams;
    .restart local v40    # "count":I
    .restart local v41    # "i":I
    goto :goto_d

    .line 3393
    .end local v16    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .end local v18    # "params":Landroid/window/TaskFragmentAnimationParams;
    .end local v40    # "count":I
    .end local v41    # "i":I
    .restart local v0    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .restart local v7    # "count":I
    .restart local v8    # "i":I
    :cond_1b
    move-object/from16 v16, v0

    move/from16 v40, v7

    move/from16 v41, v8

    .line 3404
    .end local v0    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .end local v7    # "count":I
    .end local v8    # "i":I
    .restart local v16    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .restart local v40    # "count":I
    .restart local v41    # "i":I
    :goto_d
    move-object/from16 v0, v16

    .end local v16    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .restart local v0    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    :goto_e
    if-eqz v0, :cond_1c

    .line 3405
    invoke-virtual {v15, v0}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 3408
    :cond_1c
    if-eqz v14, :cond_1d

    .line 3409
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v15, v1}, Landroid/window/TransitionInfo$Change;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 3412
    :cond_1d
    iget v1, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {v15, v1, v5}, Landroid/window/TransitionInfo$Change;->setRotation(II)V

    .line 3413
    iget-object v1, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1e

    .line 3414
    iget-object v1, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    iget v6, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshotLuma:F

    invoke-virtual {v15, v1, v6}, Landroid/window/TransitionInfo$Change;->setSnapshot(Landroid/view/SurfaceControl;F)V

    .line 3420
    :cond_1e
    iget-object v1, v10, Lcom/android/server/wm/WindowContainer;->mNtWindowContainer:Lcom/android/server/wm/INtWindowContainer;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v6

    invoke-interface {v1, v6}, Lcom/android/server/wm/INtWindowContainer;->getNtPopUpViewInfo(I)Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    .line 3421
    iget-object v1, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    if-eqz v1, :cond_1f

    .line 3422
    iget-object v1, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-boolean v1, v1, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mIsTryEnterWindowingMode:Z

    iget-object v6, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-boolean v6, v6, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mIsEnterWindowingModeLandscape:Z

    iget-object v7, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-boolean v7, v7, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mIsChangingWindowformBounds:Z

    iget-object v8, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v8, v8, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mStartPos:Landroid/graphics/Point;

    move-object/from16 v42, v0

    .end local v0    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .local v42, "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mEndPos:Landroid/graphics/Point;

    move-object/from16 v20, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mStartScale:F

    move/from16 v21, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mEndScale:F

    move/from16 v22, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mStartCornerRadius:F

    move/from16 v23, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mEndCornerRadius:F

    move/from16 v24, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mAppBounds:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mWindowCrop:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mStartDragOrChangingBounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mEndDragOrChangingBounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mBottomLeftCornerLeash:Landroid/view/SurfaceControl;

    move-object/from16 v29, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mBottomRightCornerLeash:Landroid/view/SurfaceControl;

    move-object/from16 v30, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mDragBarLeash:Landroid/view/SurfaceControl;

    move-object/from16 v31, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mCornerHintSize:Landroid/util/Size;

    move-object/from16 v32, v0

    iget-object v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;->mDragBarSize:Landroid/util/Size;

    move-object/from16 v33, v0

    move/from16 v16, v1

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    invoke-virtual/range {v15 .. v33}, Landroid/window/TransitionInfo$Change;->setNtPopUpViewInfo(ZZZLandroid/graphics/Point;Landroid/graphics/Point;FFFFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/util/Size;Landroid/util/Size;)V

    goto :goto_f

    .line 3421
    .end local v42    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .restart local v0    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    :cond_1f
    move-object/from16 v42, v0

    .line 3434
    .end local v0    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    .restart local v42    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    :goto_f
    iget v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_23

    .line 3436
    iget-boolean v0, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mIsKeyguardGoingAway:Z

    if-eqz v0, :cond_22

    .line 3438
    if-eqz v13, :cond_21

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 3439
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isNtPopUpView()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_10

    :cond_20
    const/4 v0, 0x0

    goto :goto_11

    .line 3440
    :cond_21
    :goto_10
    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3442
    :goto_11
    invoke-static {v10, v0}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 3444
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip addChange for changeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transition"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    goto :goto_12

    .line 3449
    :cond_23
    invoke-virtual {v4, v15}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 3257
    .end local v5    # "endRotation":I
    .end local v9    # "info":Lcom/android/server/wm/Transition$ChangeInfo;
    .end local v10    # "target":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "task":Lcom/android/server/wm/Task;
    .end local v12    # "taskFragmentToken":Landroid/os/IBinder;
    .end local v13    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v14    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v15    # "change":Landroid/window/TransitionInfo$Change;
    .end local v34    # "isEmbeddedTaskFragment":Z
    .end local v35    # "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v38    # "parentBounds":Landroid/graphics/Rect;
    .end local v39    # "bounds":Landroid/graphics/Rect;
    .end local v42    # "animOptions":Landroid/window/TransitionInfo$AnimationOptions;
    :goto_12
    add-int/lit8 v8, v41, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v5, v36

    move-object/from16 v6, v37

    move/from16 v7, v40

    .end local v41    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .end local v36    # "animOptionsForActivityTransition":Landroid/window/TransitionInfo$AnimationOptions;
    .end local v37    # "occludedAtEndContainers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v40    # "count":I
    .local v5, "animOptionsForActivityTransition":Landroid/window/TransitionInfo$AnimationOptions;
    .local v6, "occludedAtEndContainers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v7    # "count":I
    :cond_24
    nop

    .line 3453
    .end local v8    # "i":I
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/NtServicePopUpViewHelper;->calculateTransitionInfo(Ljava/util/ArrayList;Landroid/window/TransitionInfo;)V

    .line 3455
    return-object v4
.end method

.method static calculateTransitionRoots(Landroid/window/TransitionInfo;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V
    .locals 10
    .param p0, "outInfo"    # Landroid/window/TransitionInfo;
    .param p2, "startT"    # Landroid/view/SurfaceControl$Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")V"
        }
    .end annotation

    .line 3189
    .local p1, "sortedTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 3190
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3192
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-static {v1}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 3193
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 3194
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 3195
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 3198
    .local v3, "endDisplayId":I
    invoke-virtual {p0, v3}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result v4

    if-ltz v4, :cond_2

    goto/16 :goto_3

    .line 3200
    :cond_2
    invoke-static {p1, v1}, Lcom/android/server/wm/Transition;->findCommonAncestor(Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 3204
    .local v4, "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 3205
    .local v5, "hasReparent":Z
    move-object v6, v1

    .line 3206
    .local v6, "leashReference":Lcom/android/server/wm/WindowContainer;
    if-eqz v5, :cond_3

    .line 3207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Did not find common ancestor! Ancestor= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " target= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Transition"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3210
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-eq v7, v4, :cond_4

    .line 3211
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    goto :goto_1

    .line 3214
    :cond_4
    :goto_2
    if-ne v1, v6, :cond_5

    .line 3215
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 3219
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 3221
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transition Root: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3222
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3221
    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 3223
    const-string v8, "Transition.calculateTransitionRoots"

    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v7

    .line 3224
    .local v7, "rootLeash":Landroid/view/SurfaceControl;
    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 3227
    invoke-static {v2, p2}, Lcom/android/server/wm/Transition;->assignLayers(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)V

    .line 3228
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 3229
    nop

    .line 3230
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 3229
    invoke-virtual {p0, v3, v7, v8, v9}, Landroid/window/TransitionInfo;->addRootLeash(ILandroid/view/SurfaceControl;II)V

    .line 3189
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "endDisplayId":I
    .end local v4    # "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v5    # "hasReparent":Z
    .end local v6    # "leashReference":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "rootLeash":Landroid/view/SurfaceControl;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    nop

    .line 3232
    .end local v0    # "i":I
    return-void
.end method

.method private static canPromote(Lcom/android/server/wm/Transition$ChangeInfo;Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)Z
    .locals 18
    .param p0, "targetChange"    # Lcom/android/server/wm/Transition$ChangeInfo;
    .param p1, "targets"    # Lcom/android/server/wm/Transition$Targets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            "Lcom/android/server/wm/Transition$Targets;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2914
    .local p2, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2915
    .local v2, "target":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 2916
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2917
    .local v4, "parentChange":Lcom/android/server/wm/Transition$ChangeInfo;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_f

    if-eqz v4, :cond_f

    .line 2918
    invoke-virtual {v4}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v12, p1

    move/from16 v17, v6

    goto/16 :goto_4

    .line 2923
    :cond_0
    invoke-static {v2}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 2924
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x25ad13ad2acccd76L    # -1.280947603135937E127

    invoke-static {v5, v9, v10, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2925
    :cond_1
    return v7

    .line 2928
    :cond_2
    iget-object v5, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    iget-object v9, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eq v5, v9, :cond_3

    .line 2931
    return v7

    .line 2934
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    .line 2935
    .local v5, "mode":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v6

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_e

    .line 2936
    invoke-virtual {v3, v9}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    .line 2937
    .local v10, "sibling":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-ne v2, v10, :cond_4

    move-object/from16 v12, p1

    move/from16 v17, v6

    move-object v13, v8

    move/from16 v16, v9

    goto/16 :goto_3

    .line 2938
    :cond_4
    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v11, v11, v6

    if-eqz v11, :cond_5

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam0":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v13, 0x19bfecb549673b62L

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v12, v13, v14, v7, v15}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2940
    .end local v11    # "protoLogParam0":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2941
    .local v11, "siblingChange":Lcom/android/server/wm/Transition$ChangeInfo;
    if-eqz v11, :cond_a

    move-object/from16 v12, p1

    invoke-virtual {v12, v11}, Lcom/android/server/wm/Transition$Targets;->wasParticipated(Lcom/android/server/wm/Transition$ChangeInfo;)Z

    move-result v13

    if-nez v13, :cond_6

    move/from16 v17, v6

    move/from16 v16, v9

    goto :goto_2

    .line 2953
    :cond_6
    invoke-virtual {v11, v10}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v13

    .line 2954
    .local v13, "siblingMode":I
    sget-object v14, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v14, v14, v6

    if-eqz v14, :cond_7

    invoke-static {v13}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .local v14, "protoLogParam0":Ljava/lang/String;
    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    move/from16 v16, v9

    .end local v9    # "i":I
    .local v16, "i":I
    const-wide v8, 0x35c169e944f53a58L    # 9.30855293649066E-50

    move/from16 v17, v6

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v15, v8, v9, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1

    .end local v14    # "protoLogParam0":Ljava/lang/String;
    .end local v16    # "i":I
    .restart local v9    # "i":I
    :cond_7
    move/from16 v17, v6

    move/from16 v16, v9

    .line 2957
    .end local v9    # "i":I
    .restart local v16    # "i":I
    :goto_1
    invoke-static {v5}, Lcom/android/server/wm/Transition;->reduceMode(I)I

    move-result v6

    invoke-static {v13}, Lcom/android/server/wm/Transition;->reduceMode(I)I

    move-result v8

    if-eq v6, v8, :cond_9

    .line 2958
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v6, v6, v17

    if-eqz v6, :cond_8

    invoke-static {v5}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v14, 0x6a61845989c233aaL    # 2.7460382737481744E204

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v14, v15, v7, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2961
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_8
    return v7

    .line 2957
    :cond_9
    const/4 v13, 0x0

    goto :goto_3

    .line 2941
    .end local v13    # "siblingMode":I
    .end local v16    # "i":I
    .restart local v9    # "i":I
    :cond_a
    move-object/from16 v12, p1

    move/from16 v17, v6

    move/from16 v16, v9

    .line 2942
    .end local v9    # "i":I
    .restart local v16    # "i":I
    :goto_2
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2944
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v6, v6, v17

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x5751d4667473cf6dL    # -9.801023515249834E-113

    const/4 v13, 0x0

    invoke-static {v6, v8, v9, v7, v13}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2946
    :cond_b
    return v7

    .line 2948
    :cond_c
    const/4 v13, 0x0

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v6, v6, v17

    nop

    if-eqz v6, :cond_d

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v14, 0x6d9a1d968ce03c38L    # 9.218844765689588E219

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v14, v15, v7, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2949
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    nop

    .line 2935
    .end local v10    # "sibling":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v11    # "siblingChange":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_d
    :goto_3
    add-int/lit8 v9, v16, -0x1

    move-object v8, v13

    move/from16 v6, v17

    .end local v16    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_0

    :cond_e
    move/from16 v17, v6

    .line 2964
    .end local v9    # "i":I
    return v17

    .line 2917
    .end local v5    # "mode":I
    :cond_f
    move-object/from16 v12, p1

    move/from16 v17, v6

    .line 2919
    :goto_4
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v5, v5, v17

    if-eqz v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parent can\'t be target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0xa86bcf20866cc83L    # -7.586175146368892E257

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v8, v9, v7, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2921
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_10
    return v7
.end method

.method private checkEnterPipOnFinish(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 6
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 1381
    iget-boolean v0, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto/16 :goto_0

    .line 1385
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Transition;->getVisibleTransientLaunch(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1386
    .local v0, "resuming":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1387
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/Transition;->didCommitTransientLaunch()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1390
    :cond_2
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 1395
    :cond_3
    const-string v2, "enterPictureInPictureMode"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1397
    return v1

    .line 1399
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    .line 1400
    .local v2, "prevMode":I
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v4, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v4, p1, v5, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;ZZ)Z

    move-result v1

    .line 1402
    .local v1, "inPip":Z
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    .line 1403
    .local v4, "currentMode":I
    if-ne v2, v3, :cond_5

    const/4 v3, 0x2

    if-ne v4, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1405
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1410
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v3}, Lcom/android/server/wm/PinnedTaskController;->setEnterPipWithRotatedTransientLaunch()V

    .line 1412
    :cond_5
    return v1

    .line 1416
    .end local v1    # "inPip":Z
    .end local v2    # "prevMode":I
    .end local v4    # "currentMode":I
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/Transition;->didCommitTransientLaunch()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1417
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1420
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 1425
    :cond_8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1426
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    const-string v3, "finishTransition"

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1428
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v1, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1429
    nop

    .line 1431
    return v1

    .line 1428
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1429
    throw v2

    .line 1382
    .end local v0    # "resuming":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    return v1
.end method

.method private cleanUpInternal()V
    .locals 3

    .line 2584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2585
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2586
    .local v1, "ci":Lcom/android/server/wm/Transition$ChangeInfo;
    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    .line 2587
    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 2584
    .end local v1    # "ci":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2590
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_2

    .line 2591
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2594
    :cond_2
    return-void
.end method

.method private commitConfigAtEndActivities()V
    .locals 9

    .line 1857
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto/16 :goto_4

    .line 1863
    :cond_1
    const/4 v0, -0x1

    .line 1864
    .local v0, "syncId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1865
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1866
    .local v2, "target":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 1867
    .local v3, "targetLeash":Landroid/view/SurfaceControl;
    if-nez v3, :cond_2

    .line 1869
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    .line 1870
    goto :goto_3

    .line 1872
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->isIgnoring(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    goto :goto_1

    .line 1885
    :cond_4
    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_2

    .line 1873
    :goto_1
    if-gez v0, :cond_5

    .line 1874
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v6, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda6;-><init>()V

    const-string v7, "ConfigAtTransitEnd"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/BLASTSyncEngine;->prepareSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;Ljava/lang/String;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v4

    .line 1877
    .local v4, "sg":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    iget v0, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 1878
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v4, v7, v8, v5}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    .line 1879
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v6, v0, v5}, Lcom/android/server/wm/BLASTSyncEngine;->setSyncMethod(II)V

    .line 1881
    .end local v4    # "sg":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v4, v0, v2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 1892
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/wm/Transition;->resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V

    .line 1893
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    .line 1864
    .end local v2    # "target":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "targetLeash":Landroid/view/SurfaceControl;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    nop

    .line 1895
    .end local v1    # "i":I
    if-ltz v0, :cond_7

    .line 1896
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    .line 1898
    :cond_7
    return-void

    .line 1858
    .end local v0    # "syncId":I
    :goto_4
    return-void
.end method

.method private commitVisibleActivities(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 2598
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 2599
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2600
    .local v2, "ar":Lcom/android/server/wm/ActivityRecord;
    nop

    nop

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2601
    goto :goto_1

    .line 2603
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2604
    invoke-virtual {v2, v1, v4, v1}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 2606
    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityRecord;->commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)V

    .line 2608
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 2598
    .end local v2    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 2610
    .end local v0    # "i":I
    return-void
.end method

.method private commitVisibleWallpapers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2613
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->shouldWallpaperBeVisible()Z

    move-result v0

    .line 2614
    .local v0, "showWallpaper":Z
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2615
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v2

    .line 2616
    .local v2, "wallpaper":Lcom/android/server/wm/WallpaperWindowToken;
    if-eqz v2, :cond_1

    .line 2617
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2618
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 2620
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2621
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 2622
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 2621
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2614
    .end local v2    # "wallpaper":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 2627
    .end local v1    # "i":I
    return-void
.end method

.method static containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z
    .locals 3
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2026
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2027
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-ne v2, p0, :cond_0

    return v1

    .line 2026
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 2029
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method private didCommitTransientLaunch()Z
    .locals 3

    .line 1365
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1366
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1367
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1368
    const/4 v1, 0x1

    return v1

    .line 1366
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1371
    .end local v0    # "j":I
    return v1
.end method

.method private static findAnimLayoutParamsActivityRecord(ILjava/util/ArrayList;)Lcom/android/server/wm/ActivityRecord;
    .locals 6
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 3637
    .local p1, "sortedTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3638
    .local v0, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3639
    .local v1, "targetCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 3640
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3641
    .local v4, "target":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3642
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3643
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_1

    .line 3648
    return-object v3

    .line 3639
    .end local v4    # "target":Lcom/android/server/wm/WindowContainer;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 3651
    .end local v2    # "i":I
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3654
    return-object v3

    .line 3656
    :cond_3
    invoke-static {p1, p0, v0}, Lcom/android/server/wm/Transition;->findAnimLayoutParamsActivityRecord(Ljava/util/List;ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    return-object v2
.end method

.method private static findAnimLayoutParamsActivityRecord(Ljava/util/List;ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 3663
    .local p0, "sortedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda8;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {p0, v0}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3666
    .local v0, "result":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3667
    return-object v0

    .line 3669
    :cond_0
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p0, v1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3671
    if-eqz v0, :cond_1

    .line 3672
    return-object v0

    .line 3674
    :cond_1
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p0, v1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method private static findCommonAncestor(Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;"
        }
    .end annotation

    .line 3590
    .local p0, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    .local p1, "topApp":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    .line 3591
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 3594
    .local v1, "ancestor":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 3595
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3596
    .local v3, "change":Lcom/android/server/wm/Transition$ChangeInfo;
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3597
    .local v4, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-static {v4}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    nop

    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 3599
    goto :goto_3

    .line 3606
    :cond_0
    iget-object v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 3607
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eq v5, v6, :cond_2

    .line 3608
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    .line 3609
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    .line 3610
    .local v5, "transitionMode":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 3611
    :cond_1
    iget-object v1, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 3612
    goto :goto_3

    .line 3615
    .end local v5    # "transitionMode":I
    :cond_2
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3616
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_1

    .line 3622
    :cond_3
    iget-object v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    .line 3623
    .local v5, "prevParent":Lcom/android/server/wm/WindowContainer;
    nop

    nop

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3624
    goto :goto_3

    .line 3626
    :cond_4
    :goto_2
    if-eq v5, v1, :cond_5

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3627
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_2

    .line 3594
    .end local v3    # "change":Lcom/android/server/wm/Transition$ChangeInfo;
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "prevParent":Lcom/android/server/wm/WindowContainer;
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    nop

    .line 3630
    .end local v2    # "i":I
    return-object v1
.end method

.method static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;
    .locals 4
    .param p0, "token"    # Landroid/os/IBinder;

    .line 472
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 474
    :cond_0
    :try_start_0
    move-object v1, p0

    check-cast v1, Lcom/android/server/wm/Transition$Token;

    iget-object v1, v1, Lcom/android/server/wm/Transition$Token;->mTransition:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid transition token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Transition"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    return-object v0
.end method

.method private static getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;"
        }
    .end annotation

    .line 2831
    .local p0, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2832
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 2833
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2834
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    .line 2836
    :cond_0
    return-object v0
.end method

.method private static getDisplayId(Lcom/android/server/wm/WindowContainer;)I
    .locals 1
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 3180
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3181
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3180
    :goto_0
    return v0
.end method

.method private static getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 3
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 3142
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3143
    .local v0, "asDC":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 3146
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 3148
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3149
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v1

    .line 3150
    .local v1, "asToken":Lcom/android/server/wm/WindowToken;
    if-eqz v1, :cond_2

    .line 3153
    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowToken;->getOrCreateFixedRotationLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_0

    .line 3154
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getFixedRotationLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    :goto_0
    nop

    .line 3155
    .local v2, "leash":Landroid/view/SurfaceControl;
    if-eqz v2, :cond_2

    return-object v2

    .line 3158
    .end local v1    # "asToken":Lcom/android/server/wm/WindowToken;
    .end local v2    # "leash":Landroid/view/SurfaceControl;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method private static getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 3162
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3165
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 3167
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method private static getTaskRotationAnimation(Lcom/android/server/wm/Task;)I
    .locals 5
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 3693
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3694
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 3695
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3696
    .local v2, "mainWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_1

    return v1

    .line 3697
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v3

    .line 3698
    .local v3, "anim":I
    if-ltz v3, :cond_2

    return v3

    .line 3699
    :cond_2
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3700
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    return v3

    .line 3701
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-ne v2, v4, :cond_5

    .line 3702
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 3706
    :cond_4
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    return v1

    .line 3704
    :cond_5
    :goto_0
    return v1
.end method

.method private getVisibleTransientLaunch(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .locals 4
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1902
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1903
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1904
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1905
    .local v2, "candidateActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eq v3, p1, :cond_1

    .line 1906
    goto :goto_1

    .line 1908
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1909
    nop

    .line 1903
    .end local v2    # "candidateActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1911
    .restart local v2    # "candidateActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    return-object v2

    .line 1903
    .end local v2    # "candidateActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    nop

    .line 1913
    .end local v0    # "i":I
    return-object v1
.end method

.method private handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V
    .locals 11
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "info"    # Landroid/window/TransitionInfo;

    .line 2640
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 2641
    return-void

    .line 2645
    :cond_0
    nop

    .line 2646
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const-string v1, "recents_animation_input_consumer"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    .line 2647
    .local v0, "recentsAnimationInputConsumer":Lcom/android/server/wm/InputConsumerImpl;
    const/4 v1, 0x0

    .line 2648
    .local v1, "recentsTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    .line 2652
    const/4 v5, 0x0

    .line 2653
    .local v5, "topNonRecentsTask":Lcom/android/server/wm/Task;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 2654
    nop

    .line 2655
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    .line 2656
    .local v7, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v7, :cond_1

    goto :goto_3

    .line 2657
    :cond_1
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {v8}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v8

    .line 2658
    .local v8, "task":Lcom/android/server/wm/Task;
    if-nez v8, :cond_2

    goto :goto_3

    .line 2659
    :cond_2
    iget v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 2660
    .local v9, "activityType":I
    if-eq v9, v3, :cond_3

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    move v10, v2

    goto :goto_2

    :goto_1
    move v10, v4

    .line 2662
    .local v10, "isRecents":Z
    :goto_2
    if-eqz v10, :cond_5

    if-nez v1, :cond_5

    .line 2663
    move-object v1, v8

    goto :goto_3

    .line 2664
    :cond_5
    if-nez v10, :cond_6

    if-nez v5, :cond_6

    .line 2665
    move-object v5, v8

    .line 2653
    .end local v7    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "activityType":I
    .end local v10    # "isRecents":Z
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    nop

    .line 2668
    .end local v6    # "i":I
    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    .line 2669
    iget-object v6, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v6, v6, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 2670
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2669
    invoke-virtual {v6, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2671
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 2675
    .end local v5    # "topNonRecentsTask":Lcom/android/server/wm/Task;
    :cond_8
    if-nez v1, :cond_9

    .line 2677
    return-void

    .line 2679
    :cond_9
    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v5, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 2683
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2685
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v5

    if-eqz v5, :cond_a

    goto/16 :goto_a

    .line 2689
    :cond_a
    const/4 v5, 0x0

    .line 2691
    .local v5, "topWC":Lcom/android/server/wm/WindowContainer;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 2692
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 2693
    .local v7, "c":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v9, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-ne v8, v9, :cond_c

    .line 2694
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v8

    if-ne v8, v4, :cond_c

    .line 2695
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    if-eq v8, v3, :cond_b

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_b

    .line 2696
    goto :goto_5

    .line 2698
    :cond_b
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 2699
    goto :goto_6

    .line 2691
    .end local v7    # "c":Landroid/window/TransitionInfo$Change;
    :cond_c
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2701
    .end local v6    # "i":I
    :cond_d
    :goto_6
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    goto :goto_9

    .line 2705
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 2706
    .local v3, "navWindow":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_10

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v6, :cond_11

    :cond_10
    goto :goto_8

    .line 2709
    :cond_11
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iput-boolean v4, v6, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 2710
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 2711
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    .line 2712
    .local v6, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    .line 2713
    .local v7, "navSurfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2714
    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2716
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v8

    .line 2717
    .local v8, "imeContainer":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2718
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v6, v7, v9, v4}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7

    .line 2721
    :cond_12
    const v4, 0x7fffffff

    invoke-virtual {v6, v7, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2723
    :goto_7
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/Transition;->sendLumaSamplingEnabledToStatusBarInternal(Lcom/android/server/wm/DisplayContent;Z)V

    .line 2724
    return-void

    .line 2707
    .end local v6    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v7    # "navSurfaceControl":Landroid/view/SurfaceControl;
    .end local v8    # "imeContainer":Lcom/android/server/wm/WindowContainer;
    :goto_8
    return-void

    .line 2702
    .end local v3    # "navWindow":Lcom/android/server/wm/WindowState;
    :goto_9
    return-void

    .line 2686
    .end local v5    # "topWC":Lcom/android/server/wm/WindowContainer;
    :cond_13
    :goto_a
    return-void
.end method

.method private invokeTransitionEndedListeners()V
    .locals 2

    .line 1847
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1848
    return-void

    .line 1850
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1851
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1853
    .end local v0    # "i":I
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 1854
    return-void
.end method

.method private static isInputMethod(Lcom/android/server/wm/WindowContainer;)Z
    .locals 2
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 2851
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v0

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 3176
    instance-of v0, p0, Lcom/android/server/wm/DisplayContent;

    return v0
.end method

.method private static isTranslucent(Lcom/android/server/wm/WindowContainer;)Z
    .locals 3
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 2871
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 2872
    .local v0, "taskFragment":Lcom/android/server/wm/TaskFragment;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2873
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 2878
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2880
    return v1

    .line 2882
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2884
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 2888
    :cond_2
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v1

    return v1
.end method

.method private static isWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 2847
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$addOnTopTasks$2(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$applyDisplayChangeIfNeeded$13(Landroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "activitiesMayChange"    # Landroid/util/ArraySet;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3771
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3772
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3774
    :cond_0
    return-void
.end method

.method private static synthetic lambda$commitConfigAtEndActivities$6(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p0, "mSyncId"    # I
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1875
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static synthetic lambda$commitConfigAtEndActivities$7(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 1886
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 1887
    return-void
.end method

.method private static synthetic lambda$findAnimLayoutParamsActivityRecord$10(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "transit"    # I
    .param p1, "activityTypes"    # Landroid/util/ArraySet;
    .param p2, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 3664
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3665
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3664
    :goto_0
    return v0
.end method

.method private static synthetic lambda$findAnimLayoutParamsActivityRecord$11(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 3670
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$findAnimLayoutParamsActivityRecord$12(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 3674
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$finishTransition$4(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1484
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1485
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1489
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1490
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1495
    :goto_0
    return-void

    .line 1498
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1499
    return-void
.end method

.method private static synthetic lambda$finishTransition$5(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p0, "tr"    # Lcom/android/server/wm/Task;

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1617
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1618
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1619
    .local v0, "currTop":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_1

    return-void

    .line 1620
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1621
    :cond_2
    const-string v1, "Transition"

    const-string v2, "Enter-PIP was started but not completed, this is a Shell/SysUI bug. This state breaks gesture-nav, so attempting clean-up."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->abortPipEnter(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1627
    return-void

    .line 1617
    .end local v0    # "currTop":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onTransactionReady$8(Ljava/lang/Runnable;Landroid/view/SurfaceControl$TransactionStats;)V
    .locals 0
    .param p0, "listener"    # Ljava/lang/Runnable;
    .param p1, "stats"    # Landroid/view/SurfaceControl$TransactionStats;

    .line 2057
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$postCleanupOnFailure$9()V
    .locals 2

    .line 2559
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2560
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    .line 2561
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2562
    return-void

    .line 2561
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static synthetic lambda$sendRemoteCallback$3(Landroid/os/IRemoteCallback;)V
    .locals 1
    .param p0, "cb"    # Landroid/os/IRemoteCallback;

    .line 1150
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1152
    :goto_1
    return-void
.end method

.method private synthetic lambda$setConfigAtEnd$1(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 705
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    goto :goto_0

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    return-void

    .line 711
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->pauseConfigurationDispatch()V

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 714
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 715
    return-void

    .line 705
    :goto_1
    return-void
.end method

.method private synthetic lambda$setTransientLaunch$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .locals 8
    .param p1, "transientLaunchRootTask"    # Lcom/android/server/wm/Task;
    .param p2, "restoreBelow"    # Lcom/android/server/wm/Task;
    .param p3, "t"    # Lcom/android/server/wm/Task;

    .line 533
    const/4 v0, 0x0

    if-ne p3, p1, :cond_0

    return v0

    .line 534
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v1

    if-nez v1, :cond_3

    .line 535
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p3, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v3, v1

    .local v3, "protoLogParam0":J
    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x36ec53650f09c873L    # -1.0968754893250029E44

    invoke-static {v1, v6, v7, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 538
    .end local v3    # "protoLogParam0":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 544
    :cond_3
    if-eqz p2, :cond_4

    .line 546
    if-ne p3, p2, :cond_5

    move v0, v2

    goto :goto_0

    .line 548
    :cond_4
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    .line 544
    :cond_5
    :goto_0
    return v0
.end method

.method private static lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 3679
    .local p0, "sortedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 3680
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3681
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3682
    .local v2, "target":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3683
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_1

    .line 3684
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    :goto_1
    nop

    .line 3685
    .local v3, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3686
    return-object v3

    .line 3680
    .end local v2    # "target":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 3689
    .end local v1    # "i":I
    const/4 v1, 0x0

    return-object v1
.end method

.method private static occludesKeyguard(Lcom/android/server/wm/WindowContainer;)Z
    .locals 5
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 2855
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2856
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2857
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    return v1

    .line 2859
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2860
    .local v1, "t":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2864
    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2865
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 2867
    .end local v3    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    return v2
.end method

.method private static populateParentChanges(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V
    .locals 10
    .param p0, "targets"    # Lcom/android/server/wm/Transition$Targets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Transition$Targets;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 3075
    .local p1, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3077
    .local v0, "intermediates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3078
    .local v1, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    iget-object v2, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 3079
    iget-object v3, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3078
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 3081
    .end local v2    # "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_c

    .line 3082
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3083
    .local v3, "targetChange":Lcom/android/server/wm/Transition$ChangeInfo;
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3085
    .local v4, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-static {v4}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    .line 3086
    .local v5, "skipIntermediateReports":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3087
    const/4 v6, 0x0

    .line 3089
    .local v6, "foundParentInTargets":Z
    invoke-static {v4}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    .local v7, "p":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_2
    if-eqz v7, :cond_8

    .line 3091
    invoke-virtual {p1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3092
    .local v8, "parentChange":Lcom/android/server/wm/Transition$ChangeInfo;
    if-nez v8, :cond_1

    .line 3093
    goto :goto_5

    .line 3095
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v9

    if-nez v9, :cond_2

    .line 3099
    goto :goto_4

    .line 3101
    :cond_2
    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-nez v9, :cond_3

    .line 3103
    goto :goto_4

    .line 3105
    :cond_3
    iget-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v9, :cond_4

    if-nez v5, :cond_4

    .line 3106
    iput-object v7, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 3108
    goto :goto_5

    .line 3110
    :cond_4
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3111
    if-eqz v5, :cond_5

    .line 3112
    iput-object v7, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_3

    .line 3114
    :cond_5
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3116
    :goto_3
    const/4 v6, 0x1

    .line 3117
    goto :goto_5

    .line 3118
    :cond_6
    invoke-static {v7}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-nez v5, :cond_7

    .line 3119
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3090
    .end local v8    # "parentChange":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_7
    :goto_4
    invoke-static {v7}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    goto :goto_2

    .line 3122
    .end local v7    # "p":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    goto :goto_7

    .line 3124
    :cond_a
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v7, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 3125
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_b

    .line 3126
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3127
    .local v8, "intermediate":Lcom/android/server/wm/Transition$ChangeInfo;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 3128
    invoke-virtual {p0, v8}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 3125
    .end local v8    # "intermediate":Lcom/android/server/wm/Transition$ChangeInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 3081
    .end local v3    # "targetChange":Lcom/android/server/wm/Transition$ChangeInfo;
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "skipIntermediateReports":Z
    .end local v6    # "foundParentInTargets":Z
    .end local v7    # "j":I
    :cond_b
    :goto_7
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_c
    nop

    .line 3131
    .end local v2    # "i":I
    return-void
.end method

.method private postCleanupOnFailure()V
    .locals 2

    .line 2558
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/Transition;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2563
    return-void
.end method

.method private recordDisplay(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 963
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 966
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_2

    .line 967
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 968
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 973
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionPending(I)V

    .line 976
    return-void

    .line 963
    :goto_0
    return-void
.end method

.method private static reduceMode(I)I
    .locals 1
    .param p0, "mode"    # I

    .line 2970
    packed-switch p0, :pswitch_data_0

    .line 2973
    return p0

    .line 2971
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2972
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 2843
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    return v0
.end method

.method private reportStartReasonsToLogger()V
    .locals 5

    .line 2786
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2787
    .local v0, "reasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 2788
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2789
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    goto :goto_2

    .line 2790
    :cond_1
    const/4 v3, 0x2

    .line 2793
    .local v3, "transitionReason":I
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v4, v4, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v4, :cond_2

    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    if-nez v4, :cond_2

    .line 2794
    const/4 v3, 0x1

    goto :goto_1

    .line 2795
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2796
    const/4 v3, 0x5

    .line 2798
    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2787
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "transitionReason":I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 2800
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 2802
    return-void
.end method

.method private resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V
    .locals 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "target"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "targetLeash"    # Landroid/view/SurfaceControl;

    .line 1243
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1244
    .local v0, "tmpPos":Landroid/graphics/Point;
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 1245
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, p3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1249
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1250
    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 1253
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1254
    .local v1, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1, p3, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1256
    .end local v1    # "clipRect":Landroid/graphics/Rect;
    :goto_0
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p3

    .end local p1    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local p3    # "targetLeash":Landroid/view/SurfaceControl;
    .local v4, "t":Landroid/view/SurfaceControl$Transaction;
    .local v5, "targetLeash":Landroid/view/SurfaceControl;
    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1261
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1262
    const/4 p1, -0x1

    invoke-virtual {v4, v5, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1264
    :cond_1
    return-void
.end method

.method private sendLumaSamplingEnabledToStatusBarInternal(Lcom/android/server/wm/DisplayContent;Z)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "enabled"    # Z

    .line 2777
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 2778
    .local v0, "bar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 2779
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 2781
    :cond_0
    return-void
.end method

.method private sendRemoteCallback(Landroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/IRemoteCallback;

    .line 1147
    if-nez p1, :cond_0

    return-void

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1153
    return-void
.end method

.method private static setEndFixedRotationIfNeeded(Landroid/window/TransitionInfo$Change;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p0, "change"    # Landroid/window/TransitionInfo$Change;
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "taskTopRunning"    # Lcom/android/server/wm/ActivityRecord;

    .line 3539
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3541
    return-void

    .line 3543
    :cond_0
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3544
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3549
    return-void

    .line 3551
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 3552
    .local v0, "taskRotation":I
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    .line 3553
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    .line 3556
    .local v1, "activityRotation":I
    if-eq v0, v1, :cond_2

    .line 3557
    invoke-virtual {p0, v1}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    .line 3558
    return-void

    .line 3565
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    goto :goto_0

    .line 3568
    :cond_4
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3569
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 3570
    .local v2, "orientationSource":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-nez v2, :cond_5

    .line 3571
    return-void

    .line 3573
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v3

    .line 3574
    .local v3, "nextRotation":I
    if-eq v0, v3, :cond_6

    .line 3575
    invoke-virtual {p0, v3}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    .line 3577
    :cond_6
    return-void

    .line 3566
    .end local v2    # "orientationSource":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v3    # "nextRotation":I
    :goto_0
    return-void
.end method

.method private setTransientLaunchToChanges(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 773
    move-object v0, p1

    .local v0, "curr":Lcom/android/server/wm/WindowContainer;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_0

    .line 776
    return-void

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 779
    .local v1, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    iget v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 774
    .end local v1    # "info":Lcom/android/server/wm/Transition$ChangeInfo;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    .line 781
    .end local v0    # "curr":Lcom/android/server/wm/WindowContainer;
    :cond_1
    return-void
.end method

.method private shouldApplyAnimOptionsToEmbeddedTf(Lcom/android/server/wm/TaskFragment;)Z
    .locals 3
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 2360
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 2363
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskFragmentAnimationParams;->hasOverrideAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2365
    return v0

    .line 2368
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 2361
    :goto_0
    return v0
.end method

.method private shouldApplyAnimOptionsToTask(Lcom/android/server/wm/Task;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 2350
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 2353
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v1

    .line 2356
    .local v1, "animType":I
    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getOverrideTaskTransition()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    .line 2351
    .end local v1    # "animType":I
    :goto_0
    return v0
.end method

.method private shouldWallpaperBeVisible()Z
    .locals 4

    .line 2630
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2631
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2632
    .local v2, "participant":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 2630
    .end local v2    # "participant":Lcom/android/server/wm/WindowContainer;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 2634
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method private snapshotStartState(Lcom/android/server/wm/WindowContainer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 940
    .local p1, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    move-object v0, p1

    .line 941
    .local v0, "curr":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 943
    new-instance v1, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 944
    .local v1, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    invoke-direct {p0, v1}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 945
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    invoke-static {v0}, Lcom/android/server/wm/Transition;->isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 947
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->addGroup(Lcom/android/server/wm/WindowContainer;)V

    .line 948
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v4, v2

    .local v4, "protoLogParam0":J
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, 0xea0e7710d73332L

    invoke-static {v6, v8, v9, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 942
    .end local v1    # "info":Lcom/android/server/wm/Transition$ChangeInfo;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam0":J
    :cond_0
    invoke-static {v0}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    .line 952
    .end local v0    # "curr":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_1
    return-void
.end method

.method private static tryPromote(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V
    .locals 13
    .param p0, "targets"    # Lcom/android/server/wm/Transition$Targets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Transition$Targets;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 2983
    .local p1, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    const/4 v0, 0x0

    .line 2985
    .local v0, "lastNonPromotableParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-object v1, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_b

    .line 2986
    iget-object v3, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2987
    .local v3, "targetChange":Lcom/android/server/wm/Transition$ChangeInfo;
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2988
    .local v4, "target":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v5, v5, v2

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x7bbc591a68b0c5d1L    # -4.033105707718502E-288

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v8, v9, v6, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2989
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 2990
    .local v5, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-ne v5, v0, :cond_1

    .line 2991
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x5e9fc77bb376cc2dL    # -6.342837275253804E-148

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v6, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2995
    :cond_1
    invoke-static {v3, p0, p1}, Lcom/android/server/wm/Transition;->canPromote(Lcom/android/server/wm/Transition$ChangeInfo;Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2996
    move-object v0, v5

    .line 2997
    goto/16 :goto_2

    .line 2999
    :cond_2
    invoke-static {v4}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3000
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v2

    nop

    if-eqz v7, :cond_6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x65adad8a553ec094L    # -6.899189364683506E-182

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v9, v10, v6, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3001
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    goto :goto_1

    .line 3002
    :cond_3
    iget v7, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_4

    .line 3005
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v2

    nop

    if-eqz v7, :cond_6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, 0x1eb734bc7e503baaL

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v9, v10, v6, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3006
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    goto :goto_1

    .line 3008
    :cond_4
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, 0xd199f8fa39d39c7L

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v9, v10, v6, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3010
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Transition$Targets;->remove(I)V

    .line 3012
    :cond_6
    :goto_1
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3013
    .local v7, "parentChange":Lcom/android/server/wm/Transition$ChangeInfo;
    iget-object v8, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_8

    .line 3014
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v8, v8, v2

    if-eqz v8, :cond_7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, 0xbadc3b08a373fbcL

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v10, v11, v6, v12}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3017
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 3018
    invoke-virtual {p0, v7}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 3020
    :cond_8
    iget v6, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9

    .line 3021
    iget v6, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    goto :goto_2

    .line 3023
    :cond_9
    iget v6, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 2985
    .end local v3    # "targetChange":Lcom/android/server/wm/Transition$ChangeInfo;
    .end local v4    # "target":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v5    # "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v7    # "parentChange":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_a
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_b
    nop

    .line 3026
    .end local v1    # "i":I
    return-void
.end method

.method private updateActivityTargetForCrossProfileAnimation(Landroid/window/TransitionInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/window/TransitionInfo;

    .line 2376
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 2377
    return-void

    .line 2379
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2380
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2381
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 2382
    .local v2, "change":Landroid/window/TransitionInfo$Change;
    nop

    nop

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 2383
    goto :goto_2

    .line 2386
    :cond_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    .line 2387
    .local v3, "flags":I
    iget v4, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v4, v5, :cond_2

    .line 2388
    const/16 v4, 0x1000

    goto :goto_1

    .line 2389
    :cond_2
    const/16 v4, 0x2000

    :goto_1
    or-int/2addr v3, v4

    .line 2390
    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 2391
    goto :goto_3

    .line 2379
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "change":Landroid/window/TransitionInfo$Change;
    .end local v3    # "flags":I
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2393
    .end local v0    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method private updateImeForVisibleTransientLaunch(Lcom/android/server/wm/DisplayContent;)V
    .locals 7
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1921
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1922
    .local v0, "imeTarget":Lcom/android/server/wm/WindowState;
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1923
    .local v1, "imeWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1924
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/TransitionController;->hasCollectingRotationChange(Lcom/android/server/wm/WindowContainer;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1931
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v2

    .line 1932
    .local v2, "sourceProvider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v3, :cond_3

    .line 1933
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1934
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 1937
    :cond_1
    iget-object v3, v2, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 1938
    .local v3, "imeInsetsLeash":Landroid/view/SurfaceControl;
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    .line 1939
    .local v4, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1940
    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1941
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1943
    :cond_2
    return-void

    .line 1935
    .end local v3    # "imeInsetsLeash":Landroid/view/SurfaceControl;
    .end local v4    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_3
    :goto_0
    return-void

    .line 1925
    .end local v2    # "sourceProvider":Lcom/android/server/wm/InsetsSourceProvider;
    :cond_4
    :goto_1
    return-void
.end method

.method private updatePriorVisibility()V
    .locals 3

    .line 2892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2893
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2895
    .local v1, "chg":Lcom/android/server/wm/Transition$ChangeInfo;
    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2896
    goto :goto_1

    .line 2900
    :cond_0
    iget-boolean v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 2901
    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 2892
    .end local v1    # "chg":Lcom/android/server/wm/Transition$ChangeInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 2903
    .end local v0    # "i":I
    return-void
.end method

.method private updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/server/wm/Transition$ChangeInfo;

    .line 955
    iget-object v0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 957
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 958
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 959
    :cond_1
    iget v1, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 960
    return-void
.end method

.method private validateKeyguardOcclusion()V
    .locals 3

    .line 3710
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    const v1, 0xb900

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3711
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3712
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/WindowManagerPolicy;)V

    .line 3711
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3714
    :cond_0
    return-void
.end method


# virtual methods
.method abort()V
    .locals 8

    .line 1947
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 1948
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1950
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 1951
    return-void

    .line 1953
    :cond_1
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ne v0, v2, :cond_3

    :cond_2
    goto :goto_0

    .line 1954
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too late to abort. state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1963
    :goto_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v0, :cond_4

    .line 1964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting Transition: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Transition"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1966
    :cond_4
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v0

    .local v3, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, 0x1114a0668f863630L

    invoke-static {v0, v6, v7, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1970
    .end local v3    # "protoLogParam0":J
    :cond_5
    :goto_1
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 1971
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wm/TransitionController$Logger;->mAbortTimeNs:J

    .line 1972
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    invoke-interface {v0, p0}, Lcom/android/server/wm/TransitionTracer;->logAbortedTransition(Lcom/android/server/wm/Transition;)V

    .line 1974
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->abort(I)V

    .line 1975
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionCancelled(Ljava/util/ArrayList;)V

    .line 1976
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->invokeTransitionEndedListeners()V

    .line 1977
    return-void
.end method

.method addFlag(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 487
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 488
    return-void
.end method

.method addTransactionCompletedListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 2418
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2422
    return-void
.end method

.method addTransitionEndedListener(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 2428
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 2429
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t register listeners if the transition isn\'t collecting. state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2432
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 2433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 2435
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2436
    return-void
.end method

.method allReady()Z
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    move-result v0

    return v0
.end method

.method applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;>;)V"
        }
    .end annotation

    .line 3754
    .local p1, "activitiesMayChange":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer<*>;>;"
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 3755
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3756
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3757
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v4}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    goto :goto_1

    .line 3758
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    move-result v4

    .line 3763
    .local v4, "changed":Z
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v5}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmUsed(Lcom/android/server/wm/Transition$ReadyTrackerOld;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3764
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 3766
    :cond_2
    if-nez v4, :cond_3

    goto :goto_1

    .line 3769
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3770
    new-instance v5, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;

    invoke-direct {v5, p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3754
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "changed":Z
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    nop

    .line 3777
    .end local v0    # "i":I
    return-void
.end method

.method calcParallelCollectType(Landroid/window/WindowContainerTransaction;)V
    .locals 9
    .param p1, "wct"    # Landroid/window/WindowContainerTransaction;

    .line 495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 496
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 497
    .local v1, "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 498
    :cond_0
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    .line 499
    .local v2, "b":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    goto :goto_1

    .line 500
    :cond_2
    const-string v3, "android.activity.transientLaunch"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 501
    .local v3, "transientLaunch":Z
    if-eqz v3, :cond_4

    .line 502
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x257a196ac496c4d7L    # -1.1860048369741397E128

    invoke-static {v4, v7, v8, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 504
    :cond_3
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 495
    .end local v1    # "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "transientLaunch":Z
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 507
    .end local v0    # "i":I
    return-void
.end method

.method canApplyDim(Lcom/android/server/wm/Task;)Z
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 651
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 652
    :cond_0
    nop

    .line 653
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isSuitableForDimming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    return v1

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 671
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 672
    .local v2, "transientTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->canAffectSystemUiFlags()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 675
    const/4 v1, 0x0

    return v1

    .line 669
    .end local v2    # "transientTask":Lcom/android/server/wm/Task;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 678
    .end local v0    # "i":I
    return v1
.end method

.method cleanUpOnFailure()V
    .locals 3

    .line 2571
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 2573
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_1

    .line 2574
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2576
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_2

    .line 2577
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2579
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v2, "clean-up"

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/ActionChain$Tracker;->startFinish(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/ActionChain;)V

    .line 2580
    return-void
.end method

.method collect(Lcom/android/server/wm/WindowContainer;)V
    .locals 8
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 889
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ltz v0, :cond_8

    .line 892
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    return-void

    .line 903
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v0, :cond_1

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collecting in transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const/16 v1, 0xf

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    const-string v1, "Transition"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 907
    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x40d82296fef9ccbfL    # -1.8207461154098363E-4

    invoke-static {v4, v6, v7, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 912
    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v2    # "protoLogParam0":J
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Transition;->snapshotStartState(Lcom/android/server/wm/WindowContainer;)V

    .line 913
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 915
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 916
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 918
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v0, :cond_5

    .line 922
    return-void

    .line 924
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 925
    .local v0, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    if-nez v0, :cond_6

    .line 926
    new-instance v1, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    move-object v0, v1

    .line 927
    invoke-direct {p0, v0}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 928
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/Transition;->recordDisplay(Lcom/android/server/wm/DisplayContent;)V

    .line 932
    iget-boolean v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-eqz v1, :cond_7

    .line 934
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WallpaperController;->collectTopWallpapers(Lcom/android/server/wm/Transition;)V

    .line 936
    :cond_7
    return-void

    .line 890
    .end local v0    # "info":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transition hasn\'t started collecting."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method collectClose(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 1111
    .local p1, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_0

    .line 1116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1118
    :goto_0
    return-void
.end method

.method collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 8
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1021
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1023
    return-void

    .line 1025
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, 0xf484ddf43bd3ccbL    # 4.777431964610698E-235

    invoke-static {v4, v6, v7, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1027
    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v2    # "protoLogParam0":J
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    iput-boolean v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 1029
    return-void
.end method

.method collectOrderChanges(Z)V
    .locals 10
    .param p1, "reportCurrent"    # Z

    .line 2493
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2494
    :cond_0
    const/4 v0, 0x0

    .line 2495
    .local v0, "includesOrderChange":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2496
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 2497
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2495
    .end local v2    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2498
    .restart local v2    # "task":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v0, 0x1

    .line 2499
    nop

    .line 2501
    .end local v1    # "i":I
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_2
    or-int/lit8 v0, v0, 0x0

    .line 2503
    if-nez v0, :cond_3

    if-nez p1, :cond_3

    .line 2507
    return-void

    .line 2512
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2513
    .local v1, "onTopTasksEnd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2514
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2515
    .local v2, "onTopDisplayEnd":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x0

    .local v3, "d":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 2516
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    invoke-static {v4, v1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 2517
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2518
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2519
    .local v5, "reportedOnTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_8

    .line 2520
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    .line 2521
    .local v7, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v8

    if-eq v8, v4, :cond_4

    goto :goto_3

    .line 2522
    :cond_4
    if-nez v5, :cond_5

    .line 2523
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    .line 2524
    :cond_5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2525
    goto :goto_3

    .line 2530
    :cond_6
    sget-boolean v8, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v8, :cond_7

    .line 2531
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "collectOrderChanges(): add to mParticipants, task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Transition"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/server/wm/Transition;->addToTopChange(Lcom/android/server/wm/WindowContainer;)V

    .line 2519
    .end local v7    # "task":Lcom/android/server/wm/Task;
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_8
    nop

    .line 2537
    .end local v6    # "i":I
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2538
    if-eqz v5, :cond_9

    move-object v6, v5

    goto :goto_4

    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    move-object v1, v6

    .line 2539
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2541
    nop

    .line 2515
    .end local v4    # "displayId":I
    .end local v5    # "reportedOnTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    nop

    .line 2547
    .end local v3    # "d":I
    return-void
.end method

.method collectReparentChange(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .locals 5
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "newParent"    # Lcom/android/server/wm/WindowContainer;

    .line 1072
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1082
    .local v0, "change":Lcom/android/server/wm/Transition$ChangeInfo;
    iget-object v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_0

    .line 1084
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    goto :goto_1

    .line 1083
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 1084
    :goto_1
    nop

    .line 1085
    .local v1, "prevParent":Lcom/android/server/wm/WindowContainer;
    const-string v2, "Transition"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    goto :goto_3

    .line 1090
    :cond_4
    if-ne v1, p2, :cond_5

    .line 1091
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to collect reparenting of a window that has not been reparented: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    return-void

    .line 1095
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to collect reparenting of a window that is not attached after reparenting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return-void

    .line 1100
    :cond_6
    move-object v2, p2

    .line 1101
    .local v2, "ancestor":Lcom/android/server/wm/WindowContainer;
    :goto_2
    if-eq v1, v2, :cond_7

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1102
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    goto :goto_2

    .line 1104
    :cond_7
    iput-object v2, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    .line 1105
    return-void

    .line 1086
    .end local v2    # "ancestor":Lcom/android/server/wm/WindowContainer;
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to collect reparenting of a window after the previous parent has been detached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void
.end method

.method collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1039
    return-void

    .line 1041
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    goto :goto_2

    .line 1042
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    nop

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1043
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 1048
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1049
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1050
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v1, v1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_4

    .line 1052
    return-void

    .line 1056
    .end local v0    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    if-nez v0, :cond_5

    .line 1057
    new-instance v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Transition$ScreenshotFreezer;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 1059
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1060
    .local v0, "change":Lcom/android/server/wm/Transition$ChangeInfo;
    if-eqz v0, :cond_6

    iget-boolean v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    goto :goto_0

    .line 1062
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    iget-object v2, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-interface {v1, p1, v2}, Lcom/android/server/wm/Transition$IContainerFreezer;->freeze(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)Z

    .line 1063
    return-void

    .line 1060
    :goto_0
    return-void

    .line 1044
    .end local v0    # "change":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_8
    :goto_1
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1045
    return-void

    .line 1041
    :goto_2
    return-void
.end method

.method continueTransitionReady()V
    .locals 2

    .line 4236
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fputmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;I)V

    .line 4238
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 4239
    return-void
.end method

.method deferTransitionReady()V
    .locals 3

    .line 4229
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fputmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;I)V

    .line 4231
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    .line 4232
    return-void
.end method

.method finishTransition(Lcom/android/server/wm/ActionChain;)V
    .locals 27
    .param p1, "chain"    # Lcom/android/server/wm/ActionChain;

    .line 1439
    move-object/from16 v0, p0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    if-eqz v1, :cond_0

    .line 1440
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wm/Transition;->asyncTraceEnd(I)V

    .line 1442
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActionChain;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1446
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    .line 1447
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;

    invoke-direct {v3, v2}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/TransitionController$Logger;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1448
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    invoke-interface {v1, v0}, Lcom/android/server/wm/TransitionTracer;->logFinishedTransition(Lcom/android/server/wm/Transition;)V

    .line 1452
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 1453
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 1454
    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1455
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v2, :cond_3

    .line 1456
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1457
    iput-object v1, v0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1459
    :cond_3
    iget v2, v0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_44

    .line 1462
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iput-object v0, v2, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 1470
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->isRecentsInterruptPopUpChange(Lcom/android/server/wm/Transition;)Z

    move-result v2

    .line 1471
    .local v2, "isRecentsInterruptPopUpChange":Z
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    .line 1477
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v4, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 1480
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1481
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 1482
    .local v5, "rootTask":Lcom/android/server/wm/Task;
    new-instance v6, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda13;

    invoke-direct {v6, v0, v5}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1480
    .end local v5    # "rootTask":Lcom/android/server/wm/Task;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1503
    .end local v4    # "i":I
    :cond_4
    const/4 v4, 0x0

    .line 1504
    .local v4, "hasParticipatedDisplay":Z
    const/4 v5, 0x0

    .line 1505
    .local v5, "hasVisibleTransientLaunch":Z
    const/4 v6, 0x0

    .line 1506
    .local v6, "enterAutoPip":Z
    const/4 v7, 0x0

    .line 1508
    .local v7, "committedSomeInvisible":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v8, v9, :cond_1c

    .line 1509
    iget-object v9, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 1510
    .local v9, "participant":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    .line 1511
    .local v12, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v12, :cond_19

    .line 1512
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    .line 1513
    .local v13, "task":Lcom/android/server/wm/Task;
    if-nez v13, :cond_5

    move/from16 v20, v2

    move/from16 v18, v4

    move/from16 v26, v5

    goto/16 :goto_a

    .line 1514
    :cond_5
    iget-object v14, v0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 1521
    .local v14, "visibleAtTransitionEnd":Z
    invoke-virtual {v0, v12}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v15

    if-nez v15, :cond_6

    iget-object v15, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1522
    invoke-virtual {v15, v12}, Lcom/android/server/wm/TransitionController;->inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1523
    const/4 v14, 0x1

    .line 1533
    :cond_6
    iget-object v15, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    nop

    if-eqz v15, :cond_8

    iget-object v15, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1534
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    iget v15, v15, Landroid/view/DisplayInfo;->state:I

    if-ne v15, v11, :cond_7

    goto :goto_2

    :cond_7
    move v15, v10

    goto :goto_3

    :cond_8
    :goto_2
    move v15, v11

    :goto_3
    nop

    .line 1535
    .local v15, "isScreenOff":Z
    if-eqz v14, :cond_9

    if-eqz v15, :cond_a

    :cond_9
    goto :goto_4

    :cond_a
    move/from16 v20, v2

    move/from16 v18, v4

    move/from16 v26, v5

    goto/16 :goto_8

    :goto_4
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v16

    if-nez v16, :cond_12

    .line 1542
    if-nez v2, :cond_b

    .line 1543
    invoke-direct {v0, v12}, Lcom/android/server/wm/Transition;->checkEnterPipOnFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v16

    if-nez v16, :cond_b

    move/from16 v16, v11

    goto :goto_5

    :cond_b
    move/from16 v16, v10

    :goto_5
    nop

    .line 1547
    .local v16, "commitVisibility":Z
    if-eqz v16, :cond_11

    .line 1548
    sget-object v17, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v17, v17, v11

    if-eqz v17, :cond_c

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .local v17, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    move/from16 v18, v4

    .end local v4    # "hasParticipatedDisplay":Z
    .local v18, "hasParticipatedDisplay":Z
    const-wide v3, -0x4111a0226d5ec4eaL    # -1.4483678189373217E-5

    move/from16 v19, v11

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v1, v3, v4, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_6

    .end local v17    # "protoLogParam0":Ljava/lang/String;
    .end local v18    # "hasParticipatedDisplay":Z
    .restart local v4    # "hasParticipatedDisplay":Z
    :cond_c
    move/from16 v18, v4

    move/from16 v19, v11

    .line 1550
    .end local v4    # "hasParticipatedDisplay":Z
    .restart local v18    # "hasParticipatedDisplay":Z
    :goto_6
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 1551
    .local v1, "snapController":Lcom/android/server/wm/SnapshotController;
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v3, :cond_10

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1552
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1553
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v3, v3, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 1554
    .local v3, "startTimeNs":J
    iget-object v11, v1, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v10, v13, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1555
    invoke-virtual {v11, v10}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotCaptureTime(I)J

    move-result-wide v10

    .line 1559
    .local v10, "lastSnapshotTimeNs":J
    cmp-long v20, v10, v3

    if-gez v20, :cond_d

    .line 1560
    move/from16 v20, v2

    .end local v2    # "isRecentsInterruptPopUpChange":Z
    .local v20, "isRecentsInterruptPopUpChange":Z
    iget-object v2, v1, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, v13}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V

    move-object/from16 v21, v1

    move/from16 v26, v5

    move/from16 v5, v19

    goto :goto_7

    .line 1562
    .end local v20    # "isRecentsInterruptPopUpChange":Z
    .restart local v2    # "isRecentsInterruptPopUpChange":Z
    :cond_d
    move/from16 v20, v2

    .end local v2    # "isRecentsInterruptPopUpChange":Z
    .restart local v20    # "isRecentsInterruptPopUpChange":Z
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v19

    if-eqz v2, :cond_e

    iget v2, v13, Lcom/android/server/wm/Task;->mTaskId:I

    move-object/from16 v21, v1

    .end local v1    # "snapController":Lcom/android/server/wm/SnapshotController;
    .local v21, "snapController":Lcom/android/server/wm/SnapshotController;
    int-to-long v1, v2

    move-wide/from16 v22, v1

    .local v22, "protoLogParam0":J
    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    move-wide/from16 v24, v3

    .end local v3    # "startTimeNs":J
    .local v24, "startTimeNs":J
    const-wide v3, 0x1938043d5ead3377L

    move/from16 v26, v5

    move/from16 v5, v19

    .end local v5    # "hasVisibleTransientLaunch":Z
    .local v26, "hasVisibleTransientLaunch":Z
    invoke-static {v1, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_7

    .end local v21    # "snapController":Lcom/android/server/wm/SnapshotController;
    .end local v22    # "protoLogParam0":J
    .end local v24    # "startTimeNs":J
    .end local v26    # "hasVisibleTransientLaunch":Z
    .restart local v1    # "snapController":Lcom/android/server/wm/SnapshotController;
    .restart local v3    # "startTimeNs":J
    .restart local v5    # "hasVisibleTransientLaunch":Z
    :cond_e
    move-object/from16 v21, v1

    move-wide/from16 v24, v3

    move/from16 v26, v5

    move/from16 v5, v19

    .end local v1    # "snapController":Lcom/android/server/wm/SnapshotController;
    .end local v3    # "startTimeNs":J
    .end local v5    # "hasVisibleTransientLaunch":Z
    .restart local v21    # "snapController":Lcom/android/server/wm/SnapshotController;
    .restart local v24    # "startTimeNs":J
    .restart local v26    # "hasVisibleTransientLaunch":Z
    goto :goto_7

    .line 1552
    .end local v10    # "lastSnapshotTimeNs":J
    .end local v20    # "isRecentsInterruptPopUpChange":Z
    .end local v21    # "snapController":Lcom/android/server/wm/SnapshotController;
    .end local v24    # "startTimeNs":J
    .end local v26    # "hasVisibleTransientLaunch":Z
    .restart local v1    # "snapController":Lcom/android/server/wm/SnapshotController;
    .restart local v2    # "isRecentsInterruptPopUpChange":Z
    .restart local v5    # "hasVisibleTransientLaunch":Z
    :cond_f
    move-object/from16 v21, v1

    move/from16 v20, v2

    move/from16 v26, v5

    move/from16 v5, v19

    .end local v1    # "snapController":Lcom/android/server/wm/SnapshotController;
    .end local v2    # "isRecentsInterruptPopUpChange":Z
    .end local v5    # "hasVisibleTransientLaunch":Z
    .restart local v20    # "isRecentsInterruptPopUpChange":Z
    .restart local v21    # "snapController":Lcom/android/server/wm/SnapshotController;
    .restart local v26    # "hasVisibleTransientLaunch":Z
    goto :goto_7

    .line 1551
    .end local v20    # "isRecentsInterruptPopUpChange":Z
    .end local v21    # "snapController":Lcom/android/server/wm/SnapshotController;
    .end local v26    # "hasVisibleTransientLaunch":Z
    .restart local v1    # "snapController":Lcom/android/server/wm/SnapshotController;
    .restart local v2    # "isRecentsInterruptPopUpChange":Z
    .restart local v5    # "hasVisibleTransientLaunch":Z
    :cond_10
    move-object/from16 v21, v1

    move/from16 v20, v2

    move/from16 v26, v5

    move/from16 v5, v19

    .line 1567
    .end local v1    # "snapController":Lcom/android/server/wm/SnapshotController;
    .end local v2    # "isRecentsInterruptPopUpChange":Z
    .end local v5    # "hasVisibleTransientLaunch":Z
    .restart local v20    # "isRecentsInterruptPopUpChange":Z
    .restart local v21    # "snapController":Lcom/android/server/wm/SnapshotController;
    .restart local v26    # "hasVisibleTransientLaunch":Z
    :goto_7
    const/4 v1, 0x0

    invoke-virtual {v12, v1, v1, v5}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 1569
    const/4 v7, 0x1

    .line 1570
    .end local v21    # "snapController":Lcom/android/server/wm/SnapshotController;
    goto :goto_8

    .line 1571
    .end local v18    # "hasParticipatedDisplay":Z
    .end local v20    # "isRecentsInterruptPopUpChange":Z
    .end local v26    # "hasVisibleTransientLaunch":Z
    .restart local v2    # "isRecentsInterruptPopUpChange":Z
    .restart local v4    # "hasParticipatedDisplay":Z
    .restart local v5    # "hasVisibleTransientLaunch":Z
    :cond_11
    move/from16 v20, v2

    move/from16 v18, v4

    move/from16 v26, v5

    .end local v2    # "isRecentsInterruptPopUpChange":Z
    .end local v4    # "hasParticipatedDisplay":Z
    .end local v5    # "hasVisibleTransientLaunch":Z
    .restart local v18    # "hasParticipatedDisplay":Z
    .restart local v20    # "isRecentsInterruptPopUpChange":Z
    .restart local v26    # "hasVisibleTransientLaunch":Z
    const/4 v6, 0x1

    goto :goto_8

    .line 1535
    .end local v16    # "commitVisibility":Z
    .end local v18    # "hasParticipatedDisplay":Z
    .end local v20    # "isRecentsInterruptPopUpChange":Z
    .end local v26    # "hasVisibleTransientLaunch":Z
    .restart local v2    # "isRecentsInterruptPopUpChange":Z
    .restart local v4    # "hasParticipatedDisplay":Z
    .restart local v5    # "hasVisibleTransientLaunch":Z
    :cond_12
    move/from16 v20, v2

    move/from16 v18, v4

    move/from16 v26, v5

    .line 1575
    .end local v2    # "isRecentsInterruptPopUpChange":Z
    .end local v4    # "hasParticipatedDisplay":Z
    .end local v5    # "hasVisibleTransientLaunch":Z
    .restart local v18    # "hasParticipatedDisplay":Z
    .restart local v20    # "isRecentsInterruptPopUpChange":Z
    .restart local v26    # "hasVisibleTransientLaunch":Z
    :goto_8
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_14

    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget v1, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1577
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v12, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1578
    :cond_13
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    .line 1579
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 1581
    :cond_14
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1584
    .local v1, "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    if-eqz v1, :cond_15

    iget-boolean v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eq v2, v14, :cond_15

    .line 1586
    iput-boolean v14, v12, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    goto :goto_9

    .line 1587
    :cond_15
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1588
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1590
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 1591
    const/4 v2, 0x1

    .line 1595
    .end local v26    # "hasVisibleTransientLaunch":Z
    .local v2, "hasVisibleTransientLaunch":Z
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1596
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v4, "transitionFinished"

    invoke-virtual {v3, v12, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1601
    :cond_16
    iget-object v3, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v3, v12, :cond_17

    .line 1602
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    .line 1508
    .end local v1    # "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    .end local v9    # "participant":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v12    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "task":Lcom/android/server/wm/Task;
    .end local v14    # "visibleAtTransitionEnd":Z
    .end local v15    # "isScreenOff":Z
    :cond_17
    move v5, v2

    move/from16 v4, v18

    goto :goto_b

    .end local v2    # "hasVisibleTransientLaunch":Z
    .restart local v26    # "hasVisibleTransientLaunch":Z
    :cond_18
    :goto_9
    move/from16 v4, v18

    move/from16 v5, v26

    goto :goto_b

    .line 1607
    .end local v18    # "hasParticipatedDisplay":Z
    .end local v20    # "isRecentsInterruptPopUpChange":Z
    .end local v26    # "hasVisibleTransientLaunch":Z
    .local v2, "isRecentsInterruptPopUpChange":Z
    .restart local v4    # "hasParticipatedDisplay":Z
    .restart local v5    # "hasVisibleTransientLaunch":Z
    .restart local v9    # "participant":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v12    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    move/from16 v20, v2

    move/from16 v18, v4

    move/from16 v26, v5

    .end local v2    # "isRecentsInterruptPopUpChange":Z
    .end local v4    # "hasParticipatedDisplay":Z
    .end local v5    # "hasVisibleTransientLaunch":Z
    .restart local v18    # "hasParticipatedDisplay":Z
    .restart local v20    # "isRecentsInterruptPopUpChange":Z
    .restart local v26    # "hasVisibleTransientLaunch":Z
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1608
    const/4 v1, 0x1

    .line 1609
    .end local v18    # "hasParticipatedDisplay":Z
    .local v1, "hasParticipatedDisplay":Z
    move v4, v1

    move/from16 v5, v26

    goto :goto_b

    .line 1611
    .end local v1    # "hasParticipatedDisplay":Z
    .restart local v18    # "hasParticipatedDisplay":Z
    :cond_1a
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1612
    .local v1, "tr":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1613
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1614
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1615
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    .end local v1    # "tr":Lcom/android/server/wm/Task;
    .end local v9    # "participant":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v12    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v18    # "hasParticipatedDisplay":Z
    .end local v20    # "isRecentsInterruptPopUpChange":Z
    .end local v26    # "hasVisibleTransientLaunch":Z
    .local v2, "isRecentsInterruptPopUpChange":Z
    .restart local v4    # "hasParticipatedDisplay":Z
    .restart local v5    # "hasVisibleTransientLaunch":Z
    :cond_1b
    :goto_a
    move/from16 v4, v18

    move/from16 v5, v26

    .end local v2    # "isRecentsInterruptPopUpChange":Z
    .restart local v20    # "isRecentsInterruptPopUpChange":Z
    :goto_b
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v20

    const/4 v1, 0x0

    const/4 v3, 0x2

    goto/16 :goto_1

    .end local v20    # "isRecentsInterruptPopUpChange":Z
    .restart local v2    # "isRecentsInterruptPopUpChange":Z
    :cond_1c
    move/from16 v20, v2

    move/from16 v18, v4

    move/from16 v26, v5

    .line 1633
    .end local v2    # "isRecentsInterruptPopUpChange":Z
    .end local v4    # "hasParticipatedDisplay":Z
    .end local v5    # "hasVisibleTransientLaunch":Z
    .end local v8    # "i":I
    .restart local v18    # "hasParticipatedDisplay":Z
    .restart local v20    # "isRecentsInterruptPopUpChange":Z
    .restart local v26    # "hasVisibleTransientLaunch":Z
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    const/4 v2, 0x4

    if-ltz v1, :cond_27

    .line 1634
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1635
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v4

    .line 1636
    .local v4, "wt":Lcom/android/server/wm/WallpaperWindowToken;
    nop

    .line 1644
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1e

    :cond_1d
    goto :goto_12

    .line 1645
    :cond_1e
    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 1646
    .local v5, "target":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_1f

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v8

    if-nez v8, :cond_20

    :cond_1f
    goto :goto_d

    :cond_20
    const/4 v8, 0x0

    goto :goto_e

    :goto_d
    const/4 v8, 0x1

    .line 1647
    .local v8, "isTargetInvisible":Z
    :goto_e
    nop

    .line 1648
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v9

    if-nez v9, :cond_21

    iget-object v9, v0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    :cond_21
    goto :goto_f

    :cond_22
    const/4 v9, 0x0

    goto :goto_10

    :goto_f
    const/4 v9, 0x1

    .line 1649
    .local v9, "isWallpaperVisibleAtEnd":Z
    :goto_10
    if-nez v8, :cond_23

    if-nez v9, :cond_25

    .line 1650
    :cond_23
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/16 v19, 0x1

    aget-boolean v10, v10, v19

    if-eqz v10, :cond_24

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam0":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, -0x2914a3da1ae6ce20L    # -5.140481217967095E110

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v15, v14}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_11

    .end local v10    # "protoLogParam0":Ljava/lang/String;
    :cond_24
    const/4 v15, 0x0

    .line 1652
    :goto_11
    invoke-virtual {v4, v15}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 1654
    :cond_25
    if-eqz v8, :cond_26

    .line 1656
    iget-object v10, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v11, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v2, v11

    iput v2, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1633
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v4    # "wt":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v5    # "target":Lcom/android/server/wm/WindowState;
    .end local v8    # "isTargetInvisible":Z
    .end local v9    # "isWallpaperVisibleAtEnd":Z
    :cond_26
    :goto_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_27
    nop

    .line 1659
    .end local v1    # "i":I
    if-eqz v7, :cond_28

    .line 1660
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->onCommittedInvisibles()V

    .line 1663
    :cond_28
    if-eqz v26, :cond_2a

    .line 1665
    if-eqz v6, :cond_29

    .line 1666
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1670
    :cond_29
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 1673
    :cond_2a
    invoke-direct {v0}, Lcom/android/server/wm/Transition;->commitConfigAtEndActivities()V

    .line 1678
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_13
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_32

    .line 1685
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1686
    .local v3, "ar":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_2c

    .line 1687
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1688
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_2c

    iget v5, v0, Lcom/android/server/wm/Transition;->mFlags:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2b

    .line 1689
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isNtPinnedWindow()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1690
    :cond_2b
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1691
    .local v5, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_2c

    iget-object v8, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v8, :cond_2c

    iget-object v8, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1692
    invoke-virtual {v8, v5}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 1693
    move-object v3, v5

    .line 1694
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finishTransition: Top FixedRotation ar="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " mFlags="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Transition"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2c
    if-nez v3, :cond_2d

    const/4 v5, 0x2

    goto :goto_16

    .line 1707
    :cond_2d
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_2e

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_2e
    goto :goto_14

    :cond_2f
    const/4 v5, 0x2

    goto :goto_15

    .line 1708
    :goto_14
    const/16 v4, 0x100

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1709
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionFinished(Lcom/android/server/wm/ActivityRecord;)V

    .line 1715
    :cond_30
    :goto_15
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 1716
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eq v4, v3, :cond_31

    .line 1717
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    .line 1678
    .end local v3    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_31
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    :cond_32
    nop

    .line 1722
    .end local v1    # "i":I
    const/4 v1, 0x0

    .line 1723
    .local v1, "scheduleAnimation":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 1724
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1725
    .local v4, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_33

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-nez v5, :cond_34

    :cond_33
    goto :goto_18

    .line 1726
    :cond_34
    const/4 v1, 0x1

    .line 1727
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityRecordInputSink;->applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V

    .line 1723
    .end local v4    # "ar":Lcom/android/server/wm/ActivityRecord;
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_35
    nop

    .line 1730
    .end local v3    # "i":I
    if-eqz v1, :cond_36

    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1734
    :cond_36
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1735
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    .line 1737
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    invoke-direct {v0, v3}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 1739
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    .line 1741
    iget v3, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    .line 1743
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 1744
    invoke-virtual {v3, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1745
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 1746
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1749
    iget v5, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-nez v5, :cond_37

    .line 1750
    sget-object v5, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_APP_LOCKER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v5}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/INtAppLocker;

    iget-object v8, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 1751
    invoke-interface {v5, v8}, Lcom/android/server/wm/INtAppLocker;->clearUnlockedApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 1753
    sget-object v5, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_WM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v5}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/INtWindowManagerService;

    .line 1754
    const/4 v15, 0x0

    invoke-interface {v5, v4, v15}, Lcom/android/server/wm/INtWindowManagerService;->setMutedTask(IZ)Z

    .line 1758
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_37
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v3, :cond_39

    .line 1759
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_19
    if-ltz v3, :cond_39

    .line 1762
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1763
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_38

    .line 1764
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskFragment;->setCanAffectSystemUiFlags(Z)V

    goto :goto_1a

    .line 1763
    :cond_38
    const/4 v5, 0x1

    .line 1759
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :goto_1a
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1769
    .end local v3    # "i":I
    :cond_39
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1b
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 1770
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 1771
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v5

    .line 1772
    .local v5, "asyncRotationController":Lcom/android/server/wm/AsyncRotationController;
    if-eqz v5, :cond_3a

    iget-object v8, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v4, v8}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 1773
    invoke-virtual {v5}, Lcom/android/server/wm/AsyncRotationController;->onTransitionFinished()V

    .line 1775
    :cond_3a
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->onTransitionFinished()V

    .line 1776
    if-eqz v18, :cond_3b

    .line 1777
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1778
    .local v8, "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    nop

    nop

    if-eqz v8, :cond_3b

    iget v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1779
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v10

    if-eq v9, v10, :cond_3b

    .line 1780
    iget-object v9, v4, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    invoke-virtual {v9}, Lcom/android/server/wm/AppCompatCameraPolicy;->onScreenRotationAnimationFinished()V

    .line 1783
    .end local v8    # "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_3b
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v8, :cond_40

    .line 1784
    const/4 v8, 0x0

    .line 1785
    .local v8, "transientTDA":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v9, 0x0

    .local v9, "t":I
    :goto_1c
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_3e

    .line 1786
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    if-ne v10, v4, :cond_3d

    .line 1787
    if-eqz v26, :cond_3c

    .line 1788
    invoke-direct {v0, v4}, Lcom/android/server/wm/Transition;->updateImeForVisibleTransientLaunch(Lcom/android/server/wm/DisplayContent;)V

    .line 1790
    :cond_3c
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 1791
    goto :goto_1d

    .line 1785
    :cond_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 1794
    .end local v9    # "t":I
    :cond_3e
    :goto_1d
    if-nez v26, :cond_3f

    iget v9, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    iget v10, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v9, v10, :cond_3f

    .line 1798
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v9

    .line 1799
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    .line 1798
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v10}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(ZI)V

    .line 1810
    :cond_3f
    if-nez v26, :cond_40

    if-eqz v8, :cond_40

    if-nez v20, :cond_40

    .line 1813
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1816
    .end local v8    # "transientTDA":Lcom/android/server/wm/TaskDisplayArea;
    :cond_40
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    .line 1817
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->handleCompleteDeferredRemoval()Z

    .line 1769
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "asyncRotationController":Lcom/android/server/wm/AsyncRotationController;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1b

    :cond_41
    nop

    .line 1819
    .end local v3    # "i":I
    invoke-direct {v0}, Lcom/android/server/wm/Transition;->validateKeyguardOcclusion()V

    .line 1821
    iput v2, v0, Lcom/android/server/wm/Transition;->mState:I

    .line 1823
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_42

    iget-boolean v2, v0, Lcom/android/server/wm/Transition;->mIsAnimationPerfLockAcquired:Z

    if-eqz v2, :cond_42

    .line 1824
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 1825
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/server/wm/Transition;->mIsAnimationPerfLockAcquired:Z

    .line 1830
    :cond_42
    if-eqz v18, :cond_43

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v2

    if-nez v2, :cond_43

    .line 1831
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v15}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 1834
    :cond_43
    invoke-direct {v0}, Lcom/android/server/wm/Transition;->cleanUpInternal()V

    .line 1837
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/BackNavigationController;->onTransitionFinish(Lcom/android/server/wm/Transition;)V

    .line 1838
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    const/4 v8, 0x0

    iput-object v8, v2, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 1839
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget v3, v0, Lcom/android/server/wm/Transition;->mType:I

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/SnapshotController;->onTransitionFinish(ILjava/util/ArrayList;)V

    .line 1841
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->updateAnimatingState()V

    .line 1843
    invoke-direct {v0}, Lcom/android/server/wm/Transition;->invokeTransitionEndedListeners()V

    .line 1844
    return-void

    .line 1460
    .end local v1    # "scheduleAnimation":Z
    .end local v6    # "enterAutoPip":Z
    .end local v7    # "committedSomeInvisible":Z
    .end local v18    # "hasParticipatedDisplay":Z
    .end local v20    # "isRecentsInterruptPopUpChange":Z
    .end local v26    # "hasVisibleTransientLaunch":Z
    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t finish a non-playing transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1443
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t finish on a non-finishing transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getFinishTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method getFlags()I
    .locals 1

    .line 799
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    return v0
.end method

.method getLegacyIsReady()Z
    .locals 1

    .line 3780
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getPipActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getStartTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method getState()I
    .locals 1

    .line 790
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    return v0
.end method

.method getSyncId()I
    .locals 1

    .line 794
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    return v0
.end method

.method getToken()Landroid/os/IBinder;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    return-object v0
.end method

.method getTransientLaunchRestoreTarget(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;
    .locals 3
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 691
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 692
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    return-object v1

    .line 691
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 696
    .end local v0    # "i":I
    return-object v1
.end method

.method hasChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 2
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 3802
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3803
    .local v0, "chg":Lcom/android/server/wm/Transition$ChangeInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 3804
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v1

    return v1
.end method

.method hasChanges()Z
    .locals 3

    .line 3808
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3809
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v1}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3810
    const/4 v1, 0x1

    return v1

    .line 3808
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3813
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method hasOrderChanges()Z
    .locals 4

    .line 2455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2458
    .local v0, "onTopTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2459
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-static {v2, v0}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 2460
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    goto :goto_0

    .line 2461
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 2462
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2463
    const/4 v1, 0x1

    return v1

    .line 2462
    :cond_1
    nop

    .line 2465
    .end local v2    # "task":Lcom/android/server/wm/Task;
    goto :goto_1

    .line 2466
    :cond_2
    nop

    .line 2470
    const/4 v1, 0x0

    return v1
.end method

.method hasTransientLaunch()Z
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAborted()Z
    .locals 2

    .line 821
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCollecting()Z
    .locals 2

    .line 817
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isFinished()Z
    .locals 2

    .line 833
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isForcePlaying()Z
    .locals 1

    .line 2004
    iget-boolean v0, p0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    return v0
.end method

.method isInAodAppearTransition()Z
    .locals 2

    .line 1131
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInRcentsTransition()Z
    .locals 1

    .line 2320
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInRcentsTransition(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2324
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isInRcentsTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z
    .locals 5
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 573
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 574
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eq p1, v3, :cond_1

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    goto :goto_1

    .line 572
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 575
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :goto_1
    return v2

    .line 572
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_3
    nop

    .line 578
    .end local v0    # "i":I
    return v1
.end method

.method isInTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 2
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1124
    move-object v0, p1

    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    :goto_0
    if-eqz v0, :cond_1

    .line 1125
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 1124
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    :cond_1
    nop

    .line 1127
    .end local v0    # "p":Lcom/android/server/wm/WindowContainer;
    const/4 v0, 0x0

    return v0
.end method

.method isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .locals 1
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPending()Z
    .locals 2

    .line 813
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPlaying()Z
    .locals 2

    .line 829
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPopulated()Z
    .locals 2

    .line 1234
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRecentsInterrupt()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/android/server/wm/Transition;->mIsRecentsInterrupt:Z

    return v0
.end method

.method isStarted()Z
    .locals 2

    .line 825
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 686
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransientVisible(Lcom/android/server/wm/Task;)Z
    .locals 9
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 611
    :cond_0
    const/4 v0, 0x0

    .line 612
    .local v0, "occludedCount":I
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 613
    .local v2, "numTransient":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ltz v3, :cond_7

    .line 614
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 615
    .local v5, "transientRoot":Lcom/android/server/wm/Task;
    if-nez v5, :cond_1

    goto :goto_2

    .line 616
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 617
    .local v6, "rootParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-ne v7, v5, :cond_3

    :cond_2
    goto :goto_2

    .line 618
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v4

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_6

    .line 619
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 620
    .local v4, "sibling":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-ne v4, v5, :cond_4

    goto :goto_2

    .line 621
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v8

    nop

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v8, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueContainerHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;

    .line 622
    invoke-virtual {v8, v4}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 623
    add-int/lit8 v0, v0, 0x1

    .line 624
    goto :goto_2

    .line 618
    .end local v4    # "sibling":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 613
    .end local v5    # "transientRoot":Lcom/android/server/wm/Task;
    .end local v6    # "rootParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v7    # "j":I
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_7
    nop

    .line 628
    .end local v3    # "i":I
    if-ne v0, v2, :cond_a

    .line 631
    const/16 v3, 0x72

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v3}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 632
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isRecentsInterrupt()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 633
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .restart local v3    # "i":I
    :goto_3
    if-ltz v3, :cond_9

    .line 634
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 637
    return v4

    .line 633
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 643
    .end local v3    # "i":I
    :cond_9
    return v1

    .line 647
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    return v1
.end method

.method legacyRestoreNavigationBarFromApp()V
    .locals 11

    .line 2728
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    if-nez v0, :cond_0

    .line 2729
    return-void

    .line 2731
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 2733
    iget v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 2734
    .local v0, "recentsDisplayId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2735
    const-string v2, "Transition"

    const-string v3, "Restore parent surface of navigation bar by another transition"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    const/4 v0, 0x0

    .line 2739
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2740
    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2741
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/Transition;->sendLumaSamplingEnabledToStatusBarInternal(Lcom/android/server/wm/DisplayContent;Z)V

    .line 2742
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 2743
    .local v4, "navWindow":Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_2

    return-void

    .line 2744
    :cond_2
    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationY(I)V

    .line 2746
    iget-object v1, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2747
    .local v1, "navToken":Lcom/android/server/wm/WindowToken;
    if-nez v1, :cond_3

    return-void

    .line 2748
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    .line 2749
    .local v5, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 2750
    .local v6, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2752
    const/4 v7, 0x0

    .line 2755
    .local v7, "animate":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 2756
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 2757
    .local v9, "task":Lcom/android/server/wm/Task;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    goto :goto_1

    .line 2758
    :cond_5
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    .line 2759
    goto :goto_2

    .line 2755
    .end local v9    # "task":Lcom/android/server/wm/Task;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2762
    .end local v8    # "i":I
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 2763
    new-instance v8, Lcom/android/server/wm/NavBarFadeAnimationController;

    invoke-direct {v8, v2}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 2765
    .local v8, "controller":Lcom/android/server/wm/NavBarFadeAnimationController;
    invoke-virtual {v8, v3}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    .line 2766
    .end local v8    # "controller":Lcom/android/server/wm/NavBarFadeAnimationController;
    goto :goto_3

    .line 2768
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v5, v3, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2772
    :goto_3
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 2773
    return-void
.end method

.method public onPreReady(I)V
    .locals 3
    .param p1, "syncId"    # I

    .line 2307
    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    const/4 v1, 0x1

    const-string v2, "Transition"

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2308
    const-string v0, "transition is not open type, skip onPreReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2310
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-eq p1, v0, :cond_1

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Sync ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    return-void

    .line 2314
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreReady "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->start()V

    .line 2317
    :goto_0
    return-void
.end method

.method public onReadyTimeout()V
    .locals 4

    .line 4243
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useFullReadyTracking()Z

    move-result v0

    const-string v1, "#"

    const-string v2, "Transition"

    if-nez v0, :cond_0

    .line 4244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " readiness timeout, used="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v1}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmUsed(Lcom/android/server/wm/Transition$ReadyTrackerOld;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " deferReadyDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v1}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v1}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmReadyGroups(Lcom/android/server/wm/Transition$ReadyTrackerOld;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " met conditions: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v3, v3, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unmet conditions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    :goto_0
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 4254
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)V

    .line 4256
    :cond_1
    return-void
.end method

.method public onReadyTraceEnd(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 3798
    invoke-static {p2}, Lcom/android/server/wm/Transition;->asyncTraceEnd(I)V

    .line 3799
    return-void
.end method

.method public onReadyTraceStart(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 3793
    invoke-static {p1, p2}, Lcom/android/server/wm/Transition;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 3794
    return-void
.end method

.method onSeamlessRotating(Lcom/android/server/wm/DisplayContent;)V
    .locals 7
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 740
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    if-nez v0, :cond_1

    .line 742
    new-instance v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/Transition$ScreenshotFreezer;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 744
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 745
    .local v0, "top":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2

    .line 746
    iput-boolean v1, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    .line 747
    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 748
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v3, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x25f1edc4196f3fa3L    # 6.621439290562198E-126

    invoke-static {v2, v5, v6, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 751
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onTransactionCommitTimeout()V
    .locals 4

    .line 2403
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v0, :cond_0

    return-void

    .line 2404
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2405
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2406
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v2

    .line 2407
    .local v2, "asyncRotationController":Lcom/android/server/wm/AsyncRotationController;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2408
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AsyncRotationController;->onTransactionCommitTimeout(Landroid/view/SurfaceControl$Transaction;)V

    .line 2404
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "asyncRotationController":Lcom/android/server/wm/AsyncRotationController;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 2411
    .end local v0    # "i":I
    return-void
.end method

.method public onTransactionCommitted()V
    .locals 3

    .line 2398
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wm/TransitionController$Logger;->mTransactionCommitTimeNs:J

    .line 2399
    return-void
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 13
    .param p1, "syncId"    # I
    .param p2, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 2034
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    const-string v1, "Transition"

    if-eq p1, v0, :cond_0

    .line 2035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Sync ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    return-void

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useFullReadyTracking()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2040
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v3, v3, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2041
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v3

    .local v3, "protoLogParam0":J
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v5, v5, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, -0x12cc95eb18b3c9c2L    # -1.0708297704870128E218

    invoke-static {v6, v8, v9, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2040
    .end local v3    # "protoLogParam0":J
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2050
    .end local v0    # "i":I
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/wm/Transition;->commitVisibleActivities(Landroid/view/SurfaceControl$Transaction;)V

    .line 2051
    invoke-direct {p0, p2}, Lcom/android/server/wm/Transition;->commitVisibleWallpapers(Landroid/view/SurfaceControl$Transaction;)V

    .line 2053
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 2054
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 2055
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 2056
    .local v4, "listener":Ljava/lang/Runnable;
    new-instance v5, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;

    invoke-direct {v6, v4}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->addTransactionCompletedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;

    .line 2054
    .end local v4    # "listener":Ljava/lang/Runnable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 2059
    .end local v0    # "i":I
    iput-object v3, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 2063
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    goto :goto_2

    .line 2064
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :goto_2
    nop

    .line 2068
    .local v0, "primaryDisplay":Lcom/android/server/wm/DisplayContent;
    invoke-static {}, Lcom/android/server/wm/NtStartingWindowHelper;->getInstance()Lcom/android/server/wm/NtStartingWindowHelper;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/wm/NtStartingWindowHelper;->onTransactionReady(Lcom/android/server/wm/Transition;)V

    .line 2070
    iget v5, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v6, 0x3

    const/4 v7, -0x1

    if-ne v5, v6, :cond_8

    .line 2071
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->onAbort(Lcom/android/server/wm/Transition;)V

    .line 2072
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 2073
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 2074
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    .line 2073
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    nop

    .line 2076
    .end local v1    # "i":I
    iput-object v3, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 2078
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 2079
    iput v7, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 2080
    iput-object v3, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2081
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->cleanUpInternal()V

    .line 2082
    return-void

    .line 2085
    :cond_8
    iget v5, p0, Lcom/android/server/wm/Transition;->mState:I

    if-eq v5, v2, :cond_9

    .line 2086
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playing a Transition which hasn\'t started! #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " This will likely cause an exception in Shell"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_9
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2091
    iput-object p2, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2092
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl$Transaction;

    iput-object v5, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2095
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2096
    iget v5, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 2101
    :cond_a
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Transition;->collectOrderChanges(Z)V

    .line 2103
    iget-boolean v5, p0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    if-eqz v5, :cond_b

    .line 2104
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->updatePriorVisibility()V

    .line 2108
    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-static {v5, v6}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2111
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    iget-object v6, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, p0, v6, p2, v8}, Lcom/android/server/wm/BackNavigationController;->onTransactionReady(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 2113
    iget v5, p0, Lcom/android/server/wm/Transition;->mType:I

    iget v6, p0, Lcom/android/server/wm/Transition;->mFlags:I

    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v5, v6, v8, p2}, Lcom/android/server/wm/Transition;->calculateTransitionInfo(IILjava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo;

    move-result-object v5

    .line 2114
    .local v5, "info":Landroid/window/TransitionInfo;
    iget v6, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo;->setDebugId(I)V

    .line 2115
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6, p0, v5}, Lcom/android/server/wm/TransitionController;->assignTrack(Lcom/android/server/wm/Transition;Landroid/window/TransitionInfo;)V

    .line 2119
    sget-boolean v6, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v6, :cond_c

    .line 2120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transition onTransactionReady, moveToPlaying="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->moveToPlaying(Lcom/android/server/wm/Transition;)V

    .line 2126
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2127
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/server/wm/DisplayContent;

    .line 2126
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/wm/DisplayContent;

    .line 2128
    .local v1, "participantDisplays":[Lcom/android/server/wm/DisplayContent;
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2129
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v8

    if-ge v6, v8, :cond_d

    .line 2130
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v8, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2131
    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v9

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    move-result v9

    .line 2130
    invoke-virtual {v8, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 2132
    .local v8, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2129
    .end local v8    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    nop

    .line 2135
    .end local v6    # "i":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_13

    .line 2136
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v8, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2137
    .local v8, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v9

    .line 2138
    .local v9, "wp":Lcom/android/server/wm/WallpaperWindowToken;
    if-eqz v9, :cond_e

    .line 2142
    iget-object v10, v9, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v10, :cond_12

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2143
    invoke-virtual {v9}, Lcom/android/server/wm/WindowToken;->getFixedRotationLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 2144
    iget-object v10, v9, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6

    .line 2148
    :cond_e
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v10

    .line 2149
    .local v10, "da":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<*>;"
    if-nez v10, :cond_f

    goto :goto_6

    .line 2150
    :cond_f
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2151
    iget-object v11, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v11, v11, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 2152
    .local v11, "inValidateList":I
    nop

    nop

    if-ltz v11, :cond_10

    iget-object v12, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 2155
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-boolean v12, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v12, :cond_10

    .line 2156
    iget-object v12, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v12, v12, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2158
    .end local v11    # "inValidateList":I
    :cond_10
    goto :goto_6

    .line 2160
    :cond_11
    iget-object v11, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v11, v11, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2135
    .end local v8    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v9    # "wp":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v10    # "da":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<*>;"
    :cond_12
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_13
    nop

    .line 2165
    .end local v6    # "i":I
    invoke-static {}, Lcom/android/server/wm/NtStartingWindowHelper;->getInstance()Lcom/android/server/wm/NtStartingWindowHelper;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, p0, v8, v5}, Lcom/android/server/wm/NtStartingWindowHelper;->onTransactionReady(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/window/TransitionInfo;)V

    .line 2167
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Transition;->overrideAnimationOptionsToInfoIfNecessary(Landroid/window/TransitionInfo;)V

    .line 2170
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_15

    .line 2171
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v8, v5}, Lcom/android/server/wm/Transition;->handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V

    .line 2172
    iget v8, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-eq v8, v7, :cond_14

    goto :goto_8

    .line 2170
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2176
    .end local v6    # "i":I
    :cond_15
    :goto_8
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v6}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 2185
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .restart local v6    # "i":I
    :goto_9
    if-ltz v6, :cond_1a

    .line 2186
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 2193
    .local v7, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    if-eqz v8, :cond_16

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-nez v8, :cond_17

    :cond_16
    goto :goto_b

    .line 2195
    :cond_17
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2209
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    .line 2210
    .local v8, "p":Lcom/android/server/wm/WindowContainer;
    :goto_a
    if-eqz v8, :cond_19

    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v9

    if-nez v9, :cond_19

    .line 2212
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 2213
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2211
    :cond_18
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    goto :goto_a

    .line 2185
    .end local v7    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "p":Lcom/android/server/wm/WindowContainer;
    :cond_19
    :goto_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_1a
    nop

    .line 2221
    .end local v6    # "i":I
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v6, :cond_1d

    .line 2222
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .restart local v6    # "i":I
    :goto_c
    if-ltz v6, :cond_1d

    .line 2223
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 2224
    .local v7, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v8

    if-eqz v8, :cond_1b

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-nez v8, :cond_1c

    :cond_1b
    goto :goto_d

    .line 2225
    :cond_1c
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2222
    .end local v7    # "wc":Lcom/android/server/wm/WindowContainer;
    :goto_d
    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    .line 2231
    .end local v6    # "i":I
    :cond_1d
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_e
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1f

    .line 2232
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    .line 2233
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v8

    .line 2234
    .local v8, "controller":Lcom/android/server/wm/AsyncRotationController;
    if-eqz v8, :cond_1e

    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v7, v9}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 2235
    invoke-virtual {v8, p2}, Lcom/android/server/wm/AsyncRotationController;->setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 2231
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "controller":Lcom/android/server/wm/AsyncRotationController;
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1f
    nop

    .line 2240
    .end local v6    # "i":I
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v6, v5, v1}, Lcom/android/server/wm/Transition;->buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;[Lcom/android/server/wm/DisplayContent;)V

    .line 2241
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    iput-object v6, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2242
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v6, v5}, Lcom/android/server/wm/Transition;->buildCleanupTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V

    .line 2243
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v6

    if-eqz v6, :cond_24

    iget-boolean v6, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    if-eqz v6, :cond_24

    .line 2244
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-wide v7, p0, Lcom/android/server/wm/Transition;->mStatusBarTransitionDelay:J

    invoke-virtual {v6, v1, v7, v8}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionStarting([Lcom/android/server/wm/DisplayContent;J)V

    .line 2247
    :try_start_0
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v2, v6, v2

    if-eqz v2, :cond_20

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, -0x4a41677db194c275L    # -8.177520965211613E-50

    invoke-static {v6, v8, v9, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_f

    .line 2256
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_10

    .line 2249
    :cond_20
    :goto_f
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 2250
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object v5, v2, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    .line 2251
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    iget-object v6, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v2, v4, v5, p2, v6}, Landroid/window/ITransitionPlayer;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 2253
    const-wide/16 v6, 0x20

    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2254
    const-string v2, "playing"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/wm/Transition;->asyncTraceBegin(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2260
    :cond_21
    goto :goto_11

    .line 2256
    :goto_10
    nop

    .line 2259
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->postCleanupOnFailure()V

    .line 2261
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_23

    .line 2262
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 2263
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v6, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 2265
    .local v6, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 2266
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    iget v8, p0, Lcom/android/server/wm/Transition;->mType:I

    iget v9, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/AccessibilityController;->onWMTransition(III)V

    .line 2261
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_23
    nop

    .end local v2    # "i":I
    goto :goto_13

    .line 2271
    :cond_24
    iget-boolean v4, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    if-nez v4, :cond_25

    .line 2272
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 2273
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_25

    iget v4, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v6, v4

    .local v6, "protoLogParam0":J
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v9, 0x1966d582a0723dcfL

    invoke-static {v4, v9, v10, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2277
    .end local v6    # "protoLogParam0":J
    :cond_25
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->postCleanupOnFailure()V

    .line 2279
    :goto_13
    iput-object v3, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2281
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->reportStartReasonsToLogger()V

    .line 2289
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v2, :cond_26

    .line 2290
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget v3, p0, Lcom/android/server/wm/Transition;->mType:I

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/SnapshotController;->onTransactionReady(ILjava/util/ArrayList;)V

    .line 2294
    :cond_26
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 2296
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    if-eqz v2, :cond_27

    .line 2297
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController$Logger;->logOnSendAsync(Landroid/os/Handler;)V

    .line 2298
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-interface {v2, p0, v3}, Lcom/android/server/wm/TransitionTracer;->logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V

    .line 2300
    :cond_27
    return-void
.end method

.method overrideAnimationOptionsToInfoIfNecessary(Landroid/window/TransitionInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/window/TransitionInfo;

    .line 2330
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-nez v0, :cond_0

    .line 2331
    return-void

    .line 2333
    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    .line 2334
    .local v0, "changes":Ljava/util/List;, "Ljava/util/List<Landroid/window/TransitionInfo$Change;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 2335
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2336
    .local v2, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2337
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/Transition;->shouldApplyAnimOptionsToTask(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 2340
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/Transition;->shouldApplyAnimOptionsToEmbeddedTf(Lcom/android/server/wm/TaskFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2343
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    goto :goto_2

    .line 2338
    :cond_2
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 2339
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    iget v4, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    .line 2334
    .end local v2    # "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 2346
    .end local v1    # "i":I
    invoke-direct {p0, p1}, Lcom/android/server/wm/Transition;->updateActivityTargetForCrossProfileAnimation(Landroid/window/TransitionInfo;)V

    .line 2347
    return-void
.end method

.method playNow()V
    .locals 7

    .line 1981
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-eq v0, v1, :cond_0

    .line 1982
    return-void

    .line 1984
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0xc6418a78964c316L    # -7.804015622836719E248

    invoke-static {v0, v5, v6, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1986
    .end local v2    # "protoLogParam0":J
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    .line 1988
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1989
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v2, "play-now"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Transition$ReadyCondition;->meetAlternate(Ljava/lang/String;)V

    .line 1988
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 1991
    .end local v0    # "i":I
    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v1, "force-play-now"

    invoke-direct {v0, v1}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    .line 1992
    .local v0, "forcePlay":Lcom/android/server/wm/Transition$ReadyCondition;
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 1993
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 1994
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 1995
    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    if-nez v1, :cond_3

    .line 1996
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->start()V

    .line 2000
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v1}, Lcom/android/server/wm/BLASTSyncEngine;->onSurfacePlacement()V

    .line 2001
    return-void
.end method

.method recordChain(Lcom/android/server/wm/ActionChain;)V
    .locals 1
    .param p1, "chain"    # Lcom/android/server/wm/ActionChain;

    .line 3817
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChainHead:Lcom/android/server/wm/ActionChain;

    iput-object v0, p1, Lcom/android/server/wm/ActionChain;->mPrevious:Lcom/android/server/wm/ActionChain;

    .line 3818
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mChainHead:Lcom/android/server/wm/ActionChain;

    .line 3819
    return-void
.end method

.method recordTaskOrder(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p1, "from"    # Lcom/android/server/wm/WindowContainer;

    .line 983
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Transition;->recordDisplay(Lcom/android/server/wm/DisplayContent;)V

    .line 984
    return-void
.end method

.method removeFlag(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 491
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 492
    return-void
.end method

.method removeTransitionEndedListenerEnterPinnedWindow()V
    .locals 2

    .line 2441
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2442
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 2443
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getEnterPinnedWindowRunnable()Ljava/lang/Runnable;

    move-result-object v1

    .line 2442
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2445
    :cond_0
    return-void
.end method

.method setAllReady()V
    .locals 1

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->setAllReady()V

    .line 1224
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 1225
    return-void

    .line 1222
    :goto_0
    return-void
.end method

.method setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "isTop"    # Z

    .line 720
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 721
    .local v0, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    if-nez v0, :cond_0

    return-void

    .line 722
    :cond_0
    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    if-eqz p2, :cond_1

    const/16 v2, 0x80

    goto :goto_0

    .line 723
    :cond_1
    const/16 v2, 0x100

    :goto_0
    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 724
    return-void
.end method

.method setCanPipOnFinish(Z)V
    .locals 0
    .param p1, "canPipOnFinish"    # Z

    .line 1361
    iput-boolean p1, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 1362
    return-void
.end method

.method setConfigAtEnd(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 704
    .local p1, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/Transition;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 716
    return-void
.end method

.method setContainerFreezer(Lcom/android/server/wm/Transition$IContainerFreezer;)V
    .locals 0
    .param p1, "freezer"    # Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 785
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 786
    return-void
.end method

.method setKnownConfigChanges(Lcom/android/server/wm/WindowContainer;I)V
    .locals 1
    .param p2, "changes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;I)V"
        }
    .end annotation

    .line 1140
    .local p1, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1141
    .local v0, "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    if-eqz v0, :cond_0

    .line 1142
    iput p2, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    .line 1144
    :cond_0
    return-void
.end method

.method setNoAnimation(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 2018
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2019
    .local v0, "change":Lcom/android/server/wm/Transition$ChangeInfo;
    if-eqz v0, :cond_0

    .line 2022
    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 2023
    return-void

    .line 2020
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t set no-animation property of non-participant"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "options"    # Landroid/window/TransitionInfo$AnimationOptions;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "startCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "finishCallback"    # Landroid/os/IRemoteCallback;

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1162
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 1163
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    iget v1, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 1167
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 1168
    iput-object p4, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 1169
    return-void
.end method

.method setOverrideBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .line 1175
    iput p1, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    .line 1176
    return-void
.end method

.method setPipActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "pipActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 758
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 759
    return-void
.end method

.method setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 1
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "ready"    # Z

    .line 1189
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->setReadyFrom(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1191
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 1192
    return-void

    .line 1189
    :goto_0
    return-void
.end method

.method public setRecentsInterrupt()V
    .locals 1

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mIsRecentsInterrupt:Z

    .line 391
    return-void
.end method

.method setRemoteAnimationApp(Landroid/app/IApplicationThread;)V
    .locals 3
    .param p1, "app"    # Landroid/app/IApplicationThread;

    .line 2009
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 2010
    .local v0, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_0

    .line 2013
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v2}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V

    .line 2015
    :cond_0
    return-void
.end method

.method setSeamlessRotation(Lcom/android/server/wm/WindowContainer;)V
    .locals 2
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 728
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 729
    .local v0, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    if-nez v0, :cond_0

    return-void

    .line 730
    :cond_0
    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 731
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Transition;->onSeamlessRotating(Lcom/android/server/wm/DisplayContent;)V

    .line 732
    return-void
.end method

.method setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 12
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "restoreBelow"    # Lcom/android/server/wm/Task;

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-direct {p0, p1}, Lcom/android/server/wm/Transition;->setTransientLaunchToChanges(Lcom/android/server/wm/WindowContainer;)V

    .line 518
    if-eqz p2, :cond_1

    iget v0, p2, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 519
    .local v0, "restoreBelowTaskId":I
    :goto_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v1

    .local v3, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    int-to-long v5, v0

    .local v5, "protoLogParam2":J
    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v8, v1, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v9, -0x759ff8203330c0cdL

    const/16 v11, 0x11

    invoke-static {v7, v9, v10, v11, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 522
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam0":J
    .end local v5    # "protoLogParam2":J
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 523
    .local v1, "transientLaunchRootTask":Lcom/android/server/wm/Task;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    goto :goto_1

    .line 524
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    nop

    .line 525
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-eqz v3, :cond_5

    .line 531
    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1, p2}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 552
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_5

    .line 553
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {p0, v2}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 552
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 559
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 560
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 565
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskFragment;->setCanAffectSystemUiFlags(Z)V

    .line 567
    :cond_6
    return-void
.end method

.method shouldApplyOnDisplayThread()Z
    .locals 7

    .line 3738
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 3739
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3740
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_0

    goto :goto_2

    .line 3741
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3742
    .local v4, "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    if-eqz v4, :cond_2

    iget v5, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 3743
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 3738
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 3746
    .end local v0    # "i":I
    return v2
.end method

.method shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 3718
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 3719
    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 3720
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3724
    const/4 v0, 0x0

    return v0

    .line 3726
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method start()V
    .locals 7

    .line 857
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ltz v0, :cond_3

    .line 859
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition already started id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transition"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void

    .line 865
    :cond_0
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 868
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 871
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mPerf:Landroid/util/BoostFramework;

    const/16 v2, 0x1090

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 872
    iput-boolean v1, p0, Lcom/android/server/wm/Transition;->mIsAnimationPerfLockAcquired:Z

    .line 876
    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x26f8cb1209403231L    # 6.000882256300104E-121

    invoke-static {v0, v5, v6, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 878
    .end local v2    # "protoLogParam0":J
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 880
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wm/TransitionController$Logger;->mStartTimeNs:J

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->updateAnimatingState()V

    .line 883
    return-void

    .line 858
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t start Transition which isn\'t collecting."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startCollecting(J)V
    .locals 7
    .param p1, "timeoutMs"    # J

    .line 838
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 841
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 842
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 843
    invoke-static {v3}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v2, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v6, v0

    .line 842
    move-object v2, p0

    move-wide v3, p1

    .end local p1    # "timeoutMs":J
    .local v3, "timeoutMs":J
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;JLjava/lang/String;Z)I

    move-result p1

    iput p1, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 845
    iget-object p1, v2, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget p2, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    sget v0, Lcom/android/server/wm/TransitionController;->SYNC_METHOD:I

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/BLASTSyncEngine;->setSyncMethod(II)V

    .line 847
    iget-object p1, v2, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget p2, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    iput p2, p1, Lcom/android/server/wm/TransitionController$Logger;->mSyncId:I

    .line 848
    iget-object p1, v2, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/wm/TransitionController$Logger;->mCollectTimeNs:J

    .line 849
    return-void

    .line 839
    .end local v3    # "timeoutMs":J
    .restart local p1    # "timeoutMs":J
    :cond_1
    move-wide v3, p1

    .end local p1    # "timeoutMs":J
    .restart local v3    # "timeoutMs":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to re-use a transition"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2806
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2807
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TransitionRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2808
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mType:I

    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v1, :cond_0

    .line 2813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " overrideAnimOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    :cond_0
    iget v1, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    if-eqz v1, :cond_1

    .line 2816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " overrideBackgroundColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2818
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2819
    const-string v1, " c=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2821
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition$ChangeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 2823
    .end local v1    # "i":I
    const-string v1, "\n]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2826
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateChangesForRestoreTransientHideTasks(Lcom/android/server/wm/Transition;)V
    .locals 10
    .param p1, "transientLaunchTransition"    # Lcom/android/server/wm/Transition;

    .line 586
    iget-object v0, p1, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 588
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v3, -0x27733487299dc7d8L    # -3.6306348282157184E118

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 590
    :cond_0
    return-void

    .line 595
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 596
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 597
    .local v2, "container":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 598
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v3

    .local v3, "protoLogParam0":J
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, 0x333a0b21c5973445L    # 6.330820282808929E-62

    invoke-static {v6, v8, v9, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 600
    .end local v3    # "protoLogParam0":J
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 601
    .local v3, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    iput-boolean v1, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mRestoringTransientHide:Z

    .line 595
    .end local v2    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "info":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 604
    .end local v0    # "i":I
    return-void
.end method

.method public updateLegacyRecentsStartBehavior(Lcom/android/server/wm/Transition;)V
    .locals 17
    .param p1, "merged"    # Lcom/android/server/wm/Transition;

    .line 398
    move-object/from16 v0, p0

    const/16 v1, 0x72

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v1}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 399
    iget v1, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 400
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 401
    iget v2, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    iget-object v3, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v2, v3, :cond_0

    move-object/from16 v4, p1

    goto/16 :goto_9

    .line 402
    :cond_0
    iget v2, v0, Lcom/android/server/wm/Transition;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    move-object/from16 v4, p1

    goto/16 :goto_9

    .line 404
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 405
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    .line 406
    .local v3, "playingInfo":Landroid/window/TransitionInfo;
    move-object/from16 v4, p1

    iget-object v5, v4, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    .line 407
    .local v5, "mergedInfo":Landroid/window/TransitionInfo;
    nop

    .line 408
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    const-string v7, "recents_animation_input_consumer"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v6

    .line 410
    .local v6, "recentsAnimationInputConsumer":Lcom/android/server/wm/InputConsumerImpl;
    if-eqz v6, :cond_e

    .line 411
    const/4 v7, 0x0

    .line 412
    .local v7, "recentsTask":Lcom/android/server/wm/Task;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v8, v9, :cond_7

    .line 413
    nop

    .line 414
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    .line 415
    .local v9, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v9, :cond_2

    goto :goto_4

    .line 416
    :cond_2
    iget-object v14, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {v14}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v14

    .line 417
    .local v14, "task":Lcom/android/server/wm/Task;
    if-nez v14, :cond_3

    goto :goto_4

    .line 418
    :cond_3
    iget v15, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 419
    .local v15, "activityType":I
    if-eq v15, v12, :cond_4

    if-ne v15, v11, :cond_5

    :cond_4
    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :goto_2
    move v10, v13

    .line 421
    .local v10, "isRecents":Z
    :goto_3
    if-eqz v10, :cond_6

    if-nez v7, :cond_6

    .line 422
    move-object v7, v14

    .line 412
    .end local v9    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v10    # "isRecents":Z
    .end local v14    # "task":Lcom/android/server/wm/Task;
    .end local v15    # "activityType":I
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    nop

    .line 425
    .end local v8    # "j":I
    const/4 v8, 0x0

    .line 426
    .local v8, "topNonRecentsTask":Lcom/android/server/wm/Task;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_d

    .line 427
    nop

    .line 428
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    .line 429
    .local v14, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v14, :cond_8

    goto :goto_8

    .line 430
    :cond_8
    iget-object v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {v15}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v15

    .line 431
    .local v15, "task":Lcom/android/server/wm/Task;
    if-nez v15, :cond_9

    goto :goto_8

    .line 432
    :cond_9
    iget v10, v14, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 433
    .local v10, "activityType":I
    if-eq v10, v12, :cond_a

    if-ne v10, v11, :cond_b

    :cond_a
    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    goto :goto_7

    :goto_6
    move/from16 v16, v13

    .line 435
    .local v16, "isRecents":Z
    :goto_7
    if-nez v16, :cond_c

    if-nez v8, :cond_c

    .line 436
    move-object v8, v15

    .line 426
    .end local v10    # "activityType":I
    .end local v14    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v15    # "task":Lcom/android/server/wm/Task;
    .end local v16    # "isRecents":Z
    :cond_c
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_d
    nop

    .line 439
    .end local v9    # "j":I
    if-eqz v7, :cond_e

    if-eqz v8, :cond_e

    .line 440
    iget-object v9, v6, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v9, v9, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 441
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 440
    invoke-virtual {v9, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 442
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 400
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "playingInfo":Landroid/window/TransitionInfo;
    .end local v5    # "mergedInfo":Landroid/window/TransitionInfo;
    .end local v6    # "recentsAnimationInputConsumer":Lcom/android/server/wm/InputConsumerImpl;
    .end local v7    # "recentsTask":Lcom/android/server/wm/Task;
    .end local v8    # "topNonRecentsTask":Lcom/android/server/wm/Task;
    :cond_e
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v4, p1

    goto :goto_a

    .line 399
    .end local v1    # "i":I
    :cond_10
    move-object/from16 v4, p1

    goto :goto_a

    .line 398
    :cond_11
    move-object/from16 v4, p1

    .line 448
    :goto_a
    return-void
.end method
