.class Lcom/android/server/am/ProcessErrorStateRecord;
.super Ljava/lang/Object;
.source "ProcessErrorStateRecord.java"


# instance fields
.field private mAnrAnnotation:Ljava/lang/String;

.field private mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

.field final mApp:Lcom/android/server/am/ProcessRecord;

.field private mBad:Z

.field private mCrashHandler:Ljava/lang/Runnable;

.field private mCrashing:Z

.field private mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field private mDefered:Z

.field private final mDialogController:Lcom/android/server/am/ErrorDialogController;

.field private mErrorReportReceiver:Landroid/content/ComponentName;

.field private mForceCrashReport:Z

.field private mNotResponding:Z

.field private mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$JOKp8PxRjJQFJ_muW70RAHBH8YU(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$0(Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c5zFHPiux7b_-M_PDEnUwW2C7Uc(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZZ)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$3(Lcom/android/internal/os/anr/AnrLatencyTracker;ZZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eZUQOCpOor6oXa6JPGLeuoBuaSM(Lcom/android/server/am/ProcessErrorStateRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$hmeP4SgVM-wKLFwe9elqPdGyiMo(Lcom/android/server/am/ProcessErrorStateRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$iJnj86igrSWbTddnzSwFSnBtv04(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$1(Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$octgrxhn64OYe5xL8BSfI8AJY_I(IILjava/util/ArrayList;Landroid/util/SparseBooleanArray;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$2(IILjava/util/ArrayList;Landroid/util/SparseBooleanArray;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 294
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 296
    new-instance v0, Lcom/android/server/am/ErrorDialogController;

    invoke-direct {v0, p1}, Lcom/android/server/am/ErrorDialogController;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 297
    return-void
.end method

.method private buildMemoryHeadersFor(I)Ljava/util/LinkedHashMap;
    .locals 5
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 875
    const/4 v0, 0x0

    const-string v1, "ActivityManager"

    if-gtz p1, :cond_0

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Memory header requested with invalid pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-object v0

    .line 879
    :cond_0
    invoke-static {p1}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v2

    .line 880
    .local v2, "snapshot":Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v2, :cond_1

    .line 881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get memory snapshot for pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-object v0

    .line 885
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 886
    .local v0, "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RssHwmKb"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RssKb"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    iget v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RssAnonKb"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iget v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RssShmemKb"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget v1, v2, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "VmSwapKb"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    return-object v0
.end method

.method private getShowBackground()Z
    .locals 4

    .line 867
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 868
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 871
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 868
    const-string v2, "anr_show_background"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isInterestingForBackgroundTraces()Z
    .locals 3

    .line 848
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 849
    return v2

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    nop

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 862
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 863
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    nop

    .line 861
    :goto_1
    return v2
.end method

.method private isPerfettoDumpEnabled(Z)Z
    .locals 1
    .param p1, "isSilentAnr"    # Z

    .line 820
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isPerfettoDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    .line 821
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isPerfettoDumpEnabledOnBgApp()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 820
    :goto_0
    return v0
.end method

.method private isSmartTraceEnabled(Z)Z
    .locals 1
    .param p1, "isSilentAnr"    # Z

    .line 815
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isSmartTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    .line 816
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isSmartTraceEnabledOnBgApp()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 815
    :goto_0
    return v0
.end method

.method private synthetic lambda$appNotResponding$0(Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V
    .locals 5
    .param p1, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;
    .param p2, "annotation"    # Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    .line 344
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 345
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    .line 347
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrAnnotation(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v2, "anr"

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 349
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private synthetic lambda$appNotResponding$1(Lcom/android/internal/os/anr/AnrLatencyTracker;)V
    .locals 1
    .param p1, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 357
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->updateCpuStatsNowCalled()V

    .line 358
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 359
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->updateCpuStatsNowReturned()V

    .line 360
    return-void
.end method

.method private static synthetic lambda$appNotResponding$2(IILjava/util/ArrayList;Landroid/util/SparseBooleanArray;Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p0, "pid"    # I
    .param p1, "ppid"    # I
    .param p2, "firstPids"    # Ljava/util/ArrayList;
    .param p3, "lastPids"    # Landroid/util/SparseBooleanArray;
    .param p4, "r"    # Lcom/android/server/am/ProcessRecord;

    .line 441
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 443
    .local v0, "myPid":I
    if-lez v0, :cond_2

    if-eq v0, p0, :cond_2

    if-eq v0, p1, :cond_2

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_2

    .line 444
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_0

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding persistent proc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :cond_0
    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding likely IME: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 452
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding ANR proc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v0    # "myPid":I
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$appNotResponding$3(Lcom/android/internal/os/anr/AnrLatencyTracker;ZZZ)Ljava/util/ArrayList;
    .locals 8
    .param p1, "latencyTracker"    # Lcom/android/internal/os/anr/AnrLatencyTracker;
    .param p2, "isSilentAnr"    # Z
    .param p3, "onlyDumpSelf"    # Z
    .param p4, "smTraceEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 535
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->nativePidCollectionStarted()V

    .line 536
    const/4 v0, 0x0

    .line 539
    .local v0, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 540
    .local v1, "nativeProcs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :goto_0
    const/4 v2, 0x1

    .line 543
    .local v2, "isSystemApp":Z
    :goto_1
    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    goto :goto_2

    .line 558
    :cond_3
    if-eqz p4, :cond_4

    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isDumpPredefinedPidsEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 559
    :cond_4
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_7

    .line 544
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    sget-object v5, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 545
    sget-object v5, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 546
    iget-object v5, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 547
    goto :goto_4

    .line 544
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 550
    .end local v4    # "i":I
    :cond_6
    :goto_4
    if-nez v1, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v4

    .line 551
    .local v4, "pids":[I
    :goto_5
    if-eqz v4, :cond_8

    .line 552
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    .line 553
    array-length v5, v4

    :goto_6
    nop

    if-ge v3, v5, :cond_8

    aget v6, v4, v3

    .line 554
    .local v6, "i":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    .end local v6    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 557
    .end local v4    # "pids":[I
    :cond_8
    nop

    .line 562
    :cond_9
    :goto_7
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->nativePidCollectionEnded()V

    .line 563
    return-object v0
.end method

.method private synthetic lambda$appNotResponding$4()V
    .locals 5

    .line 754
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v2, "anr"

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 756
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 757
    return-void

    .line 756
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private synthetic lambda$appNotResponding$5()V
    .locals 3

    .line 759
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 761
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 762
    return-void

    .line 761
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;

    .line 801
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 804
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "activity":Ljava/lang/String;
    .end local p2    # "shortMsg":Ljava/lang/String;
    .end local p3    # "longMsg":Ljava/lang/String;
    .local v4, "activity":Ljava/lang/String;
    .local v5, "shortMsg":Ljava/lang/String;
    .local v6, "longMsg":Ljava/lang/String;
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    goto :goto_0

    .line 804
    .end local v4    # "activity":Ljava/lang/String;
    .end local v5    # "shortMsg":Ljava/lang/String;
    .end local v6    # "longMsg":Ljava/lang/String;
    .restart local p1    # "activity":Ljava/lang/String;
    .restart local p2    # "shortMsg":Ljava/lang/String;
    .restart local p3    # "longMsg":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 809
    .end local p1    # "activity":Ljava/lang/String;
    .end local p2    # "shortMsg":Ljava/lang/String;
    .end local p3    # "longMsg":Ljava/lang/String;
    .restart local v4    # "activity":Ljava/lang/String;
    .restart local v5    # "shortMsg":Ljava/lang/String;
    .restart local v6    # "longMsg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 810
    iget-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 811
    return-void
.end method

.method private shouldDeferAppNotResponding(Z)Z
    .locals 1
    .param p1, "isSilentAnr"    # Z

    .line 825
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->isSmartTraceEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->isPerfettoDumpEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 825
    :goto_1
    return v0
.end method


# virtual methods
.method appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Ljava/util/concurrent/ExecutorService;ZZLjava/util/concurrent/Future;)V
    .locals 64
    .param p1, "activityShortComponentName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "parentShortComponentName"    # Ljava/lang/String;
    .param p4, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p5, "aboveSystem"    # Z
    .param p6, "timeoutRecord"    # Lcom/android/internal/os/TimeoutRecord;
    .param p7, "auxiliaryTaskExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p8, "onlyDumpSelf"    # Z
    .param p9, "isContinuousAnr"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/WindowProcessController;",
            "Z",
            "Lcom/android/internal/os/TimeoutRecord;",
            "Ljava/util/concurrent/ExecutorService;",
            "ZZ",
            "Ljava/util/concurrent/Future<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 326
    .local p10, "firstPidFilePromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    iget-object v12, v9, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    .line 327
    .local v12, "annotation":Ljava/lang/String;
    iget-object v2, v9, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 328
    .local v2, "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    const/4 v0, 0x0

    .line 330
    .local v0, "updateCpuStatsNowFirstCall":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v3, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/util/SparseBooleanArray;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 332
    .local v4, "lastPids":Landroid/util/SparseBooleanArray;
    const/4 v5, 0x0

    .line 335
    .local v5, "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    invoke-virtual {v9}, Lcom/android/internal/os/TimeoutRecord;->closeExpiredTimer()V

    .line 337
    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 338
    const-string v11, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping debugged app ANR: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 342
    :cond_0
    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v11

    new-instance v13, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v13, v1, v2, v12}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 354
    .local v13, "anrTime":J
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 355
    new-instance v11, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object/from16 v28, v0

    goto :goto_0

    .line 354
    :cond_1
    move-object/from16 v28, v0

    .line 367
    .end local v0    # "updateCpuStatsNowFirstCall":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v28, "updateCpuStatsNowFirstCall":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    .line 368
    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11

    .line 369
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    .line 371
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    move v15, v0

    .line 373
    .local v15, "pid":I
    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrAnnotation(Ljava/lang/String;)V

    .line 375
    const-string/jumbo v0, "stability_anr.value_total_anrs"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessErrorStateRecord;->skipAnrLocked(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_20

    if-eqz v0, :cond_2

    .line 377
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkippedProcessErrorStateRecordAppNotResponding()V

    .line 378
    const-string/jumbo v0, "stability_anr.value_skipped_anrs"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 379
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 458
    .end local v15    # "pid":I
    :catchall_0
    move-exception v0

    move/from16 v9, p5

    move-object v15, v1

    move-object/from16 v41, v2

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object v8, v7

    move-object/from16 v16, v11

    move-object v4, v12

    move-wide/from16 v30, v13

    move/from16 v11, p9

    goto/16 :goto_2f

    .line 383
    .restart local v15    # "pid":I
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnProcLockStarted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_20

    .line 384
    move-object/from16 v21, v2

    .end local v2    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .local v21, "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    :try_start_3
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1f

    .line 385
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnProcLockEnded()V

    .line 386
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1c

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "timestamp":Ljava/time/ZonedDateTime;
    move-object/from16 v16, v11

    :try_start_5
    iget-wide v10, v9, Lcom/android/internal/os/TimeoutRecord;->mEndUptimeMillis:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1b

    const-wide/16 v22, 0x0

    cmp-long v10, v10, v22

    if-lez v10, :cond_3

    .line 390
    :try_start_6
    iget-wide v10, v9, Lcom/android/internal/os/TimeoutRecord;->mEndUptimeMillis:J

    sub-long v10, v13, v10

    .line 391
    .local v10, "millisSinceEndUptimeMs":J
    move-object/from16 v18, v0

    .end local v0    # "timestamp":Ljava/time/ZonedDateTime;
    .local v18, "timestamp":Ljava/time/ZonedDateTime;
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 392
    move-object/from16 v19, v5

    .end local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .local v19, "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    :try_start_7
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v18    # "timestamp":Ljava/time/ZonedDateTime;
    .restart local v0    # "timestamp":Ljava/time/ZonedDateTime;
    goto :goto_1

    .line 399
    .end local v0    # "timestamp":Ljava/time/ZonedDateTime;
    .end local v10    # "millisSinceEndUptimeMs":J
    :catchall_1
    move-exception v0

    move/from16 v9, p5

    move/from16 v11, p9

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object v8, v7

    move-object v4, v12

    move-wide/from16 v30, v13

    move/from16 v61, v15

    move-object/from16 v5, v19

    move-object/from16 v41, v21

    move-object v15, v1

    goto/16 :goto_2e

    .end local v19    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v9, p5

    move/from16 v11, p9

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object v8, v7

    move-object v4, v12

    move-wide/from16 v30, v13

    move/from16 v61, v15

    move-object/from16 v41, v21

    move-object v15, v1

    .end local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v19    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    goto/16 :goto_2e

    .line 389
    .end local v19    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v0    # "timestamp":Ljava/time/ZonedDateTime;
    .restart local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    :cond_3
    move-object/from16 v18, v0

    move-object/from16 v19, v5

    .line 395
    .end local v0    # "timestamp":Ljava/time/ZonedDateTime;
    .end local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v18    # "timestamp":Ljava/time/ZonedDateTime;
    .restart local v19    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    move-object/from16 v0, v18

    .end local v18    # "timestamp":Ljava/time/ZonedDateTime;
    .restart local v0    # "timestamp":Ljava/time/ZonedDateTime;
    :goto_1
    :try_start_8
    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 398
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v5

    .line 397
    invoke-static {v5, v0}, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->withProcessFrozenStateAndTimestamp(ZLjava/time/ZonedDateTime;)Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1a

    move-object/from16 v29, v5

    .line 399
    .end local v0    # "timestamp":Ljava/time/ZonedDateTime;
    .end local v19    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .local v29, "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_19

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 402
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 403
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v0, v2, v5, v10, v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 402
    const/16 v2, 0x7538

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 405
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_18

    if-eqz v0, :cond_4

    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 406
    invoke-virtual {v0}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v0}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v0

    .line 408
    .local v0, "errorId":Ljava/util/UUID;
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5, v15, v0}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    .line 410
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object v10, v0

    goto :goto_2

    .line 458
    .end local v0    # "errorId":Ljava/util/UUID;
    .end local v15    # "pid":I
    :catchall_3
    move-exception v0

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v15, v1

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object v8, v7

    move-object v4, v12

    move-wide/from16 v30, v13

    move-object/from16 v41, v21

    move-object/from16 v5, v29

    goto/16 :goto_2f

    .line 412
    .restart local v15    # "pid":I
    :cond_4
    const/4 v0, 0x0

    move-object v10, v0

    .line 419
    .local v10, "errorId":Ljava/util/UUID;
    :goto_2
    :try_start_c
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v2, 0x178

    invoke-static {v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 423
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_18

    move v2, v0

    .line 430
    .local v2, "isSilentAnr":Z
    if-nez v2, :cond_8

    if-nez p8, :cond_8

    .line 431
    move v0, v15

    .line 432
    .local v0, "parentPid":I
    if-eqz p4, :cond_5

    :try_start_d
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v11

    if-lez v11, :cond_5

    .line 433
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v11

    move v0, v11

    .line 435
    :cond_5
    if-eq v0, v15, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 437
    :cond_6
    :try_start_e
    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eq v11, v15, :cond_7

    :try_start_f
    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v11, v0, :cond_7

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 439
    :cond_7
    move v11, v0

    .line 440
    .local v11, "ppid":I
    :try_start_10
    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move/from16 v19, v0

    .end local v0    # "parentPid":I
    .local v19, "parentPid":I
    new-instance v0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;

    invoke-direct {v0, v15, v11, v3, v4}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;-><init>(IILjava/util/ArrayList;Landroid/util/SparseBooleanArray;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-object/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v20, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_11
    invoke-virtual {v5, v3, v0}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_3

    .line 458
    .end local v2    # "isSilentAnr":Z
    .end local v10    # "errorId":Ljava/util/UUID;
    .end local v11    # "ppid":I
    .end local v15    # "pid":I
    .end local v19    # "parentPid":I
    :catchall_4
    move-exception v0

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v15, v1

    move-object/from16 v34, v4

    move-object v8, v7

    move-object v4, v12

    move-wide/from16 v30, v13

    move-object/from16 v49, v20

    move-object/from16 v41, v21

    move-object/from16 v5, v29

    goto/16 :goto_2f

    .end local v20    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v20, v3

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v15, v1

    move-object/from16 v34, v4

    move-object v8, v7

    move-object v4, v12

    move-wide/from16 v30, v13

    move-object/from16 v49, v20

    move-object/from16 v41, v21

    move-object/from16 v5, v29

    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_2f

    .line 430
    .end local v20    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2    # "isSilentAnr":Z
    .restart local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "errorId":Ljava/util/UUID;
    .restart local v15    # "pid":I
    :cond_8
    move-object/from16 v20, v3

    .line 458
    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_3
    :try_start_12
    monitor-exit v16
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 460
    const/4 v3, 0x0

    invoke-direct {v1, v15}, Lcom/android/server/am/ProcessErrorStateRecord;->buildMemoryHeadersFor(I)Ljava/util/LinkedHashMap;

    move-result-object v18

    .line 463
    .local v18, "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/anr/AnrLatencyTracker;->criticalEventLogStarted()V

    .line 465
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 466
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v5

    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 465
    invoke-virtual {v0, v5, v11, v3}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForTraceFile(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 467
    .local v24, "criticalEventLog":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/anr/AnrLatencyTracker;->criticalEventLogEnded()V

    .line 468
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v11

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    move-wide/from16 v30, v13

    move/from16 v13, v16

    move/from16 v16, v0

    move-object v14, v3

    move v3, v15

    move v15, v5

    .end local v13    # "anrTime":J
    .end local v15    # "pid":I
    .local v3, "pid":I
    .local v30, "anrTime":J
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/criticalevents/CriticalEventLog;->logAnr(Ljava/lang/String;ILjava/lang/String;II)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    .line 473
    .local v11, "info":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 474
    const-string v0, "ANR in "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    if-eqz v6, :cond_9

    .line 476
    const-string v0, " ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_9
    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v0, "PID: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    if-eqz v12, :cond_a

    .line 481
    const-string v0, "Reason: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_a
    if-eqz v8, :cond_b

    .line 484
    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 485
    const-string v0, "Parent: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_b
    if-eqz v10, :cond_c

    .line 488
    const-string v0, "ErrorId: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_c
    const-string v0, "Frozen: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;

    move-result-object v13

    .line 497
    .local v13, "anrController":Landroid/app/AnrController;
    const-wide/16 v14, 0x0

    .line 498
    .local v14, "anrDialogDelayMs":J
    if-eqz v13, :cond_d

    .line 499
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 500
    .local v0, "packageName":Ljava/lang/String;
    iget v5, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 501
    .local v5, "uid":I
    invoke-interface {v13, v0, v5}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v14

    .line 504
    invoke-interface {v13, v0, v5}, Landroid/app/AnrController;->onAnrDelayStarted(Ljava/lang/String;I)V

    .line 505
    move/from16 v16, v3

    .end local v3    # "pid":I
    .local v16, "pid":I
    const-string v3, "ActivityManager"

    move-object/from16 v25, v4

    .end local v4    # "lastPids":Landroid/util/SparseBooleanArray;
    .local v25, "lastPids":Landroid/util/SparseBooleanArray;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v5

    .end local v5    # "uid":I
    .local v26, "uid":I
    const-string v5, "ANR delay of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms started for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 498
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v16    # "pid":I
    .end local v25    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v26    # "uid":I
    .restart local v3    # "pid":I
    .restart local v4    # "lastPids":Landroid/util/SparseBooleanArray;
    :cond_d
    move/from16 v16, v3

    move-object/from16 v25, v4

    .line 508
    .end local v3    # "pid":I
    .end local v4    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v16    # "pid":I
    .restart local v25    # "lastPids":Landroid/util/SparseBooleanArray;
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 510
    .local v3, "report":Ljava/lang/StringBuilder;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/anr/AnrLatencyTracker;->currentPsiStateCalled()V

    .line 511
    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "currentPsiState":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/anr/AnrLatencyTracker;->currentPsiStateReturned()V

    .line 513
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object/from16 v32, v0

    .line 524
    .local v32, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    move/from16 v17, v5

    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->isSmartTraceEnabled(Z)Z

    move-result v5

    .line 526
    .local v5, "smTraceEnabled":Z
    move/from16 v26, v2

    .end local v2    # "isSilentAnr":Z
    .local v26, "isSilentAnr":Z
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 528
    :try_start_13
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isDefered()Z

    move-result v0

    move/from16 v33, v0

    .line 530
    .local v33, "isDefered":Z
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 532
    new-instance v0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;

    move-object v7, v3

    move-object/from16 v36, v4

    move/from16 v6, v16

    move-object/from16 v2, v21

    move-object/from16 v34, v25

    move/from16 v3, v26

    move/from16 v4, p8

    .end local v4    # "currentPsiState":Ljava/lang/String;
    .end local v16    # "pid":I
    .end local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v25    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v26    # "isSilentAnr":Z
    .local v2, "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .local v3, "isSilentAnr":Z
    .local v6, "pid":I
    .local v7, "report":Ljava/lang/StringBuilder;
    .local v34, "lastPids":Landroid/util/SparseBooleanArray;
    .local v36, "currentPsiState":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZZ)V

    .line 533
    move v2, v3

    move/from16 v37, v5

    .end local v3    # "isSilentAnr":Z
    .end local v5    # "smTraceEnabled":Z
    .local v2, "isSilentAnr":Z
    .restart local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .local v37, "smTraceEnabled":Z
    move-object/from16 v3, p7

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 568
    .local v4, "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v5, v0

    .line 570
    .local v5, "tracesFileException":Ljava/io/StringWriter;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v16, v4

    .end local v4    # "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local v16, "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const-wide/16 v3, -0x1

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object/from16 v19, v0

    .line 571
    .local v19, "firstPidEndOffset":Ljava/util/concurrent/atomic/AtomicLong;
    nop

    .line 572
    move-object v4, v11

    if-eqz v2, :cond_e

    const/4 v11, 0x0

    goto :goto_5

    :cond_e
    move-object/from16 v11, v32

    .end local v11    # "info":Ljava/lang/StringBuilder;
    .local v4, "info":Ljava/lang/StringBuilder;
    :goto_5
    move-object/from16 v27, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v12

    if-eqz v2, :cond_f

    const/4 v12, 0x0

    goto :goto_6

    :cond_f
    move-object/from16 v12, v34

    .line 571
    .end local v12    # "annotation":Ljava/lang/String;
    .local v13, "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local v16, "annotation":Ljava/lang/String;
    .local v27, "anrController":Landroid/app/AnrController;
    :goto_6
    move-object v3, v4

    move-object v4, v10

    move-wide/from16 v39, v14

    move-object/from16 v15, v19

    move-object/from16 v10, v20

    move-object/from16 v38, v27

    move-object/from16 v19, p7

    move-object/from16 v20, p10

    move-object v14, v5

    move/from16 v5, v17

    move-object/from16 v17, v24

    .end local v5    # "tracesFileException":Ljava/io/StringWriter;
    .end local v19    # "firstPidEndOffset":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v20    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "criticalEventLog":Ljava/lang/String;
    .end local v27    # "anrController":Landroid/app/AnrController;
    .local v3, "info":Ljava/lang/StringBuilder;
    .local v4, "errorId":Ljava/util/UUID;
    .local v10, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v14, "tracesFileException":Ljava/io/StringWriter;
    .local v15, "firstPidEndOffset":Ljava/util/concurrent/atomic/AtomicLong;
    .local v17, "criticalEventLog":Ljava/lang/String;
    .local v38, "anrController":Landroid/app/AnrController;
    .local v39, "anrDialogDelayMs":J
    invoke-static/range {v10 .. v21}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v12

    .line 578
    move-object/from16 v44, v13

    move-object/from16 v45, v14

    move-object/from16 v46, v15

    move-object/from16 v13, v16

    move-object/from16 v43, v17

    move-object/from16 v42, v18

    move-object/from16 v41, v21

    move-object v14, v10

    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "firstPidEndOffset":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v16    # "annotation":Ljava/lang/String;
    .end local v17    # "criticalEventLog":Ljava/lang/String;
    .end local v18    # "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .local v12, "tracesFile":Ljava/io/File;
    .local v13, "annotation":Ljava/lang/String;
    .local v14, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v41, "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .local v42, "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v43, "criticalEventLog":Ljava/lang/String;
    .local v44, "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local v45, "tracesFileException":Ljava/io/StringWriter;
    .local v46, "firstPidEndOffset":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v15, 0x2710

    add-long v47, v10, v15

    .line 580
    .local v47, "dueTime":J
    if-eqz v37, :cond_10

    if-eqz v12, :cond_10

    .line 581
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 584
    .local v10, "time":J
    :try_start_14
    invoke-interface/range {v44 .. v44}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v6, v14, v0, v12}, Lcom/android/server/am/trace/SmartTraceUtils;->dumpStackTraces(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;)V

    .line 585
    const-string v0, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hit anr, dumpStackTraces cost "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18
    :try_end_14
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_2

    move-object/from16 v16, v4

    .end local v4    # "errorId":Ljava/util/UUID;
    .local v16, "errorId":Ljava/util/UUID;
    sub-long v4, v18, v10

    :try_start_15
    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  ms"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 585
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_0

    .line 593
    :goto_7
    goto :goto_a

    .line 591
    :catch_0
    move-exception v0

    goto :goto_8

    .line 589
    :catch_1
    move-exception v0

    goto :goto_9

    .line 591
    .end local v16    # "errorId":Ljava/util/UUID;
    .restart local v4    # "errorId":Ljava/util/UUID;
    :catch_2
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "errorId":Ljava/util/UUID;
    .restart local v16    # "errorId":Ljava/util/UUID;
    goto :goto_8

    .line 589
    .end local v16    # "errorId":Ljava/util/UUID;
    .restart local v4    # "errorId":Ljava/util/UUID;
    :catch_3
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "errorId":Ljava/util/UUID;
    .restart local v16    # "errorId":Ljava/util/UUID;
    goto :goto_9

    .line 591
    :goto_8
    nop

    .line 592
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "ActivityManager"

    const-string v5, "Failed to get native pids"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 589
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_9
    nop

    .line 590
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v4, "ActivityManager"

    const-string v5, "Failed to get native pids"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_7

    .line 580
    .end local v10    # "time":J
    .end local v16    # "errorId":Ljava/util/UUID;
    .restart local v4    # "errorId":Ljava/util/UUID;
    :cond_10
    move-object/from16 v16, v4

    .line 597
    .end local v4    # "errorId":Ljava/util/UUID;
    .restart local v16    # "errorId":Ljava/util/UUID;
    :goto_a
    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->isPerfettoDumpEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez v33, :cond_11

    .line 598
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->traceStart()Z

    .line 602
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 605
    :try_start_16
    invoke-interface/range {v28 .. v28}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_4

    .line 610
    :goto_b
    goto :goto_c

    .line 608
    :catch_4
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "ActivityManager"

    const-string v5, "Interrupted while updating the CPU stats"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 606
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v0

    .line 607
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v4, "ActivityManager"

    const-string v5, "Failed to update the CPU stats"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-static {v4, v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_b

    .line 611
    :goto_c
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 612
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move-wide/from16 v4, v30

    .end local v30    # "anrTime":J
    .local v4, "anrTime":J
    invoke-virtual {v0, v7, v4, v5}, Lcom/android/server/am/AppProfiler;->printCurrentCpuState(Ljava/lang/StringBuilder;J)V

    .line 613
    monitor-enter v32

    .line 614
    :try_start_17
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    monitor-exit v32
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 616
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 615
    :catchall_6
    move-exception v0

    :try_start_18
    monitor-exit v32
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    throw v0

    .line 602
    .end local v4    # "anrTime":J
    .restart local v30    # "anrTime":J
    :cond_12
    move-wide/from16 v4, v30

    .line 618
    .end local v30    # "anrTime":J
    .restart local v4    # "anrTime":J
    :goto_d
    invoke-virtual/range {v45 .. v45}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 620
    monitor-enter v32

    .line 621
    move-object/from16 v15, v32

    .end local v32    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v15, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    :try_start_19
    invoke-virtual {v15, v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    monitor-exit v15
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_13

    .line 624
    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->shouldDeferAppNotResponding(Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 625
    if-nez v33, :cond_14

    .line 626
    const-string v0, "ActivityManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 628
    .local v18, "now":J
    const-wide/16 v10, 0x0

    .line 629
    .local v10, "delay":J
    cmp-long v0, v47, v18

    if-gez v0, :cond_13

    .line 630
    const-wide/16 v10, 0x7d0

    goto :goto_e

    .line 632
    :cond_13
    sub-long v10, v47, v18

    .line 634
    :goto_e
    const-string v0, "ActivityManager"

    move/from16 v20, v2

    .end local v2    # "isSilentAnr":Z
    .local v20, "isSilentAnr":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    .end local v3    # "info":Ljava/lang/StringBuilder;
    .local v21, "info":Ljava/lang/StringBuilder;
    const-string v3, "Defer to handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ANR, delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    move-object v2, v1

    iget-object v1, v2, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v3, p2

    move-wide/from16 v30, v4

    move-object/from16 v53, v7

    move-object v4, v8

    move-object v8, v9

    move-wide v9, v10

    move-object/from16 v27, v12

    move-object/from16 v32, v13

    move-object/from16 v49, v14

    move-object/from16 v50, v16

    move/from16 v51, v20

    move-object/from16 v52, v21

    const/4 v14, 0x1

    move-object/from16 v5, p4

    move-object/from16 v7, p7

    move/from16 v11, p9

    move-object v12, v2

    move v13, v6

    move-object/from16 v2, p1

    move/from16 v6, p5

    .end local v4    # "anrTime":J
    .end local v6    # "pid":I
    .end local v7    # "report":Ljava/lang/StringBuilder;
    .end local v10    # "delay":J
    .end local v12    # "tracesFile":Ljava/io/File;
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "errorId":Ljava/util/UUID;
    .end local v20    # "isSilentAnr":Z
    .end local v21    # "info":Ljava/lang/StringBuilder;
    .local v9, "delay":J
    .local v13, "pid":I
    .local v27, "tracesFile":Ljava/io/File;
    .restart local v30    # "anrTime":J
    .local v32, "annotation":Ljava/lang/String;
    .local v49, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v50, "errorId":Ljava/util/UUID;
    .local v51, "isSilentAnr":Z
    .local v52, "info":Ljava/lang/StringBuilder;
    .local v53, "report":Ljava/lang/StringBuilder;
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/AnrHelper;->deferAppNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/util/concurrent/ExecutorService;Lcom/android/internal/os/TimeoutRecord;JZ)V

    .line 641
    iget-object v1, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 642
    :try_start_1a
    invoke-virtual {v12, v14}, Lcom/android/server/am/ProcessErrorStateRecord;->setDefered(Z)V

    .line 643
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 644
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 645
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 646
    return-void

    .line 645
    :catchall_7
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 648
    .end local v9    # "delay":J
    .end local v18    # "now":J
    .end local v27    # "tracesFile":Ljava/io/File;
    .end local v30    # "anrTime":J
    .end local v32    # "annotation":Ljava/lang/String;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v50    # "errorId":Ljava/util/UUID;
    .end local v51    # "isSilentAnr":Z
    .end local v52    # "info":Ljava/lang/StringBuilder;
    .end local v53    # "report":Ljava/lang/StringBuilder;
    .restart local v2    # "isSilentAnr":Z
    .restart local v3    # "info":Ljava/lang/StringBuilder;
    .restart local v4    # "anrTime":J
    .restart local v6    # "pid":I
    .restart local v7    # "report":Ljava/lang/StringBuilder;
    .restart local v12    # "tracesFile":Ljava/io/File;
    .local v13, "annotation":Ljava/lang/String;
    .restart local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16    # "errorId":Ljava/util/UUID;
    :cond_14
    move/from16 v51, v2

    move-object/from16 v52, v3

    move-wide/from16 v30, v4

    move-object/from16 v53, v7

    move-object/from16 v27, v12

    move-object/from16 v32, v13

    move-object/from16 v49, v14

    move-object/from16 v50, v16

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x1

    move-object v12, v1

    move v13, v6

    .end local v2    # "isSilentAnr":Z
    .end local v3    # "info":Ljava/lang/StringBuilder;
    .end local v4    # "anrTime":J
    .end local v6    # "pid":I
    .end local v7    # "report":Ljava/lang/StringBuilder;
    .end local v12    # "tracesFile":Ljava/io/File;
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "errorId":Ljava/util/UUID;
    .local v13, "pid":I
    .restart local v27    # "tracesFile":Ljava/io/File;
    .restart local v30    # "anrTime":J
    .restart local v32    # "annotation":Ljava/lang/String;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v50    # "errorId":Ljava/util/UUID;
    .restart local v51    # "isSilentAnr":Z
    .restart local v52    # "info":Ljava/lang/StringBuilder;
    .restart local v53    # "report":Ljava/lang/StringBuilder;
    iget-object v1, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 649
    :try_start_1c
    invoke-virtual {v12, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setDefered(Z)V

    .line 650
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 651
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has been defered, handle anr right now  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 650
    :catchall_8
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 654
    .end local v27    # "tracesFile":Ljava/io/File;
    .end local v30    # "anrTime":J
    .end local v32    # "annotation":Ljava/lang/String;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v50    # "errorId":Ljava/util/UUID;
    .end local v51    # "isSilentAnr":Z
    .end local v52    # "info":Ljava/lang/StringBuilder;
    .end local v53    # "report":Ljava/lang/StringBuilder;
    .restart local v2    # "isSilentAnr":Z
    .restart local v3    # "info":Ljava/lang/StringBuilder;
    .restart local v4    # "anrTime":J
    .restart local v6    # "pid":I
    .restart local v7    # "report":Ljava/lang/StringBuilder;
    .restart local v12    # "tracesFile":Ljava/io/File;
    .local v13, "annotation":Ljava/lang/String;
    .restart local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16    # "errorId":Ljava/util/UUID;
    :cond_15
    move/from16 v51, v2

    move-object/from16 v52, v3

    move-wide/from16 v30, v4

    move-object/from16 v53, v7

    move-object/from16 v27, v12

    move-object/from16 v32, v13

    move-object/from16 v49, v14

    move-object/from16 v50, v16

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x1

    move-object v12, v1

    move v13, v6

    .end local v2    # "isSilentAnr":Z
    .end local v3    # "info":Ljava/lang/StringBuilder;
    .end local v4    # "anrTime":J
    .end local v6    # "pid":I
    .end local v7    # "report":Ljava/lang/StringBuilder;
    .end local v12    # "tracesFile":Ljava/io/File;
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "errorId":Ljava/util/UUID;
    .local v13, "pid":I
    .restart local v27    # "tracesFile":Ljava/io/File;
    .restart local v30    # "anrTime":J
    .restart local v32    # "annotation":Ljava/lang/String;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v50    # "errorId":Ljava/util/UUID;
    .restart local v51    # "isSilentAnr":Z
    .restart local v52    # "info":Ljava/lang/StringBuilder;
    .restart local v53    # "report":Ljava/lang/StringBuilder;
    const-string v0, "ActivityManager"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :goto_f
    if-nez v27, :cond_16

    .line 660
    const/4 v0, 0x3

    invoke-static {v13, v0}, Landroid/os/Process;->sendSignal(II)V

    move/from16 v16, v13

    move-object/from16 v35, v15

    move-object/from16 v54, v27

    goto :goto_10

    .line 661
    :cond_16
    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v22

    if-lez v0, :cond_17

    .line 665
    const-wide/16 v0, 0x0

    .line 666
    .local v0, "startOffset":J
    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v22

    .line 667
    .local v22, "endOffset":J
    iget-object v4, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v5, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 668
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v18

    .line 667
    const-wide/16 v20, 0x0

    move/from16 v17, v5

    move/from16 v16, v13

    move-object/from16 v35, v15

    move-object/from16 v19, v27

    move-object v15, v4

    .end local v13    # "pid":I
    .end local v15    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v27    # "tracesFile":Ljava/io/File;
    .local v16, "pid":I
    .local v19, "tracesFile":Ljava/io/File;
    .local v35, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    invoke-virtual/range {v15 .. v23}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V

    move-object/from16 v54, v19

    .end local v19    # "tracesFile":Ljava/io/File;
    .local v54, "tracesFile":Ljava/io/File;
    goto :goto_10

    .line 661
    .end local v0    # "startOffset":J
    .end local v16    # "pid":I
    .end local v22    # "endOffset":J
    .end local v35    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v54    # "tracesFile":Ljava/io/File;
    .restart local v13    # "pid":I
    .restart local v15    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v27    # "tracesFile":Ljava/io/File;
    :cond_17
    move/from16 v16, v13

    move-object/from16 v35, v15

    move-object/from16 v54, v27

    .line 672
    .end local v13    # "pid":I
    .end local v15    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v27    # "tracesFile":Ljava/io/File;
    .restart local v16    # "pid":I
    .restart local v35    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v54    # "tracesFile":Ljava/io/File;
    :goto_10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 673
    .local v0, "loadingProgress":F
    const/4 v1, 0x0

    .line 674
    .local v1, "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    iget-object v4, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    .line 675
    .local v4, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v5, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v5, :cond_19

    iget-object v5, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_19

    if-eqz v4, :cond_19

    .line 676
    iget-object v5, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 677
    const/16 v8, 0x3e8

    invoke-virtual {v4, v5, v8, v7}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v5

    .line 679
    .local v5, "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    if-eqz v5, :cond_18

    .line 680
    invoke-virtual {v5}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v0

    .line 682
    :cond_18
    iget-object v7, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v7

    .line 683
    .local v7, "codePath":Ljava/lang/String;
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_19

    .line 684
    invoke-static {v7}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 686
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App ANR on incremental package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " which is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v10, v0, v6

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "% loaded."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string/jumbo v8, "incremental"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 690
    .local v8, "incrementalService":Landroid/os/IBinder;
    if-eqz v8, :cond_19

    .line 691
    new-instance v9, Landroid/os/incremental/IncrementalManager;

    .line 692
    invoke-static {v8}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 693
    .local v9, "incrementalManager":Landroid/os/incremental/IncrementalManager;
    invoke-virtual {v9, v7}, Landroid/os/incremental/IncrementalManager;->getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;

    move-result-object v1

    move v10, v0

    move-object/from16 v55, v1

    goto :goto_11

    .line 697
    .end local v5    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .end local v7    # "codePath":Ljava/lang/String;
    .end local v8    # "incrementalService":Landroid/os/IBinder;
    .end local v9    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    :cond_19
    move v10, v0

    move-object/from16 v55, v1

    .end local v0    # "loadingProgress":F
    .end local v1    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .local v10, "loadingProgress":F
    .local v55, "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    :goto_11
    if-eqz v55, :cond_1a

    .line 699
    const-string v0, "Package is "

    move-object/from16 v1, v52

    .end local v52    # "info":Ljava/lang/StringBuilder;
    .local v1, "info":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v6, v10

    float-to-int v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "% loaded.\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 697
    .end local v1    # "info":Ljava/lang/StringBuilder;
    .restart local v52    # "info":Ljava/lang/StringBuilder;
    :cond_1a
    move-object/from16 v1, v52

    .line 702
    .end local v52    # "info":Ljava/lang/StringBuilder;
    .restart local v1    # "info":Ljava/lang/StringBuilder;
    :goto_12
    iget-object v0, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 703
    if-nez p1, :cond_1b

    const-string/jumbo v6, "unknown"

    goto :goto_13

    :cond_1b
    move-object/from16 v6, p1

    .line 705
    :goto_13
    iget-object v7, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x2

    if-eqz v7, :cond_1d

    iget-object v7, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 706
    move-object/from16 v24, v2

    move-object v2, v5

    move v5, v8

    goto :goto_14

    .line 707
    :cond_1c
    move-object/from16 v24, v2

    move-object v2, v5

    move v5, v14

    goto :goto_14

    .line 708
    :cond_1d
    move-object/from16 v24, v2

    move-object v2, v5

    move v5, v3

    .line 709
    :goto_14
    iget-object v7, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 710
    move/from16 v18, v3

    move-object v3, v6

    move v6, v8

    goto :goto_15

    .line 711
    :cond_1e
    move/from16 v18, v3

    move-object v3, v6

    move v6, v14

    :goto_15
    iget-object v7, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 712
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v7

    .line 713
    iget-object v9, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_1f

    iget-object v9, v12, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_16

    :cond_1f
    const-string v9, ""

    :goto_16
    move v11, v8

    move-object v8, v9

    if-eqz v55, :cond_20

    move v9, v14

    goto :goto_17

    :cond_20
    move/from16 v9, v18

    .line 715
    :goto_17
    if-eqz v55, :cond_21

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceOldestPendingRead()J

    move-result-wide v19

    goto :goto_18

    .line 716
    :cond_21
    const-wide/16 v19, -0x1

    .line 717
    :goto_18
    const/4 v13, -0x1

    if-eqz v55, :cond_22

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getStorageHealthStatusCode()I

    move-result v15

    goto :goto_19

    .line 718
    :cond_22
    move v15, v13

    .line 719
    :goto_19
    if-eqz v55, :cond_23

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderStatusCode()I

    move-result v17

    goto :goto_1a

    .line 720
    :cond_23
    move/from16 v17, v13

    :goto_1a
    if-eqz v55, :cond_24

    .line 721
    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getReadLogsEnabled()Z

    move-result v21

    if-eqz v21, :cond_24

    move/from16 v21, v13

    move v13, v15

    move v15, v14

    goto :goto_1b

    :cond_24
    move/from16 v21, v13

    move v13, v15

    move/from16 v15, v18

    .line 722
    :goto_1b
    if-eqz v55, :cond_25

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastDataLoaderBind()J

    move-result-wide v22

    goto :goto_1c

    .line 723
    :cond_25
    const-wide/16 v22, -0x1

    .line 724
    :goto_1c
    if-eqz v55, :cond_26

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderBindDelayMillis()J

    move-result-wide v56

    goto :goto_1d

    .line 725
    :cond_26
    const-wide/16 v56, -0x1

    .line 726
    :goto_1d
    if-eqz v55, :cond_27

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReads()I

    move-result v27

    goto :goto_1e

    .line 727
    :cond_27
    move/from16 v27, v21

    .line 728
    :goto_1e
    if-eqz v55, :cond_28

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getTotalFailedReads()I

    move-result v52

    goto :goto_1f

    .line 729
    :cond_28
    move/from16 v52, v21

    .line 730
    :goto_1f
    if-eqz v55, :cond_29

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorUid()I

    move-result v21

    goto :goto_20

    .line 731
    :cond_29
    nop

    .line 732
    :goto_20
    if-eqz v55, :cond_2a

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastReadError()J

    move-result-wide v58

    goto :goto_21

    .line 733
    :cond_2a
    const-wide/16 v58, -0x1

    .line 734
    :goto_21
    if-eqz v55, :cond_2b

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorNumber()I

    move-result v18

    goto :goto_22

    .line 735
    :cond_2b
    nop

    .line 736
    :goto_22
    if-eqz v55, :cond_2c

    invoke-virtual/range {v55 .. v55}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReadsDurationMillis()J

    move-result-wide v25

    goto :goto_23

    .line 737
    :cond_2c
    const-wide/16 v25, -0x1

    .line 702
    :goto_23
    move-object/from16 v60, v1

    move v1, v0

    .end local v1    # "info":Ljava/lang/StringBuilder;
    .local v60, "info":Ljava/lang/StringBuilder;
    const/16 v0, 0x4f

    move/from16 v61, v16

    move/from16 v14, v17

    move-wide/from16 v11, v19

    move-wide/from16 v16, v22

    move/from16 v20, v27

    move/from16 v22, v21

    move-wide/from16 v26, v25

    move/from16 v21, v52

    move-object/from16 v52, v4

    move/from16 v25, v18

    move-object/from16 v4, v32

    move-wide/from16 v18, v56

    move-object/from16 v32, v24

    move-wide/from16 v23, v58

    .end local v16    # "pid":I
    .end local v32    # "annotation":Ljava/lang/String;
    .local v4, "annotation":Ljava/lang/String;
    .local v52, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .local v61, "pid":I
    invoke-static/range {v0 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZFJIIZJJIIIJIJ)V

    .line 738
    move-object v15, v4

    move v1, v10

    .end local v4    # "annotation":Ljava/lang/String;
    .end local v10    # "loadingProgress":F
    .local v1, "loadingProgress":F
    .local v15, "annotation":Ljava/lang/String;
    move-object/from16 v2, p4

    if-eqz v2, :cond_2d

    .line 739
    iget-object v0, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    move-object v6, v3

    goto :goto_24

    :cond_2d
    move-object/from16 v6, v32

    .line 743
    .local v6, "parentPr":Lcom/android/server/am/ProcessRecord;
    :goto_24
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_AM_DEBUG_HELPER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/INtAmDebugHelper;

    .line 744
    move-object/from16 v13, v50

    move/from16 v3, v61

    .end local v50    # "errorId":Ljava/util/UUID;
    .end local v61    # "pid":I
    .local v3, "pid":I
    .local v13, "errorId":Ljava/util/UUID;
    invoke-interface {v0, v3, v13}, Lcom/android/server/am/INtAmDebugHelper;->waitFor(ILjava/util/UUID;)V

    .line 747
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "anr"

    iget-object v2, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 748
    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/Float;

    invoke-direct {v11, v1}, Ljava/lang/Float;-><init>(F)V

    .line 747
    move/from16 v16, v3

    move-object v3, v7

    .end local v3    # "pid":I
    .restart local v16    # "pid":I
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v32, v15

    move/from16 v61, v16

    move-object/from16 v14, v29

    move-object/from16 v9, v54

    move-object/from16 v12, v55

    move/from16 v16, v1

    move-object v15, v4

    move-object v1, v5

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    .end local v1    # "loadingProgress":F
    .end local v15    # "annotation":Ljava/lang/String;
    .end local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v54    # "tracesFile":Ljava/io/File;
    .end local v55    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .local v9, "tracesFile":Ljava/io/File;
    .local v12, "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .local v14, "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .local v16, "loadingProgress":F
    .restart local v32    # "annotation":Ljava/lang/String;
    .restart local v61    # "pid":I
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    .line 752
    move-object v1, v6

    move-object v6, v4

    .end local v6    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "tracesFile":Ljava/io/File;
    .local v1, "parentPr":Lcom/android/server/am/ProcessRecord;
    .restart local v54    # "tracesFile":Ljava/io/File;
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;

    invoke-direct {v3, v15}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    new-instance v4, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda5;

    invoke-direct {v4, v15}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 763
    return-void

    .line 766
    :cond_2e
    iget-object v2, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 769
    :try_start_1e
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    if-eqz v0, :cond_2f

    .line 770
    :try_start_1f
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    goto :goto_25

    .line 796
    :catchall_9
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v7, v1

    move-object v10, v2

    move-object/from16 v4, v32

    move-object/from16 v5, v38

    move-wide/from16 v1, v39

    goto/16 :goto_2a

    .line 773
    :cond_2f
    :goto_25
    :try_start_20
    invoke-virtual {v15}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    if-eqz v0, :cond_30

    :try_start_21
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v0

    if-nez v0, :cond_30

    .line 774
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v3, "bg anr"

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 775
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 778
    :cond_30
    :try_start_22
    iget-object v3, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    .line 780
    nop

    .line 781
    if-eqz v32, :cond_31

    :try_start_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    move-object/from16 v4, v32

    .end local v32    # "annotation":Ljava/lang/String;
    .restart local v4    # "annotation":Ljava/lang/String;
    :try_start_24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    goto :goto_26

    .line 783
    :catchall_a
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v7, v1

    move-object v10, v2

    move-object/from16 v5, v38

    move-wide/from16 v1, v39

    goto/16 :goto_29

    .end local v4    # "annotation":Ljava/lang/String;
    .restart local v32    # "annotation":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v4, v32

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v7, v1

    move-object v10, v2

    move-object/from16 v5, v38

    move-wide/from16 v1, v39

    .end local v32    # "annotation":Ljava/lang/String;
    .restart local v4    # "annotation":Ljava/lang/String;
    goto/16 :goto_29

    .line 781
    .end local v4    # "annotation":Ljava/lang/String;
    .restart local v32    # "annotation":Ljava/lang/String;
    :cond_31
    move-object/from16 v4, v32

    .end local v32    # "annotation":Ljava/lang/String;
    .restart local v4    # "annotation":Ljava/lang/String;
    :try_start_25
    const-string v0, "ANR"

    :goto_26
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 780
    invoke-direct {v15, v6, v0, v5}, Lcom/android/server/am/ProcessErrorStateRecord;->makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    move-object/from16 v5, v38

    .end local v38    # "anrController":Landroid/app/AnrController;
    .local v5, "anrController":Landroid/app/AnrController;
    :try_start_26
    invoke-virtual {v0, v5}, Lcom/android/server/am/ErrorDialogController;->setAnrController(Landroid/app/AnrController;)V

    .line 783
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    :try_start_27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 787
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_32

    .line 789
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 790
    .local v0, "msg":Landroid/os/Message;
    const/4 v11, 0x2

    iput v11, v0, Landroid/os/Message;->what:I

    .line 791
    new-instance v3, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v7, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v11, p9

    :try_start_28
    invoke-direct {v3, v7, v8, v9, v11}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;ZZ)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 794
    iget-object v3, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    move-object v7, v1

    move-object v10, v2

    move-wide/from16 v1, v39

    .end local v39    # "anrDialogDelayMs":J
    .local v1, "anrDialogDelayMs":J
    .local v7, "parentPr":Lcom/android/server/am/ProcessRecord;
    :try_start_29
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_28

    .line 796
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_c
    move-exception v0

    goto/16 :goto_2a

    .end local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .local v1, "parentPr":Lcom/android/server/am/ProcessRecord;
    .restart local v39    # "anrDialogDelayMs":J
    :catchall_d
    move-exception v0

    :goto_27
    move-object v7, v1

    move-object v10, v2

    move-wide/from16 v1, v39

    .end local v39    # "anrDialogDelayMs":J
    .local v1, "anrDialogDelayMs":J
    .restart local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    goto :goto_2a

    .end local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .local v1, "parentPr":Lcom/android/server/am/ProcessRecord;
    .restart local v39    # "anrDialogDelayMs":J
    :catchall_e
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v11, p9

    goto :goto_27

    .line 787
    :cond_32
    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v7, v1

    move-object v10, v2

    move-wide/from16 v1, v39

    .line 796
    .end local v39    # "anrDialogDelayMs":J
    .local v1, "anrDialogDelayMs":J
    .restart local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    :goto_28
    monitor-exit v10
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 797
    return-void

    .line 783
    .end local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .local v1, "parentPr":Lcom/android/server/am/ProcessRecord;
    .restart local v39    # "anrDialogDelayMs":J
    :catchall_f
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v7, v1

    move-object v10, v2

    move-wide/from16 v1, v39

    .end local v39    # "anrDialogDelayMs":J
    .local v1, "anrDialogDelayMs":J
    .restart local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    goto :goto_29

    .end local v5    # "anrController":Landroid/app/AnrController;
    .end local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .local v1, "parentPr":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "anrController":Landroid/app/AnrController;
    .restart local v39    # "anrDialogDelayMs":J
    :catchall_10
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v7, v1

    move-object v10, v2

    move-object/from16 v5, v38

    move-wide/from16 v1, v39

    .end local v38    # "anrController":Landroid/app/AnrController;
    .end local v39    # "anrDialogDelayMs":J
    .local v1, "anrDialogDelayMs":J
    .restart local v5    # "anrController":Landroid/app/AnrController;
    .restart local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    :goto_29
    :try_start_2a
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    :try_start_2b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v1    # "anrDialogDelayMs":J
    .end local v4    # "annotation":Ljava/lang/String;
    .end local v5    # "anrController":Landroid/app/AnrController;
    .end local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .end local v13    # "errorId":Ljava/util/UUID;
    .end local v14    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v16    # "loadingProgress":F
    .end local v28    # "updateCpuStatsNowFirstCall":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v30    # "anrTime":J
    .end local v33    # "isDefered":Z
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v35    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v36    # "currentPsiState":Ljava/lang/String;
    .end local v37    # "smTraceEnabled":Z
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v42    # "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v43    # "criticalEventLog":Ljava/lang/String;
    .end local v44    # "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v45    # "tracesFileException":Ljava/io/StringWriter;
    .end local v46    # "firstPidEndOffset":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v47    # "dueTime":J
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v51    # "isSilentAnr":Z
    .end local v52    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v53    # "report":Ljava/lang/StringBuilder;
    .end local v54    # "tracesFile":Ljava/io/File;
    .end local v60    # "info":Ljava/lang/StringBuilder;
    .end local v61    # "pid":I
    .end local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local p1    # "activityShortComponentName":Ljava/lang/String;
    .end local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local p3    # "parentShortComponentName":Ljava/lang/String;
    .end local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .end local p5    # "aboveSystem":Z
    .end local p6    # "timeoutRecord":Lcom/android/internal/os/TimeoutRecord;
    .end local p7    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    .end local p8    # "onlyDumpSelf":Z
    .end local p9    # "isContinuousAnr":Z
    .end local p10    # "firstPidFilePromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    throw v0

    .restart local v1    # "anrDialogDelayMs":J
    .restart local v4    # "annotation":Ljava/lang/String;
    .restart local v5    # "anrController":Landroid/app/AnrController;
    .restart local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .restart local v12    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .restart local v13    # "errorId":Ljava/util/UUID;
    .restart local v14    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v16    # "loadingProgress":F
    .restart local v28    # "updateCpuStatsNowFirstCall":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .restart local v30    # "anrTime":J
    .restart local v33    # "isDefered":Z
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v35    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v36    # "currentPsiState":Ljava/lang/String;
    .restart local v37    # "smTraceEnabled":Z
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v42    # "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v43    # "criticalEventLog":Ljava/lang/String;
    .restart local v44    # "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v45    # "tracesFileException":Ljava/io/StringWriter;
    .restart local v46    # "firstPidEndOffset":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v47    # "dueTime":J
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v51    # "isSilentAnr":Z
    .restart local v52    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v53    # "report":Ljava/lang/StringBuilder;
    .restart local v54    # "tracesFile":Ljava/io/File;
    .restart local v60    # "info":Ljava/lang/StringBuilder;
    .restart local v61    # "pid":I
    .restart local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local p1    # "activityShortComponentName":Ljava/lang/String;
    .restart local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "parentShortComponentName":Ljava/lang/String;
    .restart local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .restart local p5    # "aboveSystem":Z
    .restart local p6    # "timeoutRecord":Lcom/android/internal/os/TimeoutRecord;
    .restart local p7    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    .restart local p8    # "onlyDumpSelf":Z
    .restart local p9    # "isContinuousAnr":Z
    .restart local p10    # "firstPidFilePromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    :catchall_11
    move-exception v0

    goto :goto_29

    .line 796
    .end local v4    # "annotation":Ljava/lang/String;
    .end local v5    # "anrController":Landroid/app/AnrController;
    .end local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .local v1, "parentPr":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "annotation":Ljava/lang/String;
    .restart local v38    # "anrController":Landroid/app/AnrController;
    .restart local v39    # "anrDialogDelayMs":J
    :catchall_12
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v7, v1

    move-object v10, v2

    move-object/from16 v4, v32

    move-object/from16 v5, v38

    move-wide/from16 v1, v39

    .end local v32    # "annotation":Ljava/lang/String;
    .end local v38    # "anrController":Landroid/app/AnrController;
    .end local v39    # "anrDialogDelayMs":J
    .local v1, "anrDialogDelayMs":J
    .restart local v4    # "annotation":Ljava/lang/String;
    .restart local v5    # "anrController":Landroid/app/AnrController;
    .restart local v7    # "parentPr":Lcom/android/server/am/ProcessRecord;
    :goto_2a
    monitor-exit v10
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 622
    .end local v1    # "anrDialogDelayMs":J
    .end local v5    # "anrController":Landroid/app/AnrController;
    .end local v30    # "anrTime":J
    .end local v35    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v51    # "isSilentAnr":Z
    .end local v52    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v53    # "report":Ljava/lang/StringBuilder;
    .end local v54    # "tracesFile":Ljava/io/File;
    .end local v60    # "info":Ljava/lang/StringBuilder;
    .end local v61    # "pid":I
    .restart local v2    # "isSilentAnr":Z
    .local v3, "info":Ljava/lang/StringBuilder;
    .local v4, "anrTime":J
    .local v6, "pid":I
    .local v7, "report":Ljava/lang/StringBuilder;
    .local v12, "tracesFile":Ljava/io/File;
    .local v13, "annotation":Ljava/lang/String;
    .local v14, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v15, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v16, "errorId":Ljava/util/UUID;
    .restart local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v38    # "anrController":Landroid/app/AnrController;
    .restart local v39    # "anrDialogDelayMs":J
    :catchall_13
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v11, p9

    move/from16 v51, v2

    move-object/from16 v60, v3

    move-wide/from16 v30, v4

    move/from16 v61, v6

    move-object/from16 v53, v7

    move-object/from16 v54, v12

    move-object v4, v13

    move-object/from16 v49, v14

    move-object/from16 v35, v15

    move-object/from16 v13, v16

    move-object/from16 v14, v29

    move-object/from16 v5, v38

    move-object/from16 v6, p1

    move-object v15, v1

    move-wide/from16 v1, v39

    .end local v2    # "isSilentAnr":Z
    .end local v3    # "info":Ljava/lang/StringBuilder;
    .end local v6    # "pid":I
    .end local v7    # "report":Ljava/lang/StringBuilder;
    .end local v12    # "tracesFile":Ljava/io/File;
    .end local v15    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v16    # "errorId":Ljava/util/UUID;
    .end local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v38    # "anrController":Landroid/app/AnrController;
    .end local v39    # "anrDialogDelayMs":J
    .restart local v1    # "anrDialogDelayMs":J
    .local v4, "annotation":Ljava/lang/String;
    .restart local v5    # "anrController":Landroid/app/AnrController;
    .local v13, "errorId":Ljava/util/UUID;
    .local v14, "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v30    # "anrTime":J
    .restart local v35    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v51    # "isSilentAnr":Z
    .restart local v53    # "report":Ljava/lang/StringBuilder;
    .restart local v54    # "tracesFile":Ljava/io/File;
    .restart local v60    # "info":Ljava/lang/StringBuilder;
    .restart local v61    # "pid":I
    :goto_2b
    :try_start_2c
    monitor-exit v35
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    throw v0

    :catchall_14
    move-exception v0

    goto :goto_2b

    .line 530
    .end local v1    # "anrDialogDelayMs":J
    .end local v33    # "isDefered":Z
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v35    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v36    # "currentPsiState":Ljava/lang/String;
    .end local v37    # "smTraceEnabled":Z
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v42    # "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v43    # "criticalEventLog":Ljava/lang/String;
    .end local v44    # "nativePidsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v45    # "tracesFileException":Ljava/io/StringWriter;
    .end local v46    # "firstPidEndOffset":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v47    # "dueTime":J
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v51    # "isSilentAnr":Z
    .end local v53    # "report":Ljava/lang/StringBuilder;
    .end local v54    # "tracesFile":Ljava/io/File;
    .end local v60    # "info":Ljava/lang/StringBuilder;
    .end local v61    # "pid":I
    .local v3, "report":Ljava/lang/StringBuilder;
    .local v4, "currentPsiState":Ljava/lang/String;
    .local v5, "smTraceEnabled":Z
    .local v10, "errorId":Ljava/util/UUID;
    .restart local v11    # "info":Ljava/lang/StringBuilder;
    .local v12, "annotation":Ljava/lang/String;
    .local v13, "anrController":Landroid/app/AnrController;
    .local v14, "anrDialogDelayMs":J
    .local v16, "pid":I
    .local v18, "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v20, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v21, "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v24    # "criticalEventLog":Ljava/lang/String;
    .restart local v25    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v26    # "isSilentAnr":Z
    .restart local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .local v32, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    :catchall_15
    move-exception v0

    move/from16 v9, p5

    move-object/from16 v53, v3

    move-object/from16 v36, v4

    move/from16 v37, v5

    move-object v8, v7

    move-object/from16 v60, v11

    move-object v4, v12

    move-object v5, v13

    move/from16 v61, v16

    move-object/from16 v42, v18

    move-object/from16 v49, v20

    move-object/from16 v41, v21

    move-object/from16 v43, v24

    move-object/from16 v34, v25

    move/from16 v51, v26

    move-object/from16 v35, v32

    move/from16 v11, p9

    move-object v3, v2

    move-object v13, v10

    move-wide/from16 v62, v14

    move-object v15, v1

    move-wide/from16 v1, v62

    move-object/from16 v14, v29

    .end local v3    # "report":Ljava/lang/StringBuilder;
    .end local v10    # "errorId":Ljava/util/UUID;
    .end local v11    # "info":Ljava/lang/StringBuilder;
    .end local v12    # "annotation":Ljava/lang/String;
    .end local v16    # "pid":I
    .end local v18    # "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v24    # "criticalEventLog":Ljava/lang/String;
    .end local v25    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v26    # "isSilentAnr":Z
    .end local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v32    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v1    # "anrDialogDelayMs":J
    .local v4, "annotation":Ljava/lang/String;
    .local v5, "anrController":Landroid/app/AnrController;
    .local v13, "errorId":Ljava/util/UUID;
    .local v14, "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v35    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v36    # "currentPsiState":Ljava/lang/String;
    .restart local v37    # "smTraceEnabled":Z
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v42    # "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v43    # "criticalEventLog":Ljava/lang/String;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v51    # "isSilentAnr":Z
    .restart local v53    # "report":Ljava/lang/StringBuilder;
    .restart local v60    # "info":Ljava/lang/StringBuilder;
    .restart local v61    # "pid":I
    :goto_2c
    :try_start_2d
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_16
    move-exception v0

    goto :goto_2c

    .line 458
    .end local v1    # "anrDialogDelayMs":J
    .end local v5    # "anrController":Landroid/app/AnrController;
    .end local v14    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v30    # "anrTime":J
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v35    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v36    # "currentPsiState":Ljava/lang/String;
    .end local v37    # "smTraceEnabled":Z
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v42    # "memoryHeaders":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v43    # "criticalEventLog":Ljava/lang/String;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v51    # "isSilentAnr":Z
    .end local v53    # "report":Ljava/lang/StringBuilder;
    .end local v60    # "info":Ljava/lang/StringBuilder;
    .end local v61    # "pid":I
    .local v4, "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v12    # "annotation":Ljava/lang/String;
    .local v13, "anrTime":J
    .restart local v20    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    :catchall_17
    move-exception v0

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v15, v1

    move-object/from16 v34, v4

    move-object v8, v7

    move-object v4, v12

    move-wide/from16 v30, v13

    move-object/from16 v49, v20

    move-object/from16 v41, v21

    move-object/from16 v14, v29

    move-object v5, v14

    .end local v12    # "annotation":Ljava/lang/String;
    .end local v13    # "anrTime":J
    .end local v20    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .local v4, "annotation":Ljava/lang/String;
    .restart local v14    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v30    # "anrTime":J
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_2f

    .end local v14    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v30    # "anrTime":J
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v3, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v4, "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v12    # "annotation":Ljava/lang/String;
    .restart local v13    # "anrTime":J
    .restart local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    :catchall_18
    move-exception v0

    move/from16 v9, p5

    move/from16 v11, p9

    move-object v15, v1

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object v8, v7

    move-object v4, v12

    move-wide/from16 v30, v13

    move-object/from16 v41, v21

    move-object/from16 v14, v29

    move-object v5, v14

    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "annotation":Ljava/lang/String;
    .end local v13    # "anrTime":J
    .end local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .local v4, "annotation":Ljava/lang/String;
    .restart local v14    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v30    # "anrTime":J
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_2f

    .line 399
    .end local v14    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v30    # "anrTime":J
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v4, "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v12    # "annotation":Ljava/lang/String;
    .restart local v13    # "anrTime":J
    .local v15, "pid":I
    .restart local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    :catchall_19
    move-exception v0

    move/from16 v9, p5

    move/from16 v11, p9

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object v8, v7

    move-object v4, v12

    move-wide/from16 v30, v13

    move/from16 v61, v15

    move-object/from16 v41, v21

    move-object/from16 v14, v29

    move-object v15, v1

    move-object v5, v14

    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "annotation":Ljava/lang/String;
    .end local v13    # "anrTime":J
    .end local v15    # "pid":I
    .end local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v29    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .local v4, "annotation":Ljava/lang/String;
    .restart local v14    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v30    # "anrTime":J
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "pid":I
    goto :goto_2e

    .end local v14    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v30    # "anrTime":J
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "pid":I
    .restart local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v4, "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v12    # "annotation":Ljava/lang/String;
    .restart local v13    # "anrTime":J
    .restart local v15    # "pid":I
    .local v19, "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    :catchall_1a
    move-exception v0

    move/from16 v9, p5

    move/from16 v11, p9

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object v8, v7

    move-object v4, v12

    move-wide/from16 v30, v13

    move/from16 v61, v15

    move-object/from16 v41, v21

    move-object v15, v1

    move-object/from16 v5, v19

    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "annotation":Ljava/lang/String;
    .end local v13    # "anrTime":J
    .end local v15    # "pid":I
    .end local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .local v4, "annotation":Ljava/lang/String;
    .restart local v30    # "anrTime":J
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "pid":I
    goto :goto_2e

    .end local v19    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v30    # "anrTime":J
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "pid":I
    .restart local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v4, "lastPids":Landroid/util/SparseBooleanArray;
    .local v5, "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v12    # "annotation":Ljava/lang/String;
    .restart local v13    # "anrTime":J
    .restart local v15    # "pid":I
    .restart local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    :catchall_1b
    move-exception v0

    move/from16 v9, p5

    move/from16 v11, p9

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object/from16 v19, v5

    move-object v8, v7

    move-object v4, v12

    move-wide/from16 v30, v13

    move/from16 v61, v15

    move-object/from16 v41, v21

    :goto_2d
    move-object v15, v1

    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v12    # "annotation":Ljava/lang/String;
    .end local v13    # "anrTime":J
    .end local v15    # "pid":I
    .end local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .local v4, "annotation":Ljava/lang/String;
    .restart local v19    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v30    # "anrTime":J
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "pid":I
    goto :goto_2e

    .end local v19    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v30    # "anrTime":J
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "pid":I
    .restart local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v4, "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v12    # "annotation":Ljava/lang/String;
    .restart local v13    # "anrTime":J
    .restart local v15    # "pid":I
    .restart local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    :catchall_1c
    move-exception v0

    move/from16 v9, p5

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object/from16 v19, v5

    move-object v8, v7

    move-object/from16 v16, v11

    move-object v4, v12

    move-wide/from16 v30, v13

    move/from16 v61, v15

    move-object/from16 v41, v21

    move/from16 v11, p9

    goto :goto_2d

    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "annotation":Ljava/lang/String;
    .end local v13    # "anrTime":J
    .end local v15    # "pid":I
    .end local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .local v4, "annotation":Ljava/lang/String;
    .restart local v30    # "anrTime":J
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "pid":I
    :goto_2e
    :try_start_2e
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1e

    :try_start_2f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v4    # "annotation":Ljava/lang/String;
    .end local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v28    # "updateCpuStatsNowFirstCall":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v30    # "anrTime":J
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local p1    # "activityShortComponentName":Ljava/lang/String;
    .end local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local p3    # "parentShortComponentName":Ljava/lang/String;
    .end local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .end local p5    # "aboveSystem":Z
    .end local p6    # "timeoutRecord":Lcom/android/internal/os/TimeoutRecord;
    .end local p7    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    .end local p8    # "onlyDumpSelf":Z
    .end local p9    # "isContinuousAnr":Z
    .end local p10    # "firstPidFilePromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    throw v0

    .line 458
    .end local v61    # "pid":I
    .restart local v4    # "annotation":Ljava/lang/String;
    .restart local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v28    # "updateCpuStatsNowFirstCall":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .restart local v30    # "anrTime":J
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local p1    # "activityShortComponentName":Ljava/lang/String;
    .restart local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "parentShortComponentName":Ljava/lang/String;
    .restart local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .restart local p5    # "aboveSystem":Z
    .restart local p6    # "timeoutRecord":Lcom/android/internal/os/TimeoutRecord;
    .restart local p7    # "auxiliaryTaskExecutor":Ljava/util/concurrent/ExecutorService;
    .restart local p8    # "onlyDumpSelf":Z
    .restart local p9    # "isContinuousAnr":Z
    .restart local p10    # "firstPidFilePromise":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/File;>;"
    :catchall_1d
    move-exception v0

    goto :goto_2f

    .line 399
    .restart local v61    # "pid":I
    :catchall_1e
    move-exception v0

    goto :goto_2e

    .line 458
    .end local v30    # "anrTime":J
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "pid":I
    .restart local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v4, "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v12    # "annotation":Ljava/lang/String;
    .restart local v13    # "anrTime":J
    .restart local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    :catchall_1f
    move-exception v0

    move/from16 v9, p5

    move-object v15, v1

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object/from16 v19, v5

    move-object v8, v7

    move-object/from16 v16, v11

    move-object v4, v12

    move-wide/from16 v30, v13

    move-object/from16 v41, v21

    move/from16 v11, p9

    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v12    # "annotation":Ljava/lang/String;
    .end local v13    # "anrTime":J
    .end local v21    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .local v4, "annotation":Ljava/lang/String;
    .restart local v19    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v30    # "anrTime":J
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2f

    .end local v19    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .end local v30    # "anrTime":J
    .end local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .end local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v2, "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v4, "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v5    # "volatileDropboxEntriyStates":Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
    .restart local v12    # "annotation":Ljava/lang/String;
    .restart local v13    # "anrTime":J
    :catchall_20
    move-exception v0

    move/from16 v9, p5

    move-object v15, v1

    move-object/from16 v41, v2

    move-object/from16 v49, v3

    move-object/from16 v34, v4

    move-object/from16 v19, v5

    move-object v8, v7

    move-object/from16 v16, v11

    move-object v4, v12

    move-wide/from16 v30, v13

    move/from16 v11, p9

    .end local v2    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "annotation":Ljava/lang/String;
    .end local v13    # "anrTime":J
    .local v4, "annotation":Ljava/lang/String;
    .restart local v30    # "anrTime":J
    .restart local v34    # "lastPids":Landroid/util/SparseBooleanArray;
    .restart local v41    # "latencyTracker":Lcom/android/internal/os/anr/AnrLatencyTracker;
    .restart local v49    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2f
    monitor-exit v16
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowUptime"    # J

    .line 919
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 920
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 921
    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    if-eqz v1, :cond_3

    :cond_0
    goto :goto_0

    .line 936
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 922
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCrashing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->getCrashDialogs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNotResponding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->getAnrDialogs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    .line 931
    const-string v1, " errorReportReceiver="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 936
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 937
    return-void

    .line 936
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method getAnrAnnotation()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    return-object v0
.end method

.method getAnrData()Lcom/android/server/am/AppNotRespondingDialog$Data;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    return-object v0
.end method

.method getCrashHandler()Ljava/lang/Runnable;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method getCrashingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object v0
.end method

.method getDialogController()Lcom/android/server/am/ErrorDialogController;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    return-object v0
.end method

.method getErrorReportReceiver()Landroid/content/ComponentName;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    return-object v0
.end method

.method getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object v0
.end method

.method isBad()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    return v0
.end method

.method isCrashing()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    return v0
.end method

.method isDefered()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDefered:Z

    return v0
.end method

.method isForceCrashReport()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    return v0
.end method

.method isMonitorCpuUsage()Z
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v0, 0x1

    return v0
.end method

.method isNotResponding()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    return v0
.end method

.method isSilentAnr()Z
    .locals 1

    .line 900
    invoke-direct {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getShowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isInterestingForBackgroundTraces()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onCleanupApplicationRecordLSP()V
    .locals 1

    .line 912
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    .line 914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 915
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 916
    return-void
.end method

.method setAnrAnnotation(Ljava/lang/String;)V
    .locals 0
    .param p1, "anrAnnotation"    # Ljava/lang/String;

    .line 254
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    .line 255
    return-void
.end method

.method setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .locals 0
    .param p1, "data"    # Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 284
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 285
    return-void
.end method

.method setBad(Z)V
    .locals 0
    .param p1, "bad"    # Z

    .line 180
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    .line 181
    return-void
.end method

.method setCrashHandler(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "crashHandler"    # Ljava/lang/Runnable;

    .line 234
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    .line 235
    return-void
.end method

.method setCrashing(Z)V
    .locals 1
    .param p1, "crashing"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 191
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCrashing(Z)V

    .line 192
    return-void
.end method

.method setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0
    .param p1, "crashingReport"    # Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 244
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 245
    return-void
.end method

.method setDefered(Z)V
    .locals 0
    .param p1, "defer"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDefered:Z

    .line 224
    return-void
.end method

.method setErrorReportReceiver(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "errorReportReceiver"    # Landroid/content/ComponentName;

    .line 274
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 275
    return-void
.end method

.method setForceCrashReport(Z)V
    .locals 0
    .param p1, "forceCrashReport"    # Z

    .line 201
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    .line 202
    return-void
.end method

.method setNotResponding(Z)V
    .locals 1
    .param p1, "notResponding"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 212
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setNotResponding(Z)V

    .line 213
    return-void
.end method

.method setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0
    .param p1, "notRespondingReport"    # Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 264
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 265
    return-void
.end method

.method skipAnrLocked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "annotation"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, " "

    const-string v3, "ActivityManager"

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "During shutdown skipping ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return v1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping duplicate ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return v1

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashing app skipping ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v1

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App already killed by AM skipping ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v1

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping died app ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return v1

    .line 318
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method startAppProblemLSP()V
    .locals 7

    .line 834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 836
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 837
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_0

    .line 838
    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 836
    .end local v3    # "userId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getBroadcastQueue()Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 843
    return-void
.end method
