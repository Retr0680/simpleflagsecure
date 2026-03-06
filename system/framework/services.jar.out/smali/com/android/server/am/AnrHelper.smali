.class Lcom/android/server/am/AnrHelper;
.super Ljava/lang/Object;
.source "AnrHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AnrHelper$AnrRecord;,
        Lcom/android/server/am/AnrHelper$AnrConsumerThread;
    }
.end annotation


# static fields
.field static final APP_NOT_RESPONDING_DEFER_MSG:I = 0x4

.field static final APP_NOT_RESPONDING_DEFER_TIMEOUT_MILLIS:I = 0x2710

.field private static final CONSECUTIVE_ANR_TIME_MS:J

.field private static final DEFAULT_THREAD_KEEP_ALIVE_SECOND:I = 0xa

.field private static final EXPIRED_REPORT_TIME_MS:J

.field private static final SELF_ONLY_AFTER_BOOT_MS:J

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sMainProcessDumpThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mAnrRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/AnrHelper$AnrRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFgHandler:Landroid/os/Handler;

.field private mLastAnrTimeMs:J

.field private mProcessingPid:I

.field private final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTempDumpedPids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4xn1ICQF5xvJ7kbqwjtlJfKb760(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AnrHelper;->lambda$appNotResponding$2(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q8XvWSshSPTN8ysRn13RAWdPL-w(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AnrHelper;->lambda$deferAppNotResponding$3(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fRf1qJdJXgwGn4epRI8YCRLma3k(Lcom/android/server/am/AnrHelper;ILcom/android/server/am/AnrHelper$AnrRecord;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AnrHelper;->lambda$appNotResponding$4(ILcom/android/server/am/AnrHelper$AnrRecord;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w_5HmdP7xJVX9IY4uygDlAQ5zxQ(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/AnrHelper;->lambda$static$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y7RFlsVN6Rac_UO6nHdK_btKHW0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/AnrHelper;->lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuxiliaryTaskExecutor(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunning(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmProcessingPid(Lcom/android/server/am/AnrHelper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mappNotResponding(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/AnrHelper$AnrRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/AnrHelper$AnrRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleBinderHeavyHitterAutoSamplerIfNecessary(Lcom/android/server/am/AnrHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AnrHelper;->scheduleBinderHeavyHitterAutoSamplerIfNecessary()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAnrConsumerIfNeeded(Lcom/android/server/am/AnrHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetEXPIRED_REPORT_TIME_MS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetSELF_ONLY_AFTER_BOOT_MS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/am/AnrHelper;->SELF_ONLY_AFTER_BOOT_MS:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AnrHelper;->SELF_ONLY_AFTER_BOOT_MS:J

    .line 97
    new-instance v0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 99
    new-instance v0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/am/AnrHelper;->sMainProcessDumpThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 127
    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Lcom/android/server/am/AnrHelper;->makeExpiringThreadPoolWithSize(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AnrHelper;->sMainProcessDumpThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 128
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/server/am/AnrHelper;->makeExpiringThreadPoolWithSize(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 127
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/AnrHelper;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 129
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "auxExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "earlyDumpExecutor"    # Ljava/util/concurrent/ExecutorService;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 106
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    .line 431
    new-instance v0, Lcom/android/server/am/AnrHelper$1;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AnrHelper$1;-><init>(Lcom/android/server/am/AnrHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mFgHandler:Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 135
    iput-object p2, p0, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 136
    iput-object p3, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    .line 137
    return-void
.end method

.method private appNotResponding(Lcom/android/server/am/AnrHelper$AnrRecord;)V
    .locals 6
    .param p1, "anrRecord"    # Lcom/android/server/am/AnrHelper$AnrRecord;

    .line 207
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v0, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingStarted()V

    .line 208
    iget v0, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    .line 209
    .local v0, "incomingPid":I
    iget-object v1, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAnrRecordLockStarted()V

    .line 210
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    if-nez v0, :cond_0

    .line 213
    :try_start_1
    iget-object v2, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 214
    .local v2, "anrProcess":Lcom/android/server/am/ProcessRecord;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip zero pid ANR, process="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    iget-object v1, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    .line 215
    return-void

    .line 268
    .end local v2    # "anrProcess":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    goto/16 :goto_1

    .line 217
    :cond_0
    :try_start_2
    iget v2, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    if-ne v2, v0, :cond_1

    .line 218
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip duplicated ANR, pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    iget-object v1, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    .line 220
    return-void

    .line 222
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip ANR being predumped, pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v4, v4, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    iget-object v1, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    .line 226
    return-void

    .line 228
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 229
    iget-object v3, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AnrHelper$AnrRecord;

    iget v3, v3, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    if-ne v3, v0, :cond_3

    .line 230
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip queued ANR, pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    iget-object v1, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    .line 232
    return-void

    .line 234
    :cond_3
    :try_start_5
    iget v3, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    if-ne v3, v0, :cond_4

    .line 235
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip duplicated ANR, pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v5, v5, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 271
    iget-object v1, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    .line 238
    return-void

    .line 240
    :cond_4
    :try_start_6
    iget-object v3, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v3, v3, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v4, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrRecordPlacingOnQueueWithSize(I)V

    .line 228
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    nop

    .line 247
    .end local v2    # "i":I
    iget-object v2, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v2, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v3, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    .line 248
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    .line 247
    invoke-virtual {v2, v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->earlyDumpRequestSubmittedWithSize(I)V

    .line 249
    iget-object v2, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AnrHelper;ILcom/android/server/am/AnrHelper$AnrRecord;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 259
    .local v2, "firstPidDumpPromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    iget-object v3, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_AM_DEBUG_HELPER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/INtAmDebugHelper;

    iget-object v4, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 266
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    .line 265
    invoke-interface {v3, v0, v4, v5}, Lcom/android/server/am/INtAmDebugHelper;->startPreDump(ILjava/lang/String;Landroid/app/IApplicationThread;)V

    .line 268
    .end local v2    # "firstPidDumpPromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 269
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 271
    .end local v0    # "incomingPid":I
    iget-object v0, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v0, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    .line 272
    nop

    .line 274
    return-void

    .line 271
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 268
    .restart local v0    # "incomingPid":I
    :goto_1
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/AnrHelper;
    .end local p1    # "anrRecord":Lcom/android/server/am/AnrHelper$AnrRecord;
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 271
    .end local v0    # "incomingPid":I
    .restart local p0    # "this":Lcom/android/server/am/AnrHelper;
    .restart local p1    # "anrRecord":Lcom/android/server/am/AnrHelper$AnrRecord;
    :goto_2
    iget-object v1, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    .line 272
    throw v0
.end method

.method private synthetic lambda$appNotResponding$2(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)Ljava/io/File;
    .locals 3
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeoutRecord"    # Lcom/android/internal/os/TimeoutRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v1, p2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-static {v0, v1}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTracesTempFile(ILcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v0

    .line 162
    .local v0, "tracesFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 163
    return-object v0
.end method

.method private synthetic lambda$appNotResponding$4(ILcom/android/server/am/AnrHelper$AnrRecord;)Ljava/io/File;
    .locals 3
    .param p1, "incomingPid"    # I
    .param p2, "anrRecord"    # Lcom/android/server/am/AnrHelper$AnrRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    iget-object v0, p2, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v0, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-static {p1, v0}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTracesTempFile(ILcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v0

    .line 254
    .local v0, "tracesFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    return-object v0
.end method

.method private synthetic lambda$deferAppNotResponding$3(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)Ljava/io/File;
    .locals 3
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeoutRecord"    # Lcom/android/internal/os/TimeoutRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v1, p2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-static {v0, v1}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTracesTempFile(ILcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v0

    .line 189
    .local v0, "tracesFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 98
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AnrAuxiliaryTaskExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 100
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AnrMainProcessDumpThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static makeExpiringThreadPoolWithSize(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8
    .param p0, "size"    # I
    .param p1, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .line 284
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0xa

    move v2, p0

    move v1, p0

    move-object v7, p1

    .end local p0    # "size":I
    .end local p1    # "factory":Ljava/util/concurrent/ThreadFactory;
    .local v1, "size":I
    .local v7, "factory":Ljava/util/concurrent/ThreadFactory;
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 288
    .local v0, "pool":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 289
    return-object v0
.end method

.method private scheduleBinderHeavyHitterAutoSamplerIfNecessary()V
    .locals 8

    .line 372
    const-wide/16 v0, 0x40

    :try_start_0
    const-string/jumbo v2, "scheduleBinderHeavyHitterAutoSamplerIfNecessary()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 375
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    sget-wide v6, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    add-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 376
    iget-object v4, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->scheduleBinderHeavyHitterAutoSampler()V

    goto :goto_0

    .line 380
    .end local v2    # "now":J
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 378
    .restart local v2    # "now":J
    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local v2    # "now":J
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 381
    nop

    .line 382
    return-void

    .line 380
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 381
    throw v2
.end method

.method private startAnrConsumerIfNeeded()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;-><init>(Lcom/android/server/am/AnrHelper;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    .locals 10
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeoutRecord"    # Lcom/android/internal/os/TimeoutRecord;

    .line 140
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    .end local p1    # "anrProcess":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "timeoutRecord":Lcom/android/internal/os/TimeoutRecord;
    .local v1, "anrProcess":Lcom/android/server/am/ProcessRecord;
    .local v8, "timeoutRecord":Lcom/android/internal/os/TimeoutRecord;
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/util/concurrent/ExecutorService;Lcom/android/internal/os/TimeoutRecord;Z)V

    .line 143
    return-void
.end method

.method appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/util/concurrent/ExecutorService;Lcom/android/internal/os/TimeoutRecord;Z)V
    .locals 12
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityShortComponentName"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "parentShortComponentName"    # Ljava/lang/String;
    .param p5, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p6, "aboveSystem"    # Z
    .param p7, "auxiliaryTaskExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p8, "timeoutRecord"    # Lcom/android/internal/os/TimeoutRecord;
    .param p9, "isContinuousAnr"    # Z

    .line 152
    if-nez p7, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    move-object v11, v0

    .end local p7    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    .local v0, "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    goto :goto_0

    .line 152
    .end local v0    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    .restart local p7    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    :cond_0
    move-object/from16 v11, p7

    .line 157
    .end local p7    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    .local v11, "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda3;

    move-object/from16 v8, p8

    invoke-direct {v2, p0, p1, v8}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    .line 166
    .local v10, "firstPidDumpPromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    new-instance v0, Lcom/android/server/am/AnrHelper$AnrRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/AnrHelper$AnrRecord;-><init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;ZLjava/util/concurrent/Future;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/AnrHelper$AnrRecord;)V

    .line 170
    return-void
.end method

.method deferAppNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/util/concurrent/ExecutorService;Lcom/android/internal/os/TimeoutRecord;JZ)V
    .locals 12
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityShortComponentName"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "parentShortComponentName"    # Ljava/lang/String;
    .param p5, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p6, "aboveSystem"    # Z
    .param p7, "auxiliaryTaskExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p8, "timeoutRecord"    # Lcom/android/internal/os/TimeoutRecord;
    .param p9, "delayInMillis"    # J
    .param p11, "isContinuousAnr"    # Z

    .line 179
    if-nez p7, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    move-object v11, v0

    .end local p7    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    .local v0, "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    goto :goto_0

    .line 179
    .end local v0    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    .restart local p7    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    :cond_0
    move-object/from16 v11, p7

    .line 184
    .end local p7    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    .local v11, "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    move-object/from16 v8, p8

    invoke-direct {v2, p0, p1, v8}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    .line 193
    .local v10, "firstPidDumpPromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    new-instance v0, Lcom/android/server/am/AnrHelper$AnrRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/AnrHelper$AnrRecord;-><init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;ZLjava/util/concurrent/Future;)V

    .line 198
    .local v0, "anrRecord":Lcom/android/server/am/AnrHelper$AnrRecord;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 199
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 200
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    iget-object v3, p0, Lcom/android/server/am/AnrHelper;->mFgHandler:Landroid/os/Handler;

    move-wide/from16 v4, p9

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 202
    return-void
.end method
