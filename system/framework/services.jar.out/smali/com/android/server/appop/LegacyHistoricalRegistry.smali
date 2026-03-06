.class final Lcom/android/server/appop/LegacyHistoricalRegistry;
.super Ljava/lang/Object;
.source "LegacyHistoricalRegistry.java"

# interfaces
.implements Lcom/android/server/appop/HistoricalRegistryInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;,
        Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;,
        Lcom/android/server/appop/LegacyHistoricalRegistry$HistoricalFilesInvariant;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_COMPRESSION_STEP:J = 0xaL

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

.field private static final HISTORY_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final KEEP_WTF_LOG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_WRITE_PENDING_HISTORY:I = 0x1

.field private static final PARAMETER_ASSIGNMENT:Ljava/lang/String; = "="

.field private static final PARAMETER_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private mBaseSnapshotInterval:J

.field private final mContext:Landroid/content/Context;

.field private mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

.field private volatile mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

.field private final mInMemoryLock:Ljava/lang/Object;

.field private mIntervalCompressionMultiplier:J

.field private mMode:I

.field private mNextPersistDueTimeMillis:J

.field private final mOnDiskLock:Ljava/lang/Object;

.field private mPendingHistoryOffsetMillis:J

.field private mPendingWrites:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;


# direct methods
.method static bridge synthetic -$$Nest$mupdateParametersFromSetting(Lcom/android/server/appop/LegacyHistoricalRegistry;Landroid/content/ContentResolver;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 133
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->KEEP_WTF_LOG:Z

    .line 135
    const-class v0, Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 157
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/appop/LegacyHistoricalRegistry;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/appop/LegacyHistoricalRegistry;

    .line 214
    iget-object v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;-><init>(Ljava/lang/Object;Landroid/content/Context;)V

    .line 215
    iget v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    iput v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    .line 216
    iget-wide v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    .line 217
    iget-wide v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 218
    iget-object v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    .line 219
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    .line 174
    sget-wide v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    .line 182
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 204
    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 205
    iput-object p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mContext:Landroid/content/Context;

    .line 206
    nop

    .line 209
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-direct {v0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    .line 211
    return-void
.end method

.method private clearHistoryOnDiskDLocked()V
    .locals 3

    .line 713
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 717
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 718
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 720
    return-void

    .line 718
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 11
    .param p1, "now"    # J

    .line 723
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 724
    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v3, p1

    .line 725
    .local v3, "remainingTimeMillis":J
    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 729
    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long v5, v3, v5

    iput-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 731
    :cond_0
    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v3

    .line 732
    .local v5, "elapsedTimeMillis":J
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setEndTime(J)V

    .line 733
    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 741
    iget-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 742
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v7, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 746
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    iget-object v7, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginTime(J)V

    .line 748
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 749
    .local v7, "overdueTimeMillis":J
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 750
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {p0, v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 753
    .end local v3    # "remainingTimeMillis":J
    .end local v5    # "elapsedTimeMillis":J
    .end local v7    # "overdueTimeMillis":J
    :cond_3
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 754
    iget-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 758
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0
.end method

.method private isPersistenceInitializedMLocked()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V
    .locals 4
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "nowMillis"    # J

    .line 819
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 820
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 819
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 821
    return-void
.end method

.method private persistPendingHistory(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 791
    .local p1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 793
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    monitor-exit v0

    return-void

    .line 807
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 796
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 799
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 800
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 801
    .local v3, "current":Landroid/app/AppOpsManager$HistoricalOps;
    if-lez v2, :cond_1

    .line 802
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 803
    .local v4, "previous":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 799
    .end local v3    # "current":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "previous":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 806
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v2, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 807
    .end local v1    # "opCount":I
    monitor-exit v0

    .line 808
    return-void

    .line 807
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private pruneFutureOps(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 824
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 825
    .local v0, "opCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 826
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 827
    .local v2, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 828
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 829
    :cond_0
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 830
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    .line 831
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    .line 832
    .local v3, "filterScale":D
    invoke-static {v2, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->-$$Nest$smspliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 825
    .end local v2    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v3    # "filterScale":D
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 835
    .end local v1    # "i":I
    return-void
.end method

.method private resampleHistoryOnDiskInMemoryDMLocked(J)V
    .locals 5
    .param p1, "offsetMillis"    # J

    .line 646
    new-instance v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    iget-wide v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    .line 647
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->offsetHistory(J)V

    .line 648
    return-void
.end method

.method private schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 2
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 811
    new-instance v0, Lcom/android/server/appop/LegacyHistoricalRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/appop/LegacyHistoricalRegistry$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 813
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 814
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 815
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 816
    return-void
.end method

.method private updateParametersFromSetting(Landroid/content/ContentResolver;)V
    .locals 14
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 281
    const-string v0, "appop_history_parameters"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "setting":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    .line 287
    .local v0, "modeValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 288
    .local v2, "baseSnapshotIntervalValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 289
    .local v3, "intervalMultiplierValue":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "parameters":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v0

    move v0, v6

    .end local v0    # "modeValue":Ljava/lang/String;
    .local v2, "modeValue":Ljava/lang/String;
    .local v3, "baseSnapshotIntervalValue":Ljava/lang/String;
    .local v7, "intervalMultiplierValue":Ljava/lang/String;
    :goto_0
    if-ge v0, v5, :cond_3

    aget-object v8, v4, v0

    .line 291
    .local v8, "parameter":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 292
    .local v9, "parts":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 293
    aget-object v10, v9, v6

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 294
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    const/4 v13, 0x1

    sparse-switch v12, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v11, "baseIntervalMillis"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v13

    goto :goto_2

    :sswitch_1
    const-string/jumbo v11, "mode"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v6

    goto :goto_2

    :sswitch_2
    const-string/jumbo v12, "intervalMultiplier"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_2

    :goto_1
    const/4 v11, -0x1

    :goto_2
    packed-switch v11, :pswitch_data_0

    .line 305
    sget-object v11, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown parameter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 302
    :pswitch_0
    aget-object v11, v9, v13

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 303
    goto :goto_3

    .line 299
    :pswitch_1
    aget-object v11, v9, v13

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 300
    goto :goto_3

    .line 296
    :pswitch_2
    aget-object v11, v9, v13

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 297
    nop

    .line 290
    .end local v8    # "parameter":Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v7, :cond_4

    .line 313
    :try_start_0
    invoke-static {v2}, Landroid/app/AppOpsManager;->parseHistoricalMode(Ljava/lang/String;)I

    move-result v0

    move v9, v0

    .line 314
    .local v9, "mode":I
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 315
    .local v10, "baseSnapshotInterval":J
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "intervalCompressionMultiplier":I
    int-to-long v12, v0

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/appop/LegacyHistoricalRegistry;->setHistoryParameters(IJJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    return-void

    .line 318
    .end local v0    # "intervalCompressionMultiplier":I
    .end local v9    # "mode":I
    .end local v10    # "baseSnapshotInterval":J
    :catch_0
    move-exception v0

    .line 320
    :cond_4
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad value forappop_history_parameters="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " resetting!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb56339a -> :sswitch_2
        0x3339a3 -> :sswitch_1
        0xea4149c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "storage"    # Ljava/io/File;

    .line 1976
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1977
    sget-boolean v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->KEEP_WTF_LOG:Z

    if-eqz v0, :cond_3

    .line 1979
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wtf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1981
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1982
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    .local v1, "writer":Ljava/io/PrintWriter;
    const/16 v2, 0xa

    if-eqz p1, :cond_0

    .line 1984
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 1982
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1986
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1987
    if-eqz p2, :cond_1

    .line 1988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nfiles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 1990
    :cond_1
    const-string v2, "\nfiles: none"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1992
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1994
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "writer":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1982
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "writer":Ljava/io/PrintWriter;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "message":Ljava/lang/String;
    .end local p1    # "t":Ljava/lang/Throwable;
    .end local p2    # "storage":Ljava/io/File;
    :goto_3
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1996
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "writer":Ljava/io/PrintWriter;
    .restart local p0    # "message":Ljava/lang/String;
    .restart local p1    # "t":Ljava/lang/Throwable;
    .restart local p2    # "storage":Ljava/io/File;
    :cond_2
    :goto_4
    nop

    .line 1998
    :cond_3
    :goto_5
    return-void
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 3
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 631
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    sget-object v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    monitor-exit v0

    return-void

    .line 641
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 637
    :cond_0
    iget-wide v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 638
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 639
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 640
    .local v1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 641
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    invoke-direct {p0, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 643
    return-void

    .line 641
    .end local v1    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearAllHistory()V
    .locals 1

    .line 693
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoricalRegistry()V

    .line 694
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->clearHistory()V

    .line 695
    return-void
.end method

.method clearHistoricalRegistry()V
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 709
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 708
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 704
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoryOnDiskDLocked()V

    .line 705
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 706
    iput-wide v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 707
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 708
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 709
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 710
    return-void

    .line 708
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    :try_start_6
    throw v2

    .line 709
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public clearHistory(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 666
    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 682
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 681
    :catchall_1
    move-exception v2

    goto :goto_1

    .line 669
    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 670
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 673
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    :try_start_5
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 674
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 677
    .end local v2    # "index":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 678
    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 680
    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->clearHistoryDLocked(ILjava/lang/String;)V

    .line 681
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 682
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 683
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsRegistry;->clearHistory(ILjava/lang/String;)V

    .line 684
    return-void

    .line 681
    :goto_1
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_8
    throw v2

    .line 682
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :goto_2
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 15
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "filterUid"    # I
    .param p4, "filterPackage"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOp"    # I
    .param p7, "filter"    # I

    .line 329
    move-object/from16 v1, p1

    move-object/from16 v5, p2

    iget-object v11, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v11

    .line 330
    :try_start_0
    iget-object v12, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :try_start_1
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 332
    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    const-string v0, "History:"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    const-string v0, "  mode="

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v2, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;-><init>(Lcom/android/server/appop/LegacyHistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V

    .line 340
    .local v2, "visitor":Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 343
    .local v6, "nowMillis":J
    invoke-direct {p0, v6, v7}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 345
    .local v0, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {v0, v6, v7}, Lcom/android/server/appop/LegacyHistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 346
    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 348
    invoke-direct {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 349
    sget-object v4, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Interaction before persistence initialized"

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 369
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "visitor":Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;
    .end local v6    # "nowMillis":J
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 368
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 353
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v2    # "visitor":Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;
    .restart local v6    # "nowMillis":J
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v4}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v4

    .line 354
    .local v4, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v4, :cond_2

    .line 356
    iget-wide v8, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v8, v6

    iget-wide v13, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v8, v13

    .line 358
    .local v8, "remainingToFillBatchMillis":J
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    .line 359
    .local v10, "opCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v10, :cond_1

    .line 360
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$HistoricalOps;

    .line 361
    .local v14, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v14, v8, v9}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 362
    invoke-static {v14, v6, v7}, Lcom/android/server/appop/LegacyHistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 363
    invoke-virtual {v14, v2}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 359
    .end local v14    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 365
    .end local v8    # "remainingToFillBatchMillis":J
    .end local v10    # "opCount":I
    .end local v13    # "i":I
    goto :goto_1

    .line 366
    :cond_2
    const-string v8, "  Empty"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "visitor":Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;
    .end local v4    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v6    # "nowMillis":J
    :goto_1
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    return-void

    .line 368
    :goto_2
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "filterUid":I
    .end local p4    # "filterPackage":Ljava/lang/String;
    .end local p5    # "filterAttributionTag":Ljava/lang/String;
    .end local p6    # "filterOp":I
    .end local p7    # "filter":I
    :try_start_6
    throw v0

    .line 369
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "filterUid":I
    .restart local p4    # "filterPackage":Ljava/lang/String;
    .restart local p5    # "filterAttributionTag":Ljava/lang/String;
    .restart local p6    # "filterOp":I
    .restart local p7    # "filter":I
    :goto_3
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uidFilter"    # I
    .param p3, "packageNameFilter"    # Ljava/lang/String;
    .param p4, "attributionTagFilter"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "dumpOp"    # I
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;
    .param p9, "prefix"    # Ljava/lang/String;
    .param p10, "nDiscreteOps"    # I

    .line 378
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/DiscreteOpsRegistry;->dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 380
    return-void
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 35
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "historyFlags"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .param p12, "attributionExemptPkgs"    # [Ljava/lang/String;
    .param p13, "callback"    # Landroid/os/RemoteCallback;

    .line 428
    move-object/from16 v1, p0

    move-object/from16 v15, p13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 429
    .local v2, "currentTimeMillis":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p9, v4

    if-nez v0, :cond_0

    .line 430
    move-wide v4, v2

    move-wide v6, v4

    .end local p9    # "endTimeMillis":J
    .local v4, "endTimeMillis":J
    goto :goto_0

    .line 429
    .end local v4    # "endTimeMillis":J
    .restart local p9    # "endTimeMillis":J
    :cond_0
    move-wide/from16 v6, p9

    .line 433
    .end local p9    # "endTimeMillis":J
    .local v6, "endTimeMillis":J
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 437
    .local v4, "payload":Landroid/os/Bundle;
    sub-long v8, v2, v6

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 438
    .local v8, "inMemoryAdjBeginTimeMillis":J
    sub-long v12, v2, p7

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 439
    .local v12, "inMemoryAdjEndTimeMillis":J
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v8, v9, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 v17, v0

    .line 442
    .local v17, "result":Landroid/app/AppOpsManager$HistoricalOps;
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    .line 443
    move-wide/from16 v18, v2

    .end local v2    # "currentTimeMillis":J
    .local v18, "currentTimeMillis":J
    iget-object v2, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    new-instance v14, Landroid/util/ArraySet;

    move-object/from16 v3, p12

    invoke-direct {v14, v3}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v30, v4

    move-wide/from16 v23, v8

    move-wide/from16 v25, v12

    move-object/from16 v3, v17

    move-wide/from16 v28, v18

    move/from16 v9, p1

    move-object/from16 v12, p3

    move/from16 v8, p6

    move-wide/from16 v4, p7

    move/from16 v13, p11

    .end local v4    # "payload":Landroid/os/Bundle;
    .end local v8    # "inMemoryAdjBeginTimeMillis":J
    .end local v12    # "inMemoryAdjEndTimeMillis":J
    .end local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v18    # "currentTimeMillis":J
    .local v3, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v23, "inMemoryAdjBeginTimeMillis":J
    .local v25, "inMemoryAdjEndTimeMillis":J
    .local v28, "currentTimeMillis":J
    .local v30, "payload":Landroid/os/Bundle;
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/appop/DiscreteOpsRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    goto :goto_1

    .line 442
    .end local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v23    # "inMemoryAdjBeginTimeMillis":J
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .end local v28    # "currentTimeMillis":J
    .end local v30    # "payload":Landroid/os/Bundle;
    .restart local v2    # "currentTimeMillis":J
    .restart local v4    # "payload":Landroid/os/Bundle;
    .restart local v8    # "inMemoryAdjBeginTimeMillis":J
    .restart local v12    # "inMemoryAdjEndTimeMillis":J
    .restart local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_1
    move-wide/from16 v28, v2

    move-object/from16 v30, v4

    move-wide/from16 v23, v8

    move-wide/from16 v25, v12

    move-object/from16 v3, v17

    move-wide/from16 v4, p7

    .line 448
    .end local v2    # "currentTimeMillis":J
    .end local v4    # "payload":Landroid/os/Bundle;
    .end local v8    # "inMemoryAdjBeginTimeMillis":J
    .end local v12    # "inMemoryAdjEndTimeMillis":J
    .end local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v23    # "inMemoryAdjBeginTimeMillis":J
    .restart local v25    # "inMemoryAdjEndTimeMillis":J
    .restart local v28    # "currentTimeMillis":J
    .restart local v30    # "payload":Landroid/os/Bundle;
    :goto_1
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_7

    .line 449
    iget-object v2, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 454
    :try_start_0
    iget-object v8, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 455
    :try_start_1
    invoke-direct {v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    if-nez v0, :cond_2

    .line 456
    :try_start_2
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Interaction before persistence initialized"

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v15, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 458
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 492
    :catchall_0
    move-exception v0

    move-object v9, v3

    move-wide/from16 v33, v23

    move-wide/from16 v13, v25

    goto/16 :goto_6

    .line 474
    :catchall_1
    move-exception v0

    move-object v9, v3

    move-wide/from16 v33, v23

    move-wide/from16 v13, v25

    goto/16 :goto_5

    .line 461
    :cond_2
    move-wide/from16 v9, v28

    .end local v28    # "currentTimeMillis":J
    .local v9, "currentTimeMillis":J
    :try_start_4
    invoke-direct {v1, v9, v10}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 462
    .local v0, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    cmp-long v11, v23, v11

    if-gez v11, :cond_4

    .line 463
    :try_start_5
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v11

    cmp-long v11, v25, v11

    if-lez v11, :cond_3

    .line 465
    new-instance v11, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v11, v0}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/app/AppOpsManager$HistoricalOps;)V

    move-object/from16 v16, v11

    .line 466
    .local v16, "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    move/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, p6

    invoke-virtual/range {v16 .. v26}, Landroid/app/AppOpsManager$HistoricalOps;->filter(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 p9, v0

    move-object/from16 v0, v16

    move-wide/from16 v11, v23

    move-wide/from16 v13, v25

    .line 469
    .end local v16    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v23    # "inMemoryAdjBeginTimeMillis":J
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .local v0, "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .local v11, "inMemoryAdjBeginTimeMillis":J
    .local v13, "inMemoryAdjEndTimeMillis":J
    .local p9, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_6
    invoke-virtual {v3, v0}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 474
    .end local v0    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .end local p9    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_2
    move-exception v0

    move-wide/from16 v28, v9

    move-wide/from16 v33, v11

    move-object v9, v3

    goto/16 :goto_5

    .end local v11    # "inMemoryAdjBeginTimeMillis":J
    .end local v13    # "inMemoryAdjEndTimeMillis":J
    .restart local v23    # "inMemoryAdjBeginTimeMillis":J
    .restart local v25    # "inMemoryAdjEndTimeMillis":J
    :catchall_3
    move-exception v0

    move-wide/from16 v11, v23

    move-wide/from16 v13, v25

    move-wide/from16 v28, v9

    move-wide/from16 v33, v11

    move-object v9, v3

    .end local v23    # "inMemoryAdjBeginTimeMillis":J
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .restart local v11    # "inMemoryAdjBeginTimeMillis":J
    .restart local v13    # "inMemoryAdjEndTimeMillis":J
    goto/16 :goto_5

    .line 463
    .end local v11    # "inMemoryAdjBeginTimeMillis":J
    .end local v13    # "inMemoryAdjEndTimeMillis":J
    .local v0, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v23    # "inMemoryAdjBeginTimeMillis":J
    .restart local v25    # "inMemoryAdjEndTimeMillis":J
    :cond_3
    move-object/from16 p9, v0

    move-wide/from16 v11, v23

    move-wide/from16 v13, v25

    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v23    # "inMemoryAdjBeginTimeMillis":J
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .restart local v11    # "inMemoryAdjBeginTimeMillis":J
    .restart local v13    # "inMemoryAdjEndTimeMillis":J
    .restart local p9    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_2

    .line 462
    .end local v11    # "inMemoryAdjBeginTimeMillis":J
    .end local v13    # "inMemoryAdjEndTimeMillis":J
    .end local p9    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v23    # "inMemoryAdjBeginTimeMillis":J
    .restart local v25    # "inMemoryAdjEndTimeMillis":J
    :cond_4
    move-object/from16 p9, v0

    move-wide/from16 v11, v23

    move-wide/from16 v13, v25

    .line 471
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v23    # "inMemoryAdjBeginTimeMillis":J
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .restart local v11    # "inMemoryAdjBeginTimeMillis":J
    .restart local v13    # "inMemoryAdjEndTimeMillis":J
    .restart local p9    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_2
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    move-object/from16 v17, v3

    .end local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_8
    iget-object v3, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 472
    .local v0, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v3, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 473
    invoke-virtual/range {p9 .. p9}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v18

    cmp-long v3, v13, v18

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 474
    .local v3, "collectOpsFromDisk":Z
    :goto_3
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 477
    if-eqz v3, :cond_6

    .line 479
    :try_start_9
    invoke-direct {v1, v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 481
    move-wide/from16 v28, v9

    .end local v9    # "currentTimeMillis":J
    .restart local v28    # "currentTimeMillis":J
    :try_start_a
    iget-wide v8, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long v8, v28, v8

    move-wide/from16 v18, v8

    iget-wide v8, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    add-long v8, v18, v8

    .line 483
    .local v8, "onDiskAndInMemoryOffsetMillis":J
    move-wide/from16 v31, v8

    .end local v8    # "onDiskAndInMemoryOffsetMillis":J
    .local v31, "onDiskAndInMemoryOffsetMillis":J
    sub-long v8, v11, v31

    move-wide/from16 v33, v11

    const-wide/16 v10, 0x0

    .end local v11    # "inMemoryAdjBeginTimeMillis":J
    .local v33, "inMemoryAdjBeginTimeMillis":J
    :try_start_b
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    .line 485
    .local v23, "onDiskAdjBeginTimeMillis":J
    sub-long v8, v13, v31

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v25

    .line 487
    .local v25, "onDiskAdjEndTimeMillis":J
    iget-object v8, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    move/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move/from16 v22, p6

    move/from16 v27, p11

    move-object/from16 v16, v8

    invoke-static/range {v16 .. v27}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->-$$Nest$mcollectHistoricalOpsDLocked(Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v9, v17

    .end local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v9, "result":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_4

    .line 492
    .end local v0    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v3    # "collectOpsFromDisk":Z
    .end local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v23    # "onDiskAdjBeginTimeMillis":J
    .end local v25    # "onDiskAdjEndTimeMillis":J
    .end local v31    # "onDiskAndInMemoryOffsetMillis":J
    .end local p9    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_4
    move-exception v0

    move-object/from16 v9, v17

    .end local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_6

    .end local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v33    # "inMemoryAdjBeginTimeMillis":J
    .restart local v11    # "inMemoryAdjBeginTimeMillis":J
    .restart local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_5
    move-exception v0

    move-wide/from16 v33, v11

    move-object/from16 v9, v17

    .end local v11    # "inMemoryAdjBeginTimeMillis":J
    .end local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v33    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_6

    .end local v28    # "currentTimeMillis":J
    .end local v33    # "inMemoryAdjBeginTimeMillis":J
    .local v9, "currentTimeMillis":J
    .restart local v11    # "inMemoryAdjBeginTimeMillis":J
    .restart local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_6
    move-exception v0

    move-wide/from16 v28, v9

    move-wide/from16 v33, v11

    move-object/from16 v9, v17

    .end local v11    # "inMemoryAdjBeginTimeMillis":J
    .end local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v9, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "currentTimeMillis":J
    .restart local v33    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_6

    .line 477
    .end local v28    # "currentTimeMillis":J
    .end local v33    # "inMemoryAdjBeginTimeMillis":J
    .restart local v0    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v3    # "collectOpsFromDisk":Z
    .local v9, "currentTimeMillis":J
    .restart local v11    # "inMemoryAdjBeginTimeMillis":J
    .restart local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p9    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_6
    move-wide/from16 v28, v9

    move-wide/from16 v33, v11

    move-object/from16 v9, v17

    .line 492
    .end local v0    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v3    # "collectOpsFromDisk":Z
    .end local v11    # "inMemoryAdjBeginTimeMillis":J
    .end local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local p9    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .local v9, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "currentTimeMillis":J
    .restart local v33    # "inMemoryAdjBeginTimeMillis":J
    :goto_4
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    goto :goto_6

    .line 474
    .end local v28    # "currentTimeMillis":J
    .end local v33    # "inMemoryAdjBeginTimeMillis":J
    .local v9, "currentTimeMillis":J
    .restart local v11    # "inMemoryAdjBeginTimeMillis":J
    .restart local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_8
    move-exception v0

    move-wide/from16 v28, v9

    move-wide/from16 v33, v11

    move-object/from16 v9, v17

    .end local v11    # "inMemoryAdjBeginTimeMillis":J
    .end local v17    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v9, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "currentTimeMillis":J
    .restart local v33    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_5

    .end local v28    # "currentTimeMillis":J
    .end local v33    # "inMemoryAdjBeginTimeMillis":J
    .local v3, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v9, "currentTimeMillis":J
    .restart local v11    # "inMemoryAdjBeginTimeMillis":J
    :catchall_9
    move-exception v0

    move-wide/from16 v28, v9

    move-wide/from16 v33, v11

    move-object v9, v3

    .end local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v11    # "inMemoryAdjBeginTimeMillis":J
    .local v9, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "currentTimeMillis":J
    .restart local v33    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_5

    .end local v13    # "inMemoryAdjEndTimeMillis":J
    .end local v28    # "currentTimeMillis":J
    .end local v33    # "inMemoryAdjBeginTimeMillis":J
    .restart local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v9, "currentTimeMillis":J
    .local v23, "inMemoryAdjBeginTimeMillis":J
    .local v25, "inMemoryAdjEndTimeMillis":J
    :catchall_a
    move-exception v0

    move-wide/from16 v28, v9

    move-wide/from16 v33, v23

    move-wide/from16 v13, v25

    move-object v9, v3

    .end local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v23    # "inMemoryAdjBeginTimeMillis":J
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .local v9, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "inMemoryAdjEndTimeMillis":J
    .restart local v28    # "currentTimeMillis":J
    .restart local v33    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_5

    .end local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v13    # "inMemoryAdjEndTimeMillis":J
    .end local v33    # "inMemoryAdjBeginTimeMillis":J
    .restart local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v23    # "inMemoryAdjBeginTimeMillis":J
    .restart local v25    # "inMemoryAdjEndTimeMillis":J
    :catchall_b
    move-exception v0

    move-object v9, v3

    move-wide/from16 v33, v23

    move-wide/from16 v13, v25

    .end local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v23    # "inMemoryAdjBeginTimeMillis":J
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .restart local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "inMemoryAdjEndTimeMillis":J
    .restart local v33    # "inMemoryAdjBeginTimeMillis":J
    :goto_5
    :try_start_d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .end local v6    # "endTimeMillis":J
    .end local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v13    # "inMemoryAdjEndTimeMillis":J
    .end local v28    # "currentTimeMillis":J
    .end local v30    # "payload":Landroid/os/Bundle;
    .end local v33    # "inMemoryAdjBeginTimeMillis":J
    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "opNames":[Ljava/lang/String;
    .end local p5    # "historyFlags":I
    .end local p6    # "filter":I
    .end local p7    # "beginTimeMillis":J
    .end local p11    # "flags":I
    .end local p12    # "attributionExemptPkgs":[Ljava/lang/String;
    .end local p13    # "callback":Landroid/os/RemoteCallback;
    :try_start_e
    throw v0

    .restart local v6    # "endTimeMillis":J
    .restart local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "inMemoryAdjEndTimeMillis":J
    .restart local v28    # "currentTimeMillis":J
    .restart local v30    # "payload":Landroid/os/Bundle;
    .restart local v33    # "inMemoryAdjBeginTimeMillis":J
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "opNames":[Ljava/lang/String;
    .restart local p5    # "historyFlags":I
    .restart local p6    # "filter":I
    .restart local p7    # "beginTimeMillis":J
    .restart local p11    # "flags":I
    .restart local p12    # "attributionExemptPkgs":[Ljava/lang/String;
    .restart local p13    # "callback":Landroid/os/RemoteCallback;
    :catchall_c
    move-exception v0

    goto :goto_5

    .line 492
    .end local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v13    # "inMemoryAdjEndTimeMillis":J
    .end local v33    # "inMemoryAdjBeginTimeMillis":J
    .restart local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v23    # "inMemoryAdjBeginTimeMillis":J
    .restart local v25    # "inMemoryAdjEndTimeMillis":J
    :catchall_d
    move-exception v0

    move-object v9, v3

    move-wide/from16 v33, v23

    move-wide/from16 v13, v25

    .end local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v23    # "inMemoryAdjBeginTimeMillis":J
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .restart local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "inMemoryAdjEndTimeMillis":J
    .restart local v33    # "inMemoryAdjBeginTimeMillis":J
    :goto_6
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v0

    .line 448
    .end local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v13    # "inMemoryAdjEndTimeMillis":J
    .end local v33    # "inMemoryAdjBeginTimeMillis":J
    .restart local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v23    # "inMemoryAdjBeginTimeMillis":J
    .restart local v25    # "inMemoryAdjEndTimeMillis":J
    :cond_7
    move-object v9, v3

    move-wide/from16 v33, v23

    move-wide/from16 v13, v25

    .line 495
    .end local v3    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v23    # "inMemoryAdjBeginTimeMillis":J
    .end local v25    # "inMemoryAdjEndTimeMillis":J
    .restart local v9    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "inMemoryAdjEndTimeMillis":J
    .restart local v33    # "inMemoryAdjBeginTimeMillis":J
    :goto_7
    invoke-virtual {v9, v4, v5, v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 498
    const-string/jumbo v0, "historical_ops"

    move-object/from16 v2, v30

    .end local v30    # "payload":Landroid/os/Bundle;
    .local v2, "payload":Landroid/os/Bundle;
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 499
    invoke-virtual {v15, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 500
    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "historyFlags"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .param p12, "attributionExemptedPackages"    # [Ljava/lang/String;
    .param p13, "callback"    # Landroid/os/RemoteCallback;

    .line 394
    move-object/from16 v1, p0

    move-object/from16 v2, p13

    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v4, v0

    .line 396
    .local v4, "result":Landroid/app/AppOpsManager$HistoricalOps;
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_1

    .line 397
    iget-object v15, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v15

    .line 398
    :try_start_0
    iget-object v3, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :try_start_1
    invoke-direct {v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Interaction before persistence initialized"

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 402
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 408
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 404
    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 405
    :try_start_4
    iget-object v3, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    move/from16 v9, p6

    move/from16 v14, p11

    move-wide v10, v5

    move-wide v12, v7

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v14}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->-$$Nest$mcollectHistoricalOpsDLocked(Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    .line 408
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 404
    :goto_0
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "opNames":[Ljava/lang/String;
    .end local p5    # "historyFlags":I
    .end local p6    # "filter":I
    .end local p7    # "beginTimeMillis":J
    .end local p9    # "endTimeMillis":J
    .end local p11    # "flags":I
    .end local p12    # "attributionExemptedPackages":[Ljava/lang/String;
    .end local p13    # "callback":Landroid/os/RemoteCallback;
    :try_start_6
    throw v0

    .line 408
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "opNames":[Ljava/lang/String;
    .restart local p5    # "historyFlags":I
    .restart local p6    # "filter":I
    .restart local p7    # "beginTimeMillis":J
    .restart local p9    # "endTimeMillis":J
    .restart local p11    # "flags":I
    .restart local p12    # "attributionExemptedPackages":[Ljava/lang/String;
    .restart local p13    # "callback":Landroid/os/RemoteCallback;
    :goto_1
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 411
    :cond_1
    :goto_2
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_2

    .line 412
    iget-object v3, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    new-instance v15, Landroid/util/ArraySet;

    move-object/from16 v5, p12

    invoke-direct {v15, v5}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move/from16 v9, p6

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move/from16 v14, p11

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/appop/DiscreteOpsRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 417
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 418
    .local v0, "payload":Landroid/os/Bundle;
    const-string/jumbo v3, "historical_ops"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 419
    invoke-virtual {v2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 420
    return-void
.end method

.method getMode()I
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    monitor-exit v0

    return v1

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V
    .locals 20
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "uidState"    # I
    .param p7, "flags"    # I
    .param p8, "eventStartTime"    # J
    .param p10, "increment"    # J
    .param p12, "attributionFlags"    # I
    .param p13, "attributionChainId"    # I

    .line 546
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 547
    :try_start_0
    iget v0, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 548
    invoke-direct {v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    monitor-exit v2

    return-void

    .line 559
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 552
    :cond_0
    nop

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 552
    invoke-direct {v1, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    .line 553
    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p10

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 555
    iget-object v6, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    move/from16 v10, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    move/from16 v13, p6

    move/from16 v12, p7

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    move/from16 v18, p12

    move/from16 v19, p13

    invoke-virtual/range {v6 .. v19}, Lcom/android/server/appop/DiscreteOpsRegistry;->recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V

    .line 559
    :cond_1
    monitor-exit v2

    .line 560
    return-void

    .line 559
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V
    .locals 28
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "uidState"    # I
    .param p7, "flags"    # I
    .param p8, "accessTime"    # J
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I
    .param p12, "accessCount"    # I

    .line 508
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 509
    :try_start_0
    iget v0, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 510
    invoke-direct {v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    monitor-exit v2

    return-void

    .line 522
    :catchall_0
    move-exception v0

    move/from16 v3, p12

    goto :goto_1

    .line 514
    :cond_0
    nop

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 514
    invoke-direct {v1, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v3, p12

    int-to-long v12, v3

    .line 515
    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    :try_start_1
    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 518
    iget-object v14, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    const-wide/16 v24, -0x1

    move/from16 v18, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v19, p5

    move/from16 v21, p6

    move/from16 v20, p7

    move-wide/from16 v22, p8

    move/from16 v26, p10

    move/from16 v27, p11

    invoke-virtual/range {v14 .. v27}, Lcom/android/server/appop/DiscreteOpsRegistry;->recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V

    goto :goto_0

    .line 522
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 509
    :cond_1
    move/from16 v3, p12

    .line 522
    :goto_0
    monitor-exit v2

    .line 523
    return-void

    .line 522
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 13
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 528
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    iget v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 530
    invoke-direct {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    monitor-exit v1

    return-void

    .line 538
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 534
    :cond_0
    nop

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 534
    invoke-direct {p0, v2, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v4

    .line 535
    const-wide/16 v11, 0x1

    move v5, p1

    move v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 538
    :cond_1
    monitor-exit v1

    .line 539
    return-void

    .line 538
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public offsetDiscreteHistory(J)V
    .locals 1
    .param p1, "offsetMillis"    # J

    .line 625
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsRegistry;->offsetHistory(J)V

    .line 626
    return-void
.end method

.method public offsetHistory(J)V
    .locals 5
    .param p1, "offsetMillis"    # J

    .line 600
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 620
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 606
    :catchall_1
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 607
    :try_start_4
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v1

    .line 608
    .local v1, "history":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoricalRegistry()V

    .line 609
    if-eqz v1, :cond_3

    .line 610
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 611
    .local v2, "historySize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 612
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 613
    .local v4, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 611
    .end local v4    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 615
    .end local v3    # "i":I
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_2

    .line 616
    invoke-direct {p0, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->pruneFutureOps(Ljava/util/List;)V

    .line 618
    :cond_2
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v3, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 620
    .end local v1    # "history":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v2    # "historySize":I
    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 621
    return-void

    .line 606
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .end local p1    # "offsetMillis":J
    :try_start_6
    throw v2

    .line 620
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .restart local p1    # "offsetMillis":J
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public persistPendingHistory()V
    .locals 7

    .line 776
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 778
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 779
    .local v2, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 780
    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 781
    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 782
    iput-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    goto :goto_0

    .line 784
    .end local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_0
    move-exception v2

    goto :goto_1

    .restart local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 786
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 787
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->writeAndClearOldAccessHistory()V

    .line 788
    return-void

    .line 786
    .end local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 784
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    :try_start_4
    throw v2

    .line 786
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public resetHistoryParameters()V
    .locals 8

    .line 652
    invoke-direct {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interaction before persistence initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 656
    :cond_0
    sget-wide v4, Lcom/android/server/appop/LegacyHistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    const-wide/16 v6, 0xa

    const/4 v3, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/LegacyHistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 658
    iget-object v0, v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteOpsRegistry;->setDebugMode(Z)V

    .line 659
    return-void
.end method

.method public setHistoryParameters(IJJ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "intervalCompressionMultiplier"    # J

    .line 565
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 569
    const/4 v2, 0x0

    .line 570
    .local v2, "resampleHistory":Z
    :try_start_1
    sget-object v3, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New history parameters: mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {p1}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " baseSnapshotInterval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " intervalCompressionMultiplier:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 570
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-eq v3, p1, :cond_1

    .line 575
    iput p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    .line 576
    iget v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-nez v3, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoryOnDiskDLocked()V

    goto :goto_0

    .line 594
    .end local v2    # "resampleHistory":Z
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 579
    .restart local v2    # "resampleHistory":Z
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 580
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/appop/DiscreteOpsRegistry;->setDebugMode(Z)V

    .line 583
    :cond_1
    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, p2

    if-eqz v3, :cond_2

    .line 584
    iput-wide p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    .line 585
    const/4 v2, 0x1

    .line 587
    :cond_2
    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    cmp-long v3, v3, p4

    if-eqz v3, :cond_3

    .line 588
    iput-wide p4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 589
    const/4 v2, 0x1

    .line 591
    :cond_3
    if-eqz v2, :cond_4

    .line 592
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 594
    .end local v2    # "resampleHistory":Z
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 596
    return-void

    .line 595
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 594
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .end local p1    # "mode":I
    .end local p2    # "baseSnapshotInterval":J
    .end local p4    # "intervalCompressionMultiplier":J
    :try_start_4
    throw v2

    .line 595
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .restart local p1    # "mode":I
    .restart local p2    # "baseSnapshotInterval":J
    .restart local p4    # "intervalCompressionMultiplier":J
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public shutdown()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_0
    iget v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-nez v1, :cond_0

    .line 765
    monitor-exit v0

    return-void

    .line 767
    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory()V

    .line 770
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->shutdown()V

    .line 771
    return-void

    .line 767
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemReady(Landroid/content/ContentResolver;)V
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 223
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->systemReady()V

    .line 224
    const-string v0, "appop_history_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 225
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/appop/LegacyHistoricalRegistry$1;

    .line 226
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry$1;-><init>(Lcom/android/server/appop/LegacyHistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 225
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    .line 235
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-eqz v3, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    new-instance v3, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v6, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 245
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    .line 246
    invoke-virtual {v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->getLastPersistTimeMillisDLocked()J

    move-result-wide v3

    .line 248
    .local v3, "lastPersistTimeMills":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 259
    .end local v3    # "lastPersistTimeMills":J
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    nop

    .line 268
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    new-instance v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;-><init>(Landroid/content/Context;)V

    .line 270
    .local v1, "sqlRegistry":Lcom/android/server/appop/DiscreteOpsSqlRegistry;
    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    .line 271
    .local v2, "xmlRegistry":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    invoke-static {v1, v2}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->migrateDiscreteOpsToXml(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Lcom/android/server/appop/DiscreteOpsXmlRegistry;)V

    .line 274
    .end local v1    # "sqlRegistry":Lcom/android/server/appop/DiscreteOpsSqlRegistry;
    .end local v2    # "xmlRegistry":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    :cond_2
    return-void

    .line 260
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 259
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    :try_start_4
    throw v3

    .line 260
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public writeAndClearDiscreteHistory()V
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->writeAndClearOldAccessHistory()V

    .line 689
    return-void
.end method
