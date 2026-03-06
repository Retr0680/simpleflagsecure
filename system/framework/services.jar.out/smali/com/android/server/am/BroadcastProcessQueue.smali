.class Lcom/android/server/am/BroadcastProcessQueue;
.super Ljava/lang/Object;
.source "BroadcastProcessQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;,
        Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;,
        Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;,
        Lcom/android/server/am/BroadcastProcessQueue$Reason;
    }
.end annotation


# static fields
.field static final REASON_BLOCKED:I = 0x4

.field static final REASON_CACHED:I = 0x1

.field static final REASON_CACHED_INFINITE_DEFER:I = 0x8

.field static final REASON_CONTAINS_ALARM:I = 0xc

.field static final REASON_CONTAINS_FOREGROUND:I = 0xa

.field static final REASON_CONTAINS_INSTRUMENTED:I = 0x10

.field static final REASON_CONTAINS_INTERACTIVE:I = 0xe

.field static final REASON_CONTAINS_MANIFEST:I = 0x11

.field static final REASON_CONTAINS_ORDERED:I = 0xb

.field static final REASON_CONTAINS_PRIORITIZED:I = 0xd

.field static final REASON_CONTAINS_RESULT_TO:I = 0xf

.field static final REASON_CORE_UID:I = 0x13

.field static final REASON_EMPTY:I = 0x0

.field static final REASON_FORCE_DELAYED:I = 0x7

.field static final REASON_FOREGROUND:I = 0x12

.field static final REASON_INSTRUMENTED:I = 0x5

.field static final REASON_MAX_PENDING:I = 0x3

.field static final REASON_NORMAL:I = 0x2

.field static final REASON_PERSISTENT:I = 0x6

.field static final REASON_TOP_PROCESS:I = 0x14

.field static final VERBOSE:Z = false


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final constants:Lcom/android/server/am/BroadcastConstants;

.field lastCpuDelayTime:J

.field lastProcessState:I

.field private mActive:Lcom/android/server/am/BroadcastRecord;

.field private mActiveAssumedDeliveryCountSinceIdle:I

.field private mActiveCountConsecutiveNormal:I

.field private mActiveCountConsecutiveUrgent:I

.field private mActiveCountSinceIdle:I

.field private mActiveFirstLaunch:Z

.field private mActiveIndex:I

.field private mActiveReEnqueued:Z

.field private mActiveViaColdStart:Z

.field private mActiveWasStopped:Z

.field private mCachedToShortString:Ljava/lang/String;

.field private mCachedToString:Ljava/lang/String;

.field private mCountAlarm:I

.field private mCountDeferred:I

.field private mCountEnqueued:I

.field private mCountForeground:I

.field private mCountForegroundDeferred:I

.field private mCountInstrumented:I

.field private mCountInteractive:I

.field private mCountManifest:I

.field private mCountOrdered:I

.field private mCountPrioritizeEarliestRequests:I

.field private mCountPrioritized:I

.field private mCountPrioritizedDeferred:I

.field private mCountResultTo:I

.field private mCurReceiversIncremented:Z

.field private mForcedDelayedDurationMs:J

.field private mLastDeferredStates:Z

.field private final mOutgoingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPending:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingOffload:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingUrgent:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessFreezable:Z

.field private mProcessInstrumented:Z

.field private mProcessPersistent:Z

.field private mProcessStartInitiatedTimestampMillis:J

.field private mRunnableAt:J

.field private mRunnableAtInvalidated:Z

.field private mRunnableAtReason:I

.field private mTimeoutScheduled:Z

.field private mUidForeground:Z

.field final processName:Ljava/lang/String;

.field processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

.field runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

.field runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

.field runningOomAdjusted:Z

.field runningTraceTrackName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public static synthetic $r8$lambda$7LuENv9AvlpyJsICrtISXBsS3_E(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->lambda$clearDeferredStates$2(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7jvfHufVyE3JdVe4Li1zoeZOhgw(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->lambda$updateDeferredStates$0(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uTkPoca9PFx_MiK361g77-Nbtxk(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->lambda$updateDeferredStates$1(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V
    .locals 2
    .param p1, "constants"    # Lcom/android/server/am/BroadcastConstants;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 135
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 142
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 220
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    .line 269
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    .line 270
    iput p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 271
    return-void
.end method

.method private assertHealthLocked(Ljava/util/ArrayDeque;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;)V"
        }
    .end annotation

    .line 1432
    .local p1, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1434
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1435
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/SomeArgs;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1436
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1437
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 1438
    .local v2, "record":Lcom/android/server/am/BroadcastRecord;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1440
    .local v3, "recordIndex":I
    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1441
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->isDeferUntilActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1442
    goto :goto_0

    .line 1445
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v4, v6

    .line 1446
    .local v4, "waitingTime":J
    const-wide/32 v6, 0x927c0

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    const-string/jumbo v7, "waitingTime"

    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1448
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "record":Lcom/android/server/am/BroadcastRecord;
    .end local v3    # "recordIndex":I
    .end local v4    # "waitingTime":J
    goto :goto_0

    .line 1449
    :cond_4
    return-void
.end method

.method private dumpBroadcastCounts(Landroid/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1633
    const-string v0, "e:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1634
    const-string v0, " d:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1635
    const-string v0, " f:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1636
    const-string v0, " fd:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1637
    const-string v0, " o:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1638
    const-string v0, " a:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1639
    const-string v0, " p:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1640
    const-string v0, " pd:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1641
    const-string v0, " int:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1642
    const-string v0, " rt:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1643
    const-string v0, " ins:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1644
    const-string v0, " m:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1646
    const-string v0, " csi:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1647
    const-string v0, " adcsi:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1648
    const-string v0, " ccu:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1649
    const-string v0, " ccn:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1650
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1651
    return-void
.end method

.method private dumpOutgoingRecord(JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "now"    # J
    .param p3, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p4, "record"    # Lcom/android/server/am/BroadcastRecord;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1656
    const-string v0, "OUTGOING "

    invoke-virtual {p3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1657
    iget-wide v0, p4, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1658
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1659
    invoke-virtual {p4}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    return-void
.end method

.method private dumpProcessState(Landroid/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1601
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz v1, :cond_0

    .line 1602
    const-string v1, "FG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_2

    .line 1605
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    :cond_1
    const-string v1, "FRZ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz v1, :cond_4

    .line 1609
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    :cond_3
    const-string v1, "INSTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz v1, :cond_6

    .line 1613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    :cond_5
    const-string v1, "PER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 1617
    const-string/jumbo v1, "state:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1619
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v1, :cond_8

    .line 1620
    const-string/jumbo v1, "runningOomAdjusted:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1622
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    if-eqz v1, :cond_9

    .line 1623
    const-string v1, "activeReEnqueued:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1625
    :cond_9
    iget-wide v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    .line 1626
    const-string/jumbo v1, "processStartInitiatedTimestamp:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    .line 1627
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    .line 1626
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    :cond_a
    return-void
.end method

.method private dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 4
    .param p1, "flavor"    # Ljava/lang/String;
    .param p2, "now"    # J
    .param p4, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p5, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p6, "recordIndex"    # I
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1665
    iget-wide v0, p5, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    invoke-static {v0, v1, p2, p3, p4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1666
    const/16 v0, 0x20

    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1667
    invoke-virtual {p5}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1668
    const-string v1, "    "

    invoke-virtual {p4, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1669
    iget-object v1, p5, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v1, v1, p6

    .line 1670
    .local v1, "deliveryState":I
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1672
    const-string v2, " at "

    invoke-virtual {p4, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1673
    iget-object v2, p5, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v2, v2, p6

    invoke-static {v2, v3, p2, p3, p4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1675
    :cond_0
    if-eqz p1, :cond_1

    .line 1676
    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1677
    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1679
    :cond_1
    iget-object v0, p5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1680
    .local v0, "receiver":Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_2

    .line 1681
    move-object v2, v0

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .line 1682
    .local v2, "filter":Lcom/android/server/am/BroadcastFilter;
    const-string v3, " for registered "

    invoke-virtual {p4, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1683
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1684
    .end local v2    # "filter":Lcom/android/server/am/BroadcastFilter;
    goto :goto_0

    .line 1685
    :cond_2
    move-object v2, v0

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1686
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const-string v3, " for manifest "

    invoke-virtual {p4, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1687
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1689
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :goto_0
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1690
    iget-object v2, p5, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget v2, v2, p6

    .line 1691
    .local v2, "blockedUntilBeyondCount":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1692
    const-string v3, "    blocked until "

    invoke-virtual {p4, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {p4, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1694
    const-string v3, ", currently at "

    invoke-virtual {p4, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1695
    iget v3, p5, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    invoke-virtual {p4, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1696
    const-string v3, " of "

    invoke-virtual {p4, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1697
    iget-object v3, p5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1699
    :cond_3
    return-void
.end method

.method private forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 6
    .param p2, "predicate"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;
    .param p3, "consumer"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
    .param p4, "andRemove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;",
            "Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;",
            "Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;",
            "Z)Z"
        }
    .end annotation

    .line 493
    .local p1, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    const/4 v0, 0x0

    .line 494
    .local v0, "didSomething":Z
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 495
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/SomeArgs;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 496
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 497
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    .line 498
    .local v3, "record":Lcom/android/server/am/BroadcastRecord;
    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 499
    .local v4, "recordIndex":I
    invoke-interface {p2, v3, v4}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;->test(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 500
    invoke-interface {p3, v3, v4}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    .line 501
    if-eqz p4, :cond_0

    .line 502
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 503
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 504
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_1

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 510
    :goto_1
    const/4 v0, 0x1

    .line 512
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "record":Lcom/android/server/am/BroadcastRecord;
    .end local v4    # "recordIndex":I
    :cond_1
    goto :goto_0

    .line 515
    :cond_2
    return v0
.end method

.method private getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/BroadcastRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastRecord;",
            ")",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    return-object v0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isOffload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    return-object v0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 6
    .param p0, "head"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p1, "item"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1461
    if-nez p0, :cond_0

    .line 1462
    return-object p1

    .line 1464
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v0

    .line 1465
    .local v0, "itemRunnableAt":J
    move-object v2, p0

    .line 1466
    .local v2, "test":Lcom/android/server/am/BroadcastProcessQueue;
    const/4 v3, 0x0

    .line 1467
    .local v3, "tail":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_0
    if-eqz v2, :cond_5

    .line 1468
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_4

    .line 1469
    iput-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1470
    iget-object v4, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1471
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v4, :cond_1

    .line 1472
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p1, v4, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1474
    :cond_1
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v4, :cond_2

    .line 1475
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p1, v4, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1477
    :cond_2
    if-ne v2, p0, :cond_3

    move-object v4, p1

    goto :goto_1

    :cond_3
    move-object v4, p0

    :goto_1
    return-object v4

    .line 1479
    :cond_4
    move-object v3, v2

    .line 1480
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    .line 1482
    :cond_5
    iput-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1483
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p1, v4, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1484
    return-object p0
.end method

.method private isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z
    .locals 4
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .line 1126
    .local p1, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1127
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/SomeArgs;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1129
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    if-nez v1, :cond_0

    .line 1130
    return v2

    .line 1132
    :cond_0
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 1133
    .local v2, "record":Lcom/android/server/am/BroadcastRecord;
    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1134
    const/4 v3, 0x0

    return v3

    .line 1133
    :cond_1
    nop

    .line 1136
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "record":Lcom/android/server/am/BroadcastRecord;
    goto :goto_0

    .line 1137
    :cond_2
    return v2
.end method

.method private static isQueueEmpty(Ljava/util/ArrayDeque;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;)Z"
        }
    .end annotation

    .line 978
    .local p0, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

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

.method private static synthetic lambda$clearDeferredStates$2(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p1, "i"    # I

    .line 1402
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$updateDeferredStates$0(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p1, "i"    # I

    .line 1388
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$updateDeferredStates$1(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p1, "i"    # I

    .line 1392
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "recordIndex"    # I

    .line 811
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 812
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_0

    .line 813
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 815
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_1

    .line 817
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 819
    :cond_1
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 821
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_3

    .line 822
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 824
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_4

    .line 825
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 827
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v0, :cond_6

    .line 828
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_5

    .line 829
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 831
    :cond_5
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 833
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_7

    .line 834
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 836
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_8

    .line 837
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 839
    :cond_8
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    if-eqz v0, :cond_9

    .line 840
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 842
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_a

    .line 843
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 845
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 846
    return-void
.end method

.method private onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "recordIndex"    # I

    .line 770
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 771
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_0

    .line 772
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 774
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 775
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_1

    .line 776
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 778
    :cond_1
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 780
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_3

    .line 781
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 783
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_4

    .line 784
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 786
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v0, :cond_6

    .line 787
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_5

    .line 788
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 790
    :cond_5
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 792
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_7

    .line 793
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 795
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_8

    .line 796
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 798
    :cond_8
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    if-eqz v0, :cond_9

    .line 799
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 801
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_a

    .line 802
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 804
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 805
    return-void
.end method

.method private queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;
    .locals 11
    .param p3, "consecutiveHighPriorityCount"    # I
    .param p4, "maxHighPriorityDispatchLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;II)",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;"
        }
    .end annotation

    .line 951
    .local p1, "highPriorityQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    .local p2, "lowPriorityQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    invoke-static {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    return-object p2

    .line 955
    :cond_0
    invoke-static {p2}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    return-object p1

    .line 965
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 966
    .local v0, "nextLPArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 967
    .local v1, "nextLPRecord":Lcom/android/server/am/BroadcastRecord;
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 968
    .local v2, "nextLPRecordIndex":I
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    .line 969
    .local v3, "nextHPRecord":Lcom/android/server/am/BroadcastRecord;
    iget v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v4, :cond_2

    if-lt p3, p4, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_1

    :goto_0
    move v4, v5

    .line 971
    .local v4, "shouldConsiderLPQueue":Z
    :goto_1
    if-eqz v4, :cond_4

    iget-wide v7, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iget-wide v9, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_4

    .line 973
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastRecord;->isBlocked(I)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    nop

    .line 974
    .local v5, "isLPQueueEligible":Z
    if-eqz v5, :cond_5

    move-object v6, p2

    goto :goto_3

    :cond_5
    move-object v6, p1

    :goto_3
    return-object v6
.end method

.method static reasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 1228
    packed-switch p0, :pswitch_data_0

    .line 1249
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1248
    :pswitch_1
    const-string v0, "TOP_PROCESS"

    return-object v0

    .line 1247
    :pswitch_2
    const-string v0, "CORE_UID"

    return-object v0

    .line 1246
    :pswitch_3
    const-string v0, "FOREGROUND"

    return-object v0

    .line 1245
    :pswitch_4
    const-string v0, "CONTAINS_MANIFEST"

    return-object v0

    .line 1244
    :pswitch_5
    const-string v0, "CONTAINS_INSTRUMENTED"

    return-object v0

    .line 1243
    :pswitch_6
    const-string v0, "CONTAINS_RESULT_TO"

    return-object v0

    .line 1242
    :pswitch_7
    const-string v0, "CONTAINS_INTERACTIVE"

    return-object v0

    .line 1241
    :pswitch_8
    const-string v0, "CONTAINS_PRIORITIZED"

    return-object v0

    .line 1240
    :pswitch_9
    const-string v0, "CONTAINS_ALARM"

    return-object v0

    .line 1239
    :pswitch_a
    const-string v0, "CONTAINS_ORDERED"

    return-object v0

    .line 1238
    :pswitch_b
    const-string v0, "CONTAINS_FOREGROUND"

    return-object v0

    .line 1237
    :pswitch_c
    const-string v0, "INFINITE_DEFER"

    return-object v0

    .line 1236
    :pswitch_d
    const-string v0, "FORCE_DELAYED"

    return-object v0

    .line 1235
    :pswitch_e
    const-string v0, "PERSISTENT"

    return-object v0

    .line 1234
    :pswitch_f
    const-string v0, "INSTRUMENTED"

    return-object v0

    .line 1233
    :pswitch_10
    const-string v0, "BLOCKED"

    return-object v0

    .line 1232
    :pswitch_11
    const-string v0, "MAX_PENDING"

    return-object v0

    .line 1231
    :pswitch_12
    const-string v0, "NORMAL"

    return-object v0

    .line 1230
    :pswitch_13
    const-string v0, "CACHED"

    return-object v0

    .line 1229
    :pswitch_14
    const-string v0, "EMPTY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 2
    .param p0, "head"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p1, "item"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1497
    if-ne p0, p1, :cond_0

    .line 1498
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1500
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_1

    .line 1501
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1503
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_2

    .line 1504
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1506
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1507
    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1508
    return-object p0
.end method

.method private removeNextBroadcast()Lcom/android/internal/os/SomeArgs;
    .locals 3

    .line 922
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object v0

    .line 923
    .local v0, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    if-ne v0, v1, :cond_0

    .line 924
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    goto :goto_0

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 926
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 927
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    goto :goto_0

    .line 928
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    if-ne v0, v1, :cond_2

    .line 929
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 930
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    .line 932
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private replaceBroadcast(Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;
    .locals 2
    .param p1, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "recordIndex"    # I

    .line 390
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 391
    .local v0, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->replaceBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    return-object v1
.end method

.method private replaceBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;
    .locals 8
    .param p2, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "recordIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "I)",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 406
    .local p1, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 407
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/SomeArgs;>;"
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 408
    .local v1, "receiver":Ljava/lang/Object;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 410
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    .line 411
    .local v3, "testRecord":Lcom/android/server/am/BroadcastRecord;
    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 412
    .local v4, "testRecordIndex":I
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 416
    .local v5, "testReceiver":Ljava/lang/Object;
    if-ne p2, v3, :cond_0

    .line 417
    goto :goto_1

    .line 419
    :cond_0
    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v7, v3, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ne v6, v7, :cond_1

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v7, v3, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v6, v7, :cond_1

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 421
    invoke-virtual {v6, v7}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    invoke-static {v1, v5}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 423
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->allReceiversPending()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 424
    invoke-virtual {p2, v3}, Lcom/android/server/am/BroadcastRecord;->isMatchingRecord(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 426
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 427
    iput p3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 428
    invoke-virtual {p2, v3}, Lcom/android/server/am/BroadcastRecord;->copyEnqueueTimeFrom(Lcom/android/server/am/BroadcastRecord;)V

    .line 429
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 430
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 431
    return-object v3

    .line 433
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "testRecord":Lcom/android/server/am/BroadcastRecord;
    .end local v4    # "testRecordIndex":I
    .end local v5    # "testReceiver":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 434
    :cond_2
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private setProcessFreezable(Z)Z
    .locals 1
    .param p1, "freezable"    # Z

    .line 571
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    if-eq v0, p1, :cond_0

    .line 572
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    .line 573
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 574
    const/4 v0, 0x1

    return v0

    .line 576
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setProcessInstrumented(Z)Z
    .locals 1
    .param p1, "instrumented"    # Z

    .line 587
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eq v0, p1, :cond_0

    .line 588
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    .line 589
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 590
    const/4 v0, 0x1

    return v0

    .line 592
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setProcessPersistent(Z)Z
    .locals 1
    .param p1, "persistent"    # Z

    .line 602
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eq v0, p1, :cond_0

    .line 603
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    .line 604
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 605
    const/4 v0, 0x1

    return v0

    .line 607
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setUidForeground(Z)Z
    .locals 1
    .param p1, "uidForeground"    # Z

    .line 556
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eq v0, p1, :cond_0

    .line 557
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    .line 558
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 559
    const/4 v0, 0x1

    return v0

    .line 561
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addPrioritizeEarliestRequest()Z
    .locals 2

    .line 993
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 994
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 995
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 996
    return v1

    .line 998
    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 999
    const/4 v0, 0x0

    return v0
.end method

.method public assertHealthLocked()V
    .locals 2

    .line 1422
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "mRunnableAtInvalidated"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 1427
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 1428
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 1429
    return-void
.end method

.method clearDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V
    .locals 2
    .param p1, "clearConsumer"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1399
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v0, :cond_0

    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 1401
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 1405
    :cond_0
    return-void
.end method

.method public clearOutgoingBroadcasts()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    return-void
.end method

.method public clearProcessStartInitiatedTimestampMillis()V
    .locals 2

    .line 716
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    .line 717
    return-void
.end method

.method public decrementCurAppReceivers()V
    .locals 1

    .line 679
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCurReceiversIncremented:Z

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->decrementCurReceivers()V

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCurReceiversIncremented:Z

    .line 683
    :cond_0
    return-void
.end method

.method public describeStateLocked()Ljava/lang/String;
    .locals 2

    .line 1544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeStateLocked(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1549
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1550
    const-string/jumbo v1, "runnable at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/lang/StringBuilder;)V

    goto :goto_0

    .line 1553
    :cond_0
    const-string/jumbo v1, "not runnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    :goto_0
    const-string v1, " because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    invoke-static {v1}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dumpLocked(JLandroid/util/IndentingPrintWriter;)V
    .locals 9
    .param p1, "now"    # J
    .param p3, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1562
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isOutgoingEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1564
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1565
    const-string v1, " "

    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1566
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1569
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1570
    invoke-direct {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->dumpProcessState(Landroid/util/IndentingPrintWriter;)V

    .line 1571
    invoke-direct {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->dumpBroadcastCounts(Landroid/util/IndentingPrintWriter;)V

    .line 1573
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1574
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1575
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/am/BroadcastProcessQueue;->dumpOutgoingRecord(JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;)V

    .line 1574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1579
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_2

    .line 1580
    iget-object v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    const-string v1, "ACTIVE"

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 1582
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 1583
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 1584
    .local v5, "r":Lcom/android/server/am/BroadcastRecord;
    const-string v1, "URGENT"

    iget v6, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 1585
    .end local v5    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_1

    .line 1586
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 1587
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 1588
    .restart local v5    # "r":Lcom/android/server/am/BroadcastRecord;
    const/4 v1, 0x0

    iget v6, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 1589
    .end local v5    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_2

    .line 1590
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 1591
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 1592
    .restart local v5    # "r":Lcom/android/server/am/BroadcastRecord;
    const-string v1, "OFFLOAD"

    iget v6, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 1593
    .end local v5    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_3

    .line 1594
    :cond_5
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1595
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1596
    return-void
.end method

.method public enqueueOrReplaceBroadcast(Lcom/android/server/am/BroadcastRecord;ILcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Lcom/android/server/am/BroadcastRecord;
    .locals 2
    .param p1, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "recordIndex"    # I
    .param p3, "deferredStatesApplyConsumer"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 324
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isReplacePending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->replaceBroadcast(Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 327
    .local v0, "replacedBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_1

    .line 328
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-interface {p3, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    .line 333
    :cond_0
    return-object v0

    .line 339
    .end local v0    # "replacedBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 340
    .local v0, "newBroadcastArgs":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 341
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 352
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 354
    invoke-interface {p3, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    .line 356
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public enqueueOutgoingBroadcast(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 284
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method public enqueueOutgoingBroadcasts(Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;)V
    .locals 2
    .param p1, "consumer"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    invoke-interface {p1, v1}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;->accept(Lcom/android/server/am/BroadcastRecord;)V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 295
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    return-void
.end method

.method public forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 2
    .param p1, "predicate"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;
    .param p2, "consumer"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
    .param p3, "andRemove"    # Z

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 482
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 484
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 486
    return v0
.end method

.method forceDelayBroadcastDelivery(J)Z
    .locals 2
    .param p1, "delayedDurationMs"    # J

    .line 908
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 909
    iput-wide p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    .line 910
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 911
    const/4 v0, 0x1

    return v0

    .line 913
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getActive()Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public getActiveAssumedDeliveryCountSinceIdle()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    return v0
.end method

.method public getActiveCountSinceIdle()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    return v0
.end method

.method public getActiveFirstLaunch()Z
    .locals 1

    .line 670
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    return v0
.end method

.method public getActiveIndex()I
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 886
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    return v0
.end method

.method public getActiveViaColdStart()Z
    .locals 1

    .line 662
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    return v0
.end method

.method public getActiveWasStopped()Z
    .locals 1

    .line 666
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    return v0
.end method

.method public getOutgoingBroadcastCount()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPreferredSchedulingGroupLocked()I
    .locals 3

    .line 619
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    const/high16 v0, -0x80000000

    return v0

    .line 621
    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    const/4 v2, 0x2

    if-le v0, v1, :cond_1

    .line 624
    return v2

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    return v2

    .line 629
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getProcessStartInitiatedTimestampMillis()J
    .locals 2

    .line 691
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    return-wide v0
.end method

.method public getRunnableAt()J
    .locals 2

    .line 1164
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1165
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    return-wide v0
.end method

.method public getRunnableAtReason()I
    .locals 1

    .line 1173
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1174
    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return v0
.end method

.method public hasDeferredBroadcasts()Z
    .locals 1

    .line 1151
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProcessStartInitiationTimedout()Z
    .locals 6

    .line 695
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 696
    return v1

    .line 698
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v4, v0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public incrementCurAppReceivers()V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->incrementCurReceivers()V

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCurReceiversIncremented:Z

    .line 676
    return-void
.end method

.method public invalidateRunnableAt()V
    .locals 1

    .line 1178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 1179
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBeyondBarrierLocked(J)Z
    .locals 10
    .param p1, "barrierTime"    # J

    .line 1087
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1088
    .local v0, "next":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1089
    .local v1, "nextUrgent":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1092
    .local v2, "nextOffload":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v3, v6, p1

    if-lez v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :goto_0
    move v3, v4

    .line 1094
    .local v3, "activeBeyond":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v6, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v6, v6, p1

    if-lez v6, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    move v6, v5

    goto :goto_3

    :goto_2
    move v6, v4

    .line 1096
    .local v6, "nextBeyond":Z
    :goto_3
    if-eqz v1, :cond_4

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    iget-wide v7, v7, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v7, v7, p1

    if-lez v7, :cond_5

    :cond_4
    goto :goto_4

    :cond_5
    move v7, v5

    goto :goto_5

    :goto_4
    move v7, v4

    .line 1098
    .local v7, "nextUrgentBeyond":Z
    :goto_5
    if-eqz v2, :cond_6

    iget-object v8, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/BroadcastRecord;

    iget-wide v8, v8, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v8, v8, p1

    if-lez v8, :cond_7

    :cond_6
    goto :goto_6

    :cond_7
    move v8, v5

    goto :goto_7

    :goto_6
    move v8, v4

    .line 1101
    .local v8, "nextOffloadBeyond":Z
    :goto_7
    if-eqz v3, :cond_8

    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    if-nez v8, :cond_9

    .line 1102
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    goto :goto_8

    :cond_a
    move v4, v5

    .line 1101
    :goto_8
    return v4
.end method

.method public isDeferredUntilActive()Z
    .locals 2

    .line 1146
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1147
    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDispatched(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1110
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    nop

    .line 1112
    .local v0, "activeDispatched":Z
    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v3

    .line 1113
    .local v3, "dispatched":Z
    iget-object v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v4

    .line 1114
    .local v4, "urgentDispatched":Z
    iget-object v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-direct {p0, v5, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v5

    .line 1116
    .local v5, "offloadDispatched":Z
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    .line 1117
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1116
    :goto_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutgoingEmpty()Z
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isPendingManifest()Z
    .locals 1

    .line 1047
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingOrdered()Z
    .locals 1

    .line 1055
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingResultTo()Z
    .locals 1

    .line 1063
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingUrgent()Z
    .locals 2

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 1071
    .local v0, "next":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isProcessStartInitiationTimeoutExpected()Z
    .locals 8

    .line 708
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 709
    return v1

    .line 711
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v4, v0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isProcessWarm()Z
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunnable()Z
    .locals 4

    .line 1141
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1142
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeActiveIdle()V
    .locals 1

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 750
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 751
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 752
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 753
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 754
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 755
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 756
    return-void
.end method

.method public makeActiveNextPending()V
    .locals 5

    .line 732
    invoke-direct {p0}, Lcom/android/server/am/BroadcastProcessQueue;->removeNextBroadcast()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 733
    .local v0, "next":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iput-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 734
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 735
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 736
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 737
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 738
    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    iget v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 739
    iput-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 740
    iput-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    .line 741
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 742
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 743
    return-void
.end method

.method peekNextBroadcast()Lcom/android/internal/os/SomeArgs;
    .locals 2

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object v0

    .line 1033
    .local v0, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    invoke-static {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;
    .locals 2

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object v0

    .line 1039
    .local v0, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    invoke-static {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method queueForNextBroadcast()Ljava/util/ArrayDeque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 939
    .local v0, "nextNormal":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object v1

    .line 942
    .local v1, "nextBroadcastQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/internal/os/SomeArgs;>;"
    return-object v1
.end method

.method public reEnqueueActiveBroadcast()V
    .locals 4

    .line 368
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 369
    .local v0, "record":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v1

    .line 371
    .local v1, "recordIndex":I
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 372
    .local v2, "broadcastArgs":Lcom/android/internal/os/SomeArgs;
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 373
    iput v1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 374
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 375
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 376
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 377
    return-void
.end method

.method removePrioritizeEarliestRequest()Z
    .locals 2

    .line 1016
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 1017
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    if-nez v0, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 1019
    return v1

    .line 1020
    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 1021
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 1022
    return v1

    .line 1024
    :cond_1
    return v1
.end method

.method public setActiveFirstLaunch(Z)V
    .locals 0
    .param p1, "activeFirstLaunch"    # Z

    .line 658
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    .line 659
    return-void
.end method

.method public setActiveViaColdStart(Z)V
    .locals 0
    .param p1, "activeViaColdStart"    # Z

    .line 650
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 651
    return-void
.end method

.method public setActiveWasStopped(Z)V
    .locals 0
    .param p1, "activeWasStopped"    # Z

    .line 654
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    .line 655
    return-void
.end method

.method public setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "uidForeground"    # Z
    .param p3, "processFreezable"    # Z

    .line 528
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 532
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "didSomething":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 536
    invoke-direct {p0, p2}, Lcom/android/server/am/BroadcastProcessQueue;->setUidForeground(Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 537
    invoke-direct {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessFreezable(Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 538
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessInstrumented(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 539
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessPersistent(Z)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 541
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setUidForeground(Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 542
    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessFreezable(Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 543
    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessInstrumented(Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 544
    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessPersistent(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 546
    :goto_0
    return v0
.end method

.method public setProcessStartInitiatedTimestampMillis(J)V
    .locals 0
    .param p1, "timestampMillis"    # J

    .line 686
    iput-wide p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    .line 687
    return-void
.end method

.method setTimeoutScheduled(Z)V
    .locals 0
    .param p1, "timeoutScheduled"    # Z

    .line 1516
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    .line 1517
    return-void
.end method

.method shouldBeDeferred()Z
    .locals 3

    .line 1409
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1410
    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method timeoutScheduled()Z
    .locals 1

    .line 1523
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    return v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1535
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "?"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 1538
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    .line 1540
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1528
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastProcessQueue{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    return-object v0
.end method

.method public traceActiveBegin()V
    .locals 5

    .line 864
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 865
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheduled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 864
    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 866
    return-void
.end method

.method public traceActiveEnd()V
    .locals 4

    .line 869
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 870
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 869
    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 871
    return-void
.end method

.method public traceProcessEnd()V
    .locals 4

    .line 859
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 860
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 859
    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 861
    return-void
.end method

.method public traceProcessRunningBegin()V
    .locals 5

    .line 854
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 854
    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 856
    return-void
.end method

.method public traceProcessStartingBegin()V
    .locals 5

    .line 849
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 849
    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 851
    return-void
.end method

.method updateDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V
    .locals 3
    .param p1, "applyConsumer"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
    .param p2, "clearConsumer"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result v0

    .line 1384
    .local v0, "wantDeferredStates":Z
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eq v1, v0, :cond_1

    .line 1385
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 1386
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1387
    new-instance v2, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    goto :goto_0

    .line 1391
    :cond_0
    new-instance v2, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 1396
    :cond_1
    :goto_0
    return-void
.end method

.method updateRunnableAt()V
    .locals 13

    .line 1257
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-nez v0, :cond_0

    return-void

    .line 1258
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 1260
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->peekNextBroadcast()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1261
    .local v1, "next":Lcom/android/internal/os/SomeArgs;
    const-wide v2, 0x7fffffffffffffffL

    if-eqz v1, :cond_17

    .line 1262
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1263
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1264
    .local v4, "index":I
    iget-wide v5, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 1266
    .local v5, "runnableAt":J
    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastRecord;->isBlocked(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1267
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1268
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 1269
    return-void

    .line 1272
    :cond_1
    iget-wide v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 1273
    iget-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1274
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1275
    :cond_2
    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    const/16 v9, 0xa

    if-le v7, v8, :cond_3

    .line 1276
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1277
    iput v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1278
    :cond_3
    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    if-lez v7, :cond_4

    .line 1279
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1280
    const/16 v2, 0xe

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1281
    :cond_4
    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    if-lez v7, :cond_5

    .line 1282
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1283
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1284
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz v7, :cond_6

    .line 1285
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1286
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1287
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz v7, :cond_7

    .line 1288
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1289
    const/16 v2, 0x12

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1290
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x2

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v7

    if-ne v7, v8, :cond_8

    .line 1293
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1294
    const/16 v2, 0x14

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1295
    :cond_8
    iget-boolean v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz v7, :cond_9

    .line 1296
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1297
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1298
    :cond_9
    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    if-lez v7, :cond_a

    .line 1299
    iput-wide v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1300
    const/16 v2, 0xb

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1301
    :cond_a
    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    if-lez v7, :cond_b

    .line 1302
    iput-wide v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1303
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1304
    :cond_b
    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    iget v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    const/16 v11, 0xd

    if-le v7, v10, :cond_c

    .line 1305
    iput-wide v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1306
    iput v11, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1307
    :cond_c
    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    if-lez v7, :cond_d

    .line 1308
    iput-wide v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1309
    const/16 v2, 0x11

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1310
    :cond_d
    iget-boolean v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    const/16 v10, 0xf

    if-eqz v7, :cond_13

    .line 1311
    iget-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_12

    .line 1313
    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    iget v12, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    if-ne v7, v12, :cond_e

    .line 1314
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1315
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1320
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1321
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1322
    iput v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1323
    :cond_f
    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v2, :cond_10

    .line 1324
    iput-wide v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1325
    iput v11, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1326
    :cond_10
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v2, :cond_11

    .line 1327
    iput-wide v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1328
    iput v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1330
    :cond_11
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1331
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1336
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1337
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1339
    :cond_13
    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    if-lez v2, :cond_14

    .line 1342
    iput-wide v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1343
    iput v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1344
    :cond_14
    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1345
    iput-wide v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1346
    const/16 v2, 0x13

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1348
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1349
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 1354
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 1355
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    if-lt v2, v3, :cond_16

    .line 1356
    iget-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1357
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 1368
    .end local v0    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v4    # "index":I
    .end local v5    # "runnableAt":J
    :cond_16
    goto :goto_1

    .line 1369
    :cond_17
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1370
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 1372
    :goto_1
    return-void
.end method

.method public wasActiveBroadcastReEnqueued()Z
    .locals 1

    .line 760
    nop

    .line 763
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    return v0
.end method
