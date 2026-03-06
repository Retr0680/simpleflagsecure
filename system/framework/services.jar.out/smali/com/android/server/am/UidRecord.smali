.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# static fields
.field static final CHANGE_ACTIVE:I = 0x4

.field static final CHANGE_CACHED:I = 0x8

.field static final CHANGE_CAPABILITY:I = 0x20

.field static final CHANGE_GONE:I = 0x1

.field static final CHANGE_IDLE:I = 0x2

.field static final CHANGE_PROCADJ:I = 0x40

.field static final CHANGE_PROCSTATE:I = -0x80000000

.field static final CHANGE_UNCACHED:I = 0x10

.field private static ORIG_ENUMS:[I

.field private static PROTO_ENUMS:[I


# instance fields
.field curProcStateSeq:J

.field volatile hasInternetPermission:Z

.field lastNetworkUpdatedProcStateSeq:J

.field private mCurAdj:I

.field private mCurAllowList:Z

.field private mCurCapability:I

.field private mCurProcState:I

.field private mEphemeral:Z

.field private mForegroundServices:Z

.field private mIdle:Z

.field private mLastBackgroundTime:J

.field private mLastIdleTimeIfStillIdle:J

.field private mLastReportedChange:I

.field private mNumProcs:I

.field private mProcAdjChanged:Z

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mProcRecords:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRealLastIdleTime:J

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSetAdj:I

.field private mSetAllowList:Z

.field private mSetCapability:I

.field private mSetIdle:Z

.field private mSetProcState:I

.field private final mUid:I

.field private mUidIsFrozen:Z

.field final networkStateLock:Ljava/lang/Object;

.field final pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

.field volatile procStateSeqWaitingForNetwork:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 150
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    .line 159
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        -0x80000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 104
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 170
    new-instance v0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v0}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 184
    iput p1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 185
    iput-object p2, p0, Lcom/android/server/am/UidRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 186
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    .line 189
    return-void
.end method


# virtual methods
.method addProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 425
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method public areAllProcessesFrozen()Z
    .locals 1

    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method public areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "excluding"    # Lcom/android/server/am/ProcessRecord;

    .line 394
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 395
    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 396
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 398
    .local v3, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    if-eq p1, v2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 399
    const/4 v1, 0x0

    return v1

    .line 394
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 402
    .end local v0    # "i":I
    return v1
.end method

.method clearProcAdjChanged()V
    .locals 1

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 223
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 451
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 452
    .local v7, "token":J
    const-wide v1, 0x10500000001L

    iget v3, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 453
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v1

    const-wide v2, 0x10e00000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 454
    const-wide v1, 0x10800000003L

    iget-boolean v3, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 455
    const-wide v1, 0x10800000004L

    iget-boolean v3, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 456
    const-wide v1, 0x10800000005L

    iget-boolean v3, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 457
    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 457
    const-wide v1, 0x10b00000006L

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 459
    const-wide v1, 0x10800000007L

    iget-boolean v3, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 460
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v1, :cond_0

    .line 461
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    int-to-long v3, v1

    sget-object v5, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    sget-object v6, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    const-wide v1, 0x20e00000008L

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    .line 464
    :cond_0
    const-wide v1, 0x10500000009L

    iget v3, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 466
    const-wide v1, 0x10b0000000aL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 467
    .local v1, "seqToken":J
    const-wide v3, 0x10300000001L

    iget-wide v5, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 468
    const-wide v3, 0x10300000002L

    iget-wide v5, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 470
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 472
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 473
    return-void
.end method

.method forEachProcess(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 365
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 365
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 368
    .end local v0    # "i":I
    return-void
.end method

.method getCurCapability()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return v0
.end method

.method getCurProcState()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return v0
.end method

.method getLastBackgroundTime()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    return-wide v0
.end method

.method getLastIdleTimeIfStillIdle()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    return-wide v0
.end method

.method getMinProcAdj()I
    .locals 3

    .line 232
    const/16 v0, 0x3e9

    .line 233
    .local v0, "minAdj":I
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v2

    .line 235
    .local v2, "adj":I
    if-ge v2, v0, :cond_0

    .line 236
    move v0, v2

    .line 233
    .end local v2    # "adj":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 239
    .end local v1    # "i":I
    return v0
.end method

.method getNumOfProcs()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method getProcAdjChanged()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return v0
.end method

.method getProcessInPackage(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 379
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    return-object v1

    .line 377
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 383
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0
.end method

.method getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "idx"    # I

    .line 372
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method getRealLastIdleTime()J
    .locals 2

    .line 285
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->mRealLastIdleTime:J

    return-wide v0
.end method

.method getSetCapability()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    return v0
.end method

.method getSetProcState()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    return v0
.end method

.method getUid()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/android/server/am/UidRecord;->mUid:I

    return v0
.end method

.method hasForegroundServices()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    return v0
.end method

.method isCurAllowListed()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    return v0
.end method

.method isEphemeral()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    return v0
.end method

.method isIdle()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    return v0
.end method

.method isSetAllowListed()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    return v0
.end method

.method isSetIdle()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    return v0
.end method

.method noteProcAdjChanged()V
    .locals 1

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 218
    return-void
.end method

.method removeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 430
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method reset()V
    .locals 1

    .line 440
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 442
    iput v0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 443
    return-void
.end method

.method setCurAllowListed(Z)V
    .locals 0
    .param p1, "curAllowList"    # Z

    .line 325
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 326
    return-void
.end method

.method setCurCapability(I)V
    .locals 0
    .param p1, "curCapability"    # I

    .line 249
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 250
    return-void
.end method

.method setCurProcState(I)V
    .locals 0
    .param p1, "curProcState"    # I

    .line 202
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 203
    return-void
.end method

.method setEphemeral(Z)V
    .locals 0
    .param p1, "ephemeral"    # Z

    .line 303
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    .line 304
    return-void
.end method

.method setForegroundServices(Z)V
    .locals 0
    .param p1, "foregroundServices"    # Z

    .line 315
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 316
    return-void
.end method

.method public setFrozen(Z)V
    .locals 0
    .param p1, "frozen"    # Z

    .line 415
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    .line 416
    return-void
.end method

.method setIdle(Z)V
    .locals 0
    .param p1, "idle"    # Z

    .line 345
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 346
    return-void
.end method

.method setLastBackgroundTime(J)V
    .locals 0
    .param p1, "lastBackgroundTime"    # J

    .line 269
    iput-wide p1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 270
    return-void
.end method

.method setLastIdleTime(J)V
    .locals 2
    .param p1, "lastIdleTime"    # J

    .line 290
    iput-wide p1, p0, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    .line 291
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 292
    iput-wide p1, p0, Lcom/android/server/am/UidRecord;->mRealLastIdleTime:J

    .line 294
    :cond_0
    return-void
.end method

.method setLastReportedChange(I)V
    .locals 0
    .param p1, "lastReportedChange"    # I

    .line 435
    iput p1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 436
    return-void
.end method

.method setSetAllowListed(Z)V
    .locals 0
    .param p1, "setAllowlist"    # Z

    .line 335
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    .line 336
    return-void
.end method

.method setSetCapability(I)V
    .locals 0
    .param p1, "setCapability"    # I

    .line 259
    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 260
    return-void
.end method

.method setSetIdle(Z)V
    .locals 0
    .param p1, "setIdle"    # Z

    .line 355
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    .line 356
    return-void
.end method

.method setSetProcState(I)V
    .locals 0
    .param p1, "setProcState"    # I

    .line 212
    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 477
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UidRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    if-eqz v1, :cond_0

    .line 484
    const-string v1, " ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    if-eqz v1, :cond_1

    .line 487
    const-string v1, " fgServices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v1, :cond_2

    .line 490
    const-string v1, " allowlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_2
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 493
    const-string v1, " bg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 496
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v1, :cond_4

    .line 497
    const-string v1, " idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_4
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v1, :cond_11

    .line 500
    const-string v1, " change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const/4 v1, 0x0

    .line 502
    .local v1, "printed":Z
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 503
    const/4 v1, 0x1

    .line 504
    const-string/jumbo v2, "gone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_5
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x2

    const-string/jumbo v3, "|"

    if-eqz v2, :cond_7

    .line 507
    if-eqz v1, :cond_6

    .line 508
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_6
    const/4 v1, 0x1

    .line 511
    const-string/jumbo v2, "idle"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_7
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    .line 514
    if-eqz v1, :cond_8

    .line 515
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_8
    const/4 v1, 0x1

    .line 518
    const-string v2, "active"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_9
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    .line 521
    if-eqz v1, :cond_a

    .line 522
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_a
    const/4 v1, 0x1

    .line 525
    const-string v2, "cached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_b
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_d

    .line 528
    if-eqz v1, :cond_c

    .line 529
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_c
    const-string/jumbo v2, "uncached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_d
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/high16 v4, -0x80000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_f

    .line 534
    if-eqz v1, :cond_e

    .line 535
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_e
    const-string/jumbo v2, "procstate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_f
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_11

    .line 540
    if-eqz v1, :cond_10

    .line 541
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_10
    const-string/jumbo v2, "procadj"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .end local v1    # "printed":Z
    :cond_11
    const-string v1, " procs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget v1, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string v1, " seq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 550
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 552
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v1, " caps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateHasInternetPermission()V
    .locals 2

    .line 446
    const-string v0, "android.permission.INTERNET"

    iget v1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    .line 448
    return-void
.end method
