.class public Lcom/android/server/am/UidObserverController;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidObserverController$ChangeRecord;,
        Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    }
.end annotation


# static fields
.field private static final SLOW_UID_OBSERVER_THRESHOLD_MS:I = 0x14

.field private static final VALIDATE_UID_STATES:Z = true


# instance fields
.field private mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

.field private final mAvailUidChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mDispatchRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingUidChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUidChangeDispatchCount:I

.field final mUidObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUidObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidateUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 75
    new-instance v0, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UidObserverController;)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/server/am/ActiveUids;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    .line 87
    return-void
.end method

.method private dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V
    .locals 20
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "reg"    # Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    .param p3, "changesSize"    # I

    .line 323
    move-object/from16 v1, p1

    move-object/from16 v7, p2

    const-string v0, ": "

    if-nez v1, :cond_0

    .line 324
    return-void

    .line 327
    :cond_0
    const/4 v2, 0x0

    move v8, v2

    .local v8, "j":I
    :goto_0
    move/from16 v9, p3

    if-ge v8, v9, :cond_20

    .line 328
    move-object/from16 v10, p0

    :try_start_0
    iget-object v2, v10, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v2, v2, v8

    move-object v11, v2

    .line 329
    .local v11, "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v12, v2

    .line 330
    .local v12, "start":J
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    move v14, v2

    .line 332
    .local v14, "change":I
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v7, v2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->isWatchingUid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    move-object/from16 v17, v0

    goto/16 :goto_c

    .line 336
    :cond_1
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmUid(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCanInteractAcrossUsers(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 338
    move-object/from16 v17, v0

    goto/16 :goto_c

    .line 434
    .end local v8    # "j":I
    .end local v11    # "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    .end local v12    # "start":J
    .end local v14    # "change":I
    :catch_0
    move-exception v0

    goto/16 :goto_d

    .line 340
    .restart local v8    # "j":I
    .restart local v11    # "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    .restart local v12    # "start":J
    .restart local v14    # "change":I
    :cond_2
    const/high16 v2, -0x80000000

    const/4 v15, 0x1

    if-ne v14, v2, :cond_3

    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/2addr v2, v15

    if-nez v2, :cond_3

    .line 344
    move-object/from16 v17, v0

    goto/16 :goto_c

    .line 346
    :cond_3
    const/16 v2, 0x40

    if-ne v14, v2, :cond_4

    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v3, v2

    if-nez v3, :cond_4

    .line 350
    move-object/from16 v17, v0

    goto/16 :goto_c

    .line 352
    :cond_4
    and-int/lit8 v3, v14, 0x2

    const-string v4, "UID active uid="

    const-string v5, "ActivityManager"

    if-eqz v3, :cond_6

    .line 353
    :try_start_1
    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    .line 354
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_5

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID idle uid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_5
    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v6, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v1, v3, v6}, Landroid/app/IUidObserver;->onUidIdle(IZ)V

    goto :goto_1

    .line 359
    :cond_6
    and-int/lit8 v3, v14, 0x4

    if-eqz v3, :cond_8

    .line 360
    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_8

    .line 361
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_7

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_7
    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v1, v3}, Landroid/app/IUidObserver;->onUidActive(I)V

    .line 367
    :cond_8
    :goto_1
    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    const/4 v6, 0x0

    if-eqz v3, :cond_c

    .line 368
    and-int/lit8 v3, v14, 0x8

    if-eqz v3, :cond_a

    .line 369
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_9

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID cached uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_9
    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v1, v3, v15}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    goto :goto_2

    .line 373
    :cond_a
    and-int/lit8 v3, v14, 0x10

    if-eqz v3, :cond_c

    .line 374
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_b

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_b
    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v1, v3, v6}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    .line 380
    :cond_c
    :goto_2
    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_10

    .line 381
    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_e

    .line 382
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v2, :cond_d

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID gone uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_d
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v1, v2, v3}, Landroid/app/IUidObserver;->onUidGone(IZ)V

    .line 387
    :cond_e
    iget-object v2, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_f

    .line 388
    iget-object v2, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->delete(I)V

    move-object/from16 v17, v0

    move/from16 v18, v15

    const/16 v0, 0x14

    goto/16 :goto_b

    .line 387
    :cond_f
    move-object/from16 v17, v0

    move/from16 v18, v15

    const/16 v0, 0x14

    goto/16 :goto_b

    .line 391
    :cond_10
    const/4 v3, 0x0

    .line 392
    .local v3, "doReport":Z
    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v16

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_17

    .line 393
    const/4 v3, 0x1

    .line 394
    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v16

    if-ltz v16, :cond_16

    .line 395
    iget-object v2, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v6, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    move/from16 v18, v15

    const/4 v15, -0x1

    invoke-virtual {v2, v6, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 397
    .local v2, "lastState":I
    if-eq v2, v15, :cond_14

    .line 398
    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v6

    if-gt v2, v6, :cond_11

    move/from16 v6, v18

    goto :goto_3

    :cond_11
    const/4 v6, 0x0

    .line 399
    .local v6, "lastAboveCut":Z
    :goto_3
    iget v15, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v4

    if-gt v15, v4, :cond_12

    move/from16 v4, v18

    goto :goto_4

    :cond_12
    const/4 v4, 0x0

    .line 400
    .local v4, "newAboveCut":Z
    :goto_4
    if-eq v6, v4, :cond_13

    move/from16 v15, v18

    goto :goto_5

    :cond_13
    const/4 v15, 0x0

    :goto_5
    move v3, v15

    .line 401
    .end local v4    # "newAboveCut":Z
    .end local v6    # "lastAboveCut":Z
    const/16 v6, 0x14

    goto :goto_7

    .line 402
    :cond_14
    iget v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    const/16 v6, 0x14

    if-eq v4, v6, :cond_15

    move/from16 v4, v18

    goto :goto_6

    :cond_15
    const/4 v4, 0x0

    :goto_6
    move v3, v4

    goto :goto_7

    .line 394
    .end local v2    # "lastState":I
    :cond_16
    move/from16 v18, v15

    const/16 v6, 0x14

    goto :goto_7

    .line 392
    :cond_17
    move/from16 v18, v15

    const/16 v6, 0x14

    .line 406
    :goto_7
    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_19

    .line 407
    and-int/lit8 v2, v14, 0x20

    if-eqz v2, :cond_18

    move/from16 v17, v18

    goto :goto_8

    :cond_18
    const/16 v17, 0x0

    :goto_8
    or-int v3, v3, v17

    move v15, v3

    goto :goto_9

    .line 406
    :cond_19
    move v15, v3

    .line 409
    .end local v3    # "doReport":Z
    .local v15, "doReport":Z
    :goto_9
    if-eqz v15, :cond_1c

    .line 410
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v2, :cond_1a

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID CHANGED uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1a
    iget-object v2, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_1b

    .line 415
    iget-object v2, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 417
    :cond_1b
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iget-wide v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    move/from16 v19, v6

    iget v6, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    move-object/from16 v17, v0

    move/from16 v0, v19

    const/16 v16, 0x40

    invoke-interface/range {v1 .. v6}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    goto :goto_a

    .line 409
    :cond_1c
    move-object/from16 v17, v0

    move v0, v6

    const/16 v16, 0x40

    .line 421
    :goto_a
    invoke-static {v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1d

    and-int/lit8 v2, v14, 0x40

    if-eqz v2, :cond_1d

    .line 423
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    invoke-interface {v1, v2, v3}, Landroid/app/IUidObserver;->onUidProcAdjChanged(II)V

    .line 426
    .end local v15    # "doReport":Z
    :cond_1d
    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    long-to-int v2, v2

    .line 427
    .local v2, "duration":I
    iget v3, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    if-ge v3, v2, :cond_1e

    .line 428
    iput v2, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    .line 430
    :cond_1e
    if-lt v2, v0, :cond_1f

    .line 431
    iget v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    .end local v2    # "duration":I
    .end local v11    # "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    .end local v12    # "start":J
    .end local v14    # "change":I
    :cond_1f
    :goto_c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_0

    :cond_20
    move-object/from16 v10, p0

    .line 435
    .end local v8    # "j":I
    nop

    .line 436
    :goto_d
    return-void
.end method

.method private getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;
    .locals 5

    .line 246
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 247
    .local v0, "size":I
    const-string v1, "ActivityManager"

    if-lez v0, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 249
    .local v2, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_1

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving available item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v2    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :cond_0
    new-instance v2, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v2}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    .line 254
    .restart local v2    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_1

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allocating new item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    :goto_0
    return-object v2
.end method

.method static mergeWithPendingChange(II)I
    .locals 2
    .param p0, "currentChange"    # I
    .param p1, "pendingChange"    # I

    .line 216
    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_0

    .line 217
    and-int/lit8 v0, p1, 0x6

    or-int/2addr p0, v0

    .line 221
    :cond_0
    and-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    .line 222
    and-int/lit8 v0, p1, 0x18

    or-int/2addr p0, v0

    .line 228
    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    .line 229
    and-int/lit8 p0, p0, -0xd

    .line 231
    :cond_2
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_3

    .line 232
    or-int/lit8 p0, p0, 0x20

    .line 234
    :cond_3
    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-eqz v1, :cond_4

    .line 235
    or-int/2addr p0, v0

    .line 237
    :cond_4
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_5

    .line 238
    or-int/lit8 p0, p0, 0x40

    .line 240
    :cond_5
    return p0
.end method


# virtual methods
.method final addUidToObserver(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "observerToken"    # Landroid/os/IBinder;
    .param p2, "uid"    # I

    .line 113
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 115
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    return-void
.end method

.method public final addUidToObserverImpl(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "observerToken"    # Landroid/os/IBinder;
    .param p2, "uid"    # I

    .line 126
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 127
    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 129
    .local v0, "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    invoke-virtual {v0}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v0, p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->addUid(I)V

    .line 131
    goto :goto_1

    .line 134
    :cond_0
    if-nez v1, :cond_1

    .line 135
    const-string v2, "ActivityManager"

    const-string v3, "Unable to find UidObserver by token"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :cond_1
    move v0, v1

    goto :goto_0

    .line 138
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 139
    return-void
.end method

.method dispatchUidsChanged()V
    .locals 11

    .line 264
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 266
    .local v1, "numUidChanges":I
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 267
    new-array v2, v1, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    goto :goto_0

    .line 280
    .end local v1    # "numUidChanges":I
    :catchall_0
    move-exception v1

    goto/16 :goto_8

    .line 269
    .restart local v1    # "numUidChanges":I
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    .line 270
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 271
    .local v4, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v6

    aput-object v6, v5, v2

    .line 272
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidObserverController$ChangeRecord;->copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V

    .line 273
    iput-boolean v3, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 269
    .end local v4    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 275
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 276
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v2, :cond_2

    .line 277
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** Delivering "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid changes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_2
    iget v2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 283
    .local v0, "i":I
    :goto_2
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    if-lez v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IUidObserver;

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 285
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 284
    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/am/UidObserverController;->dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V

    move v0, v2

    goto :goto_2

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 289
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 290
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 291
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_3
    if-ge v0, v1, :cond_8

    .line 292
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v0

    .line 293
    .local v5, "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    iget v6, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    .line 294
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v7, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActiveUids;->remove(I)V

    goto :goto_5

    .line 318
    .end local v0    # "j":I
    .end local v5    # "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 296
    .restart local v0    # "j":I
    .restart local v5    # "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v8, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v6

    .line 297
    .local v6, "validateUid":Lcom/android/server/am/UidRecord;
    if-nez v6, :cond_5

    .line 298
    new-instance v8, Lcom/android/server/am/UidRecord;

    iget v9, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    move-object v6, v8

    .line 299
    iget-object v8, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v9, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v8, v9, v6}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 301
    :cond_5
    iget v8, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_6

    .line 302
    invoke-virtual {v6, v7}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    goto :goto_4

    .line 303
    :cond_6
    iget v7, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_7

    .line 304
    invoke-virtual {v6, v3}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 306
    :cond_7
    :goto_4
    iget v7, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 307
    iget v7, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 308
    iget v7, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 309
    iget v7, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    .line 291
    .end local v5    # "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    .end local v6    # "validateUid":Lcom/android/server/am/UidRecord;
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 313
    .end local v0    # "j":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_6
    if-ge v0, v1, :cond_9

    .line 314
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v0

    .line 315
    .local v5, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    iput-boolean v3, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 316
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    nop

    .end local v5    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    nop

    .line 318
    .end local v0    # "j":I
    monitor-exit v4

    .line 319
    return-void

    .line 318
    :goto_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 280
    .end local v1    # "numUidChanges":I
    .end local v2    # "i":I
    :goto_8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    .line 447
    .local v1, "count":I
    const/4 v2, 0x0

    .line 448
    .local v2, "printed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 449
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 450
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 451
    .local v4, "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    if-eqz p2, :cond_0

    invoke-static {v4}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    goto :goto_1

    .line 478
    .end local v1    # "count":I
    .end local v2    # "printed":Z
    .end local v3    # "i":I
    .end local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 452
    .restart local v1    # "count":I
    .restart local v2    # "printed":Z
    .restart local v3    # "i":I
    .restart local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :goto_1
    if-nez v2, :cond_1

    .line 453
    const-string v5, "  mUidObservers:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    const/4 v2, 0x1

    .line 456
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/app/IUidObserver;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V

    .line 448
    .end local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 460
    .end local v3    # "i":I
    if-nez p2, :cond_4

    .line 461
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 462
    const-string v3, "  mUidChangeDispatchCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 464
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 465
    const-string v3, "  Slow UID dispatches:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 467
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 468
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 469
    .restart local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/app/IUidObserver;

    invoke-interface {v5}, Landroid/app/IUidObserver;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget v5, v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 473
    const-string v5, " / Max "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    iget v5, v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 475
    const-string/jumbo v5, "ms"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    .end local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 478
    .end local v1    # "count":I
    .end local v2    # "printed":Z
    .end local v3    # "i":I
    :cond_4
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    .line 484
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 485
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 486
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 487
    .local v3, "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    if-eqz p2, :cond_0

    invoke-static {v3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    goto :goto_1

    .line 491
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 488
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :goto_1
    const-wide v4, 0x20b00000017L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 484
    .end local v3    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 491
    .end local v1    # "count":I
    .end local v2    # "i":I
    monitor-exit v0

    .line 492
    return-void

    .line 491
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "dumpAppId"    # I
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "needSep"    # Z

    .line 496
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "dumpPackage":Ljava/lang/String;
    .end local p3    # "dumpAppId":I
    .end local p4    # "header":Ljava/lang/String;
    .end local p5    # "needSep":Z
    .local v3, "pw":Ljava/io/PrintWriter;
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpAppId":I
    .local v6, "header":Ljava/lang/String;
    .local v7, "needSep":Z
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result p1

    monitor-exit v1

    return p1

    .line 498
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpAppId":I
    .end local v6    # "header":Ljava/lang/String;
    .end local v7    # "needSep":Z
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "dumpPackage":Ljava/lang/String;
    .restart local p3    # "dumpAppId":I
    .restart local p4    # "header":Ljava/lang/String;
    .restart local p5    # "needSep":Z
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object p1, v0

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "dumpPackage":Ljava/lang/String;
    .end local p3    # "dumpAppId":I
    .end local p4    # "header":Ljava/lang/String;
    .end local p5    # "needSep":Z
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpAppId":I
    .restart local v6    # "header":Ljava/lang/String;
    .restart local v7    # "needSep":Z
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method dumpValidateUidsProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .locals 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "dumpAppId"    # I
    .param p4, "fieldId"    # J

    .line 503
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p2    # "dumpPackage":Ljava/lang/String;
    .end local p3    # "dumpAppId":I
    .end local p4    # "fieldId":J
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpAppId":I
    .local v6, "fieldId":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 505
    monitor-exit v1

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpAppId":I
    .end local v6    # "fieldId":J
    .restart local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local p2    # "dumpPackage":Ljava/lang/String;
    .restart local p3    # "dumpAppId":I
    .restart local p4    # "fieldId":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object p1, v0

    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p2    # "dumpPackage":Ljava/lang/String;
    .end local p3    # "dumpAppId":I
    .end local p4    # "fieldId":J
    .restart local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpAppId":I
    .restart local v6    # "fieldId":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method enqueueUidChange(Lcom/android/server/am/UidObserverController$ChangeRecord;IIIIJIZ)I
    .locals 3
    .param p1, "currentRecord"    # Lcom/android/server/am/UidObserverController$ChangeRecord;
    .param p2, "uid"    # I
    .param p3, "change"    # I
    .param p4, "procState"    # I
    .param p5, "procAdj"    # I
    .param p6, "procStateSeq"    # J
    .param p8, "capability"    # I
    .param p9, "ephemeral"    # Z

    .line 172
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 174
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_0

    .line 175
    const-string v1, "ActivityManager"

    const-string v2, "*** Enqueueing dispatch uid changed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 177
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_1
    if-eqz p1, :cond_2

    .line 181
    move-object v1, p1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v1

    .line 182
    .local v1, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :goto_1
    iget-boolean v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    if-nez v2, :cond_3

    .line 183
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 184
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 186
    :cond_3
    iget v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    invoke-static {p3, v2}, Lcom/android/server/am/UidObserverController;->mergeWithPendingChange(II)I

    move-result v2

    move p3, v2

    .line 189
    :goto_2
    iput p2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 190
    iput p3, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 191
    iput p4, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 192
    iput p5, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    .line 193
    iput-wide p6, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 194
    iput p8, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 195
    iput-boolean p9, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 197
    iget v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    monitor-exit v0

    return v2

    .line 198
    .end local v1    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDispatchRunnableForTest()Ljava/lang/Runnable;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method getPendingUidChangesForTest()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method getValidateUidRecord(I)Lcom/android/server/am/UidRecord;
    .locals 2
    .param p1, "uid"    # I

    .line 439
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 441
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getValidateUidsForTest()Lcom/android/server/am/ActiveUids;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-object v0
.end method

.method register(Landroid/app/IUidObserver;IILjava/lang/String;I[I)Landroid/os/IBinder;
    .locals 10
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I
    .param p3, "cutpoint"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingUid"    # I
    .param p6, "uids"    # [I

    .line 91
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UidObserver-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 94
    .local v9, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, p5, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    move v7, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 98
    .local v7, "canInteractAcrossUsers":Z
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    move v5, p2

    move v6, p3

    move-object v4, p4

    move v3, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;-><init>(ILjava/lang/String;IIZ[ILandroid/os/IBinder;)V

    invoke-virtual {v0, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 101
    nop

    .end local v7    # "canInteractAcrossUsers":Z
    monitor-exit v1

    .line 103
    return-object v9

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeUidFromObserver(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "observerToken"    # Landroid/os/IBinder;
    .param p2, "uid"    # I

    .line 142
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method

.method public final removeUidFromObserverImpl(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "observerToken"    # Landroid/os/IBinder;
    .param p2, "uid"    # I

    .line 155
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 156
    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 158
    .local v0, "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    invoke-virtual {v0}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v0, p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->removeUid(I)V

    .line 160
    goto :goto_1

    .line 163
    :cond_0
    if-nez v1, :cond_1

    .line 164
    const-string v2, "ActivityManager"

    const-string v3, "Unable to find UidObserver by token"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :cond_1
    move v0, v1

    goto :goto_0

    .line 167
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 168
    return-void
.end method

.method unregister(Landroid/app/IUidObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/app/IUidObserver;

    .line 107
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
