.class Lcom/android/server/am/BroadcastQueueImpl;
.super Lcom/android/server/am/BroadcastQueue;
.source "BroadcastQueueImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;
    }
.end annotation


# static fields
.field private static final BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

.field private static final MSG_BG_ACTIVITY_START_TIMEOUT:I = 0x3

.field private static final MSG_CHECK_HEALTH:I = 0x4

.field private static final MSG_CHECK_PENDING_COLD_START_VALIDITY:I = 0x5

.field private static final MSG_DELIVERY_TIMEOUT:I = 0x2

.field private static final MSG_DELIVERY_TIMEOUT_SOFT:I = 0x8

.field private static final MSG_PROCESS_FREEZABLE_CHANGED:I = 0x6

.field private static final MSG_UID_STATE_CHANGED:I = 0x7

.field private static final MSG_UPDATE_RUNNING_LIST:I = 0x1

.field private static final QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/am/BroadcastProcessQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

.field private final mBgConstants:Lcom/android/server/am/BroadcastConstants;

.field final mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field final mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field private final mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field private final mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field final mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;

.field private mCheckPendingColdStartQueued:Z

.field private final mConstants:Lcom/android/server/am/BroadcastConstants;

.field private final mFgConstants:Lcom/android/server/am/BroadcastConstants;

.field private mLastTestFailureTime:J

.field private final mLocalCallback:Landroid/os/Handler$Callback;

.field private final mLocalHandler:Landroid/os/Handler;

.field private final mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProcessQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastProcessQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

.field private final mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

.field private mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

.field private final mUidForeground:Landroid/util/SparseBooleanArray;

.field private final mWaitingFor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5W-hHnqVpPple_94bUXhaN2NlZA(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$11(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5h92AEV1NSkQ9xrbiDDH3YtJvPw(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$cleanupDisabledPackageReceiversLocked$6(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6dhuOD7nHAKmzmF-YtZCzIaaioE(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForBarrier$18(Lcom/android/server/am/BroadcastProcessQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7megXC57u3j4fgugQAJ8O6Hxy-0(JLcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$forceDelayBroadcastDelivery$24(JLcom/android/server/am/BroadcastProcessQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B7DPZVQCD71h5eWktQg-gufcCLo(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$onApplicationCleanupLocked$1(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$G5yeZnyV_OrOuYIyEjxKn1jSFeo(JLcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$isBeyondBarrierLocked$15(JLcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GQq4Cu507ce-EdaTPni0au2KE4E(Lcom/android/server/am/BroadcastQueueImpl;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForIdle$17(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IhXQ9STpE_zBSFz-MTE7VUeShc4(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$isIdleLocked$14(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N8FQ9gSdybdav0lGQR63n9n6UBw(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$static$8(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$O9ZCSsC8NNR3uQ_PQ64t7iM4QCg(Ljava/lang/String;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$forceDelayBroadcastDelivery$23(Ljava/lang/String;Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QUGuWq_cpO4s-MkX6cKJunNXYYM(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$12(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VjnSzxUzNht9sNkaPuD9eYr6_7Q(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$cleanupDisabledPackageReceiversLocked$7(ILcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$axmJspVe-xY9KO3JBJy4HjLi1-4(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForDispatched$21(Landroid/content/Intent;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eNs2xE55__Zz9ql8SQ7FQputV6s(Lcom/android/server/am/BroadcastQueueImpl;JLjava/io/PrintWriter;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForBarrier$19(JLjava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fBmeMgpkodO5VRNqVXIloKaGTzs(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$10(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdz7Xri5C43PjH9UdG6mpy7Tifo(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$static$9(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jiOOfL7yG84837SDk7PqX3CCMUM(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$applyDeliveryGroupPolicy$2(Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kbYnaL9l3-rmMN3J3ehz4uveSKE(Landroid/content/Intent;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$isDispatchedLocked$16(Landroid/content/Intent;Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l-TmgsQ9D6SPUK-D5ivvEy60BZk(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mXDgb9ORy-OA2qOk3ggoYiIxf9I(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$applyDeliveryGroupPolicy$3(Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tClXJ7lHT7SDttp6mit80Rp9sTM(Ljava/lang/String;Ljava/util/Set;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$cleanupDisabledPackageReceiversLocked$5(Ljava/lang/String;Ljava/util/Set;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w82T0zX7YeN5b-3VbDEttgjJSN8(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForBarrier$20(Lcom/android/server/am/BroadcastProcessQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wkwVOsGQRcdT2tutL53fgINKVfE(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$cleanupDisabledPackageReceiversLocked$4(ILcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$y_poFiYvDQ4rHlB3WcUbbQSlzvs(Landroid/util/Pair;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$checkAndRemoveWaitingFor$22(Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zNq0Etd4wqaIsfgSOsSA6kCXcq4(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$13(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLocalHandler(Lcom/android/server/am/BroadcastQueueImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1698
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda17;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    .line 1700
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda18;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "fgConstants"    # Lcom/android/server/am/BroadcastConstants;
    .param p4, "bgConstants"    # Lcom/android/server/am/BroadcastConstants;

    .line 143
    new-instance v5, Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-direct {v5, p1}, Lcom/android/server/am/BroadcastSkipPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    new-instance v6, Lcom/android/server/am/BroadcastHistory;

    invoke-direct {v6, p3}, Lcom/android/server/am/BroadcastHistory;-><init>(Lcom/android/server/am/BroadcastConstants;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "service":Lcom/android/server/am/ActivityManagerService;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "fgConstants":Lcom/android/server/am/BroadcastConstants;
    .end local p4    # "bgConstants":Lcom/android/server/am/BroadcastConstants;
    .local v1, "service":Lcom/android/server/am/ActivityManagerService;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "fgConstants":Lcom/android/server/am/BroadcastConstants;
    .local v4, "bgConstants":Lcom/android/server/am/BroadcastConstants;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueueImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    .line 145
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "fgConstants"    # Lcom/android/server/am/BroadcastConstants;
    .param p4, "bgConstants"    # Lcom/android/server/am/BroadcastConstants;
    .param p5, "skipPolicy"    # Lcom/android/server/am/BroadcastSkipPolicy;
    .param p6, "history"    # Lcom/android/server/am/BroadcastHistory;

    .line 150
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 238
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 246
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 258
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 296
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalCallback:Landroid/os/Handler$Callback;

    .line 1707
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1717
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1726
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1733
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1740
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;

    .line 153
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 154
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 155
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    .line 161
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastConstants;->getMaxRunningQueues()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 163
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    .line 164
    return-void
.end method

.method private applyDeliveryGroupPolicy(Lcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 896
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->shouldIgnoreDeliveryGroupPolicy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    return-void

    .line 899
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v0

    .line 901
    .local v0, "policy":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown delivery group policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 926
    return-void

    .line 910
    :pswitch_0
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 911
    return-void

    .line 913
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getDeliveryGroupExtrasMerger()Landroid/os/BundleMerger;

    move-result-object v2

    .line 914
    .local v2, "extrasMerger":Landroid/os/BundleMerger;
    if-nez v2, :cond_2

    .line 917
    return-void

    .line 919
    :cond_2
    new-instance v3, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;)V

    .line 923
    .local v3, "broadcastConsumer":Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
    goto :goto_0

    .line 906
    .end local v2    # "extrasMerger":Landroid/os/BundleMerger;
    .end local v3    # "broadcastConsumer":Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 907
    .restart local v3    # "broadcastConsumer":Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
    nop

    .line 928
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRecordsLookupCache()Landroid/util/ArrayMap;

    move-result-object v2

    .line 929
    .local v2, "recordsLookupCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/am/BroadcastRecord;Ljava/lang/Boolean;>;"
    sget-object v4, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)V

    invoke-direct {p0, v4, v5, v3, v1}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 954
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 955
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 956
    return-void

    .line 904
    .end local v2    # "recordsLookupCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/am/BroadcastRecord;Ljava/lang/Boolean;>;"
    .end local v3    # "broadcastConsumer":Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cancelDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 2
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1312
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)Z

    .line 1313
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {v0}, Lcom/android/server/utils/AnrTimer;->serviceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1316
    :cond_0
    return-void
.end method

.method private checkAndRemoveWaitingFor()V
    .locals 2

    .line 1918
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1928
    :cond_0
    return-void
.end method

.method private checkHealth()V
    .locals 2

    .line 1946
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1947
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkHealthLocked()V

    .line 1948
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1949
    return-void

    .line 1948
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private checkHealthLocked()V
    .locals 4

    .line 1954
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->assertHealthLocked()V

    .line 1957
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    goto :goto_0

    .line 1960
    :catch_0
    move-exception v0

    .line 1963
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1964
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->dumpToDropBoxLocked(Ljava/lang/String;)V

    .line 1966
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private checkPendingColdStartValidityLocked()V
    .locals 4

    .line 626
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v0, :cond_0

    .line 627
    return-void

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->isPendingColdStartValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    if-nez v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v1, v1, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    goto :goto_0

    .line 636
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearInvalidPendingColdStart()V

    .line 638
    :cond_2
    :goto_0
    return-void
.end method

.method private cleanupUserStateLocked(Landroid/util/SparseBooleanArray;I)V
    .locals 3
    .param p1, "uidState"    # Landroid/util/SparseBooleanArray;
    .param p2, "userId"    # I

    .line 1690
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1691
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 1692
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1693
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 1690
    .end local v1    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1696
    .end local v0    # "i":I
    return-void
.end method

.method private clearInvalidPendingColdStart()V
    .locals 3

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing invalid pending cold start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->wasActiveBroadcastReEnqueued()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x5

    const-string/jumbo v2, "invalid start with re-enqueued broadcast"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->reEnqueueActiveBroadcast()V

    .line 613
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 614
    .local v0, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearRunningColdStart()V

    .line 615
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 616
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 617
    return-void
.end method

.method private clearRunningColdStart()V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 764
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 768
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 769
    return-void
.end method

.method private containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "testRecord"    # Lcom/android/server/am/BroadcastRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastRecord;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 973
    .local p3, "recordsLookupCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/am/BroadcastRecord;Ljava/lang/Boolean;>;"
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 974
    .local v0, "idx":I
    if-lez v0, :cond_0

    .line 975
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 977
    :cond_0
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/server/am/BroadcastRecord;->containsAllReceivers(Ljava/util/List;)Z

    move-result v1

    .line 978
    .local v1, "containsAll":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    return v1
.end method

.method private deliveryTimeout(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 3
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1336
    const-string v0, "deliveryTimeout"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1337
    .local v0, "cookie":I
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1338
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->deliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1339
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1340
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 1341
    return-void

    .line 1339
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private deliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 2
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1345
    const/4 v0, 0x3

    const-string v1, "deliveryTimeoutLocked"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1347
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1348
    return-void
.end method

.method private deliveryTimeoutSoftLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V
    .locals 10
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p2, "softTimeoutMillis"    # I

    .line 1323
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCpuDelayTime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->lastCpuDelayTime:J

    sub-long v4, v0, v2

    .line 1328
    .local v4, "cpuDelayTime":J
    const-wide/16 v6, 0x0

    int-to-long v8, p2

    invoke-static/range {v4 .. v9}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    .line 1329
    .local v0, "hardTimeoutMillis":J
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;J)V

    .line 1330
    .end local v0    # "hardTimeoutMillis":J
    .end local v4    # "cpuDelayTime":J
    goto :goto_0

    .line 1331
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->deliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1333
    :goto_0
    return-void
.end method

.method private demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1531
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring demoteFromRunning; no active broadcast for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 1533
    return-void

    .line 1536
    :cond_0
    const-string v0, "demoteFromRunning"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1538
    .local v0, "cookie":I
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v1, p1, :cond_1

    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRunningColdStart has not been cleared; mRunningColdStart.app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , queue.app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1547
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveIdle()V

    .line 1548
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 1550
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v1

    .line 1551
    .local v1, "queueIndex":I
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 1552
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1553
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1557
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStoppedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1558
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 1559
    return-void
.end method

.method private dispatchReceivers(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 25
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/am/BroadcastRetryException;
        }
    .end annotation

    .line 1152
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1153
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v5, p3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1157
    .local v6, "receiver":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p3}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v15

    .line 1158
    .local v15, "assumeDelivered":Z
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v0, :cond_1

    if-nez v15, :cond_1

    .line 1159
    invoke-virtual {v2, v10}, Lcom/android/server/am/BroadcastProcessQueue;->setTimeoutScheduled(Z)V

    .line 1160
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v7, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    goto :goto_0

    .line 1161
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v7, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    :goto_0
    long-to-int v0, v7

    .line 1162
    .local v0, "softTimeoutMillis":I
    invoke-direct {v1, v2, v0}, Lcom/android/server/am/BroadcastQueueImpl;->startDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V

    .line 1163
    .end local v0    # "softTimeoutMillis":I
    goto :goto_1

    .line 1164
    :cond_1
    invoke-virtual {v2, v9}, Lcom/android/server/am/BroadcastProcessQueue;->setTimeoutScheduled(Z)V

    .line 1167
    :goto_1
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const/4 v7, 0x3

    if-eqz v0, :cond_3

    .line 1168
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 1170
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v11, v0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    goto :goto_2

    .line 1171
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v11, v0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    :goto_2
    nop

    .line 1172
    .local v11, "timeout":J
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1173
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1174
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1175
    iget-object v8, v1, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    iget-object v13, v1, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    .line 1176
    invoke-static {v13, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 1175
    invoke-virtual {v8, v13, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1178
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v11    # "timeout":J
    :cond_3
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_5

    .line 1179
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_4

    .line 1183
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1185
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v11

    .line 1183
    invoke-virtual {v0, v3, v7, v11, v12}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_3

    .line 1187
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1188
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v18

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1189
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v20

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v21

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1190
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v22

    iget v8, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1187
    move-object/from16 v16, v0

    move/from16 v17, v7

    move/from16 v23, v8

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    .line 1194
    :cond_5
    :goto_3
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1195
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to warm "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 1197
    :cond_7
    const/4 v7, 0x4

    const-string/jumbo v8, "scheduleReceiverWarmLocked"

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 1200
    invoke-virtual {v4, v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v8

    .line 1201
    .local v8, "receiverIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1202
    .local v7, "thread":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_10

    .line 1204
    :try_start_0
    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_8

    .line 1205
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v11, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v12, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v13, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1206
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    iget v13, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1205
    const/16 v21, 0x1

    move-object/from16 v16, v0

    move/from16 v17, v11

    move-object/from16 v18, v12

    move/from16 v20, v13

    invoke-virtual/range {v16 .. v21}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    goto :goto_4

    .line 1235
    :catch_0
    move-exception v0

    move/from16 v21, v9

    move v5, v10

    goto/16 :goto_a

    .line 1208
    :cond_8
    :goto_4
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    .line 1209
    instance-of v0, v6, Lcom/android/server/am/BroadcastFilter;

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eqz v0, :cond_b

    .line 1210
    move-object v0, v6

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/BroadcastQueueImpl;->notifyScheduleRegisteredReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)V

    .line 1211
    move-object v0, v6

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v13, v10

    :try_start_1
    iget v10, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object v14, v11

    iget-object v11, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move/from16 v16, v12

    iget-object v12, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    move/from16 v17, v13

    :try_start_2
    iget-boolean v13, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v18, v14

    iget-boolean v14, v4, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    iget v9, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1215
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v5

    .line 1216
    move-object/from16 v21, v0

    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_9

    iget v0, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v24, v18

    move/from16 v18, v0

    move-object/from16 v0, v24

    goto :goto_5

    .line 1235
    :catch_1
    move-exception v0

    move/from16 v5, v17

    const/16 v21, 0x0

    goto/16 :goto_a

    .line 1216
    :cond_9
    move-object/from16 v0, v18

    move/from16 v18, v16

    .line 1217
    :goto_5
    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v19, v0

    :goto_6
    const/16 v16, 0x0

    goto :goto_7

    :cond_a
    const/16 v19, 0x0

    goto :goto_6

    .line 1211
    :goto_7
    move/from16 v24, v17

    move/from16 v17, v5

    move/from16 v5, v24

    move/from16 v24, v9

    move-object v9, v8

    move-object/from16 v8, v21

    move/from16 v21, v16

    move/from16 v16, v24

    .end local v8    # "receiverIntent":Landroid/content/Intent;
    .local v9, "receiverIntent":Landroid/content/Intent;
    :try_start_4
    invoke-interface/range {v7 .. v19}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v8, v9

    .line 1220
    .end local v9    # "receiverIntent":Landroid/content/Intent;
    .restart local v8    # "receiverIntent":Landroid/content/Intent;
    if-eqz v15, :cond_e

    .line 1221
    :try_start_5
    const-string v0, "assuming delivered"

    invoke-direct {v1, v2, v5, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1223
    return v21

    .line 1235
    :catch_2
    move-exception v0

    goto :goto_a

    .end local v8    # "receiverIntent":Landroid/content/Intent;
    .restart local v9    # "receiverIntent":Landroid/content/Intent;
    :catch_3
    move-exception v0

    move-object v8, v9

    .end local v9    # "receiverIntent":Landroid/content/Intent;
    .restart local v8    # "receiverIntent":Landroid/content/Intent;
    goto :goto_a

    :catch_4
    move-exception v0

    move/from16 v21, v9

    move/from16 v5, v17

    goto :goto_a

    :catch_5
    move-exception v0

    move/from16 v21, v9

    move v5, v13

    goto :goto_a

    .line 1226
    :cond_b
    move/from16 v21, v9

    move v5, v10

    move/from16 v16, v12

    move-object v0, v6

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/BroadcastQueueImpl;->notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V

    .line 1227
    move-object v0, v6

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v11, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v12, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v13, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v14, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v0, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1230
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v17

    .line 1231
    iget-boolean v10, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v10, :cond_c

    iget v10, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v18, v10

    goto :goto_8

    :cond_c
    move/from16 v18, v16

    .line 1232
    :goto_8
    iget-boolean v10, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v10, :cond_d

    iget-object v10, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_9

    :cond_d
    const/16 v19, 0x0

    .line 1227
    :goto_9
    const/4 v10, 0x0

    move/from16 v16, v0

    invoke-interface/range {v7 .. v19}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1234
    :cond_e
    return v5

    .line 1235
    :goto_a
    nop

    .line 1236
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to schedule "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " via "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1238
    .local v9, "msg":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 1239
    const/16 v10, 0xd

    const/16 v11, 0x1a

    const-string v12, "Can\'t deliver broadcast"

    invoke-virtual {v3, v12, v10, v11, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1243
    instance-of v5, v6, Landroid/content/pm/ResolveInfo;

    if-nez v5, :cond_f

    .line 1247
    const-string/jumbo v5, "remote app"

    const/4 v10, 0x5

    invoke-direct {v1, v2, v10, v5}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1249
    return v21

    .line 1244
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->cancelDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1245
    new-instance v5, Lcom/android/server/am/BroadcastRetryException;

    invoke-direct {v5, v0}, Lcom/android/server/am/BroadcastRetryException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 1252
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "msg":Ljava/lang/String;
    :cond_10
    move/from16 v21, v9

    const/4 v10, 0x5

    const-string/jumbo v0, "missing IApplicationThread"

    invoke-direct {v1, v2, v10, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1254
    return v21
.end method

.method private dumpBroadcastsWithIgnoredPolicies(Landroid/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 2546
    const-string v0, "Broadcasts with ignored delivery group policies:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2548
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->dumpDeliveryGroupPolicyIgnoredActions(Landroid/util/IndentingPrintWriter;)V

    .line 2549
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2550
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2551
    return-void
.end method

.method private dumpForegroundUids(Landroid/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 2554
    const-string v0, "Foreground UIDs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2556
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2557
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2558
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2559
    return-void
.end method

.method private dumpProcessQueues(Landroid/util/IndentingPrintWriter;J)V
    .locals 6
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "now"    # J

    .line 2496
    const-string/jumbo v0, "\ud83d\udccb Per-process queues:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2499
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 2500
    .local v1, "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_1
    if-eqz v1, :cond_0

    .line 2501
    invoke-virtual {v1, p2, p3, p1}, Lcom/android/server/am/BroadcastProcessQueue;->dumpLocked(JLandroid/util/IndentingPrintWriter;)V

    .line 2502
    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    .line 2500
    :cond_0
    nop

    .line 2498
    .end local v1    # "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2505
    .end local v0    # "i":I
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2506
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2508
    const-string/jumbo v0, "\ud83e\uddcd Runnable:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2509
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2510
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const-string v1, "(none)"

    if-nez v0, :cond_2

    .line 2511
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2513
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 2514
    .local v0, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_2
    if-eqz v0, :cond_3

    .line 2515
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2516
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 2517
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAtReason()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2518
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 2519
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2521
    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_2

    .line 2524
    .end local v0    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    :cond_3
    :goto_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2525
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2527
    const-string/jumbo v0, "\ud83c\udfc3 Running:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2528
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2529
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_6

    aget-object v4, v0, v3

    .line 2530
    .local v4, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v4, v5, :cond_4

    .line 2531
    const-string/jumbo v5, "\ud83e\udd76 "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 2533
    :cond_4
    const-string/jumbo v5, "\u3000 "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2535
    :goto_5
    if-eqz v4, :cond_5

    .line 2536
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2538
    :cond_5
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2529
    .end local v4    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2541
    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2542
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2543
    return-void
.end method

.method private enqueueUpdateRunningList()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    return-void
.end method

.method private finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 10
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 642
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const-string/jumbo v1, "isActive"

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 644
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->wasActiveBroadcastReEnqueued()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    const/4 v0, 0x5

    const-string/jumbo v1, "re-enqueued broadcast delivery failed"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    move-object v3, p1

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v5

    .line 651
    .local v5, "record":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v6

    .line 652
    .local v6, "index":I
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "reEnqueueActiveBroadcast"

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local v3, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 654
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastProcessQueue;->reEnqueueActiveBroadcast()V

    .line 656
    .end local v5    # "record":Lcom/android/server/am/BroadcastRecord;
    .end local v6    # "index":I
    :goto_0
    return-void
.end method

.method private finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V
    .locals 12
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p2, "deliveryState"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1456
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring finishReceiverActiveLocked; no active broadcast for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 1458
    return-void

    .line 1461
    :cond_0
    const-string v0, "finishReceiver"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1462
    .local v0, "cookie":I
    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1463
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v4

    .line 1464
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v5

    .line 1465
    .local v5, "index":I
    iget-object v1, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1467
    .local v6, "receiver":Ljava/lang/Object;
    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move-object v8, p3

    .end local p1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .end local p2    # "deliveryState":I
    .end local p3    # "reason":Ljava/lang/String;
    .local v2, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local v7, "deliveryState":I
    .local v8, "reason":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 1469
    const/4 p1, 0x3

    if-ne v7, p1, :cond_2

    .line 1470
    iget p1, v4, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v4, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 1471
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1472
    iget-object p1, v1, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {p1, v2}, Lcom/android/server/utils/AnrTimer;->accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;

    move-result-object p1

    .line 1473
    .local p1, "timer":Ljava/lang/AutoCloseable;
    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1474
    .local p2, "packageName":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1475
    .local p3, "className":Ljava/lang/String;
    iget-object v9, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v9, p2, p3}, Lcom/android/internal/os/TimeoutRecord;->forBroadcastReceiver(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v9

    .line 1476
    invoke-virtual {v9, p1}, Lcom/android/internal/os/TimeoutRecord;->setExpiredTimer(Ljava/lang/AutoCloseable;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v9

    .line 1477
    .local v9, "tr":Lcom/android/internal/os/TimeoutRecord;
    iget-object v10, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v11, v9}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    .line 1478
    .end local v9    # "tr":Lcom/android/internal/os/TimeoutRecord;
    .end local p1    # "timer":Ljava/lang/AutoCloseable;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "className":Ljava/lang/String;
    goto :goto_0

    .line 1479
    :cond_1
    iget-object p1, v1, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {p1, v2}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1481
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->timeoutScheduled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1482
    invoke-direct {p0, v2}, Lcom/android/server/am/BroadcastQueueImpl;->cancelDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1486
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkAndRemoveWaitingFor()V

    .line 1488
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 1489
    return-void
.end method

.method private forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 4
    .param p2, "broadcastPredicate"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;
    .param p3, "broadcastConsumer"    # Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
    .param p4, "andRemove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/am/BroadcastProcessQueue;",
            ">;",
            "Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;",
            "Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;",
            "Z)Z"
        }
    .end annotation

    .line 1776
    .local p1, "queuePredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/BroadcastProcessQueue;>;"
    const/4 v0, 0x0

    .line 1777
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1778
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    .line 1779
    .local v2, "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_1
    if-eqz v2, :cond_1

    .line 1780
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1781
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1783
    invoke-direct {p0, v2}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1784
    const/4 v0, 0x1

    .line 1787
    :cond_0
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    .line 1779
    :cond_1
    nop

    .line 1777
    .end local v2    # "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 1790
    .end local v1    # "i":I
    if-eqz v0, :cond_3

    .line 1791
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1793
    :cond_3
    return v0
.end method

.method private forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/am/BroadcastProcessQueue;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/BroadcastProcessQueue;",
            ">;)Z"
        }
    .end annotation

    .line 1800
    .local p1, "queuePredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/BroadcastProcessQueue;>;"
    .local p2, "queueConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/BroadcastProcessQueue;>;"
    const/4 v0, 0x0

    .line 1801
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1802
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    .line 1803
    .local v2, "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_1
    if-eqz v2, :cond_1

    .line 1804
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1805
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1806
    invoke-direct {p0, v2}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1807
    const/4 v0, 0x1

    .line 1809
    :cond_0
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    .line 1803
    :cond_1
    nop

    .line 1801
    .end local v2    # "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 1812
    .end local v1    # "i":I
    if-eqz v0, :cond_3

    .line 1813
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1815
    :cond_3
    return v0
.end method

.method private getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "index"    # I

    .line 1638
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    return v0
.end method

.method private getRecordsLookupCache()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 962
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 963
    .local v0, "recordsLookupCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/am/BroadcastRecord;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 964
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 966
    :cond_0
    return-object v0
.end method

.method private getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I
    .locals 2
    .param p1, "test"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    .line 390
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 393
    .end local v0    # "i":I
    const/4 v0, -0x1

    return v0
.end method

.method private getRunningSize()I
    .locals 3

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 364
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 367
    .end local v1    # "i":I
    return v0
.end method

.method private getRunningUrgentCount()I
    .locals 3

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    add-int/lit8 v0, v0, 0x1

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 381
    .end local v1    # "i":I
    return v0
.end method

.method private handleProcessFreezableChanged(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2097
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2098
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    .line 2099
    .local v1, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_1

    .line 2102
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2103
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;

    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->enqueueOutgoingBroadcasts(Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;)V

    goto :goto_0

    .line 2106
    .end local v1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2105
    .restart local v1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->refreshProcessQueueLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 2106
    .end local v1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2107
    return-void

    .line 2100
    .restart local v1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2106
    .end local v1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private isPendingColdStartValid()Z
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->hasProcessStartInitiationTimedout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x0

    return v0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$applyDeliveryGroupPolicy$2(Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "extrasMerger"    # Landroid/os/BundleMerger;
    .param p3, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p4, "recordIndex"    # I

    .line 920
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->mergeExtras(Landroid/content/Intent;Landroid/os/BundleMerger;)V

    .line 921
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-interface {v0, p3, p4}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    .line 922
    return-void
.end method

.method private synthetic lambda$applyDeliveryGroupPolicy$3(Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "recordsLookupCache"    # Landroid/util/ArrayMap;
    .param p3, "testRecord"    # Lcom/android/server/am/BroadcastRecord;
    .param p4, "testIndex"    # I

    .line 931
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 932
    return v1

    .line 935
    :cond_0
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v2, p3, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ne v0, v2, :cond_6

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v2, p3, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v0, v2, :cond_6

    .line 937
    invoke-virtual {p1, p3}, Lcom/android/server/am/BroadcastRecord;->matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 944
    :cond_1
    iget-boolean v0, p3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_2

    .line 945
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueImpl;->containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z

    move-result v0

    return v0

    .line 946
    :cond_2
    iget-boolean v0, p3, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-nez v0, :cond_3

    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_4

    :cond_3
    goto :goto_0

    .line 951
    :cond_4
    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 947
    :goto_0
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 948
    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 949
    :cond_5
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueImpl;->containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z

    move-result v0

    .line 947
    :goto_1
    return v0

    .line 938
    :cond_6
    :goto_2
    return v1
.end method

.method private static synthetic lambda$checkAndRemoveWaitingFor$22(Landroid/util/Pair;)Z
    .locals 1
    .param p0, "pair"    # Landroid/util/Pair;

    .line 1920
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1922
    const/4 v0, 0x1

    return v0

    .line 1924
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$cleanupDisabledPackageReceiversLocked$4(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "q"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1653
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$cleanupDisabledPackageReceiversLocked$5(Ljava/lang/String;Ljava/util/Set;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "filterByClasses"    # Ljava/util/Set;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "i"    # I

    .line 1660
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1661
    .local v0, "receiver":Ljava/lang/Object;
    instance-of v1, v0, Landroid/content/pm/ResolveInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1662
    move-object v1, v0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1663
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1664
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1663
    :goto_0
    return v2

    .line 1666
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1
    return v2
.end method

.method private static synthetic lambda$cleanupDisabledPackageReceiversLocked$6(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "i"    # I

    .line 1671
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1672
    .local v0, "receiver":Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static synthetic lambda$cleanupDisabledPackageReceiversLocked$7(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "q"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1678
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$forceDelayBroadcastDelivery$23(Ljava/lang/String;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 1
    .param p0, "targetPackage"    # Ljava/lang/String;
    .param p1, "q"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1935
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$forceDelayBroadcastDelivery$24(JLcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0
    .param p0, "delayedDurationMs"    # J
    .param p2, "q"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1936
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->forceDelayBroadcastDelivery(J)Z

    return-void
.end method

.method private static synthetic lambda$isBeyondBarrierLocked$15(JLcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 1
    .param p0, "barrierTime"    # J
    .param p2, "q"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1859
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isBeyondBarrierLocked(J)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$isDispatchedLocked$16(Landroid/content/Intent;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "q"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1870
    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatched(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$isIdleLocked$14(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 1
    .param p0, "q"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1847
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isIdle()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 297
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 354
    return v1

    .line 305
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastProcessQueue;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/BroadcastQueueImpl;->deliveryTimeoutSoftLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V

    .line 307
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 308
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 341
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 342
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 343
    .local v1, "procState":I
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 344
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 345
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 350
    :catchall_1
    move-exception v2

    goto :goto_1

    .line 347
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 349
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->refreshProcessQueuesLocked(I)V

    .line 350
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 351
    return v2

    .line 350
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 337
    .end local v0    # "uid":I
    .end local v1    # "procState":I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->handleProcessFreezableChanged(Lcom/android/server/am/ProcessRecord;)V

    .line 338
    return v2

    .line 329
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 331
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    .line 332
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkPendingColdStartValidityLocked()V

    .line 333
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 334
    return v2

    .line 333
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 325
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkHealth()V

    .line 326
    return v2

    .line 315
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 316
    :try_start_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 317
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 318
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    .line 319
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 320
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 321
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "r":Lcom/android/server/am/BroadcastRecord;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 322
    return v2

    .line 321
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 311
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->deliveryTimeout(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 312
    return v2

    .line 299
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunningList()V

    .line 300
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$new$10(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "i"    # I

    .line 1709
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "mBroadcastConsumerSkip"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    .end local p1    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local p2    # "i":I
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    .local v5, "i":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 1711
    return-void
.end method

.method private synthetic lambda$new$11(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "i"    # I

    .line 1719
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "mBroadcastConsumerSkipAndCanceled"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    .end local p1    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local p2    # "i":I
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    .local v5, "i":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 1721
    const/4 p1, 0x0

    iput p1, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 1722
    const/4 p1, 0x0

    iput-object p1, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1723
    iput-object p1, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 1724
    return-void
.end method

.method private synthetic lambda$new$12(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "i"    # I

    .line 1729
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x6

    const-string/jumbo v8, "mBroadcastConsumerDeferApply"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    .end local p1    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local p2    # "i":I
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    .local v5, "i":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 1731
    return-void
.end method

.method private synthetic lambda$new$13(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "i"    # I

    .line 1736
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "mBroadcastConsumerDeferClear"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    .end local p1    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local p2    # "i":I
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    .local v5, "i":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 1738
    return-void
.end method

.method private static synthetic lambda$onApplicationCleanupLocked$1(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p1, "i"    # I

    .line 749
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/am/BroadcastFilter;

    return v0
.end method

.method private static synthetic lambda$static$8(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 1
    .param p0, "q"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1699
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$static$9(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p1, "i"    # I

    .line 1701
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$waitForBarrier$18(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0
    .param p0, "q"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1885
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->addPrioritizeEarliestRequest()Z

    return-void
.end method

.method private synthetic lambda$waitForBarrier$19(JLjava/io/PrintWriter;)Z
    .locals 1
    .param p1, "now"    # J
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 1888
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->isBeyondBarrierLocked(JLjava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$waitForBarrier$20(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0
    .param p0, "q"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1892
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->removePrioritizeEarliestRequest()Z

    return-void
.end method

.method private synthetic lambda$waitForDispatched$21(Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1900
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->isDispatchedLocked(Landroid/content/Intent;Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$waitForIdle$17(Ljava/io/PrintWriter;)Z
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1877
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->isIdleLocked(Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method private logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 2406
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2407
    .local v0, "numReceivers":I
    :goto_0
    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v1, v0, :cond_1

    .line 2408
    return-void

    .line 2410
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2411
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2412
    .local v2, "event":I
    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2413
    const/4 v2, 0x1

    move v4, v2

    goto :goto_1

    .line 2414
    :cond_2
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2415
    const/4 v2, 0x2

    move v4, v2

    goto :goto_1

    .line 2414
    :cond_3
    move v4, v2

    .line 2417
    .end local v2    # "event":I
    .local v4, "event":I
    :goto_1
    if-eqz v4, :cond_7

    .line 2418
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v5, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v5

    long-to-int v5, v2

    .line 2419
    .local v5, "dispatchLatency":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v6

    long-to-int v6, v2

    .line 2420
    .local v6, "completeLatency":I
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iget-wide v7, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v2, v7

    long-to-int v7, v2

    .line 2422
    .local v7, "dispatchRealLatency":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v2, v8

    long-to-int v8, v2

    .line 2423
    .local v8, "completeRealLatency":I
    const/4 v2, 0x0

    .line 2427
    .local v2, "userType":I
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/server/pm/UserManagerInternal;

    .line 2430
    .local v11, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    const/4 v3, 0x0

    if-eqz v11, :cond_4

    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v11, v9}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    goto :goto_2

    :cond_4
    move-object v9, v3

    :goto_2
    move-object v12, v9

    .line 2431
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v12, :cond_5

    .line 2432
    iget-object v9, v12, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v2

    move v10, v2

    goto :goto_3

    .line 2431
    :cond_5
    move v10, v2

    .line 2434
    .end local v2    # "userType":I
    .local v10, "userType":I
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BOOT_COMPLETED_BROADCAST_COMPLETION_LATENCY_REPORTED action:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " dispatchLatency:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " completeLatency:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " dispatchRealLatency:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " completeRealLatency:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " receiversSize:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " userId:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " userType:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2442
    if-eqz v12, :cond_6

    iget-object v3, v12, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2434
    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    const/16 v3, 0x1b5

    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIII)V

    .line 2453
    .end local v5    # "dispatchLatency":I
    .end local v6    # "completeLatency":I
    .end local v7    # "dispatchRealLatency":I
    .end local v8    # "completeRealLatency":I
    .end local v10    # "userType":I
    .end local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    return-void
.end method

.method private logBroadcastDeliveryEventReported(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V
    .locals 29
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p4, "index"    # I
    .param p5, "receiver"    # Ljava/lang/Object;

    .line 2251
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {p5 .. p5}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v4

    .line 2252
    .local v4, "uid":I
    iget v3, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    const/16 v3, 0x3e8

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    goto :goto_0

    .line 2253
    .local v5, "senderUid":I
    :goto_1
    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2254
    .local v6, "actionName":Ljava/lang/String;
    move-object/from16 v3, p5

    instance-of v7, v3, Lcom/android/server/am/BroadcastFilter;

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    .line 2255
    move v7, v9

    goto :goto_2

    .line 2256
    :cond_1
    const/4 v7, 0x2

    :goto_2
    nop

    .line 2259
    .local v7, "receiverType":I
    if-nez v0, :cond_2

    .line 2260
    const/4 v10, 0x0

    .line 2261
    .local v10, "type":I
    const/4 v11, -0x1

    move/from16 v23, v11

    .local v11, "receiverProcessState":I
    goto :goto_3

    .line 2262
    .end local v10    # "type":I
    .end local v11    # "receiverProcessState":I
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveViaColdStart()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2263
    const/4 v10, 0x3

    .line 2264
    .restart local v10    # "type":I
    const/16 v11, 0x14

    move/from16 v23, v11

    .restart local v11    # "receiverProcessState":I
    goto :goto_3

    .line 2266
    .end local v10    # "type":I
    .end local v11    # "receiverProcessState":I
    :cond_3
    const/4 v10, 0x1

    .line 2267
    .restart local v10    # "type":I
    iget v11, v0, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    move/from16 v23, v11

    .line 2271
    .local v23, "receiverProcessState":I
    :goto_3
    iget-object v11, v2, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v11, v11, p4

    iget-wide v13, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v11, v13

    .line 2272
    .local v11, "dispatchDelay":J
    const-wide/16 v27, 0x0

    .line 2273
    .local v27, "receiveDelay":J
    iget-object v13, v2, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v13, v13, p4

    iget-object v15, v2, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v15, v15, p4

    sub-long/2addr v13, v15

    .line 2274
    .local v13, "finishDelay":J
    sget-boolean v15, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v15, :cond_5

    .line 2275
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Logging broadcast for "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    if-eqz v1, :cond_4

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v8, "<null>"

    :goto_4
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", stopped="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveWasStopped()Z

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", firstLaunch="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2278
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveFirstLaunch()Z

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2275
    const-string v15, "BroadcastQueue"

    invoke-static {v15, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_5
    if-eqz v0, :cond_8

    .line 2281
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveWasStopped()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2282
    const/4 v15, 0x2

    goto :goto_5

    .line 2283
    :cond_6
    move v15, v9

    :goto_5
    nop

    .line 2284
    .local v15, "packageState":I
    nop

    .line 2286
    if-eqz v1, :cond_7

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_6
    move-object/from16 v16, v8

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    goto :goto_6

    :goto_7
    iget-object v8, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 2287
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->calculateTypeForLogging()I

    move-result v18

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v19

    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v20

    .line 2288
    invoke-static {v3}, Lcom/android/server/am/BroadcastRecord;->getReceiverPriority(Ljava/lang/Object;)I

    move-result v21

    iget v9, v2, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 2289
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveFirstLaunch()Z

    move-result v24

    .line 2284
    const/16 v3, 0x1db

    move-object/from16 v17, v8

    move/from16 v22, v9

    move v8, v10

    move-wide v9, v11

    .end local v10    # "type":I
    .end local v11    # "dispatchDelay":J
    .local v8, "type":I
    .local v9, "dispatchDelay":J
    const-wide/16 v11, 0x0

    const-wide/16 v25, 0x0

    invoke-static/range {v3 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIJJJILjava/lang/String;Ljava/lang/String;IIIIIIZJ)V

    .line 2292
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveFirstLaunch(Z)V

    .line 2293
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveWasStopped(Z)V

    goto :goto_8

    .line 2280
    .end local v8    # "type":I
    .end local v9    # "dispatchDelay":J
    .end local v15    # "packageState":I
    .restart local v10    # "type":I
    .restart local v11    # "dispatchDelay":J
    :cond_8
    move v8, v10

    move-wide v9, v11

    .line 2295
    .end local v10    # "type":I
    .end local v11    # "dispatchDelay":J
    .restart local v8    # "type":I
    .restart local v9    # "dispatchDelay":J
    :goto_8
    return-void
.end method

.method private notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 2299
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->notifyBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 2301
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 2302
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastHistory;->onBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2304
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V

    .line 2305
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->logBroadcastProcessedEventRecord()V

    .line 2307
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2308
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 2309
    const/4 v0, 0x0

    .line 2310
    .local v0, "manifestCount":I
    const/4 v1, 0x0

    .line 2311
    .local v1, "manifestSkipCount":I
    const/4 v2, 0x0

    move v6, v0

    move v7, v1

    .end local v0    # "manifestCount":I
    .end local v1    # "manifestSkipCount":I
    .local v2, "i":I
    .local v6, "manifestCount":I
    .local v7, "manifestSkipCount":I
    :goto_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 2312
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    .line 2313
    add-int/lit8 v6, v6, 0x1

    .line 2314
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, v2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2315
    add-int/lit8 v7, v7, 0x1

    .line 2311
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2320
    .end local v2    # "i":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v8, v0, v2

    .line 2321
    .local v8, "dispatchTime":J
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 2324
    .end local v6    # "manifestCount":I
    .end local v7    # "manifestSkipCount":I
    .end local v8    # "dispatchTime":J
    :cond_2
    return-void
.end method

.method private notifyFinishReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V
    .locals 5
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p4, "index"    # I
    .param p5, "receiver"    # Ljava/lang/Object;

    .line 2231
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->wasDeliveryAttempted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BroadcastQueueImpl;->logBroadcastDeliveryEventReported(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V

    move-object v0, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local v0, "receiver":Ljava/lang/Object;
    .local p2, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local p3, "app":Lcom/android/server/am/ProcessRecord;
    .local p4, "r":Lcom/android/server/am/BroadcastRecord;
    .local p5, "index":I
    goto :goto_0

    .line 2231
    .end local v0    # "receiver":Ljava/lang/Object;
    .restart local p1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local p2, "app":Lcom/android/server/am/ProcessRecord;
    .local p3, "r":Lcom/android/server/am/BroadcastRecord;
    .local p4, "index":I
    .local p5, "receiver":Ljava/lang/Object;
    :cond_0
    move-object v0, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 2235
    .end local p1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .restart local v0    # "receiver":Ljava/lang/Object;
    .local p2, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local p3, "app":Lcom/android/server/am/ProcessRecord;
    .local p4, "r":Lcom/android/server/am/BroadcastRecord;
    .local p5, "index":I
    :goto_0
    invoke-virtual {p4, p5}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4, p5}, Lcom/android/server/am/BroadcastRecord;->wasDelivered(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2236
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v1, v1, p5

    iget-object v3, p4, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v3, v3, p5

    sub-long/2addr v1, v3

    invoke-virtual {p4, v0, v1, v2}, Lcom/android/server/am/BroadcastRecord;->updateBroadcastProcessedEventRecord(Ljava/lang/Object;J)V

    .line 2240
    :cond_1
    iget v1, p4, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    iget-object v2, p4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2241
    .local v1, "recordFinished":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 2242
    invoke-direct {p0, p4}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    .line 2244
    :cond_3
    return-void
.end method

.method private notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "receiver"    # Landroid/content/pm/ResolveInfo;

    .line 2176
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 2178
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2179
    .local v0, "receiverPackageName":Ljava/lang/String;
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2182
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2183
    .local v1, "targetedBroadcast":Z
    :goto_0
    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 2184
    .local v2, "targetedSelf":Z
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 2185
    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v4, -0x1

    const/16 v5, 0x1f

    if-ne v3, v4, :cond_1

    .line 2186
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v3, v0, v5}, Landroid/app/usage/UsageStatsManagerInternal;->reportEventForAllUsers(Ljava/lang/String;I)V

    goto :goto_1

    .line 2189
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v3, v0, v4, v5}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2194
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 2197
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 2198
    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2197
    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2199
    return-void
.end method

.method private notifyScheduleRegisteredReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "receiver"    # Lcom/android/server/am/BroadcastFilter;

    .line 2166
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 2167
    return-void
.end method

.method private notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 2125
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 2126
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->incrementCurAppReceivers()V

    .line 2129
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2134
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 2137
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_1

    .line 2138
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 2139
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2142
    :cond_1
    return-void
.end method

.method private notifyStoppedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 2
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 2150
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 2151
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->decrementCurAppReceivers()V

    .line 2153
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2157
    :cond_0
    return-void
.end method

.method private promoteToRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 3
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1497
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    .line 1498
    .local v0, "queueIndex":I
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    aput-object p1, v1, v0

    .line 1501
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastQueue.mRunning["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 1505
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingManifest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1506
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingOrdered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1507
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingResultTo()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    .line 1511
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v1

    .line 1512
    .local v1, "processWarm":Z
    if-eqz v1, :cond_2

    .line 1513
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1518
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    .line 1519
    if-eqz v1, :cond_3

    .line 1520
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    goto :goto_2

    .line 1522
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessStartingBegin()V

    .line 1524
    :goto_2
    return-void
.end method

.method private refreshProcessQueueLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 1
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 2115
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 2116
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 2117
    return-void
.end method

.method private refreshProcessQueuesLocked(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 2086
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    .line 2087
    .local v0, "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_0
    if-eqz v0, :cond_0

    .line 2090
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 2091
    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    .line 2093
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 2094
    return-void
.end method

.method private reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 2204
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 2205
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    move-wide v11, v5

    .line 2206
    .local v11, "idForResponseEvent":J
    cmp-long v2, v11, v3

    if-gtz v2, :cond_1

    return-void

    .line 2209
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2210
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .local v2, "targetPackage":Ljava/lang/String;
    goto :goto_1

    .line 2211
    .end local v2    # "targetPackage":Ljava/lang/String;
    :cond_2
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2212
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .restart local v2    # "targetPackage":Ljava/lang/String;
    goto :goto_1

    .line 2214
    .end local v2    # "targetPackage":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    move-object v9, v2

    .line 2216
    .local v9, "targetPackage":Ljava/lang/String;
    :goto_1
    if-nez v9, :cond_4

    return-void

    .line 2218
    :cond_4
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v8, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 2219
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v3, p1

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2220
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v15

    .line 2218
    invoke-virtual/range {v7 .. v15}, Landroid/app/usage/UsageStatsManagerInternal;->reportBroadcastDispatched(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    .line 2221
    return-void
.end method

.method private scheduleReceiverColdLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 26
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 993
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v2

    const-string/jumbo v3, "isActive"

    invoke-static {v2, v3}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 996
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveViaColdStart(Z)V

    .line 998
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    .line 999
    .local v3, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v4

    .line 1000
    .local v4, "index":I
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1003
    .local v5, "receiver":Ljava/lang/Object;
    instance-of v6, v5, Lcom/android/server/am/BroadcastFilter;

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 1004
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1005
    const-string v6, "BroadcastFilter for cold app"

    invoke-direct {v0, v1, v7, v6}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1007
    return v2

    .line 1010
    :cond_0
    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/BroadcastQueueImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v6

    .line 1011
    .local v6, "skipReason":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1012
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1013
    invoke-direct {v0, v1, v7, v6}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1014
    return v2

    .line 1017
    :cond_1
    move-object v7, v5

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1018
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    move-object v7, v5

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 1020
    .local v7, "component":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveWasStopped(Z)V

    .line 1021
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveFirstLaunch(Z)V

    .line 1023
    iget-object v9, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    or-int/lit8 v13, v9, 0x4

    .line 1024
    .local v13, "intentFlags":I
    new-instance v14, Lcom/android/server/am/HostingRecord;

    iget-object v9, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1025
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->getHostingRecordTriggerType()Ljava/lang/String;

    move-result-object v10

    const-string v12, "broadcast"

    invoke-direct {v14, v12, v7, v9, v10}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    .local v14, "hostingRecord":Lcom/android/server/am/HostingRecord;
    iget-object v9, v3, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    const/16 v18, 0x0

    nop

    if-eqz v9, :cond_2

    iget-object v9, v3, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1027
    invoke-virtual {v9}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v9

    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-lez v9, :cond_2

    move v9, v2

    goto :goto_0

    :cond_2
    move/from16 v9, v18

    :goto_0
    move/from16 v19, v9

    .line 1028
    .local v19, "isActivityCapable":Z
    if-eqz v19, :cond_3

    move v15, v2

    goto :goto_1

    .line 1029
    :cond_3
    move/from16 v15, v18

    :goto_1
    nop

    .line 1030
    .local v15, "zygotePolicyFlags":I
    iget-object v9, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x2000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_4

    move/from16 v16, v2

    goto :goto_2

    :cond_4
    move/from16 v16, v18

    .line 1033
    .local v16, "allowWhileBooting":Z
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v21

    .line 1034
    .local v21, "startTimeNs":J
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v9, :cond_5

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1035
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scheduling "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to cold "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 1037
    :cond_6
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    const/4 v12, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1039
    iget-object v9, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v9, :cond_7

    .line 1040
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1041
    const/4 v8, 0x5

    const-string/jumbo v9, "startProcessLocked failed"

    invoke-direct {v0, v1, v8, v9}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1043
    return v2

    .line 1045
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessStartInitiatedTimestampMillis(J)V

    .line 1047
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v20

    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1048
    invoke-virtual {v3, v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v24

    iget-boolean v8, v3, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 1047
    move-object/from16 v23, v2

    move/from16 v25, v8

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/am/AppStartInfoTracker;->handleProcessBroadcastStart(JLcom/android/server/am/ProcessRecord;Landroid/content/Intent;Z)V

    .line 1049
    return v18
.end method

.method private scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 6
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/am/BroadcastRetryException;
        }
    .end annotation

    .line 1068
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const-string/jumbo v1, "isActive"

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1070
    const-string/jumbo v0, "scheduleReceiverWarmLocked"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1071
    .local v0, "cookie":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1072
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 1073
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v2

    .line 1075
    .local v2, "index":I
    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    if-nez v3, :cond_0

    .line 1076
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1077
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 1078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1081
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, "skipReason":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1083
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->dispatchReceivers(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result v4

    .line 1084
    .local v4, "isBlockingDispatch":Z
    if-eqz v4, :cond_1

    .line 1085
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 1086
    const/4 v5, 0x0

    return v5

    .line 1084
    :cond_1
    nop

    .line 1088
    .end local v4    # "isBlockingDispatch":Z
    goto :goto_1

    .line 1089
    :cond_2
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4, v3}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1092
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1093
    goto :goto_2

    .line 1097
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    .line 1098
    .end local v1    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v2    # "index":I
    .end local v3    # "skipReason":Ljava/lang/String;
    goto :goto_0

    .line 1099
    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 1100
    const/4 v1, 0x1

    return v1
.end method

.method private scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V
    .locals 18
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 1264
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v0, :cond_0

    return-void

    .line 1265
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 1266
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    move-object v5, v0

    .line 1267
    .local v5, "thread":Landroid/app/IApplicationThread;
    if-eqz v5, :cond_5

    .line 1268
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    const/4 v6, 0x2

    invoke-virtual {v0, v3, v6}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 1270
    iget-boolean v0, v2, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v6, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v0, v6, :cond_2

    .line 1271
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v7, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v8, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v0, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1272
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    iget v10, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1271
    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1275
    :cond_2
    const/4 v0, 0x1

    .line 1276
    .local v0, "assumeDelivered":Z
    :try_start_0
    iget-object v6, v2, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iget-object v7, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v8, v2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v12, v2, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget v14, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v11, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1280
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v15

    .line 1281
    iget-boolean v11, v2, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v11, :cond_3

    iget v11, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    :goto_1
    move/from16 v16, v11

    goto :goto_2

    .line 1283
    .end local v0    # "assumeDelivered":Z
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1281
    .restart local v0    # "assumeDelivered":Z
    :cond_3
    const/4 v11, -0x1

    goto :goto_1

    .line 1282
    :goto_2
    iget-boolean v11, v2, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v11, :cond_4

    iget-object v11, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v17, v11

    goto :goto_3

    :cond_4
    move-object/from16 v17, v4

    .line 1276
    :goto_3
    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-interface/range {v5 .. v17}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    .end local v0    # "assumeDelivered":Z
    goto :goto_5

    .line 1283
    :goto_4
    nop

    .line 1284
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to schedule result of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " via "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1285
    .local v6, "msg":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 1286
    const/16 v7, 0x1a

    const/4 v8, 0x1

    const-string v9, "Can\'t deliver broadcast"

    const/16 v10, 0xd

    invoke-virtual {v3, v9, v10, v7, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1291
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "msg":Ljava/lang/String;
    :cond_5
    :goto_5
    iput-object v4, v2, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 1292
    return-void
.end method

.method private setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V
    .locals 8
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p4, "index"    # I
    .param p5, "receiver"    # Ljava/lang/Object;
    .param p6, "newDeliveryState"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 1570
    const-string/jumbo v0, "setDeliveryState"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1573
    .local v0, "cookie":I
    invoke-direct {p0, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result v1

    .line 1574
    .local v1, "oldDeliveryState":I
    invoke-virtual {p3, p4, p6, p7}, Lcom/android/server/am/BroadcastRecord;->setDeliveryState(IILjava/lang/String;)Z

    move-result v2

    .line 1578
    .local v2, "beyondCountChanged":Z
    if-eqz p1, :cond_1

    .line 1579
    const/4 v3, 0x4

    if-ne p6, v3, :cond_0

    .line 1580
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceActiveBegin()V

    goto :goto_0

    .line 1581
    :cond_0
    if-ne v1, v3, :cond_1

    .line 1582
    invoke-static {p6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1583
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceActiveEnd()V

    .line 1589
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1590
    invoke-static {p6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1591
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne p6, v4, :cond_3

    .line 1592
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v3

    nop

    if-eqz v3, :cond_5

    .line 1593
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivery state of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " via "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " changed from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-static {p6}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1597
    .local v3, "msg":Ljava/lang/String;
    if-ne p6, v4, :cond_4

    .line 1598
    invoke-static {v3}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    goto :goto_1

    .line 1600
    :cond_4
    invoke-static {v3}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 1604
    .end local v3    # "msg":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V

    move-object v3, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local v3, "receiver":Ljava/lang/Object;
    .local p2, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local p3, "app":Lcom/android/server/am/ProcessRecord;
    .local p4, "r":Lcom/android/server/am/BroadcastRecord;
    .local p5, "index":I
    goto :goto_2

    .line 1590
    .end local v3    # "receiver":Ljava/lang/Object;
    .restart local p1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local p2, "app":Lcom/android/server/am/ProcessRecord;
    .local p3, "r":Lcom/android/server/am/BroadcastRecord;
    .local p4, "index":I
    .local p5, "receiver":Ljava/lang/Object;
    :cond_6
    move-object v3, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .restart local v3    # "receiver":Ljava/lang/Object;
    .local p2, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local p3, "app":Lcom/android/server/am/ProcessRecord;
    .local p4, "r":Lcom/android/server/am/BroadcastRecord;
    .local p5, "index":I
    goto :goto_2

    .line 1589
    .end local v3    # "receiver":Ljava/lang/Object;
    .restart local p1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local p2, "app":Lcom/android/server/am/ProcessRecord;
    .local p3, "r":Lcom/android/server/am/BroadcastRecord;
    .local p4, "index":I
    .local p5, "receiver":Ljava/lang/Object;
    :cond_7
    move-object v3, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1609
    .end local p1    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .restart local v3    # "receiver":Ljava/lang/Object;
    .local p2, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .local p3, "app":Lcom/android/server/am/ProcessRecord;
    .local p4, "r":Lcom/android/server/am/BroadcastRecord;
    .local p5, "index":I
    :goto_2
    if-eqz v2, :cond_d

    .line 1610
    iget v4, p4, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object v5, p4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 1611
    invoke-direct {p0, p4}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    .line 1616
    :cond_8
    iget-boolean v4, p4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v4, :cond_9

    iget-boolean v4, p4, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v4, :cond_d

    .line 1617
    :cond_9
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget-object v5, p4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 1618
    invoke-direct {p0, p4, v4}, Lcom/android/server/am/BroadcastQueueImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v5

    if-eqz v5, :cond_a

    if-ne v4, p5, :cond_b

    .line 1619
    :cond_a
    iget-object v5, p4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1620
    .local v5, "otherReceiver":Ljava/lang/Object;
    nop

    .line 1621
    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1622
    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v7

    .line 1620
    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v6

    .line 1623
    .local v6, "otherQueue":Lcom/android/server/am/BroadcastProcessQueue;
    if-eqz v6, :cond_b

    .line 1624
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 1625
    invoke-direct {p0, v6}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1617
    .end local v5    # "otherReceiver":Ljava/lang/Object;
    .end local v6    # "otherQueue":Lcom/android/server/am/BroadcastProcessQueue;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    nop

    .line 1629
    .end local v4    # "i":I
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1633
    :cond_d
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 1634
    return-void
.end method

.method private setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2063
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 2064
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    .line 2063
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2065
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 2067
    :cond_0
    return-void
.end method

.method private shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 5
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 1435
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1436
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveAssumedDeliveryCountSinceIdle()I

    move-result v0

    .line 1437
    .local v0, "nonBlockingDeliveryCount":I
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveCountSinceIdle()I

    move-result v3

    .line 1438
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveAssumedDeliveryCountSinceIdle()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1439
    .local v3, "blockingDeliveryCount":I
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v4, v4, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v4, v4, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    if-lt v0, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :goto_0
    move v4, v1

    .line 1442
    .end local v0    # "nonBlockingDeliveryCount":I
    .end local v3    # "blockingDeliveryCount":I
    .local v4, "shouldRetire":Z
    :goto_1
    goto :goto_3

    .line 1443
    .end local v4    # "shouldRetire":Z
    :cond_2
    nop

    .line 1444
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveCountSinceIdle()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    if-lt v0, v3, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    move v4, v0

    .line 1447
    .restart local v4    # "shouldRetire":Z
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    return v1
.end method

.method private shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .locals 7
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "index"    # I

    .line 1110
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result v0

    .line 1111
    .local v0, "oldDeliveryState":I
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1112
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1115
    .local v2, "receiver":Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1116
    const-string v3, "already terminal state"

    return-object v3

    .line 1120
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isInFullBackup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1121
    const-string/jumbo v3, "isInFullBackup"

    return-object v3

    .line 1123
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {v3, p2, v2}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1124
    .local v3, "skipReason":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1125
    return-object v3

    .line 1127
    :cond_2
    invoke-virtual {p2, v2}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v4

    .line 1128
    .local v4, "receiverIntent":Landroid/content/Intent;
    if-nez v4, :cond_3

    .line 1129
    const-string/jumbo v5, "getReceiverIntent"

    return-object v5

    .line 1133
    :cond_3
    instance-of v5, v2, Lcom/android/server/am/BroadcastFilter;

    nop

    if-eqz v5, :cond_4

    move-object v5, v2

    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    iget-object v5, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    .line 1134
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 1135
    const-string v5, "BroadcastFilter for mismatched PID"

    return-object v5

    .line 1138
    :cond_4
    const/4 v5, 0x0

    return-object v5
.end method

.method private skipAndCancelReplacedBroadcasts(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    .line 883
    .local p1, "replacedBroadcasts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/BroadcastRecord;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 884
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 886
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    const/4 v2, 0x0

    .local v2, "rcvrIdx":I
    :goto_1
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 887
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 888
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-interface {v3, v1, v2}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    .line 886
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 883
    .end local v1    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v2    # "rcvrIdx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 892
    .end local v0    # "i":I
    return-void
.end method

.method private startDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V
    .locals 4
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;
    .param p2, "softTimeoutMillis"    # I

    .line 1299
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {v0}, Lcom/android/server/utils/AnrTimer;->serviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1302
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCpuDelayTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->lastCpuDelayTime:J

    .line 1303
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1306
    :goto_0
    return-void
.end method

.method private testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 9
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/am/BroadcastProcessQueue;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            ")Z"
        }
    .end annotation

    .line 1750
    .local p1, "test":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/BroadcastProcessQueue;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, "Test "

    if-ge v0, v1, :cond_3

    .line 1751
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 1752
    .local v1, "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_1
    if-eqz v1, :cond_2

    .line 1753
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1755
    .local v3, "now":J
    iget-wide v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLastTestFailureTime:J

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 1756
    iput-wide v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLastTestFailureTime:J

    .line 1757
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed due to "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1757
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 1761
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1763
    .end local v3    # "now":J
    :cond_1
    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    .line 1752
    :cond_2
    nop

    .line 1750
    .end local v1    # "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 1766
    .end local v0    # "i":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " passed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 1768
    const/4 v0, 0x1

    return v0
.end method

.method private updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 9
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 406
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 409
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->updateDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V

    .line 416
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 418
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v0

    .line 419
    .local v0, "wantQueue":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :goto_0
    move v1, v3

    .line 421
    .local v1, "inQueue":Z
    :goto_1
    if-eqz v0, :cond_a

    .line 422
    if-eqz v1, :cond_9

    .line 425
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v4, :cond_3

    .line 426
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    .line 427
    .local v4, "prevLower":Z
    :goto_2
    iget-object v5, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v5, :cond_5

    .line 428
    iget-object v5, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_6

    :cond_5
    move v2, v3

    .line 429
    .local v2, "nextHigher":Z
    :cond_6
    if-eqz v4, :cond_7

    if-nez v2, :cond_8

    .line 430
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v3, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 431
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v3, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 433
    .end local v2    # "nextHigher":Z
    .end local v4    # "prevLower":Z
    :cond_8
    goto :goto_3

    .line 434
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v2, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_3

    .line 436
    :cond_a
    if-eqz v1, :cond_b

    .line 437
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v2, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 441
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isOutgoingEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v2

    if-nez v2, :cond_c

    .line 442
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v2

    if-nez v2, :cond_c

    .line 443
    iget-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BroadcastQueueImpl;->removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    .line 445
    :cond_c
    return-void
.end method

.method private updateRunningList()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 449
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunningListLocked()V

    .line 450
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateRunningListLocked()V
    .locals 17

    .line 468
    move-object/from16 v1, p0

    invoke-direct {v1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningUrgentCount()I

    move-result v0

    iget-object v2, v1, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v2, v2, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 470
    .local v2, "usedExtra":I
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v0, v0

    invoke-direct {v1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    .line 471
    .local v0, "avail":I
    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    const-string/jumbo v3, "updateRunningList"

    invoke-static {v3}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v3

    .line 474
    .local v3, "cookie":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 477
    .local v4, "now":J
    iget-object v6, v1, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    .line 481
    .local v6, "waitingFor":Z
    iget-object v8, v1, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    const/4 v8, 0x0

    .line 484
    .local v8, "updateOomAdj":Z
    iget-object v9, v1, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    move/from16 v16, v8

    move v8, v0

    move/from16 v0, v16

    .line 485
    .local v0, "updateOomAdj":Z
    .local v8, "avail":I
    .local v9, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_0
    const/4 v10, 0x3

    if-eqz v9, :cond_b

    if-lez v8, :cond_b

    .line 486
    iget-object v11, v9, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 487
    .local v11, "nextQueue":Lcom/android/server/am/BroadcastProcessQueue;
    invoke-virtual {v9}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v12

    .line 491
    .local v12, "runnableAt":J
    invoke-virtual {v9}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v14

    if-nez v14, :cond_1

    .line 492
    move-object v9, v11

    .line 493
    goto :goto_0

    .line 498
    :cond_1
    invoke-direct {v1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result v14

    iget-object v15, v1, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v15, v15, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    if-lt v14, v15, :cond_2

    .line 499
    invoke-virtual {v9}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingUrgent()Z

    move-result v14

    if-nez v14, :cond_2

    .line 500
    move-object v9, v11

    .line 501
    goto :goto_0

    .line 507
    :cond_2
    cmp-long v14, v12, v4

    if-lez v14, :cond_3

    if-nez v6, :cond_3

    .line 508
    iget-object v14, v1, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v14, v7, v12, v13}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 509
    goto/16 :goto_4

    .line 514
    :cond_3
    iget-object v14, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {v9, v14}, Lcom/android/server/am/BroadcastProcessQueue;->clearDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V

    .line 518
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->updateWarmProcess(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 520
    invoke-virtual {v9}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v14

    .line 521
    .local v14, "processWarm":Z
    if-eqz v14, :cond_4

    .line 522
    iget-object v15, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v7, v9, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v15, v7, v10}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 526
    invoke-virtual {v9}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v7

    if-nez v7, :cond_7

    .line 527
    move-object v9, v11

    .line 528
    invoke-direct {v1}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 529
    const/4 v7, 0x1

    goto :goto_0

    .line 535
    :cond_4
    iget-object v7, v1, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v7, :cond_5

    .line 536
    iput-object v9, v1, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 537
    iget-object v7, v1, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    goto :goto_1

    .line 538
    :cond_5
    invoke-direct {v1}, Lcom/android/server/am/BroadcastQueueImpl;->isPendingColdStartValid()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 540
    move-object v9, v11

    .line 541
    const/4 v7, 0x1

    goto :goto_0

    .line 544
    :cond_6
    invoke-direct {v1}, Lcom/android/server/am/BroadcastQueueImpl;->clearInvalidPendingColdStart()V

    .line 545
    iput-object v9, v1, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 546
    iget-object v7, v1, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    .line 550
    :cond_7
    :goto_1
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_8

    .line 551
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Promoting "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " from runnable to running; process is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 553
    :cond_8
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->promoteToRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 555
    if-eqz v14, :cond_9

    .line 556
    iget-boolean v7, v9, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    or-int/2addr v7, v0

    .line 558
    .end local v0    # "updateOomAdj":Z
    .local v7, "updateOomAdj":Z
    :try_start_0
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .local v0, "completed":Z
    :goto_2
    goto :goto_3

    .line 559
    .end local v0    # "completed":Z
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Lcom/android/server/am/BroadcastRetryException;
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 561
    const/4 v0, 0x1

    .local v0, "completed":Z
    goto :goto_2

    .line 564
    .end local v7    # "updateOomAdj":Z
    .local v0, "updateOomAdj":Z
    :cond_9
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverColdLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v7

    move/from16 v16, v7

    move v7, v0

    move/from16 v0, v16

    .line 568
    .local v0, "completed":Z
    .restart local v7    # "updateOomAdj":Z
    :goto_3
    if-eqz v0, :cond_a

    .line 569
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 573
    :cond_a
    add-int/lit8 v8, v8, -0x1

    .line 576
    move-object v9, v11

    .line 577
    .end local v0    # "completed":Z
    .end local v11    # "nextQueue":Lcom/android/server/am/BroadcastProcessQueue;
    .end local v12    # "runnableAt":J
    .end local v14    # "processWarm":Z
    move v0, v7

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 581
    .end local v7    # "updateOomAdj":Z
    .local v0, "updateOomAdj":Z
    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    .line 582
    iget-object v7, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 585
    :cond_c
    invoke-direct {v1}, Lcom/android/server/am/BroadcastQueueImpl;->checkPendingColdStartValidityLocked()V

    .line 586
    invoke-direct {v1}, Lcom/android/server/am/BroadcastQueueImpl;->checkAndRemoveWaitingFor()V

    .line 588
    invoke-static {v3}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 589
    return-void
.end method

.method private updateWarmProcess(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4
    .param p1, "queue"    # Lcom/android/server/am/BroadcastProcessQueue;

    .line 2042
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2050
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 2051
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    .line 2050
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    .line 2053
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    return-void
.end method

.method private waitFor(Ljava/util/function/BooleanSupplier;)V
    .locals 4
    .param p1, "condition"    # Ljava/util/function/BooleanSupplier;

    .line 1904
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1905
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1906
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1908
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1910
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1913
    nop

    .line 1914
    return-void

    .line 1911
    :catch_0
    move-exception v1

    .line 1912
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1907
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method


# virtual methods
.method assertHealthLocked()V
    .locals 11

    .line 1977
    const/4 v0, 0x0

    .line 1978
    .local v0, "prev":Lcom/android/server/am/BroadcastProcessQueue;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1979
    .local v1, "next":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1980
    iget-object v4, v1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v4, v0, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    const-string/jumbo v5, "runnableAtPrev"

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1981
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRunnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1982
    if-eqz v0, :cond_2

    .line 1983
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    move v2, v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRunnableAt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1986
    :cond_2
    move-object v0, v1

    .line 1987
    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    .line 1991
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 1992
    .local v7, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    if-eqz v7, :cond_4

    .line 1993
    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isActive "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1991
    .end local v7    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1998
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v4, :cond_a

    .line 1999
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-direct {p0, v4}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v4

    if-ltz v4, :cond_6

    move v4, v3

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isOrphaned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 2002
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v4, v4, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget v5, v5, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v4

    .line 2004
    .local v4, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v4, v5, :cond_7

    move v5, v3

    goto :goto_4

    :cond_7
    move v5, v2

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " with queue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ";\n mRunningColdStart.app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v7, v7, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 2006
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";\n queue.app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 2007
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2004
    invoke-static {v5, v6}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 2009
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v5, v5, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    move v3, v2

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Empty cold start queue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 2012
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessStartInitiationTimeoutExpected()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2014
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Process start timeout expected for app "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v5, v5, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2016
    const-string v5, " in queue "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2018
    const-string v5, "; startUpTime: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 2020
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->getProcessStartInitiatedTimestampMillis()J

    move-result-wide v5

    .line 2021
    .local v5, "startupTimeMs":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_9

    const-string v7, "<none>"

    goto :goto_6

    .line 2022
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v7, v5, v7

    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    .line 2021
    :goto_6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    const-string v7, ";\n app: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    iget-object v7, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v7, v7, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 2030
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .end local v5    # "startupTimeMs":J
    :cond_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 2031
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    .line 2032
    .local v3, "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_8
    if-eqz v3, :cond_b

    .line 2033
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked()V

    .line 2034
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_8

    .line 2032
    :cond_b
    nop

    .line 2030
    .end local v3    # "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    nop

    .line 2037
    .end local v2    # "i":I
    return-void
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 1647
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 1650
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1652
    .local v0, "uid":I
    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1658
    .local v1, "queuePredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/BroadcastProcessQueue;>;"
    if-eqz p2, :cond_0

    .line 1659
    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .local v2, "broadcastPredicate":Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;
    goto :goto_0

    .line 1670
    .end local v2    # "broadcastPredicate":Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;
    :cond_0
    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    .line 1675
    .end local v0    # "uid":I
    .restart local v2    # "broadcastPredicate":Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;
    :goto_0
    goto :goto_1

    .line 1677
    .end local v1    # "queuePredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/BroadcastProcessQueue;>;"
    .end local v2    # "broadcastPredicate":Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;
    :cond_1
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p3}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda7;-><init>(I)V

    move-object v1, v0

    .line 1680
    .restart local v1    # "queuePredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/BroadcastProcessQueue;>;"
    sget-object v2, Lcom/android/server/am/BroadcastQueueImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

    .line 1682
    .restart local v2    # "broadcastPredicate":Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v0, p3}, Lcom/android/server/am/BroadcastQueueImpl;->cleanupUserStateLocked(Landroid/util/SparseBooleanArray;I)V

    .line 1684
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v0

    return v0
.end method

.method public describeStateLocked()Ljava/lang/String;
    .locals 2

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2459
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2460
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BroadcastHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 2461
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2462
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpConstants"    # Z
    .param p6, "dumpHistory"    # Z
    .param p7, "dumpAll"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "dumpIntentAction"    # Ljava/lang/String;
    .param p10, "needSep"    # Z
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2471
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2472
    .local v0, "now":J
    new-instance v2, Landroid/util/IndentingPrintWriter;

    invoke-direct {v2, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v2

    .line 2473
    .local v4, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2474
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2476
    if-nez p9, :cond_0

    .line 2477
    invoke-direct {p0, v4, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->dumpProcessQueues(Landroid/util/IndentingPrintWriter;J)V

    .line 2478
    invoke-direct {p0, v4}, Lcom/android/server/am/BroadcastQueueImpl;->dumpBroadcastsWithIgnoredPolicies(Landroid/util/IndentingPrintWriter;)V

    .line 2479
    invoke-direct {p0, v4}, Lcom/android/server/am/BroadcastQueueImpl;->dumpForegroundUids(Landroid/util/IndentingPrintWriter;)V

    .line 2481
    if-eqz p5, :cond_0

    .line 2482
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v2, v4}, Lcom/android/server/am/BroadcastConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2483
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v2, v4}, Lcom/android/server/am/BroadcastConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2487
    :cond_0
    if-eqz p6, :cond_1

    .line 2488
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v7, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2489
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    move/from16 v8, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/BroadcastHistory;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;Z)Z

    move-result v2

    .end local p10    # "needSep":Z
    .local v2, "needSep":Z
    goto :goto_0

    .line 2487
    .end local v2    # "needSep":Z
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local p10    # "needSep":Z
    :cond_1
    move/from16 v2, p10

    .line 2492
    .end local p10    # "needSep":Z
    .restart local v2    # "needSep":Z
    :goto_0
    return v2
.end method

.method public enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 15
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 794
    move-object/from16 v3, p1

    .line 809
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueuing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " receivers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 813
    :cond_1
    const-string v0, "enqueueBroadcast"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v8

    .line 814
    .local v8, "cookie":I
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/am/BroadcastRecord;->applySingletonPolicy(Lcom/android/server/am/ActivityManagerService;)V

    .line 816
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->applyDeliveryGroupPolicy(Lcom/android/server/am/BroadcastRecord;)V

    .line 818
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 821
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastHistory;->onBroadcastEnqueuedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 823
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 824
    .local v0, "replacedBroadcasts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/BroadcastRecord;>;"
    if-nez v0, :cond_2

    .line 825
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    move-object v10, v0

    goto :goto_0

    .line 824
    :cond_2
    move-object v10, v0

    .line 827
    .end local v0    # "replacedBroadcasts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/BroadcastRecord;>;"
    .local v10, "replacedBroadcasts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/BroadcastRecord;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 828
    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 829
    .local v0, "matchingBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/am/BroadcastRecord;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_3

    .line 830
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    move-object v11, v0

    goto :goto_1

    .line 829
    :cond_3
    move-object v11, v0

    .line 832
    .end local v0    # "matchingBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/am/BroadcastRecord;Ljava/lang/Boolean;>;"
    .local v11, "matchingBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/am/BroadcastRecord;Ljava/lang/Boolean;>;"
    :goto_1
    invoke-virtual {v3, v11}, Lcom/android/server/am/BroadcastRecord;->setMatchingRecordsCache(Landroid/util/ArrayMap;)V

    .line 833
    const/4 v0, 0x0

    .line 835
    .local v0, "enqueuedBroadcast":Z
    const/4 v1, 0x0

    move v12, v0

    move v4, v1

    .end local v0    # "enqueuedBroadcast":Z
    .local v4, "i":I
    .local v12, "enqueuedBroadcast":Z
    :goto_2
    iget-object v0, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 836
    iget-object v0, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 837
    .local v5, "receiver":Ljava/lang/Object;
    nop

    .line 838
    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v1

    .line 837
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v13

    .line 842
    .local v13, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    nop

    .line 843
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipAtEnqueueMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 844
    move-object v14, v0

    .line 845
    .local v14, "skipReason":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skipped by policy at enqueue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 848
    goto :goto_3

    .line 851
    :cond_4
    const/4 v1, 0x1

    .line 852
    .end local v12    # "enqueuedBroadcast":Z
    .local v1, "enqueuedBroadcast":Z
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {v13, v3, v4, v2}, Lcom/android/server/am/BroadcastProcessQueue;->enqueueOrReplaceBroadcast(Lcom/android/server/am/BroadcastRecord;ILcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    .line 854
    .local v2, "replacedBroadcast":Lcom/android/server/am/BroadcastRecord;
    if-eqz v2, :cond_5

    .line 855
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_5
    invoke-direct {p0, v13}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 858
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    move v12, v1

    .line 835
    .end local v1    # "enqueuedBroadcast":Z
    .end local v2    # "replacedBroadcast":Lcom/android/server/am/BroadcastRecord;
    .end local v5    # "receiver":Ljava/lang/Object;
    .end local v13    # "queue":Lcom/android/server/am/BroadcastProcessQueue;
    .end local v14    # "skipReason":Ljava/lang/String;
    .restart local v12    # "enqueuedBroadcast":Z
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    nop

    .line 865
    .end local v4    # "i":I
    invoke-direct {p0, v10}, Lcom/android/server/am/BroadcastQueueImpl;->skipAndCancelReplacedBroadcasts(Landroid/util/ArraySet;)V

    .line 866
    invoke-virtual {v10}, Landroid/util/ArraySet;->clear()V

    .line 867
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 868
    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 869
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->clearMatchingRecordsCache()V

    .line 870
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v9, v11}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 873
    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v12, :cond_8

    .line 874
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    .line 875
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    .line 878
    :cond_8
    invoke-static {v8}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 879
    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "resultAbort"    # Z
    .param p6, "waitForServices"    # Z

    .line 1373
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v9

    .line 1374
    .local v9, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    const/4 v0, 0x0

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    goto/16 :goto_3

    .line 1379
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v4

    .line 1380
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v9}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v10

    .line 1381
    .local v10, "index":I
    iget-boolean v2, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v2, :cond_2

    .line 1382
    move/from16 v11, p2

    iput v11, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 1383
    move-object/from16 v12, p3

    iput-object v12, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1384
    move-object/from16 v13, p4

    iput-object v13, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 1385
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isNoAbort()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1386
    move/from16 v14, p5

    iput-boolean v14, v4, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    goto :goto_0

    .line 1385
    :cond_1
    move/from16 v14, p5

    goto :goto_0

    .line 1381
    :cond_2
    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    .line 1393
    :goto_0
    const-string/jumbo v2, "remote app"

    const/4 v15, 0x1

    invoke-direct {v1, v9, v15, v2}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1398
    iget-boolean v2, v4, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-eqz v2, :cond_3

    .line 1399
    add-int/lit8 v2, v10, 0x1

    move v5, v2

    .local v5, "i":I
    :goto_1
    iget-object v2, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_3

    .line 1400
    iget-object v2, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "resultAbort"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 1399
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1405
    .end local v5    # "i":I
    :cond_3
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1406
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1407
    return v15

    .line 1411
    :cond_4
    invoke-virtual {v9}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    .line 1413
    :try_start_0
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1414
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_0
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    return v15

    .line 1417
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1421
    :cond_5
    nop

    .line 1423
    return v0

    .line 1417
    :goto_2
    nop

    .line 1418
    .local v0, "e":Lcom/android/server/am/BroadcastRetryException;
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1419
    invoke-direct {v1, v9}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1420
    return v15

    .line 1374
    .end local v0    # "e":Lcom/android/server/am/BroadcastRetryException;
    .end local v4    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v10    # "index":I
    :cond_6
    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    .line 1375
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring finishReceiverLocked; no active broadcast for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 1376
    return v0
.end method

.method public forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    .locals 3
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "delayedDurationMs"    # J

    .line 1933
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1934
    :try_start_0
    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;

    invoke-direct {v2, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;-><init>(J)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1937
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1938
    return-void

    .line 1937
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getOrCreateProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2329
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2336
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    .line 2337
    .local v0, "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_0
    if-eqz v0, :cond_2

    .line 2338
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2339
    return-object v0

    .line 2340
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v1, :cond_1

    .line 2341
    goto :goto_1

    .line 2343
    :cond_1
    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    .line 2346
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;-><init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V

    .line 2347
    .local v1, "created":Lcom/android/server/am/BroadcastProcessQueue;
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 2349
    if-nez v0, :cond_3

    .line 2350
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 2352
    :cond_3
    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 2354
    :goto_2
    return-object v1
.end method

.method public getPreferredSchedulingGroupLocked(Lcom/android/server/am/ProcessRecord;)I
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    .line 782
    .local v0, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getPreferredSchedulingGroupLocked()I

    move-result v1

    return v1

    .line 785
    :cond_0
    const/high16 v1, -0x80000000

    return v1
.end method

.method getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2360
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    return-object v0
.end method

.method getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2366
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    .line 2367
    .local v0, "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_0
    if-eqz v0, :cond_1

    .line 2368
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2369
    return-object v0

    .line 2371
    :cond_0
    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    .line 2373
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public isBeyondBarrierLocked(J)Z
    .locals 1
    .param p1, "barrierTime"    # J

    .line 1853
    sget-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/BroadcastQueueImpl;->isBeyondBarrierLocked(JLjava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method public isBeyondBarrierLocked(JLjava/io/PrintWriter;)Z
    .locals 2
    .param p1, "barrierTime"    # J
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 1859
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;-><init>(J)V

    const-string v1, "barrier"

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method public isDispatchedLocked(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1865
    sget-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->isDispatchedLocked(Landroid/content/Intent;Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method public isDispatchedLocked(Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1870
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;-><init>(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method public isIdleLocked()Z
    .locals 1

    .line 1842
    sget-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->isIdleLocked(Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method public isIdleLocked(Ljava/io/PrintWriter;)Z
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1847
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda19;-><init>()V

    const-string/jumbo v1, "idle"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2072
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2073
    return v0

    .line 2075
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 2076
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    goto :goto_0

    .line 2077
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2076
    :goto_0
    const/4 v0, 0x1

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v0

    .line 2077
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public onApplicationAttachedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/am/BroadcastRetryException;
        }
    .end annotation

    .line 662
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is attached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 667
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    .line 668
    .local v0, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    if-eqz v0, :cond_1

    .line 669
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 673
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->clearOutgoingBroadcasts()V

    .line 676
    :cond_1
    const/4 v1, 0x0

    .line 677
    .local v1, "didSomething":Z
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v2, v0, :cond_3

    .line 680
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    .line 681
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 685
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 686
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 688
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 689
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    .line 691
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_0
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 694
    :catch_0
    move-exception v2

    goto :goto_1

    .line 698
    :cond_2
    :goto_0
    nop

    .line 701
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 702
    const/4 v1, 0x1

    goto :goto_2

    .line 694
    :goto_1
    nop

    .line 695
    .local v2, "e":Lcom/android/server/am/BroadcastRetryException;
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 696
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 697
    throw v2

    .line 704
    .end local v2    # "e":Lcom/android/server/am/BroadcastRetryException;
    :cond_3
    :goto_2
    return v1
.end method

.method public onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 722
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is cleaned up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 728
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    .line 729
    .local v0, "queue":Lcom/android/server/am/BroadcastProcessQueue;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_1

    .line 731
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearRunningColdStart()V

    .line 734
    :cond_1
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_4

    .line 735
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 738
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 739
    const/4 v1, 0x5

    const-string/jumbo v2, "onApplicationCleanupLocked"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 741
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 744
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->clearOutgoingBroadcasts()V

    .line 748
    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda16;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v1

    .line 751
    .local v1, "didSomething":Z
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 752
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 753
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 756
    .end local v1    # "didSomething":Z
    :cond_4
    return-void
.end method

.method public onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 716
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 717
    return-void
.end method

.method public onApplicationTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 710
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 711
    return-void
.end method

.method public onProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 774
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 775
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 776
    return-void
.end method

.method removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2380
    const/4 v0, 0x0

    .line 2381
    .local v0, "prev":Lcom/android/server/am/BroadcastProcessQueue;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 2382
    .local v1, "leaf":Lcom/android/server/am/BroadcastProcessQueue;
    :goto_0
    if-eqz v1, :cond_3

    .line 2383
    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2384
    if-eqz v0, :cond_0

    .line 2385
    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v2, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    .line 2387
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v2, :cond_1

    .line 2388
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    iget-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 2390
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2393
    :goto_1
    return-object v1

    .line 2395
    :cond_2
    move-object v0, v1

    .line 2396
    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    .line 2398
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 1821
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 1822
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 1824
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BroadcastQueueImpl$1;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    const/4 v2, 0x2

    const-string v3, "android"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1837
    return-void
.end method

.method public waitForBarrier(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1882
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1883
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 1884
    :try_start_0
    sget-object v3, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v4, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1886
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1888
    :try_start_1
    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/BroadcastQueueImpl;JLjava/io/PrintWriter;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1890
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 1891
    :try_start_2
    sget-object v3, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v4, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1893
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1894
    nop

    .line 1895
    return-void

    .line 1893
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 1890
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 1891
    :try_start_4
    sget-object v4, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1893
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1894
    throw v2

    .line 1893
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 1886
    :catchall_3
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public waitForDispatched(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1900
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V

    .line 1901
    return-void
.end method

.method public waitForIdle(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1877
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V

    .line 1878
    return-void
.end method
