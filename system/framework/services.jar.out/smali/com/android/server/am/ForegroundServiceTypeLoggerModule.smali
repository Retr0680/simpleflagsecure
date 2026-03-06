.class public Lcom/android/server/am/ForegroundServiceTypeLoggerModule;
.super Ljava/lang/Object;
.source "ForegroundServiceTypeLoggerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;,
        Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;,
        Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiState;
    }
.end annotation


# static fields
.field public static final FGS_API_BEGIN_WITH_FGS:I = 0x1

.field public static final FGS_API_END_WITHOUT_FGS:I = 0x3

.field public static final FGS_API_END_WITH_FGS:I = 0x2

.field public static final FGS_API_PAUSE:I = 0x4

.field public static final FGS_API_RESUME:I = 0x5

.field public static final FGS_STATE_CHANGED_API_CALL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ForegroundServiceTypeLoggerModule"


# instance fields
.field private final mUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    .line 131
    return-void
.end method

.method private convertFgsTypeToApiTypes(I)Landroid/util/IntArray;
    .locals 5
    .param p1, "fgsType"    # I

    .line 444
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 445
    .local v0, "types":Landroid/util/IntArray;
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 447
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 449
    :cond_0
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-ne v1, v2, :cond_1

    .line 451
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    .line 452
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 453
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 455
    :cond_1
    and-int/lit8 v1, p1, 0x8

    if-ne v1, v3, :cond_2

    .line 457
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 459
    :cond_2
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x4

    if-ne v1, v4, :cond_3

    .line 461
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 462
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    .line 464
    :cond_3
    and-int/lit16 v1, p1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_4

    .line 466
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 468
    :cond_4
    and-int/lit8 v1, p1, 0x4

    if-ne v1, v2, :cond_5

    .line 470
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 472
    :cond_5
    return-object v0
.end method

.method private hasValidActiveFgs(II)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "apiType"    # I

    .line 476
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 477
    .local v0, "uidState":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
    if-eqz v0, :cond_0

    .line 478
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    return v1

    .line 480
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V
    .locals 48
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "fgsState"    # I
    .param p3, "apiState"    # I
    .param p4, "apiType"    # I
    .param p5, "timestamp"    # J

    .line 490
    move-object/from16 v0, p1

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    .line 491
    .local v2, "apiDurationBeforeFgsStart":J
    const-wide/16 v4, 0x0

    .line 492
    .local v4, "apiDurationAfterFgsEnd":J
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    iget-object v8, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 493
    .local v7, "uidState":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
    if-nez v7, :cond_0

    .line 494
    return-void

    .line 496
    :cond_0
    iget-object v8, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 497
    iget-object v8, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v2, v8, p5

    move-wide/from16 v36, v2

    goto :goto_0

    .line 496
    :cond_1
    move-wide/from16 v36, v2

    .line 499
    .end local v2    # "apiDurationBeforeFgsStart":J
    .local v36, "apiDurationBeforeFgsStart":J
    :goto_0
    iget-object v2, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    iget-object v2, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v4, p5, v2

    move-wide/from16 v38, v4

    goto :goto_1

    .line 499
    :cond_2
    move-wide/from16 v38, v4

    .line 502
    .end local v4    # "apiDurationAfterFgsEnd":J
    .local v38, "apiDurationAfterFgsEnd":J
    :goto_1
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 503
    .local v3, "apiTypes":[I
    const/4 v4, 0x0

    aput v1, v3, v4

    .line 504
    new-array v2, v2, [J

    .line 505
    .local v2, "timeStamps":[J
    aput-wide p5, v2, v4

    .line 506
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 511
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v12

    .line 512
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v13

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v15, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 516
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    if-eqz v5, :cond_3

    .line 517
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    move/from16 v17, v5

    goto :goto_2

    :cond_3
    const/16 v17, -0x1

    :goto_2
    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    iget-boolean v8, v0, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    .line 527
    move/from16 v26, v1

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v1, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    move/from16 v27, v1

    goto :goto_3

    :cond_4
    const/16 v27, -0x1

    .line 528
    :goto_3
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v1, v1, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    move/from16 v28, v1

    goto :goto_4

    .line 529
    :cond_5
    const/16 v28, 0x0

    :goto_4
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    move/from16 v40, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    move/from16 v41, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    move/from16 v42, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    move/from16 v43, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    move/from16 v44, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 506
    move/from16 v23, v8

    const/16 v8, 0x3c

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v32, -0x1

    const/16 v33, 0x0

    const/16 v34, -0x1

    const/16 v35, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move/from16 v29, p3

    move/from16 v45, v1

    move-object/from16 v31, v2

    move-object/from16 v30, v3

    move/from16 v21, v4

    move/from16 v18, v5

    move/from16 v19, v11

    move/from16 v11, p2

    .end local v2    # "timeStamps":[J
    .end local v3    # "apiTypes":[I
    .local v30, "apiTypes":[I
    .local v31, "timeStamps":[J
    invoke-static/range {v8 .. v47}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJIIIIIIIZ)V

    .line 548
    return-void
.end method

.method public logFgsApiEventWithNoFgs(IIIJ)V
    .locals 45
    .param p1, "uid"    # I
    .param p2, "apiState"    # I
    .param p3, "apiType"    # I
    .param p4, "timestamp"    # J

    .line 558
    move/from16 v0, p3

    const-wide/16 v1, 0x0

    .line 559
    .local v1, "apiDurationAfterFgsEnd":J
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    move/from16 v6, p1

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 560
    .local v4, "uidState":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
    if-nez v4, :cond_0

    .line 561
    return-void

    .line 563
    :cond_0
    iget-object v5, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 564
    iget-object v5, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v1, p4, v7

    move-wide/from16 v35, v1

    goto :goto_0

    .line 563
    :cond_1
    move-wide/from16 v35, v1

    .line 566
    .end local v1    # "apiDurationAfterFgsEnd":J
    .local v35, "apiDurationAfterFgsEnd":J
    :goto_0
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 567
    .local v2, "apiTypes":[I
    const/4 v5, 0x0

    aput v0, v2, v5

    .line 568
    new-array v1, v1, [J

    .line 569
    .local v1, "timeStamps":[J
    aput-wide p4, v1, v5

    .line 570
    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v5, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, -0x1

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move/from16 v12, p1

    move/from16 v26, p2

    move-object/from16 v28, v1

    move-object/from16 v27, v2

    .end local v1    # "timeStamps":[J
    .end local v2    # "apiTypes":[I
    .local v27, "apiTypes":[I
    .local v28, "timeStamps":[J
    invoke-static/range {v5 .. v44}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJIIIIIIIZ)V

    .line 609
    return-void
.end method

.method public logForegroundServiceApiEventBegin(IIILjava/lang/String;)J
    .locals 14
    .param p1, "apiType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 288
    new-instance v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move v4, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;-><init>(IILjava/lang/String;IJ)V

    .line 290
    .local v0, "callStart":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;
    iget-object v2, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 291
    .local v2, "uidState":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
    if-nez v2, :cond_0

    .line 292
    new-instance v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;-><init>(Lcom/android/server/am/ForegroundServiceTypeLoggerModule-IA;)V

    move-object v2, v3

    .line 293
    iget-object v3, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->hasValidActiveFgs(II)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_4

    .line 301
    iget-object v3, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 302
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 304
    .local v3, "openWithoutFgsCountIndex":I
    if-gez v3, :cond_1

    .line 305
    iget-object v7, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v7, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 306
    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 307
    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 311
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    nop

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 312
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-nez v5, :cond_3

    .line 313
    :cond_2
    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    :cond_3
    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    iget-object v7, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 318
    invoke-virtual {v7, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    iget-wide v5, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    return-wide v5

    .line 326
    .end local v3    # "openWithoutFgsCountIndex":I
    :cond_4
    iget-object v3, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 328
    .local v3, "openWithFgsIndex":I
    if-gez v3, :cond_5

    .line 329
    iget-object v7, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v7, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 332
    :cond_5
    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    iget-object v7, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 333
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 337
    .local v5, "fgsListMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move v11, p1

    .line 338
    .local v11, "apiTypes":I
    iget-wide v12, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    .line 339
    .local v12, "timestamps":J
    iget-object v7, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ne v7, v6, :cond_6

    .line 340
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 341
    .local v8, "record":Lcom/android/server/am/ServiceRecord;
    const/4 v9, 0x4

    const/4 v10, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    .line 346
    .end local v8    # "record":Lcom/android/server/am/ServiceRecord;
    goto :goto_0

    .line 348
    :cond_6
    iget-wide v6, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    return-wide v6
.end method

.method public logForegroundServiceApiEventEnd(III)J
    .locals 10
    .param p1, "apiType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 362
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 363
    .local v0, "uidState":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
    if-nez v0, :cond_0

    .line 364
    const-string v1, "ForegroundServiceTypeLoggerModule"

    const-string v2, "API event end called before start!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-wide/16 v1, -0x1

    return-wide v1

    .line 367
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 368
    .local v1, "apiIndex":I
    if-ltz v1, :cond_4

    .line 370
    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    iget-object v3, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 374
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 373
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 377
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->hasValidActiveFgs(II)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 378
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 383
    .local v7, "timestamp":J
    move v6, p1

    .line 384
    .local v6, "apiTypes":I
    const/4 v5, 0x3

    move-object v3, p0

    move v4, p2

    .end local p2    # "uid":I
    .local v4, "uid":I
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEventWithNoFgs(IIIJ)V

    .line 387
    move v3, v4

    .end local v4    # "uid":I
    .local v3, "uid":I
    iget-object p2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 388
    return-wide v7

    .line 378
    .end local v3    # "uid":I
    .end local v6    # "apiTypes":I
    .end local v7    # "timestamp":J
    .restart local p2    # "uid":I
    :cond_2
    move v3, p2

    .end local p2    # "uid":I
    .restart local v3    # "uid":I
    goto :goto_0

    .line 377
    .end local v3    # "uid":I
    .restart local p2    # "uid":I
    :cond_3
    move v3, p2

    .end local p2    # "uid":I
    .restart local v3    # "uid":I
    goto :goto_0

    .line 368
    .end local v3    # "uid":I
    .restart local p2    # "uid":I
    :cond_4
    move v3, p2

    .line 395
    .end local p2    # "uid":I
    .restart local v3    # "uid":I
    :goto_0
    iget-object p2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_5

    .line 397
    iget-object p2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 399
    :cond_5
    iget-object p2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    .line 400
    .local p2, "apiOpenWithoutFgsCount":I
    if-eqz p2, :cond_7

    .line 401
    add-int/lit8 p2, p2, -0x1

    .line 402
    if-nez p2, :cond_6

    .line 403
    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 405
    :cond_6
    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 406
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    return-wide v4

    .line 412
    :cond_7
    iget-object v9, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    .line 413
    .local v9, "callsByUid":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;>;"
    new-instance v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v5, ""

    move v6, p1

    move v4, p3

    .end local p1    # "apiType":I
    .end local p3    # "pid":I
    .local v4, "pid":I
    .local v6, "apiType":I
    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;-><init>(IILjava/lang/String;IJ)V

    .line 415
    .local v2, "closedCall":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;
    iget-object p1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {p1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 416
    iget-wide v7, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    return-wide v7
.end method

.method public logForegroundServiceApiStateChanged(IIII)V
    .locals 10
    .param p1, "apiType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "state"    # I

    .line 424
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 425
    .local v0, "uidState":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    return-void

    .line 431
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 432
    .local v1, "fgsRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move v6, p1

    .line 433
    .local v6, "apiTypes":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 434
    .local v7, "timestamp":J
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 435
    .local v3, "record":Lcom/android/server/am/ServiceRecord;
    const/4 v4, 0x4

    move-object v2, p0

    move v5, p4

    .end local p4    # "state":I
    .local v5, "state":I
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    .line 440
    .end local v3    # "record":Lcom/android/server/am/ServiceRecord;
    goto :goto_0

    .line 441
    .end local v5    # "state":I
    .restart local p4    # "state":I
    :cond_1
    return-void
.end method

.method public logForegroundServiceStart(IILcom/android/server/am/ServiceRecord;)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 138
    move-object/from16 v1, p3

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "traceTag":Ljava/lang/String;
    const-string/jumbo v2, "foregroundService"

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v0, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 144
    .end local v0    # "traceTag":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 145
    .local v0, "uidState":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
    if-nez v0, :cond_1

    .line 146
    new-instance v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;-><init>(Lcom/android/server/am/ForegroundServiceTypeLoggerModule-IA;)V

    move-object v0, v2

    .line 147
    iget-object v2, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v7, v0

    goto :goto_0

    .line 145
    :cond_1
    move-object v7, v0

    .line 150
    .end local v0    # "uidState":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
    .local v7, "uidState":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
    :goto_0
    iget v0, v1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 151
    invoke-direct {p0, v0}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->convertFgsTypeToApiTypes(I)Landroid/util/IntArray;

    move-result-object v8

    .line 152
    .local v8, "apiTypes":Landroid/util/IntArray;
    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Foreground service start for UID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have any types"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ForegroundServiceTypeLoggerModule"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v9, v0

    .line 159
    .local v9, "apiTypesFound":Landroid/util/IntArray;
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    move-object v10, v0

    .line 160
    .local v10, "timestampsFound":Landroid/util/LongArray;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 161
    invoke-virtual {v8, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 162
    .local v3, "apiType":I
    iget-object v4, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 163
    .local v4, "fgsIndex":I
    if-gez v4, :cond_3

    .line 164
    iget-object v5, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    iget-object v5, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 166
    iget-object v5, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    :cond_3
    iget-object v5, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 169
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 170
    .local v5, "fgsList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v6, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 179
    iget-object v6, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    iget-object v11, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 180
    invoke-virtual {v11, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v6, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    iget-object v6, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v6, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    invoke-virtual {v9, v3}, Landroid/util/IntArray;->add(I)V

    .line 183
    iget-object v6, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 184
    .local v6, "call":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;
    iget-wide v11, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    invoke-virtual {v10, v11, v12}, Landroid/util/LongArray;->add(J)V

    .line 186
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mIsAssociatedWithFgs:Z

    .line 187
    iput-object v1, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mAssociatedFgsRecord:Lcom/android/server/am/ServiceRecord;

    .line 191
    iget-object v11, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 160
    .end local v3    # "apiType":I
    .end local v4    # "fgsIndex":I
    .end local v5    # "fgsList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v6    # "call":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 194
    .end local v0    # "i":I
    .end local v2    # "size":I
    invoke-virtual {v9}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 196
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {v9}, Landroid/util/IntArray;->size()I

    move-result v11

    move v12, v0

    .end local v0    # "i":I
    .local v11, "size":I
    .local v12, "i":I
    :goto_2
    if-ge v12, v11, :cond_6

    .line 197
    nop

    .line 200
    invoke-virtual {v9, v12}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 201
    invoke-virtual {v10, v12}, Landroid/util/LongArray;->get(I)J

    move-result-wide v5

    .line 197
    const/4 v2, 0x4

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    .line 196
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p3

    goto :goto_2

    .line 204
    .end local v11    # "size":I
    .end local v12    # "i":I
    :cond_6
    return-void
.end method

.method public logForegroundServiceStop(ILcom/android/server/am/ServiceRecord;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 214
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v1, p2

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "traceTag":Ljava/lang/String;
    nop

    .line 217
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 216
    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 219
    .end local v2    # "traceTag":Ljava/lang/String;
    :cond_0
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-direct {v0, v2}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->convertFgsTypeToApiTypes(I)Landroid/util/IntArray;

    move-result-object v8

    .line 220
    .local v8, "apiTypes":Landroid/util/IntArray;
    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 221
    .local v9, "uidState":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    move-result v2

    const-string v3, "ForegroundServiceTypeLoggerModule"

    if-nez v2, :cond_1

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FGS stop call for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no types!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    const-string v2, " in package "

    if-nez v9, :cond_2

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FGS stop call being logged with no start call for UID for UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 230
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v4

    .line 231
    .local v10, "apisFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    .line 232
    .local v11, "timestampsFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_7

    .line 233
    invoke-virtual {v8, v4}, Landroid/util/IntArray;->get(I)I

    move-result v6

    .line 236
    .local v6, "apiType":I
    iget-object v12, v9, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 237
    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    .line 238
    .local v12, "runningFgsOfType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    if-nez v12, :cond_3

    .line 239
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not find appropriate running FGS for FGS stop for UID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    goto :goto_1

    .line 244
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-nez v13, :cond_4

    .line 247
    iget-object v13, v9, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 249
    iget-object v13, v9, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    :cond_4
    iget-object v13, v9, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    .line 253
    .local v13, "apiTypeIndex":I
    if-gez v13, :cond_5

    .line 254
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Logger should be tracking FGS types correctly for UID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    goto :goto_1

    .line 262
    :cond_5
    iget-object v14, v9, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 263
    .local v14, "closedApi":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;
    nop

    nop

    if-eqz v14, :cond_6

    iget-object v15, v9, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 264
    invoke-virtual {v15, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    if-nez v15, :cond_6

    .line 265
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-wide v0, v14, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, v9, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 232
    .end local v6    # "apiType":I
    .end local v12    # "runningFgsOfType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v13    # "apiTypeIndex":I
    .end local v14    # "closedApi":Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto/16 :goto_0

    :cond_7
    nop

    .line 271
    .end local v4    # "i":I
    .end local v5    # "size":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 273
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_8

    .line 274
    nop

    .line 276
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 274
    const/4 v2, 0x4

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    .line 273
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 279
    .end local v12    # "i":I
    :cond_8
    return-void
.end method
