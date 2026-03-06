.class Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;
.super Lcom/android/server/utils/AlarmQueue;
.source "PrefetchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/PrefetchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThresholdAlarmListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AlarmQueue<",
        "Landroid/content/pm/UserPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 434
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 435
    const/4 v5, 0x0

    const-wide/32 v6, 0x57e40

    const-string v3, "*job.prefetch*"

    const-string v4, "Prefetch threshold"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "looper":Landroid/os/Looper;
    .local v1, "context":Landroid/content/Context;
    .local v2, "looper":Landroid/os/Looper;
    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 437
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/PrefetchController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected isForUser(Landroid/content/pm/UserPackage;I)Z
    .locals 1
    .param p1, "key"    # Landroid/content/pm/UserPackage;
    .param p2, "userId"    # I

    .line 441
    iget v0, p1, Landroid/content/pm/UserPackage;->userId:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 433
    check-cast p1, Landroid/content/pm/UserPackage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->isForUser(Landroid/content/pm/UserPackage;I)Z

    move-result p1

    return p1
.end method

.method protected processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/UserPackage;",
            ">;)V"
        }
    .end annotation

    .line 446
    .local p1, "expired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v0

    .line 447
    .local v1, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 448
    :try_start_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    move-wide v6, v3

    .line 449
    .local v6, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 450
    .local v8, "nowElapsed":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 451
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserPackage;

    .line 452
    .local v3, "p":Landroid/content/pm/UserPackage;
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget v5, v3, Landroid/content/pm/UserPackage;->userId:I

    iget-object v10, v3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v10, v6, v7}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mwillBeLaunchedSoonLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 453
    const-string v4, "JobScheduler.Prefetch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Alarm expired for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Landroid/content/pm/UserPackage;->userId:I

    iget-object v11, v3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 454
    invoke-static {v10, v11}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " at the wrong time"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 453
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v5, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    move-wide v10, v8

    move-wide v8, v6

    .end local v6    # "now":J
    .local v8, "now":J
    .local v10, "nowElapsed":J
    iget v6, v3, Landroid/content/pm/UserPackage;->userId:I

    iget-object v7, v3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-static/range {v5 .. v11}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mupdateThresholdAlarmLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;JJ)V

    goto :goto_1

    .line 461
    .end local v0    # "i":I
    .end local v3    # "p":Landroid/content/pm/UserPackage;
    .end local v8    # "now":J
    .end local v10    # "nowElapsed":J
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 456
    .restart local v0    # "i":I
    .restart local v3    # "p":Landroid/content/pm/UserPackage;
    .restart local v6    # "now":J
    .local v8, "nowElapsed":J
    :cond_0
    move-wide v10, v8

    move-wide v8, v6

    .end local v6    # "now":J
    .local v8, "now":J
    .restart local v10    # "nowElapsed":J
    iget-object v5, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    move-wide v6, v8

    move-wide v8, v10

    .end local v10    # "nowElapsed":J
    .restart local v6    # "now":J
    .local v8, "nowElapsed":J
    iget v10, v3, Landroid/content/pm/UserPackage;->userId:I

    iget-object v11, v3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-static/range {v5 .. v11}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/PrefetchController;JJILjava/lang/String;)Z

    move-result v4

    move-wide v10, v8

    move-wide v8, v6

    .end local v6    # "now":J
    .local v8, "now":J
    .restart local v10    # "nowElapsed":J
    if-eqz v4, :cond_1

    .line 458
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v4}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmTrackedJobs(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/UserPackage;->userId:I

    iget-object v6, v3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 450
    .end local v3    # "p":Landroid/content/pm/UserPackage;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-wide v6, v8

    move-wide v8, v10

    goto :goto_0

    .end local v10    # "nowElapsed":J
    .restart local v6    # "now":J
    .local v8, "nowElapsed":J
    :cond_2
    move-wide v10, v8

    move-wide v8, v6

    .line 461
    .end local v0    # "i":I
    .end local v6    # "now":J
    .end local v8    # "nowElapsed":J
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 463
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 465
    :cond_3
    return-void

    .line 461
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
