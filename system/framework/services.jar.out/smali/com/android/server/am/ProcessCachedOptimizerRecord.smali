.class final Lcom/android/server/am/ProcessCachedOptimizerRecord;
.super Ljava/lang/Object;
.source "ProcessCachedOptimizerRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessCachedOptimizerRecord$ShouldNotFreezeReason;
    }
.end annotation


# static fields
.field static final IS_FROZEN:Ljava/lang/String; = "isFrozen"

.field static final SHOULD_NOT_FREEZE_REASON_BINDER_ALLOW_OOM_MANAGEMENT:I = 0x4

.field static final SHOULD_NOT_FREEZE_REASON_BIND_WAIVE_PRIORITY:I = 0x8

.field static final SHOULD_NOT_FREEZE_REASON_NONE:I = 0x1

.field static final SHOULD_NOT_FREEZE_REASON_UID_ALLOWLISTED:I = 0x2


# instance fields
.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field private mEarliestFreezableTimeMillis:J

.field private mForceCompact:Z

.field private mFreezeExempt:Z

.field private mFreezeSticky:Z

.field private mFreezeUnfreezeTime:J

.field mFreezerOverride:Z

.field private mFrozen:Z

.field final mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/ActivityManagerInternal$FrozenProcessListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHasCollectedFrozenPSS:Z

.field private mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field private mLastCompactTime:J

.field private mLastOomAdjChangeReason:I

.field private mLastUsedTimeout:J

.field private mPendingCompact:Z

.field private mPendingFreeze:Z

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field private mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field private mShouldNotFreeze:Z

.field private mShouldNotFreezeAdjSeq:I

.field private mShouldNotFreezeReason:I


# direct methods
.method public static synthetic $r8$lambda$6e1WKBdmUHOww6OyL-WUh31gNYE(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchFrozenEvent$1(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HBmyY4u0xa6PxtuMQNuHUc2IWu0(Ljava/io/PrintWriter;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dump$4(Ljava/io/PrintWriter;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LTcRtyqLvcipvWyqTX8k356MCns(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchUnfrozenEvent$2(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZHn3tWVRvIRmtdxS9KMoU_F4R4(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchFrozenEvent$0(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-6XxJyWq6MDe_Td30gYfonqo00(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchUnfrozenEvent$3(Landroid/util/Pair;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 422
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 423
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 424
    return-void
.end method

.method private synthetic lambda$dispatchFrozenEvent$0(Landroid/util/Pair;)V
    .locals 2
    .param p1, "pair"    # Landroid/util/Pair;

    .line 411
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManagerInternal$FrozenProcessListener;

    iget-object v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-interface {v0, v1}, Landroid/app/ActivityManagerInternal$FrozenProcessListener;->onProcessFrozen(I)V

    return-void
.end method

.method private synthetic lambda$dispatchFrozenEvent$1(Landroid/util/Pair;)V
    .locals 2
    .param p1, "pair"    # Landroid/util/Pair;

    .line 411
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 412
    return-void
.end method

.method private synthetic lambda$dispatchUnfrozenEvent$2(Landroid/util/Pair;)V
    .locals 2
    .param p1, "pair"    # Landroid/util/Pair;

    .line 417
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManagerInternal$FrozenProcessListener;

    iget-object v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-interface {v0, v1}, Landroid/app/ActivityManagerInternal$FrozenProcessListener;->onProcessUnfrozen(I)V

    return-void
.end method

.method private synthetic lambda$dispatchUnfrozenEvent$3(Landroid/util/Pair;)V
    .locals 2
    .param p1, "pair"    # Landroid/util/Pair;

    .line 417
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method private static synthetic lambda$dump$4(Ljava/io/PrintWriter;Landroid/util/Pair;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method addFrozenProcessListener(Ljava/util/concurrent/Executor;Landroid/app/ActivityManagerInternal$FrozenProcessListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/ActivityManagerInternal$FrozenProcessListener;

    .line 406
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method dispatchFrozenEvent()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 413
    return-void
.end method

.method dispatchUnfrozenEvent()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 419
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowUptime"    # J
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 436
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastCompactTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 437
    const-string v0, " lastCompactProfile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 439
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    const-string/jumbo v0, "hasPendingCompaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 442
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isFreezeExempt="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 443
    const-string v0, " isPendingFreeze="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 444
    const-string v0, " isFrozen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "earliestFreezableTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 447
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    const-string v0, " mFrozenProcessListeners="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 451
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 452
    return-void
.end method

.method getEarliestFreezableTime()J
    .locals 2

    .line 367
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    return-wide v0
.end method

.method getFreezeUnfreezeTime()J
    .locals 2

    .line 306
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-wide v0
.end method

.method getLastCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object v0
.end method

.method getLastCompactTime()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-wide v0
.end method

.method getLastOomAdjChangeReason()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    return v0
.end method

.method getLastUsedTimeout()J
    .locals 2

    .line 377
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    return-wide v0
.end method

.method getReqCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object v0
.end method

.method getReqCompactSource()Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    return-object v0
.end method

.method hasFreezerOverride()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return v0
.end method

.method hasPendingCompact()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return v0
.end method

.method init(J)V
    .locals 0
    .param p1, "nowUptime"    # J

    .line 427
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 429
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 431
    return-void
.end method

.method isForceCompact()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    return v0
.end method

.method isFreezeExempt()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return v0
.end method

.method isFreezeSticky()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    return v0
.end method

.method isFrozen()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return v0
.end method

.method isPendingFreeze()Z
    .locals 1

    .line 397
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return v0
.end method

.method setEarliestFreezableTime(J)V
    .locals 0
    .param p1, "earliestFreezableTimeMillis"    # J

    .line 372
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    .line 373
    return-void
.end method

.method setForceCompact(Z)V
    .locals 0
    .param p1, "forceCompact"    # Z

    .line 253
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    .line 254
    return-void
.end method

.method setFreezeExempt(Z)V
    .locals 0
    .param p1, "exempt"    # Z

    .line 402
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    .line 403
    return-void
.end method

.method setFreezeSticky(Z)V
    .locals 0
    .param p1, "sticky"    # Z

    .line 267
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    .line 268
    return-void
.end method

.method setFreezeUnfreezeTime(J)V
    .locals 0
    .param p1, "freezeUnfreezeTime"    # J

    .line 311
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 312
    return-void
.end method

.method setFreezerOverride(Z)V
    .locals 0
    .param p1, "freezerOverride"    # Z

    .line 301
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    .line 302
    return-void
.end method

.method setFrozen(Z)V
    .locals 0
    .param p1, "frozen"    # Z

    .line 263
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 264
    return-void
.end method

.method setHasCollectedFrozenPSS(Z)V
    .locals 0
    .param p1, "collected"    # Z

    .line 291
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 292
    return-void
.end method

.method setHasPendingCompact(Z)V
    .locals 0
    .param p1, "pendingCompact"    # Z

    .line 243
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 244
    return-void
.end method

.method setLastCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V
    .locals 0
    .param p1, "lastCompactProfile"    # Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 233
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 234
    return-void
.end method

.method setLastCompactTime(J)V
    .locals 0
    .param p1, "lastCompactTime"    # J

    .line 185
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 186
    return-void
.end method

.method setLastOomAdjChangeReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 210
    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    .line 211
    return-void
.end method

.method setLastUsedTimeout(J)V
    .locals 0
    .param p1, "lastUsedTimeout"    # J

    .line 382
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    .line 383
    return-void
.end method

.method setPendingFreeze(Z)V
    .locals 0
    .param p1, "freeze"    # Z

    .line 392
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 393
    return-void
.end method

.method setReqCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V
    .locals 0
    .param p1, "reqCompactProfile"    # Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 195
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 196
    return-void
.end method

.method setReqCompactSource(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V
    .locals 0
    .param p1, "stat"    # Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 205
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 206
    return-void
.end method

.method setShouldNotFreeze(ZII)V
    .locals 1
    .param p1, "shouldNotFreeze"    # Z
    .param p2, "reason"    # I
    .param p3, "adjSeq"    # I

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    .line 333
    return-void
.end method

.method setShouldNotFreeze(ZZII)Z
    .locals 2
    .param p1, "shouldNotFreeze"    # Z
    .param p2, "dryRun"    # Z
    .param p3, "reason"    # I
    .param p4, "adjSeq"    # I

    .line 342
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 343
    nop

    .line 344
    iget-boolean v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 349
    :cond_1
    nop

    .line 350
    if-eqz p1, :cond_2

    .line 351
    and-int/lit8 p3, p3, -0x2

    goto :goto_0

    .line 353
    :cond_2
    const/4 p3, 0x1

    .line 356
    :goto_0
    iget v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    if-ne p3, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eq p1, v1, :cond_4

    .line 357
    :cond_3
    iput p4, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeAdjSeq:I

    .line 359
    :cond_4
    iput p3, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    .line 361
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 362
    return v0
.end method

.method shouldNotFreeze()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return v0
.end method

.method shouldNotFreezeAdjSeq()I
    .locals 1

    .line 326
    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeAdjSeq:I

    return v0
.end method

.method shouldNotFreezeReason()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    return v0
.end method

.method skipPSSCollectionBecauseFrozen()Z
    .locals 2

    .line 276
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 280
    .local v0, "collected":Z
    iget-boolean v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v1, :cond_0

    .line 282
    const/4 v1, 0x0

    return v1

    .line 286
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 287
    return v0
.end method
