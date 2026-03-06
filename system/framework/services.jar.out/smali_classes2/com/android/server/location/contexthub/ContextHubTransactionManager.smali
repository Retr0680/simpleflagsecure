.class Lcom/android/server/location/contexthub/ContextHubTransactionManager;
.super Ljava/lang/Object;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;,
        Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;
    }
.end annotation


# static fields
.field protected static final MAX_PENDING_REQUESTS:I = 0x2710

.field protected static final NUM_TRANSACTION_RECORDS:I = 0x14

.field public static final RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

.field protected static final RELIABLE_MESSAGE_MAX_NUM_RETRY:I = 0x3

.field protected static final RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

.field protected static final RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

.field public static final RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

.field protected static final TAG:Ljava/lang/String; = "ContextHubTransactionManager"


# instance fields
.field protected final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field protected final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field protected final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field protected final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field protected final mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mReliableMessageLock:Ljava/lang/Object;

.field protected final mReliableMessageOwnerIdActiveSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field protected final mReliableMessageTransactionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/contexthub/ContextHubServiceTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field protected final mTransactionLock:Ljava/lang/Object;

.field protected final mTransactionQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/location/contexthub/ContextHubServiceTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTransactionRecordLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$-_A7-jtJBtX07WeEVw72q-7mQ3A(ILcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$onTransactionResponse$1(ILcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VCtIJd9AwzrlEFOMQPzWpR6W608(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$onQueryResponse$4(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aEW6drgJ5EWH2teMhDONsGv4Eqw(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$startNextTransaction$5(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$muHpBO48upzzZqSvwsT2GaQA1D0(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$processMessageTransactions$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$tjjTCHBW_xG1agdQ2-hBcJtOquw(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$addTransaction$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wnSFTZC-Cn5wbUL1uekoJmeZFPI(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$onMessageDeliveryResponse$3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoStatsTransactionResult(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->toStatsTransactionResult(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 62
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    .line 64
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    .line 65
    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

    .line 73
    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

    .line 75
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

    return-void
.end method

.method constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V
    .locals 3
    .param p1, "contextHubProxy"    # Lcom/android/server/location/contexthub/IContextHubWrapper;
    .param p2, "clientManager"    # Lcom/android/server/location/contexthub/ContextHubClientManager;
    .param p3, "nanoAppStateManager"    # Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 101
    const v2, 0x3fffffff    # 1.9999999f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 112
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 119
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 162
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 163
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 164
    return-void
.end method

.method private cancelTimeoutFuture()V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 786
    :cond_0
    return-void
.end method

.method private completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V
    .locals 3
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .param p2, "result"    # I

    .line 921
    monitor-enter p1

    .line 922
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 923
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 924
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    const-string v0, "ContextHubTransactionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully completed reliable message transaction with message sequence number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 926
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void

    .line 924
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTransactionAndHandleNext(Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 3
    .param p1, "conditions"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;

    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-object v0, v2

    .line 741
    nop

    nop

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 742
    invoke-interface {p1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;->acceptTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 751
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->cancelTimeoutFuture()V

    .line 747
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 748
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 749
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    .line 751
    :cond_1
    monitor-exit v1

    .line 752
    return-object v0

    .line 743
    :cond_2
    :goto_0
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 751
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic lambda$addTransaction$0()V
    .locals 0

    .line 558
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->processMessageTransactions()V

    return-void
.end method

.method private static synthetic lambda$onMessageDeliveryResponse$2(ILcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .locals 2
    .param p0, "messageSequenceNumber"    # I
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 630
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 632
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 630
    :goto_0
    return v0
.end method

.method private synthetic lambda$onMessageDeliveryResponse$3()V
    .locals 0

    .line 677
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->processMessageTransactions()V

    return-void
.end method

.method private static synthetic lambda$onQueryResponse$4(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .locals 2
    .param p0, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 689
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$onTransactionResponse$1(ILcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .locals 2
    .param p0, "transactionId"    # I
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 593
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected transaction: expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    const-string v1, "ContextHubTransactionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v0, 0x0

    return v0

    .line 602
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$processMessageTransactions$6()V
    .locals 0

    .line 904
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->processMessageTransactions()V

    return-void
.end method

.method private synthetic lambda$startNextTransaction$5(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 3
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 807
    monitor-enter p1

    .line 808
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    const-string v0, "ContextHubTransactionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 812
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    goto :goto_0

    .line 814
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V

    .line 818
    monitor-exit v0

    .line 819
    return-void

    .line 818
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 814
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private processMessageTransactions()V
    .locals 22

    .line 852
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 853
    nop

    .line 857
    :try_start_0
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 859
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 910
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 862
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 863
    .local v4, "now":J
    const-wide v6, 0x7fffffffffffffffL

    .line 866
    .local v6, "nextExecutionTime":J
    :goto_1
    const/4 v0, 0x0

    .line 867
    .local v0, "continueProcessing":Z
    iget-object v8, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 868
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 869
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 870
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 871
    .local v9, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v9}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v10

    .line 872
    .local v10, "ownerId":J
    invoke-virtual {v9}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNumCompletedStartCalls()I

    move-result v12

    .line 873
    .local v12, "numCompletedStartCalls":I
    if-nez v12, :cond_1

    iget-object v13, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    .line 874
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 875
    goto :goto_2

    .line 878
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNextRetryTime()J

    move-result-wide v13

    .line 879
    .local v13, "nextRetryTime":J
    invoke-virtual {v9}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v15

    .line 880
    .local v15, "timeoutTime":J
    cmp-long v17, v15, v4

    const/16 v18, 0x1

    if-gtz v17, :cond_2

    move/from16 v17, v18

    goto :goto_3

    :cond_2
    move/from16 v17, v3

    .line 881
    .local v17, "transactionTimedOut":Z
    :goto_3
    cmp-long v19, v13, v4

    if-gtz v19, :cond_3

    const/4 v3, 0x3

    if-le v12, v3, :cond_3

    goto :goto_4

    :cond_3
    const/16 v18, 0x0

    .line 884
    .local v18, "transactionHitMaxRetries":Z
    :goto_4
    if-nez v17, :cond_7

    if-eqz v18, :cond_4

    move-wide/from16 v20, v4

    goto :goto_5

    .line 889
    :cond_4
    cmp-long v3, v13, v4

    if-lez v3, :cond_5

    if-gtz v12, :cond_6

    .line 890
    :cond_5
    invoke-direct {v1, v9, v4, v5}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;J)V

    .line 893
    :cond_6
    nop

    .line 894
    move-wide/from16 v20, v4

    .end local v4    # "now":J
    .local v20, "now":J
    invoke-virtual {v9}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNextRetryTime()J

    move-result-wide v3

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 895
    .end local v6    # "nextExecutionTime":J
    .local v3, "nextExecutionTime":J
    nop

    .line 896
    invoke-virtual {v9}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-wide v6, v5

    .end local v3    # "nextExecutionTime":J
    .restart local v6    # "nextExecutionTime":J
    goto :goto_6

    .line 884
    .end local v20    # "now":J
    .restart local v4    # "now":J
    :cond_7
    move-wide/from16 v20, v4

    .line 885
    .end local v4    # "now":J
    .restart local v20    # "now":J
    :goto_5
    const/4 v3, 0x6

    invoke-direct {v1, v9, v3, v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeAndCompleteMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V

    .line 887
    const/4 v0, 0x1

    .line 898
    .end local v9    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local v10    # "ownerId":J
    .end local v12    # "numCompletedStartCalls":I
    .end local v13    # "nextRetryTime":J
    .end local v15    # "timeoutTime":J
    .end local v17    # "transactionTimedOut":Z
    .end local v18    # "transactionHitMaxRetries":Z
    :goto_6
    move-wide/from16 v4, v20

    const/4 v3, 0x0

    goto :goto_2

    .line 869
    .end local v20    # "now":J
    .restart local v4    # "now":J
    :cond_8
    move-wide/from16 v20, v4

    .line 899
    .end local v4    # "now":J
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    .restart local v20    # "now":J
    if-nez v0, :cond_a

    .line 901
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v6, v3

    if-gez v3, :cond_9

    .line 902
    iget-object v3, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    .line 906
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    sub-long v8, v6, v8

    sget-object v5, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

    .line 907
    invoke-virtual {v5}, Ljava/time/Duration;->toNanos()J

    move-result-wide v10

    .line 905
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 903
    invoke-virtual {v3, v4, v8, v9, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 910
    .end local v0    # "continueProcessing":Z
    .end local v6    # "nextExecutionTime":J
    .end local v20    # "now":J
    :cond_9
    monitor-exit v2

    .line 911
    return-void

    .line 899
    .restart local v0    # "continueProcessing":Z
    .restart local v6    # "nextExecutionTime":J
    .restart local v20    # "now":J
    :cond_a
    move-wide/from16 v4, v20

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 910
    .end local v0    # "continueProcessing":Z
    .end local v6    # "nextExecutionTime":J
    .end local v20    # "now":J
    :goto_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeAndCompleteMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V
    .locals 0
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/contexthub/ContextHubServiceTransaction;",
            "I",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/contexthub/ContextHubServiceTransaction;",
            ">;>;)V"
        }
    .end annotation

    .line 947
    .local p3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    invoke-direct {p0, p1, p3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V

    .line 948
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V

    .line 949
    return-void
.end method

.method private removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 958
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V

    .line 959
    return-void
.end method

.method private removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V
    .locals 3
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/contexthub/ContextHubServiceTransaction;",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/contexthub/ContextHubServiceTransaction;",
            ">;>;)V"
        }
    .end annotation

    .line 971
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    if-nez p2, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 974
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 976
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 977
    return-void
.end method

.method private removeTransactionAndStartNext()V
    .locals 2

    .line 767
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->cancelTimeoutFuture()V

    .line 769
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 770
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    monitor-enter v0

    .line 771
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 772
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    .line 777
    :cond_0
    return-void

    .line 772
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private startMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;J)V
    .locals 6
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .param p2, "now"    # J

    .line 987
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNumCompletedStartCalls()I

    move-result v0

    .line 988
    .local v0, "numCompletedStartCalls":I
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v1

    .line 989
    .local v1, "result":I
    const-string v2, "ContextHubTransactionManager"

    if-nez v1, :cond_1

    .line 990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    if-nez v0, :cond_0

    const-string/jumbo v4, "started"

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "retried"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reliable message transaction with message sequence number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 990
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 997
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not start reliable message transaction with message sequence number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 997
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :goto_1
    sget-object v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toNanos()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setNextRetryTime(J)V

    .line 1007
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1008
    sget-object v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toNanos()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setTimeoutTime(J)V

    .line 1010
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setNumCompletedStartCalls(I)V

    .line 1011
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1012
    return-void
.end method

.method private startNextTransaction()V
    .locals 8

    .line 799
    const/4 v0, 0x1

    .line 800
    .local v0, "result":I
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 801
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 802
    .local v1, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v2

    .line 804
    .end local v0    # "result":I
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 805
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 821
    .local v0, "onTimeoutFunc":Ljava/lang/Runnable;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 823
    .local v3, "timeoutMs":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 824
    invoke-virtual {v5, v0, v3, v4, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    goto :goto_1

    .line 825
    :catch_0
    move-exception v5

    .line 826
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "ContextHubTransactionManager"

    const-string v7, "Error when schedule a timer"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v0    # "onTimeoutFunc":Ljava/lang/Runnable;
    .end local v3    # "timeoutMs":J
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 829
    :cond_0
    monitor-enter v1

    .line 830
    nop

    .line 831
    :try_start_1
    invoke-static {v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v0

    .line 830
    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 832
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 833
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 837
    .end local v1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :goto_2
    move v0, v2

    goto :goto_0

    .line 833
    .restart local v1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 838
    .end local v1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local v2    # "result":I
    .local v0, "result":I
    :cond_1
    return-void
.end method

.method private toStatsTransactionResult(I)I
    .locals 1
    .param p1, "result"    # I

    .line 1015
    packed-switch p1, :pswitch_data_0

    .line 1042
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1038
    :pswitch_1
    const/16 v0, 0x8

    return v0

    .line 1035
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 1032
    :pswitch_3
    const/4 v0, 0x6

    return v0

    .line 1029
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 1026
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 1023
    :pswitch_6
    const/4 v0, 0x3

    return v0

    .line 1020
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 1017
    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 6
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 531
    if-nez p1, :cond_0

    .line 532
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 537
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 540
    nop

    .line 541
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v0

    .line 543
    .local v1, "isReliableMessage":Z
    nop

    .line 544
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_2

    move v2, v3

    .line 546
    .local v2, "isEndpointMessage":Z
    :cond_2
    const/16 v0, 0x2710

    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    goto :goto_3

    .line 562
    :cond_4
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 563
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-ge v5, v0, :cond_6

    .line 568
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 570
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    goto :goto_1

    .line 572
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit v4

    .line 573
    return-void

    .line 564
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Transaction queue is full (capacity = 10000)"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isReliableMessage":Z
    .end local v2    # "isEndpointMessage":Z
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .end local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    throw v0

    .line 572
    .restart local v1    # "isReliableMessage":Z
    .restart local v2    # "isEndpointMessage":Z
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .restart local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 547
    :goto_3
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 548
    :try_start_2
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ge v4, v0, :cond_7

    .line 555
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 556
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 555
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 558
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 559
    return-void

    .line 557
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 549
    :cond_7
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Reliable message transaction queue is full (capacity = 10000)"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isReliableMessage":Z
    .end local v2    # "isEndpointMessage":Z
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .end local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    throw v0

    .line 557
    .restart local v1    # "isReliableMessage":Z
    .restart local v2    # "isEndpointMessage":Z
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .restart local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :goto_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 537
    .end local v1    # "isReliableMessage":Z
    .end local v2    # "isEndpointMessage":Z
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 9
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 358
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$4;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 359
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x3

    move-object v1, p0

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v4, p5

    .end local p1    # "contextHubId":I
    .end local p2    # "nanoAppId":J
    .end local p4    # "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local p5    # "packageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "contextHubId":I
    .local v6, "nanoAppId":J
    .local v8, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$4;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 358
    return-object v0
.end method

.method createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 9
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 315
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 316
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x2

    move-object v1, p0

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v4, p5

    .end local p1    # "contextHubId":I
    .end local p2    # "nanoAppId":J
    .end local p4    # "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local p5    # "packageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "contextHubId":I
    .local v6, "nanoAppId":J
    .local v8, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 315
    return-object v0
.end method

.method createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 10
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;
    .param p3, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 182
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v4

    const/4 v3, 0x0

    move-object v1, p0

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v6, p4

    .end local p1    # "contextHubId":I
    .end local p2    # "nanoAppBinary":Landroid/hardware/location/NanoAppBinary;
    .end local p3    # "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local p4    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    .local v7, "contextHubId":I
    .local v8, "nanoAppBinary":Landroid/hardware/location/NanoAppBinary;
    .local v9, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V

    .line 179
    return-object v0
.end method

.method createMessageTransaction(SILandroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 11
    .param p1, "ownerId"    # S
    .param p2, "contextHubId"    # I
    .param p3, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p4, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 404
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 405
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 408
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    const/4 v3, 0x5

    move v8, p1

    move-object v1, p0

    move v6, p1

    move v9, p2

    move-object v7, p3

    move-object v10, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IILandroid/hardware/location/NanoAppMessage;SILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 404
    return-object v0
.end method

.method createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 7
    .param p1, "contextHubId"    # I
    .param p2, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 489
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 490
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x4

    move-object v1, p0

    move v5, p1

    move-object v6, p2

    move-object v4, p3

    .end local p1    # "contextHubId":I
    .end local p2    # "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local p3    # "packageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "contextHubId":I
    .local v6, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 489
    return-object v0
.end method

.method createSessionMessageTransaction(Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/contexthub/Message;Ljava/lang/String;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 11
    .param p1, "hubInterface"    # Landroid/hardware/contexthub/IEndpointCommunication;
    .param p2, "sessionId"    # I
    .param p3, "message"    # Landroid/hardware/contexthub/Message;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;

    .line 449
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 450
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 453
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    const/4 v3, 0x7

    move v9, p2

    move-object v1, p0

    move-object v8, p1

    move v6, p2

    move-object v7, p3

    move-object v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IILandroid/hardware/contexthub/Message;Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 449
    return-object v0
.end method

.method createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 11
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 251
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 252
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x1

    move-wide v8, p2

    move-object v1, p0

    move v7, p1

    move-wide v4, p2

    move-object v10, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 251
    return-object v0
.end method

.method numReliableMessageTransactionPending()I
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onHubReset()V
    .locals 4

    .line 706
    nop

    .line 707
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 709
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 710
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    nop

    .line 712
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 711
    const/4 v3, 0x5

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeAndCompleteMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V

    goto :goto_0

    .line 716
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 710
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    :cond_0
    nop

    .line 716
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;>;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 720
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 721
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    if-nez v0, :cond_1

    .line 722
    monitor-exit v1

    return-void

    .line 726
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 725
    .restart local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V

    .line 726
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    monitor-exit v1

    .line 727
    return-void

    .line 726
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 716
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method onMessageDeliveryResponse(IZ)V
    .locals 5
    .param p1, "messageSequenceNumber"    # I
    .param p2, "success"    # Z

    .line 627
    nop

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-object v0, v2

    .line 660
    if-nez v0, :cond_0

    .line 661
    const-string v2, "ContextHubTransactionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find reliable message transaction with message sequence number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    monitor-exit v1

    return-void

    .line 670
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 669
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 670
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    nop

    .line 674
    if-eqz p2, :cond_1

    .line 675
    const/4 v1, 0x0

    goto :goto_0

    .line 676
    :cond_1
    const/4 v1, 0x5

    .line 672
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V

    .line 677
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 678
    return-void

    .line 670
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method onQueryResponse(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 687
    .local p1, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda2;-><init>()V

    .line 691
    .local v0, "conditions":Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;
    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->getTransactionAndHandleNext(Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v1

    .line 692
    .local v1, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    if-nez v1, :cond_0

    .line 693
    const-string v2, "ContextHubTransactionManager"

    const-string v3, "Received unexpected query response"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 697
    :cond_0
    monitor-enter v1

    .line 698
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onQueryResponse(ILjava/util/List;)V

    .line 699
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 700
    monitor-exit v1

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onTransactionResponse(IZ)V
    .locals 4
    .param p1, "transactionId"    # I
    .param p2, "success"    # Z

    .line 591
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 604
    .local v0, "conditions":Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;
    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->getTransactionAndHandleNext(Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v1

    .line 605
    .local v1, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    if-nez v1, :cond_0

    .line 606
    const-string v2, "ContextHubTransactionManager"

    const-string v3, "Received unexpected transaction response"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void

    .line 610
    :cond_0
    monitor-enter v1

    .line 611
    nop

    .line 612
    if-eqz p2, :cond_1

    .line 613
    const/4 v2, 0x0

    goto :goto_0

    .line 614
    :cond_1
    const/4 v2, 0x5

    .line 611
    :goto_0
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 615
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 616
    monitor-exit v1

    .line 617
    return-void

    .line 616
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1051
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1052
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 1053
    .local v4, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {v4}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    nop

    .end local v4    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    add-int/lit8 v1, v1, 0x1

    .line 1058
    goto :goto_0

    .line 1059
    :catchall_0
    move-exception v3

    goto :goto_5

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    nop

    .line 1062
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1064
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 1065
    .restart local v4    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1066
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    invoke-virtual {v4}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    nop

    .end local v4    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    add-int/lit8 v1, v1, 0x1

    .line 1070
    goto :goto_1

    .line 1071
    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1074
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1075
    :try_start_2
    const-string v3, "Transaction History:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1077
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1078
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1079
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1081
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;>;"
    :catchall_2
    move-exception v3

    goto :goto_3

    .line 1077
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;>;"
    :cond_2
    nop

    .line 1081
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;>;"
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1083
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1081
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    .line 1071
    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1059
    :goto_5
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3
.end method
