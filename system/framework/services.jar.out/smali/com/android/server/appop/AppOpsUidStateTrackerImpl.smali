.class Lcom/android/server/appop/AppOpsUidStateTrackerImpl;
.super Ljava/lang/Object;
.source "AppOpsUidStateTrackerImpl.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;,
        Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field private mCapability:Landroid/util/SparseIntArray;

.field private final mClock:Lcom/android/internal/os/Clock;

.field private mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field private final mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

.field private final mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

.field private mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field private mPendingCapability:Landroid/util/SparseIntArray;

.field private mPendingCommitTime:Landroid/util/SparseLongArray;

.field private mPendingUidStates:Landroid/util/SparseIntArray;

.field private mUidStateChangedCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic $r8$lambda$DDarXSJMLhcQjOvjQGC1suxs48A(Lcom/android/server/appop/AppOpsUidStateTrackerImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/ActivityManagerInternal;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;)V
    .locals 6
    .param p1, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "lockingExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "clock"    # Lcom/android/internal/os/Clock;
    .param p5, "constants"    # Lcom/android/server/appop/AppOpsService$Constants;

    .line 96
    new-instance v2, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;

    invoke-direct {v2, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    .end local p1    # "activityManagerInternal":Landroid/app/ActivityManagerInternal;
    .end local p4    # "clock":Lcom/android/internal/os/Clock;
    .end local p5    # "constants":Lcom/android/server/appop/AppOpsService$Constants;
    .local v1, "activityManagerInternal":Landroid/app/ActivityManagerInternal;
    .local v3, "clock":Lcom/android/internal/os/Clock;
    .local v4, "constants":Lcom/android/server/appop/AppOpsService$Constants;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;-><init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V

    .line 107
    return-void
.end method

.method constructor <init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V
    .locals 1
    .param p1, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p2, "executor"    # Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;
    .param p3, "clock"    # Lcom/android/internal/os/Clock;
    .param p4, "constants"    # Lcom/android/server/appop/AppOpsService$Constants;
    .param p5, "executorThread"    # Ljava/lang/Thread;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 73
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 74
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 76
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 77
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 113
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 114
    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 115
    iput-object p3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 116
    iput-object p4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 118
    new-instance v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-direct {v0, p2, p5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;-><init>(Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Ljava/lang/Thread;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    .line 119
    return-void
.end method

.method private commitUidPendingState(I)V
    .locals 18
    .param p1, "uid"    # I

    .line 344
    move-object/from16 v0, p0

    move/from16 v2, p1

    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const v7, 0x7fffffff

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 345
    .local v8, "uidState":I
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 346
    .local v9, "capability":I
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v10

    .line 348
    .local v10, "appWidgetVisible":Z
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 349
    .local v11, "pendingUidState":I
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 350
    .local v4, "pendingCapability":I
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    .line 354
    .local v5, "pendingAppWidgetVisible":Z
    const/16 v1, 0x2bc

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 355
    .local v12, "externalUidState":I
    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 357
    .local v1, "externalPendingUidState":I
    const/4 v6, 0x1

    const/16 v13, 0x1f4

    if-gt v12, v13, :cond_0

    move v14, v6

    goto :goto_0

    :cond_0
    move v14, v3

    :goto_0
    if-gt v1, v13, :cond_1

    move v13, v6

    goto :goto_1

    :cond_1
    move v13, v3

    :goto_1
    if-ne v14, v13, :cond_2

    if-ne v9, v4, :cond_2

    if-eq v10, v5, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    move v13, v3

    goto :goto_3

    :goto_2
    move v13, v6

    .line 362
    .local v13, "foregroundChange":Z
    :goto_3
    if-ne v12, v1, :cond_4

    if-ne v9, v4, :cond_4

    if-eq v10, v5, :cond_5

    :cond_4
    goto :goto_4

    :cond_5
    move/from16 v17, v1

    goto :goto_8

    .line 366
    :goto_4
    if-eqz v13, :cond_7

    .line 368
    move v14, v3

    move v3, v1

    .end local v1    # "externalPendingUidState":I
    .local v3, "externalPendingUidState":I
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    if-eq v10, v5, :cond_6

    goto :goto_5

    :cond_6
    move v6, v14

    :goto_5
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logCommitUidState(IIIZZ)V

    goto :goto_6

    .line 366
    .end local v3    # "externalPendingUidState":I
    .restart local v1    # "externalPendingUidState":I
    :cond_7
    move v3, v1

    .line 372
    .end local v1    # "externalPendingUidState":I
    .restart local v3    # "externalPendingUidState":I
    :goto_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 373
    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;

    .line 374
    .local v6, "cb":Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;
    iget-object v14, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Executor;

    .line 376
    .local v14, "executor":Ljava/util/concurrent/Executor;
    new-instance v15, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v15}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 378
    move/from16 v16, v1

    .end local v1    # "i":I
    .local v16, "i":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move/from16 v17, v3

    .end local v3    # "externalPendingUidState":I
    .local v17, "externalPendingUidState":I
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 376
    invoke-static {v15, v6, v7, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 372
    .end local v6    # "cb":Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;
    .end local v14    # "executor":Ljava/util/concurrent/Executor;
    add-int/lit8 v1, v16, 0x1

    move/from16 v3, v17

    const v7, 0x7fffffff

    .end local v16    # "i":I
    .restart local v1    # "i":I
    goto :goto_7

    .end local v17    # "externalPendingUidState":I
    .restart local v3    # "externalPendingUidState":I
    :cond_8
    move/from16 v16, v1

    move/from16 v17, v3

    .line 382
    .end local v1    # "i":I
    .end local v3    # "externalPendingUidState":I
    .restart local v17    # "externalPendingUidState":I
    :goto_8
    const v1, 0x7fffffff

    if-ne v11, v1, :cond_a

    if-eq v8, v11, :cond_a

    .line 383
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 384
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 385
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 386
    nop

    .line 387
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 388
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;

    .line 389
    .local v3, "cb":Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;
    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    .line 392
    .local v6, "executor":Ljava/util/concurrent/Executor;
    new-instance v7, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 392
    invoke-static {v7, v3, v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 387
    .end local v3    # "cb":Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    nop

    .end local v1    # "i":I
    goto :goto_a

    .line 397
    :cond_a
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 398
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 399
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 402
    :goto_a
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 403
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 404
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 405
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 406
    return-void
.end method

.method private evalModeInternal(IIII)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "uidState"    # I
    .param p4, "uidCapability"    # I

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidAppWidgetVisible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 147
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getOpCapability(I)I

    move-result v0

    .line 152
    .local v0, "opCapability":I
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 153
    and-int v3, p4, v0

    if-nez v3, :cond_1

    .line 154
    return v2

    .line 156
    :cond_1
    return v1

    .line 160
    :cond_2
    invoke-static {p2}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v3

    if-le p3, v3, :cond_3

    .line 161
    return v2

    .line 164
    :cond_3
    return v1

    .line 148
    .end local v0    # "opCapability":I
    :cond_4
    :goto_0
    return v1
.end method

.method private getOpCapability(I)I
    .locals 1
    .param p1, "opCode"    # I

    .line 168
    sparse-switch p1, :sswitch_data_0

    .line 182
    const/4 v0, 0x0

    return v0

    .line 180
    :sswitch_0
    const/16 v0, 0x40

    return v0

    .line 178
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 175
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 173
    :sswitch_3
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x1a -> :sswitch_2
        0x1b -> :sswitch_1
        0x29 -> :sswitch_3
        0x2a -> :sswitch_3
        0x79 -> :sswitch_1
        0x9a -> :sswitch_0
    .end sparse-switch
.end method

.method private getUidAppWidgetVisible(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 413
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method private getUidCapability(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 409
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getUidStateLocked(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    .line 128
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private updateUidPendingStateIfNeeded(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 328
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeededLocked(I)V

    .line 329
    return-void
.end method

.method private updateUidPendingStateIfNeededLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .line 332
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    .line 333
    .local v3, "pendingCommitTime":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 335
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-gez v2, :cond_0

    .line 336
    return-void

    .line 338
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    .line 340
    .end local v0    # "currentTime":J
    :cond_1
    return-void
.end method


# virtual methods
.method public addUidStateChangedCallback(Ljava/util/concurrent/Executor;Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;

    .line 193
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback is already registered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 324
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 325
    return-void
.end method

.method public dumpUidState(Ljava/io/PrintWriter;IJ)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "nowElapsed"    # J

    .line 285
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x2bc

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 287
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 288
    .local v1, "pendingState":I
    const-string v2, "    state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    if-eq v0, v1, :cond_0

    .line 291
    const-string v2, "    pendingState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 296
    .local v2, "capability":I
    iget-object v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 297
    .local v4, "pendingCapability":I
    const-string v5, "    capability="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    invoke-static {p1, v2}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 299
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 300
    if-eq v2, v4, :cond_1

    .line 301
    const-string v5, "    pendingCapability="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    invoke-static {p1, v4}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 303
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 305
    :cond_1
    iget-object v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 307
    .local v3, "appWidgetVisible":Z
    iget-object v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    .line 308
    .local v5, "pendingAppWidgetVisible":Z
    const-string v6, "    appWidgetVisible="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 310
    if-eq v3, v5, :cond_2

    .line 311
    const-string v6, "    pendingAppWidgetVisible="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 314
    :cond_2
    iget-object v6, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, p2, v7, v8}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v9

    .line 315
    .local v9, "pendingStateCommitTime":J
    cmp-long v6, v9, v7

    if-eqz v6, :cond_3

    .line 316
    const-string v6, "    pendingStateCommitTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    invoke-static {v9, v10, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 318
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 320
    :cond_3
    return-void
.end method

.method public evalMode(III)I
    .locals 7
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "mode"    # I

    .line 133
    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 134
    return p3

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidState(I)I

    move-result v3

    .line 138
    .local v3, "uidState":I
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidCapability(I)I

    move-result v4

    .line 139
    .local v4, "uidCapability":I
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalModeInternal(IIII)I

    move-result v6

    .line 141
    .local v6, "result":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    move v2, p1

    move v5, p2

    .end local p1    # "uid":I
    .end local p2    # "code":I
    .local v2, "uid":I
    .local v5, "code":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logEvalForegroundMode(IIIII)V

    .line 142
    return v6
.end method

.method public getUidState(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidStateLocked(I)I

    move-result v0

    return v0
.end method

.method public isUidInForeground(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 188
    const/4 v0, -0x1

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeUidStateChangedCallback(Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;

    .line 202
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback is not registered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .locals 4
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 210
    .local p1, "uidPackageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 211
    .local v0, "numUids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 213
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 215
    invoke-direct {p0, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    .line 211
    .end local v2    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 217
    .end local v1    # "i":I
    return-void
.end method

.method public updateUidProcState(III)V
    .locals 18
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "capability"    # I

    .line 221
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsUidStateTracker;->processStateToUidState(I)I

    move-result v3

    .line 223
    .local v3, "uidState":I
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const v5, 0x7fffffff

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 224
    .local v4, "prevUidState":I
    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 225
    .local v6, "prevCapability":I
    iget-object v8, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 226
    .local v8, "pendingUidState":I
    iget-object v9, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 227
    .local v9, "pendingCapability":I
    iget-object v10, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v1, v11, v12}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v13

    .line 229
    .local v13, "pendingStateCommitTime":J
    cmp-long v10, v13, v11

    if-nez v10, :cond_0

    if-ne v3, v4, :cond_2

    if-ne v2, v6, :cond_2

    :cond_0
    cmp-long v10, v13, v11

    if-eqz v10, :cond_b

    if-ne v3, v8, :cond_2

    if-eq v2, v9, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v15, p2

    move v5, v3

    goto/16 :goto_2

    .line 236
    :cond_2
    :goto_0
    iget-object v10, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    move/from16 v15, p2

    invoke-virtual {v10, v1, v15, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logUpdateUidProcState(III)V

    .line 237
    iget-object v10, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    iget-object v10, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    not-int v10, v2

    and-int/2addr v10, v6

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    .line 242
    .local v7, "hasLostCapability":Z
    :cond_3
    if-ne v3, v5, :cond_4

    .line 243
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    move v5, v3

    goto/16 :goto_2

    .line 244
    :cond_4
    if-ge v3, v4, :cond_5

    .line 248
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    move v5, v3

    goto :goto_2

    .line 249
    :cond_5
    if-ne v3, v4, :cond_6

    if-nez v7, :cond_6

    .line 252
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    move v5, v3

    goto :goto_2

    .line 253
    :cond_6
    nop

    .line 257
    const/16 v5, 0x1f4

    if-gt v3, v5, :cond_7

    .line 258
    nop

    nop

    if-nez v7, :cond_7

    .line 261
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    move v5, v3

    goto :goto_2

    .line 262
    :cond_7
    cmp-long v5, v13, v11

    if-nez v5, :cond_a

    .line 266
    const/16 v5, 0xc8

    if-gt v4, v5, :cond_8

    .line 267
    iget-object v5, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v10, v5, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .local v10, "settleTime":J
    goto :goto_1

    .line 268
    .end local v10    # "settleTime":J
    :cond_8
    const/16 v5, 0x190

    if-gt v4, v5, :cond_9

    .line 269
    iget-object v5, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v10, v5, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .restart local v10    # "settleTime":J
    goto :goto_1

    .line 271
    .end local v10    # "settleTime":J
    :cond_9
    iget-object v5, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v10, v5, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 273
    .restart local v10    # "settleTime":J
    :goto_1
    iget-object v5, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v5}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v16

    move v5, v3

    .end local v3    # "uidState":I
    .local v5, "uidState":I
    add-long v2, v16, v10

    .line 274
    .local v2, "commitTime":J
    iget-object v12, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v12, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 276
    iget-object v12, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 278
    move-wide/from16 v16, v2

    .end local v2    # "commitTime":J
    .local v16, "commitTime":J
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 276
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    const-wide/16 v2, 0x1

    add-long/2addr v2, v10

    invoke-interface {v12, v1, v2, v3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 262
    .end local v5    # "uidState":I
    .end local v10    # "settleTime":J
    .end local v16    # "commitTime":J
    .restart local v3    # "uidState":I
    :cond_a
    move v5, v3

    .end local v3    # "uidState":I
    .restart local v5    # "uidState":I
    goto :goto_2

    .line 229
    .end local v5    # "uidState":I
    .end local v7    # "hasLostCapability":Z
    .restart local v3    # "uidState":I
    :cond_b
    move/from16 v15, p2

    move v5, v3

    .line 281
    .end local v3    # "uidState":I
    .restart local v5    # "uidState":I
    :goto_2
    return-void
.end method
