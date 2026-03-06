.class final Lcom/android/server/appop/AttributedOp;
.super Ljava/lang/Object;
.source "AttributedOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;,
        Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;,
        Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;
    }
.end annotation


# instance fields
.field private mAccessEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field mInProgressEvents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field mPausedInProgressEvents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRejectEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final parent:Lcom/android/server/appop/AppOpsService$Op;

.field public final persistentDeviceId:Ljava/lang/String;

.field public final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V
    .locals 0
    .param p1, "appOpsService"    # Lcom/android/server/appop/AppOpsService;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;
    .param p4, "parent"    # Lcom/android/server/appop/AppOpsService$Op;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 90
    iput-object p2, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 93
    return-void
.end method

.method private add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation

    .line 564
    .local p1, "a":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    .local p2, "b":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    if-nez p1, :cond_0

    .line 565
    return-object p2

    .line 568
    :cond_0
    if-nez p2, :cond_1

    .line 569
    return-object p1

    .line 572
    :cond_1
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 573
    .local v0, "numEventsToAdd":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 574
    invoke-virtual {p2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 575
    .local v2, "keyOfEventToAdd":J
    invoke-virtual {p2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 576
    .local v4, "bEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 578
    .local v5, "aEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 579
    :cond_2
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 573
    .end local v2    # "keyOfEventToAdd":J
    .end local v4    # "bEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v5    # "aEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 583
    .end local v1    # "i":I
    return-object p1
.end method

.method private deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation

    .line 647
    .local p1, "original":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    if-nez p1, :cond_0

    .line 648
    return-object p1

    .line 651
    :cond_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 652
    .local v0, "size":I
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 653
    .local v1, "clone":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 654
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    new-instance v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(Landroid/app/AppOpsManager$NoteOpEvent;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 657
    .end local v2    # "i":I
    return-object v1
.end method

.method private finishOrPause(Landroid/os/IBinder;ZZ)V
    .locals 27
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "triggeredByUidStateChange"    # Z
    .param p3, "isPausing"    # Z

    .line 312
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 313
    .local v3, "indexOfToken":I
    :goto_0
    if-gez v3, :cond_1

    .line 314
    invoke-direct {v0, v1, v2}, Lcom/android/server/appop/AttributedOp;->finishPossiblyPaused(Landroid/os/IBinder;Z)V

    .line 315
    return-void

    .line 318
    :cond_1
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 319
    .local v4, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 320
    iget v6, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    sub-int/2addr v6, v5

    iput v6, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 323
    :cond_2
    iget v6, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-eqz v6, :cond_3

    if-eqz v2, :cond_7

    .line 324
    :cond_3
    if-nez v2, :cond_4

    .line 325
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->finish()V

    .line 326
    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 329
    :cond_4
    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v6, :cond_5

    .line 330
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v6, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 333
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 334
    new-instance v5, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    goto :goto_1

    :cond_6
    move-object v5, v6

    :goto_1
    move-object v12, v5

    .line 337
    .local v12, "proxyCopy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v9

    sub-long v10, v7, v9

    .line 338
    .local v10, "accessDurationMillis":J
    new-instance v7, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 339
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v8

    invoke-direct/range {v7 .. v12}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 341
    .local v7, "finishedEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v9

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 344
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v13, v5, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v14, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v15, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 345
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v19

    .line 346
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v20

    invoke-virtual {v7}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v21

    invoke-virtual {v7}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v23

    .line 347
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v25

    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v26

    .line 344
    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-interface/range {v13 .. v26}, Lcom/android/server/appop/HistoricalRegistryInterface;->increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V

    .line 349
    if-nez v2, :cond_7

    .line 350
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v5, v4}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 351
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 352
    iput-object v6, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 355
    if-nez p2, :cond_7

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v5

    if-nez v5, :cond_7

    .line 356
    iget-object v13, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v14, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v15, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 357
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v18

    .line 358
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v20

    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v21

    .line 356
    const/16 v19, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 363
    .end local v7    # "finishedEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v10    # "accessDurationMillis":J
    .end local v12    # "proxyCopy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_7
    return-void
.end method

.method private finishPossiblyPaused(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "isPausing"    # Z

    .line 368
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    const-string v1, "AppOps"

    if-nez v0, :cond_0

    .line 369
    const-string v0, "No ops running or paused"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 374
    .local v0, "indexOfToken":I
    if-gez v0, :cond_1

    .line 375
    const-string v2, "No op running or paused for the client"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 377
    :cond_1
    if-eqz p2, :cond_2

    .line 379
    return-void

    .line 383
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 384
    .local v1, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    iget v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 385
    iget v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-nez v2, :cond_3

    .line 386
    iget-object v2, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 387
    iget-object v2, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v2, v1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 388
    iget-object v2, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 392
    :cond_3
    return-void
.end method

.method private finished(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "triggeredByUidStateChange"    # Z

    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 290
    return-void
.end method

.method private startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V
    .locals 20
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "virtualDeviceId"    # I
    .param p3, "proxyUid"    # I
    .param p4, "proxyPackageName"    # Ljava/lang/String;
    .param p5, "proxyAttributionTag"    # Ljava/lang/String;
    .param p6, "proxyDeviceId"    # Ljava/lang/String;
    .param p7, "uidState"    # I
    .param p8, "flags"    # I
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I
    .param p11, "triggeredByUidStateChange"    # Z
    .param p12, "isStarted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    if-nez p11, :cond_0

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p12, :cond_0

    .line 228
    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v13, 0x1

    move/from16 v12, p2

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 233
    :cond_0
    const/4 v1, 0x1

    if-eqz p12, :cond_1

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v2, :cond_1

    .line 234
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    .line 235
    :cond_1
    if-nez p12, :cond_2

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 236
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 238
    :cond_2
    :goto_0
    if-eqz p12, :cond_3

    .line 239
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 241
    .local v2, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 242
    .local v9, "startTime":J
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 243
    .local v18, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    if-nez v18, :cond_4

    .line 244
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    new-instance v8, Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;-><init>()V

    .line 246
    invoke-static {v8, v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v8

    .line 244
    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v19, v1

    move-object v0, v2

    move-object v1, v3

    move-wide v2, v9

    move/from16 v10, p3

    move-object v9, v8

    move/from16 v8, p2

    .end local v9    # "startTime":J
    .local v0, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v2, "startTime":J
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->acquire(JJLandroid/os/IBinder;Ljava/lang/String;ILjava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    move-result-object v1

    .line 249
    move-wide v9, v2

    move v7, v14

    move-object v14, v6

    .end local v2    # "startTime":J
    .end local v18    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v1, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v9    # "startTime":J
    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, p0

    goto :goto_3

    .line 251
    .end local v0    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v1    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v2, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v18    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    :cond_4
    move/from16 v7, p7

    move/from16 v19, v1

    move-object v0, v2

    move-object v14, v6

    .end local v2    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v0    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v1

    if-eq v7, v1, :cond_5

    .line 252
    move-object/from16 v15, p0

    invoke-virtual {v15, v7}, Lcom/android/server/appop/AttributedOp;->onUidStateChanged(I)V

    goto :goto_2

    .line 251
    :cond_5
    move-object/from16 v15, p0

    .line 256
    :goto_2
    move-object/from16 v1, v18

    .end local v18    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v1    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    :goto_3
    iget v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 258
    if-eqz p12, :cond_6

    .line 259
    iget-object v2, v15, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v3, v15, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v4, v15, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v15, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v18, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    .end local v1    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v18    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    iget-object v5, v15, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v6, v15, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v13, 0x1

    move/from16 v8, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v1 .. v13}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V

    goto :goto_4

    .line 258
    .end local v18    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v1    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    :cond_6
    move-object/from16 v18, v1

    .line 263
    .end local v1    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v18    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    :goto_4
    return-void
.end method


# virtual methods
.method public accessed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 13
    .param p1, "proxyUid"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxyAttributionTag"    # Ljava/lang/String;
    .param p4, "proxyDeviceId"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "accessCount"    # I

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 111
    .local v8, "accessTime":J
    const-wide/16 v3, -0x1

    move-object v0, p0

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p6

    move-wide v1, v8

    move-object/from16 v8, p4

    move/from16 v9, p5

    .end local v8    # "accessTime":J
    .local v1, "accessTime":J
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 114
    move-wide v8, v1

    .end local v1    # "accessTime":J
    .restart local v8    # "accessTime":J
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v1, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v2, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v12, p7

    invoke-interface/range {v0 .. v12}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V

    .line 118
    return-void
.end method

.method public accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 16
    .param p1, "noteTime"    # J
    .param p3, "duration"    # J
    .param p5, "proxyUid"    # I
    .param p6, "proxyPackageName"    # Ljava/lang/String;
    .param p7, "proxyAttributionTag"    # Ljava/lang/String;
    .param p8, "proxyDeviceId"    # Ljava/lang/String;
    .param p9, "uidState"    # I
    .param p10, "flags"    # I

    .line 137
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static/range {p9 .. p10}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v2

    .line 139
    .local v2, "key":J
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v4, :cond_0

    .line 140
    new-instance v4, Landroid/util/LongSparseArray;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 143
    :cond_0
    const/4 v4, 0x0

    .line 144
    .local v4, "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 145
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v4

    move-object v14, v4

    goto :goto_0

    .line 144
    :cond_1
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v14, v4

    .line 149
    .end local v4    # "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .local v14, "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :goto_0
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 150
    .local v9, "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v9, :cond_2

    .line 151
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v15, v4, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {v9 .. v15}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    move-object v4, v9

    .end local v9    # "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    .local v4, "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    goto :goto_1

    .line 154
    .end local v4    # "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    .restart local v9    # "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_2
    move-object v4, v9

    .end local v9    # "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    .restart local v4    # "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    new-instance v9, Landroid/app/AppOpsManager$NoteOpEvent;

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v5, v2, v3, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 156
    :goto_1
    return-void
.end method

.method public add(Lcom/android/server/appop/AttributedOp;)V
    .locals 5
    .param p1, "opToAdd"    # Lcom/android/server/appop/AttributedOp;

    .line 596
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 600
    .local v0, "ignoredEvents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " app-ops, running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 604
    .local v1, "numInProgressEvents":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 605
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 607
    .local v3, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->finish()V

    .line 608
    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v4, v3}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 604
    .end local v3    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 612
    .end local v0    # "ignoredEvents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v1    # "numInProgressEvents":I
    .end local v2    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 613
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 614
    return-void
.end method

.method createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 15

    .line 661
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 664
    .local v0, "accessEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 666
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 668
    .local v3, "numInProgressEvents":I
    if-nez v0, :cond_0

    .line 669
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    move-object v0, v4

    .line 672
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 673
    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 675
    .local v5, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    new-instance v8, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 676
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v9

    .line 677
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v11

    sub-long v11, v1, v11

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 678
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 675
    invoke-virtual {v0, v6, v7, v8}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 672
    .end local v5    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 682
    .end local v1    # "now":J
    .end local v3    # "numInProgressEvents":I
    .end local v4    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v1}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 684
    .local v1, "rejectEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    new-instance v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v2
.end method

.method public createPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "virtualDeviceId"    # I
    .param p3, "proxyUid"    # I
    .param p4, "proxyPackageName"    # Ljava/lang/String;
    .param p5, "proxyAttributionTag"    # Ljava/lang/String;
    .param p6, "proxyDeviceId"    # Ljava/lang/String;
    .param p7, "uidState"    # I
    .param p8, "flags"    # I
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    .line 405
    return-void
.end method

.method public doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;",
            ">;)V"
        }
    .end annotation

    .line 266
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 268
    .local v0, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    :goto_0
    if-nez v0, :cond_1

    .line 269
    return-void

    .line 272
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 273
    .local v1, "numStartedOps":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v2, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/IBinder;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 275
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 277
    .end local v3    # "i":I
    return-void
.end method

.method public finished(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "clientId"    # Landroid/os/IBinder;

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;Z)V

    .line 286
    return-void
.end method

.method hasAnyTime()Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    nop

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 639
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 638
    :goto_0
    return v0
.end method

.method public hasInProgressEvent(Ljava/util/function/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;",
            ">;)Z"
        }
    .end annotation

    .line 626
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 627
    .local v0, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    goto :goto_2

    .line 630
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 631
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 632
    const/4 v1, 0x1

    return v1

    .line 630
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 635
    .end local v2    # "i":I
    return v1

    .line 628
    :goto_2
    return v1
.end method

.method public isPaused()Z
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

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

.method public isRunning()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

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

.method onClientDeath(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "clientId"    # Landroid/os/IBinder;

    .line 477
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 478
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    monitor-exit v0

    return-void

    .line 490
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :goto_0
    nop

    .line 484
    .local v1, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 485
    .local v2, "deadEvent":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    if-eqz v2, :cond_2

    .line 486
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 489
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 490
    .end local v1    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v2    # "deadEvent":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUidStateChanged(I)V
    .locals 27
    .param p1, "newState"    # I

    .line 499
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    return-void

    .line 503
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v13

    .line 505
    .local v13, "isRunning":Z
    if-eqz v13, :cond_1

    iget-object v0, v1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 507
    .local v0, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 508
    .local v14, "numInProgressEvents":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v15, v2

    .line 509
    .local v15, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v0

    .end local v0    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v2, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v3, "i":I
    :goto_1
    if-ge v3, v14, :cond_6

    .line 510
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 512
    .local v4, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v0

    move/from16 v8, p1

    if-eq v0, v8, :cond_5

    .line 513
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v23

    .line 514
    .local v23, "eventAttributionFlags":I
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v24

    .line 518
    .local v24, "eventAttributionChainId":I
    :try_start_0
    iget v0, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 519
    .local v0, "numPreviousUnfinishedStarts":I
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 520
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v6

    move-object/from16 v16, v6

    .line 522
    .local v16, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v1, v6, v5}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_c

    .line 526
    if-eqz v16, :cond_2

    .line 527
    move-object v5, v2

    .end local v2    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v5, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_9

    move v6, v3

    .end local v3    # "i":I
    .local v6, "i":I
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_8

    .line 528
    move-object v7, v4

    .end local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v7, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_7

    move-object v9, v5

    .end local v5    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v9, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6

    move v10, v6

    .end local v6    # "i":I
    .local v10, "i":I
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 529
    move-object v11, v7

    .end local v7    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v11, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v12, v9

    .end local v9    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v12, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    :try_start_7
    invoke-virtual {v11}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v9
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 530
    move/from16 v17, v10

    .end local v10    # "i":I
    .local v17, "i":I
    :try_start_8
    invoke-virtual {v11}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v10
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v18, v11

    .end local v11    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v18, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v11
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 527
    move-object/from16 v19, v12

    .end local v12    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v19, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    const/4 v12, 0x1

    move/from16 v25, v14

    move/from16 v14, v17

    move-object/from16 v26, v18

    .end local v17    # "i":I
    .end local v18    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "i":I
    .local v25, "numInProgressEvents":I
    .local v26, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    :try_start_a
    invoke-direct/range {v1 .. v13}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    move-object/from16 v1, p0

    goto/16 :goto_3

    .line 544
    .end local v0    # "numPreviousUnfinishedStarts":I
    .end local v16    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    :goto_2
    move-object/from16 v2, v19

    goto/16 :goto_6

    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v12    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v14, "numInProgressEvents":I
    .restart local v17    # "i":I
    .restart local v18    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    :catch_1
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v25, v14

    move/from16 v14, v17

    move-object/from16 v26, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .end local v12    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v17    # "i":I
    .end local v18    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    goto/16 :goto_6

    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v11    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v12    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v14, "numInProgressEvents":I
    .restart local v17    # "i":I
    :catch_2
    move-exception v0

    move-object/from16 v26, v11

    move-object/from16 v19, v12

    move/from16 v25, v14

    move/from16 v14, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .end local v11    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .end local v12    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v17    # "i":I
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    goto/16 :goto_6

    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v10    # "i":I
    .restart local v11    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v12    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v14, "numInProgressEvents":I
    :catch_3
    move-exception v0

    move-object/from16 v26, v11

    move-object/from16 v19, v12

    move/from16 v25, v14

    move v14, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .end local v10    # "i":I
    .end local v11    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .end local v12    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    goto/16 :goto_6

    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v9    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v10    # "i":I
    .restart local v11    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "numInProgressEvents":I
    :catch_4
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v26, v11

    move/from16 v25, v14

    move v14, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .end local v9    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v10    # "i":I
    .end local v11    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    goto/16 :goto_6

    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v7    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v9    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v10    # "i":I
    .local v14, "numInProgressEvents":I
    :catch_5
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v19, v9

    move/from16 v25, v14

    move v14, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .end local v7    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .end local v9    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v10    # "i":I
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    goto/16 :goto_6

    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v6    # "i":I
    .restart local v7    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v9    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v14, "numInProgressEvents":I
    :catch_6
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v19, v9

    move/from16 v25, v14

    move v14, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .end local v6    # "i":I
    .end local v7    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .end local v9    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    goto/16 :goto_6

    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v5    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v6    # "i":I
    .restart local v7    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "numInProgressEvents":I
    :catch_7
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v26, v7

    move/from16 v25, v14

    move v14, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .end local v5    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v6    # "i":I
    .end local v7    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    goto/16 :goto_6

    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v5    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v6    # "i":I
    .local v14, "numInProgressEvents":I
    :catch_8
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v19, v5

    move/from16 v25, v14

    move v14, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .end local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .end local v5    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v6    # "i":I
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    goto/16 :goto_6

    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v3    # "i":I
    .restart local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v5    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v14, "numInProgressEvents":I
    :catch_9
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v19, v5

    move/from16 v25, v14

    move v14, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .end local v3    # "i":I
    .end local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .end local v5    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    goto :goto_6

    .line 533
    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v0    # "numPreviousUnfinishedStarts":I
    .restart local v2    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v3    # "i":I
    .restart local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "numInProgressEvents":I
    .restart local v16    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v26, v4

    move/from16 v25, v14

    move v14, v3

    .end local v2    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v3    # "i":I
    .end local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v3

    .line 535
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v9

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v10

    .line 536
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v11
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 533
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    move-object/from16 v1, p0

    move/from16 v8, p1

    :try_start_b
    invoke-direct/range {v1 .. v13}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    .line 539
    :goto_3
    nop

    nop

    if-eqz v13, :cond_3

    iget-object v2, v1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_4

    .line 544
    .end local v0    # "numPreviousUnfinishedStarts":I
    .end local v16    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :catch_a
    move-exception v0

    goto/16 :goto_2

    .line 539
    .restart local v0    # "numPreviousUnfinishedStarts":I
    .restart local v16    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_3
    iget-object v2, v1, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_a

    :goto_4
    nop

    .line 540
    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v2    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    :try_start_c
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 541
    .local v3, "newEvent":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    if-eqz v3, :cond_4

    .line 542
    iget v4, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v5, v0, -0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_5

    .line 544
    .end local v0    # "numPreviousUnfinishedStarts":I
    .end local v3    # "newEvent":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .end local v16    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :catch_b
    move-exception v0

    goto :goto_6

    .line 552
    :cond_4
    :goto_5
    goto :goto_7

    .line 544
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v3, "i":I
    .restart local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "numInProgressEvents":I
    :catch_c
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v26, v4

    move/from16 v25, v14

    move v14, v3

    .end local v3    # "i":I
    .end local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "i":I
    .restart local v25    # "numInProgressEvents":I
    .restart local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    :goto_6
    nop

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, v1, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v1, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v5, v1, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v6, v1, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v6, v6, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 550
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v21

    .line 549
    const/16 v22, 0x0

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    goto :goto_7

    .line 512
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v23    # "eventAttributionFlags":I
    .end local v24    # "eventAttributionChainId":I
    .end local v25    # "numInProgressEvents":I
    .end local v26    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .restart local v3    # "i":I
    .restart local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "numInProgressEvents":I
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v26, v4

    move/from16 v25, v14

    move v14, v3

    .line 509
    .end local v2    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .end local v3    # "i":I
    .end local v4    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "i":I
    .restart local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v25    # "numInProgressEvents":I
    move-object/from16 v2, v19

    .end local v19    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    .restart local v2    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;>;"
    :goto_7
    add-int/lit8 v3, v14, 0x1

    move/from16 v14, v25

    .end local v14    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_1

    .end local v25    # "numInProgressEvents":I
    .local v14, "numInProgressEvents":I
    :cond_6
    nop

    .line 555
    .end local v3    # "i":I
    return-void
.end method

.method public pause()V
    .locals 14

    .line 411
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 416
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 419
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 421
    .local v2, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v1}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 424
    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v6, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v7, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v8, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 425
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v10

    .line 426
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v12

    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v13

    .line 424
    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 419
    .end local v2    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 428
    .end local v0    # "i":I
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 429
    return-void
.end method

.method public rejected(II)V
    .locals 8
    .param p1, "uidState"    # I
    .param p2, "flags"    # I

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/appop/AttributedOp;->rejected(JII)V

    .line 167
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    move v6, p1

    move v7, p2

    .end local p1    # "uidState":I
    .end local p2    # "flags":I
    .local v6, "uidState":I
    .local v7, "flags":I
    invoke-interface/range {v1 .. v7}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;II)V

    .line 169
    return-void
.end method

.method public rejected(JII)V
    .locals 17
    .param p1, "noteTime"    # J
    .param p3, "uidState"    # I
    .param p4, "flags"    # I

    .line 181
    move-object/from16 v0, p0

    invoke-static/range {p3 .. p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v1

    .line 183
    .local v1, "key":J
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v3, :cond_0

    .line 184
    new-instance v3, Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 188
    :cond_0
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 189
    .local v4, "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v4, :cond_1

    .line 190
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v3, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-wide/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    new-instance v11, Landroid/app/AppOpsManager$NoteOpEvent;

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    move-wide/from16 v12, p1

    invoke-direct/range {v11 .. v16}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v3, v1, v2, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 194
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 37

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    return-void

    .line 440
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    .line 441
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 443
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    nop

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 444
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    nop

    .line 446
    .local v1, "shouldSendActive":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 447
    .local v10, "startTime":J
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_1
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v15, v2, :cond_4

    .line 448
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 449
    .local v2, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->setStartElapsedTime(J)V

    .line 451
    invoke-virtual {v2, v10, v11}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->setStartTime(J)V

    .line 452
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v6, v6, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object v7, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .end local v2    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v7, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    move-object v8, v7

    .end local v7    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v8, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 453
    move-object v9, v8

    .end local v8    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v9, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    invoke-virtual {v9}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v8

    .line 454
    move-object v12, v9

    .end local v9    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v12, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    invoke-virtual {v12}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v9

    move-object v13, v12

    .end local v12    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v13, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v12

    .line 455
    move-object v14, v13

    .end local v13    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v14, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    invoke-virtual {v14}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v13

    .line 452
    move-object/from16 v16, v14

    .end local v14    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .local v16, "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    const/4 v14, 0x1

    invoke-interface/range {v2 .. v14}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V

    .line 456
    if-eqz v1, :cond_3

    .line 457
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 458
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v22

    .line 459
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v24

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v25

    .line 457
    const/16 v23, 0x1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 463
    :cond_3
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 464
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v31

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v32

    .line 465
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v35

    .line 466
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v36

    .line 463
    const/16 v33, 0x0

    const/16 v34, 0x2

    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    invoke-virtual/range {v26 .. v36}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 447
    .end local v16    # "event":Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_4
    nop

    .line 468
    .end local v15    # "i":I
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 469
    return-void
.end method

.method public started(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "virtualDeviceId"    # I
    .param p3, "proxyUid"    # I
    .param p4, "proxyPackageName"    # Ljava/lang/String;
    .param p5, "proxyAttributionTag"    # Ljava/lang/String;
    .param p6, "proxyDeviceId"    # Ljava/lang/String;
    .param p7, "uidState"    # I
    .param p8, "flags"    # I
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    .line 218
    return-void
.end method
