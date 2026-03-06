.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcessLock:Ljava/lang/Object;

.field private volatile mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$tahYgIQkTlfUILZTTqiIS49S4Gc(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppErrors;->lambda$scheduleAppCrashLocked$0(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w69pU-431_pyGi3C_XWfp6yr4Mg(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/AppErrors;->lambda$handleAppCrashInActivityController$1(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "watchdog"    # Lcom/android/server/PackageWatchdog;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 107
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 113
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 120
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 141
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 156
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 157
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 158
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 159
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 160
    return-void
.end method

.method private crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 21
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 615
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 616
    .local v7, "timeMillis":J
    iget-object v4, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 617
    .local v4, "shortMsg":Ljava/lang/String;
    iget-object v0, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 618
    .local v0, "longMsg":Ljava/lang/String;
    iget-object v5, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 619
    .local v5, "stackTrace":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 620
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 621
    :cond_0
    if-eqz v4, :cond_1

    .line 622
    move-object v0, v4

    move-object v6, v0

    goto :goto_0

    .line 621
    :cond_1
    move-object v6, v0

    .line 625
    .end local v0    # "longMsg":Ljava/lang/String;
    .local v6, "longMsg":Ljava/lang/String;
    :goto_0
    const/4 v11, 0x0

    if-eqz v2, :cond_3

    .line 626
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v0, v9, v10}, Lcom/android/server/PackageWatchdog;->notifyPackageFailure(Ljava/util/List;I)V

    .line 629
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v9

    .line 630
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v10, "Native crash"

    iget-object v12, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 631
    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 632
    const/4 v10, 0x5

    goto :goto_1

    .line 633
    :cond_2
    const/4 v10, 0x4

    :goto_1
    const-string v12, "crash"

    .line 630
    invoke-virtual {v0, v2, v10, v11, v12}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 636
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 639
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 640
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v11

    :goto_3
    move v12, v0

    .line 642
    .local v12, "relaunchReason":I
    new-instance v0, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v13, v0

    .line 644
    .local v13, "result":Lcom/android/server/am/AppErrorResult;
    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v14

    .line 649
    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    move/from16 v9, p3

    move/from16 v10, p4

    .local v5, "longMsg":Ljava/lang/String;
    .local v6, "stackTrace":Ljava/lang/String;
    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    move-wide v8, v7

    move-object v7, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .end local v6    # "stackTrace":Ljava/lang/String;
    .end local v7    # "timeMillis":J
    .local v3, "shortMsg":Ljava/lang/String;
    .local v4, "longMsg":Ljava/lang/String;
    .local v5, "stackTrace":Ljava/lang/String;
    .local v8, "timeMillis":J
    if-eqz v0, :cond_5

    .line 651
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 697
    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v10, v3

    move-object/from16 v16, v4

    move-object v15, v5

    goto/16 :goto_f

    .line 656
    :cond_5
    const/4 v0, 0x2

    if-ne v12, v0, :cond_6

    .line 657
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 664
    :cond_6
    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 665
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 669
    :cond_7
    if-eqz v2, :cond_8

    .line 670
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v10, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v6, v10}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 673
    :cond_8
    :try_start_7
    new-instance v6, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v6}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    .line 674
    .local v6, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iput-object v13, v6, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 675
    iput-object v2, v6, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 679
    if-eqz v2, :cond_10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    move-object v10, v6

    move-object v6, v1

    move-object v1, v10

    move-object v10, v3

    move-object/from16 v16, v4

    move-object v15, v5

    .end local v3    # "shortMsg":Ljava/lang/String;
    .end local v4    # "longMsg":Ljava/lang/String;
    .end local v5    # "stackTrace":Ljava/lang/String;
    .end local v6    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .local v1, "data":Lcom/android/server/am/AppErrorDialog$Data;
    .local v10, "shortMsg":Ljava/lang/String;
    .local v15, "stackTrace":Ljava/lang/String;
    .local v16, "longMsg":Ljava/lang/String;
    if-nez v0, :cond_9

    :goto_4
    goto/16 :goto_e

    .line 685
    :cond_9
    :try_start_8
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_PRIVATE_SPACE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtPrivateSpaceService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 686
    invoke-interface {v0, v3}, Lcom/nothing/server/ext/INtPrivateSpaceService;->skipCrashingInfo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 687
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 697
    .end local v1    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_2
    move-exception v0

    goto/16 :goto_f

    .line 691
    .restart local v1    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :cond_a
    :try_start_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 692
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->what:I

    .line 694
    iget v3, v1, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 695
    .local v3, "taskId":I
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 696
    iget-object v4, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 697
    nop

    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 699
    invoke-virtual {v13}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v0

    .line 701
    .local v0, "res":I
    const/4 v14, 0x0

    .line 702
    .local v14, "appErrorIntent":Landroid/content/Intent;
    iget-object v1, v6, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v4, 0x13c

    invoke-static {v1, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 703
    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    :cond_b
    goto :goto_5

    :cond_c
    move/from16 v17, v0

    goto :goto_6

    .line 704
    :goto_5
    const/4 v0, 0x1

    move/from16 v17, v0

    .line 706
    .end local v0    # "res":I
    .local v17, "res":I
    :goto_6
    packed-switch v17, :pswitch_data_0

    :pswitch_0
    move v11, v3

    goto/16 :goto_b

    .line 745
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 747
    const/high16 v0, 0x10000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 748
    move v11, v3

    goto/16 :goto_b

    .line 708
    :pswitch_2
    iget-object v1, v6, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 709
    :try_start_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V

    .line 710
    monitor-exit v1

    .line 711
    move v11, v3

    goto/16 :goto_b

    .line 710
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 713
    :pswitch_3
    iget-object v11, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11

    .line 714
    :try_start_b
    iget-object v0, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v5, "crash"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    const/4 v2, 0x0

    move v1, v3

    .end local v3    # "taskId":I
    .local v1, "taskId":I
    const/4 v3, 0x1

    const/4 v4, 0x4

    move-object/from16 v18, v11

    move v11, v1

    move-object/from16 v1, p1

    .end local v1    # "taskId":I
    .local v11, "taskId":I
    :try_start_c
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object v2, v1

    .line 716
    :try_start_d
    monitor-exit v18
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 717
    const/4 v0, -0x1

    if-eq v11, v0, :cond_e

    .line 719
    :try_start_e
    iget-object v0, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 720
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 719
    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_0

    .line 725
    :goto_7
    goto/16 :goto_b

    .line 721
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not restart taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_7

    .line 716
    :catchall_4
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto :goto_8

    .end local v11    # "taskId":I
    .restart local v3    # "taskId":I
    :catchall_6
    move-exception v0

    move-object/from16 v18, v11

    move v11, v3

    .end local v3    # "taskId":I
    .restart local v11    # "taskId":I
    :goto_8
    :try_start_f
    monitor-exit v18
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 750
    .end local v11    # "taskId":I
    .restart local v3    # "taskId":I
    :pswitch_4
    move v11, v3

    .end local v3    # "taskId":I
    .restart local v11    # "taskId":I
    iget-object v1, v6, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 751
    :try_start_10
    invoke-virtual {v6, v2, v8, v9, v7}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0

    move-object v14, v0

    .line 752
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_b

    :catchall_7
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 729
    .end local v11    # "taskId":I
    .restart local v3    # "taskId":I
    :pswitch_5
    move v0, v11

    move v11, v3

    .end local v3    # "taskId":I
    .restart local v11    # "taskId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 732
    .local v18, "orig":J
    :try_start_12
    iget-object v1, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 733
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_d

    .line 734
    iget-object v1, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 735
    :try_start_13
    iget-object v3, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v5, "crash"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    const/4 v2, 0x0

    move v4, v0

    move-object v0, v3

    const/4 v3, 0x0

    move/from16 v20, v4

    const/4 v4, 0x4

    move/from16 v7, v20

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    :try_start_14
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    move-object v2, v1

    .line 737
    :try_start_15
    monitor-exit v20
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 738
    iget-object v0, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    goto :goto_a

    .line 741
    :catchall_8
    move-exception v0

    goto :goto_d

    .line 737
    :catchall_9
    move-exception v0

    goto :goto_9

    :catchall_a
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catchall_b
    move-exception v0

    move-object/from16 v20, v1

    :goto_9
    :try_start_17
    monitor-exit v20
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v8    # "timeMillis":J
    .end local v10    # "shortMsg":Ljava/lang/String;
    .end local v11    # "taskId":I
    .end local v12    # "relaunchReason":I
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v14    # "appErrorIntent":Landroid/content/Intent;
    .end local v15    # "stackTrace":Ljava/lang/String;
    .end local v16    # "longMsg":Ljava/lang/String;
    .end local v17    # "res":I
    .end local v18    # "orig":J
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local p3    # "callingPid":I
    .end local p4    # "callingUid":I
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 741
    .restart local v8    # "timeMillis":J
    .restart local v10    # "shortMsg":Ljava/lang/String;
    .restart local v11    # "taskId":I
    .restart local v12    # "relaunchReason":I
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v14    # "appErrorIntent":Landroid/content/Intent;
    .restart local v15    # "stackTrace":Ljava/lang/String;
    .restart local v16    # "longMsg":Ljava/lang/String;
    .restart local v17    # "res":I
    .restart local v18    # "orig":J
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local p3    # "callingPid":I
    .restart local p4    # "callingUid":I
    :cond_d
    :goto_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    nop

    .line 743
    nop

    .line 756
    .end local v18    # "orig":J
    :cond_e
    :goto_b
    if-eqz v14, :cond_f

    .line 758
    :try_start_19
    iget-object v0, v6, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_19} :catch_1

    .line 761
    goto :goto_c

    .line 759
    :catch_1
    move-exception v0

    .line 760
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "ActivityManager"

    const-string v3, "bug report receiver dissappeared"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_f
    :goto_c
    return-void

    .line 741
    .restart local v18    # "orig":J
    :goto_d
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    throw v0

    .line 697
    .end local v10    # "shortMsg":Ljava/lang/String;
    .end local v11    # "taskId":I
    .end local v14    # "appErrorIntent":Landroid/content/Intent;
    .end local v15    # "stackTrace":Ljava/lang/String;
    .end local v16    # "longMsg":Ljava/lang/String;
    .end local v17    # "res":I
    .end local v18    # "orig":J
    .local v3, "shortMsg":Ljava/lang/String;
    .restart local v4    # "longMsg":Ljava/lang/String;
    .restart local v5    # "stackTrace":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object v6, v1

    move-object v10, v3

    move-object/from16 v16, v4

    move-object v15, v5

    .end local v3    # "shortMsg":Ljava/lang/String;
    .end local v4    # "longMsg":Ljava/lang/String;
    .end local v5    # "stackTrace":Ljava/lang/String;
    .restart local v10    # "shortMsg":Ljava/lang/String;
    .restart local v15    # "stackTrace":Ljava/lang/String;
    .restart local v16    # "longMsg":Ljava/lang/String;
    goto :goto_f

    .line 679
    .end local v10    # "shortMsg":Ljava/lang/String;
    .end local v15    # "stackTrace":Ljava/lang/String;
    .end local v16    # "longMsg":Ljava/lang/String;
    .restart local v3    # "shortMsg":Ljava/lang/String;
    .restart local v4    # "longMsg":Ljava/lang/String;
    .restart local v5    # "stackTrace":Ljava/lang/String;
    .restart local v6    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :cond_10
    move-object v10, v6

    move-object v6, v1

    move-object v1, v10

    move-object v10, v3

    move-object/from16 v16, v4

    move-object v15, v5

    .end local v3    # "shortMsg":Ljava/lang/String;
    .end local v4    # "longMsg":Ljava/lang/String;
    .end local v5    # "stackTrace":Ljava/lang/String;
    .end local v6    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .local v1, "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v10    # "shortMsg":Ljava/lang/String;
    .restart local v15    # "stackTrace":Ljava/lang/String;
    .restart local v16    # "longMsg":Ljava/lang/String;
    goto/16 :goto_4

    .line 680
    :goto_e
    :try_start_1a
    monitor-exit v14
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 697
    .end local v1    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v8    # "timeMillis":J
    .end local v10    # "shortMsg":Ljava/lang/String;
    .end local v15    # "stackTrace":Ljava/lang/String;
    .end local v16    # "longMsg":Ljava/lang/String;
    .local v4, "shortMsg":Ljava/lang/String;
    .local v5, "longMsg":Ljava/lang/String;
    .local v6, "stackTrace":Ljava/lang/String;
    .restart local v7    # "timeMillis":J
    :catchall_d
    move-exception v0

    move-object v10, v4

    move-object/from16 v16, v5

    move-object v15, v6

    move-wide v8, v7

    move-object v6, v1

    .end local v4    # "shortMsg":Ljava/lang/String;
    .end local v5    # "longMsg":Ljava/lang/String;
    .end local v6    # "stackTrace":Ljava/lang/String;
    .end local v7    # "timeMillis":J
    .restart local v8    # "timeMillis":J
    .restart local v10    # "shortMsg":Ljava/lang/String;
    .restart local v15    # "stackTrace":Ljava/lang/String;
    .restart local v16    # "longMsg":Ljava/lang/String;
    :goto_f
    :try_start_1b
    monitor-exit v14
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 864
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 865
    .local v0, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 866
    return-object v2

    .line 869
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v1

    if-nez v1, :cond_1

    .line 870
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 871
    return-object v2

    .line 874
    :cond_1
    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 875
    .local v1, "report":Landroid/app/ApplicationErrorReport;
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 876
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 877
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 878
    iput-wide p2, v1, Landroid/app/ApplicationErrorReport;->time:J

    .line 879
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 881
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    goto :goto_1

    .line 884
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 885
    nop

    .line 886
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v3

    .line 887
    .local v3, "anrReport":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    if-nez v3, :cond_5

    .line 889
    return-object v2

    .line 891
    :cond_5
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 892
    new-instance v2, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 894
    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 895
    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 896
    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_2

    .line 882
    .end local v3    # "anrReport":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    :goto_1
    iput v4, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 883
    iput-object p4, v1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 899
    :cond_6
    :goto_2
    return-object v1
.end method

.method private getVisibleUserId(I)I
    .locals 1
    .param p1, "appUserId"    # I

    .line 1212
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    return v0

    .line 1215
    :cond_0
    return p1
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I

    .line 771
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 772
    .local v2, "name":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_1
    move/from16 v3, p8

    .line 773
    .local v3, "pid":I
    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v10, v0

    goto :goto_2

    :cond_2
    move/from16 v10, p9

    .line 775
    .local v10, "uid":I
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v11, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    new-instance v9, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v8, p4

    move-object v4, v2

    move v5, v3

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v9, p5

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "pid":I
    .local v4, "name":Ljava/lang/String;
    .local v5, "pid":I
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v9, v1

    move-object v2, v4

    move v3, v5

    move-object v4, v7

    move-object v5, v8

    move-object v8, v11

    move-wide/from16 v6, p6

    move-object v1, v0

    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pid":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "pid":I
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 26
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 905
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 909
    .local v9, "now":J
    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 910
    .local v14, "processName":Ljava/lang/String;
    iget v15, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 911
    .local v15, "uid":I
    iget v1, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 912
    .local v1, "userId":I
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 913
    .local v3, "isolated":Z
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v16

    .line 914
    .local v16, "persistent":Z
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 915
    .local v4, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 916
    .local v5, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 917
    invoke-direct {v0, v1}, Lcom/android/server/am/AppErrors;->getVisibleUserId(I)I

    move-result v8

    .line 916
    const-string v11, "anr_show_background"

    const/4 v12, 0x0

    invoke-static {v6, v11, v12, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v12

    :goto_0
    move/from16 v17, v6

    .line 919
    .local v17, "showBackground":Z
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v6, :cond_1

    .line 920
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 921
    .local v6, "crashTime":Ljava/lang/Long;
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    .local v11, "crashTimePersistent":Ljava/lang/Long;
    goto :goto_1

    .line 923
    .end local v6    # "crashTime":Ljava/lang/Long;
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    :cond_1
    const/4 v6, 0x0

    move-object v11, v6

    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    move-object/from16 v18, v6

    move-object/from16 v19, v11

    .line 927
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .local v18, "crashTime":Ljava/lang/Long;
    .local v19, "crashTimePersistent":Ljava/lang/Long;
    :goto_1
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v6, v9, v10}, Lcom/android/server/am/ProcessServiceRecord;->incServiceCrashCountLocked(J)Z

    move-result v6

    .line 929
    .local v6, "tryAgain":Z
    if-eqz v18, :cond_2

    .line 930
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget v11, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v12, v11

    add-long v20, v20, v12

    cmp-long v11, v9, v20

    if-gez v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    move/from16 v20, v11

    .line 931
    .local v20, "quickCrash":Z
    if-nez v20, :cond_7

    invoke-direct {v0, v2, v9, v10}, Lcom/android/server/am/AppErrors;->isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v12, p2

    move-wide/from16 v23, v9

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 979
    :cond_3
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v12, p2

    invoke-virtual {v11, v4, v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result v11

    .line 981
    .local v11, "affectedTaskId":I
    if-eqz v7, :cond_4

    .line 982
    iput v11, v7, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 984
    :cond_4
    if-eqz v7, :cond_6

    if-eqz v19, :cond_6

    .line 985
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sget v13, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    move-wide/from16 v23, v9

    .end local v9    # "now":J
    .local v23, "now":J
    int-to-long v8, v13

    add-long v21, v21, v8

    cmp-long v8, v23, v21

    if-gez v8, :cond_5

    .line 986
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    move v11, v1

    move/from16 v21, v3

    move-object v13, v4

    move-object v12, v5

    move v4, v6

    move v8, v10

    move-wide/from16 v9, v23

    goto/16 :goto_7

    .line 985
    :cond_5
    const/4 v10, 0x1

    move v11, v1

    move/from16 v21, v3

    move-object v13, v4

    move-object v12, v5

    move v4, v6

    move v8, v10

    move-wide/from16 v9, v23

    goto/16 :goto_7

    .line 984
    .end local v23    # "now":J
    .restart local v9    # "now":J
    :cond_6
    move-wide/from16 v23, v9

    const/4 v10, 0x1

    .end local v9    # "now":J
    .restart local v23    # "now":J
    move v11, v1

    move/from16 v21, v3

    move-object v13, v4

    move-object v12, v5

    move v4, v6

    move v8, v10

    move-wide/from16 v9, v23

    goto/16 :goto_7

    .line 931
    .end local v11    # "affectedTaskId":I
    .end local v23    # "now":J
    .restart local v9    # "now":J
    :cond_7
    move-object/from16 v12, p2

    move-wide/from16 v23, v9

    const/4 v10, 0x1

    .line 935
    .end local v9    # "now":J
    .restart local v23    # "now":J
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " has crashed too many times, killing! Reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    if-eqz v20, :cond_8

    const-string v9, "crashed quickly"

    goto :goto_4

    :cond_8
    const-string/jumbo v9, "over process crash limit"

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 935
    const-string v9, "ActivityManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    nop

    .line 938
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v14, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 937
    const/16 v9, 0x7550

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 939
    iget-object v8, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v8, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 940
    if-nez v16, :cond_c

    .line 945
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9, v14}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x753f

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 947
    if-nez v3, :cond_9

    .line 950
    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move v9, v8

    new-instance v8, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v21, v3

    move v3, v9

    move-wide/from16 v9, v23

    .end local v3    # "isolated":Z
    .end local v23    # "now":J
    .restart local v9    # "now":J
    .local v21, "isolated":Z
    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v3, v8}, Lcom/android/server/am/AppErrors;->markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V

    .line 952
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v14, v8}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 953
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v14, v8}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_5

    .line 947
    .end local v9    # "now":J
    .end local v21    # "isolated":Z
    .restart local v3    # "isolated":Z
    .restart local v23    # "now":J
    :cond_9
    move/from16 v21, v3

    move-wide/from16 v9, v23

    .line 955
    .end local v3    # "isolated":Z
    .end local v23    # "now":J
    .restart local v9    # "now":J
    .restart local v21    # "isolated":Z
    :goto_5
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    .line 956
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 957
    const-class v8, Lcom/android/server/usage/AppStandbyInternal;

    .line 958
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usage/AppStandbyInternal;

    .line 959
    .local v8, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    if-eqz v8, :cond_b

    .line 960
    nop

    .line 964
    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_a

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object v11, v14

    .line 960
    :goto_6
    const/4 v12, 0x4

    invoke-interface {v8, v11, v1, v12}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 970
    :cond_b
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object v12, v5

    .end local v5    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .local v12, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    const/4 v5, 0x4

    move-object v13, v4

    move v4, v6

    .end local v6    # "tryAgain":Z
    .local v4, "tryAgain":Z
    .local v13, "proc":Lcom/android/server/wm/WindowProcessController;
    const-string v6, "crash"

    move/from16 v22, v3

    const/4 v3, 0x0

    move-object/from16 v25, v11

    move v11, v1

    move-object/from16 v1, v25

    move/from16 v25, v22

    move-object/from16 v22, v8

    move/from16 v8, v25

    .end local v1    # "userId":I
    .end local v8    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v11, "userId":I
    .local v22, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 972
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 973
    if-nez v17, :cond_d

    .line 974
    return v3

    .line 940
    .end local v9    # "now":J
    .end local v11    # "userId":I
    .end local v12    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v13    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local v21    # "isolated":Z
    .end local v22    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v1    # "userId":I
    .restart local v3    # "isolated":Z
    .local v4, "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v5    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v6    # "tryAgain":Z
    .restart local v23    # "now":J
    :cond_c
    move v11, v1

    move/from16 v21, v3

    move-object v13, v4

    move-object v12, v5

    move v4, v6

    move v8, v10

    move-wide/from16 v9, v23

    const/4 v3, 0x0

    .line 977
    .end local v1    # "userId":I
    .end local v3    # "isolated":Z
    .end local v5    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v6    # "tryAgain":Z
    .end local v23    # "now":J
    .local v4, "tryAgain":Z
    .restart local v9    # "now":J
    .restart local v11    # "userId":I
    .restart local v12    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v13    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v21    # "isolated":Z
    :cond_d
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 990
    :goto_7
    if-eqz v7, :cond_e

    if-eqz v4, :cond_e

    .line 991
    iput-boolean v8, v7, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 998
    :cond_e
    invoke-virtual {v13}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v13}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v8

    if-nez v1, :cond_f

    .line 999
    invoke-virtual {v13}, Lcom/android/server/wm/WindowProcessController;->clearPackagePreferredForHomeActivities()V

    .line 1002
    :cond_f
    if-nez v21, :cond_10

    .line 1005
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v14, v15, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v14, v15, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1007
    invoke-direct {v0, v14, v15, v9, v10}, Lcom/android/server/am/AppErrors;->updateProcessCrashCountLBp(Ljava/lang/String;IJ)V

    .line 1010
    :cond_10
    invoke-virtual {v12}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1011
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1013
    :cond_11
    return v8
.end method

.method private isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .line 1029
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1030
    .local v0, "crashCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1031
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v1, v3

    cmp-long v1, p2, v1

    nop

    if-gez v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1032
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1030
    :goto_0
    return v1
.end method

.method private killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reasonCode"    # I
    .param p3, "subReason"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "killReason"    # Ljava/lang/String;

    .line 497
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 498
    .local v1, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 499
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 500
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 501
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 502
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    .line 503
    .local v2, "pid":I
    if-lez v2, :cond_0

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v0, :cond_0

    .line 504
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 505
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p4

    :try_start_0
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 507
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    const/4 v0, 0x1

    move-object/from16 v4, p5

    invoke-virtual {p1, v4, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_1

    .line 507
    :catchall_0
    move-exception v0

    move-object/from16 v4, p5

    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    .line 503
    :cond_0
    move-object/from16 v4, p5

    .line 510
    :goto_1
    return-void
.end method

.method private synthetic lambda$handleAppCrashInActivityController$1(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "shortMsg"    # Ljava/lang/String;
    .param p6, "longMsg"    # Ljava/lang/String;
    .param p7, "stackTrace"    # Ljava/lang/String;
    .param p8, "uid"    # I

    .line 777
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "ActivityManager"

    nop

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 778
    const-string v3, "Native crash"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") during testing"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at watcher\'s request"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-eqz p4, :cond_1

    .line 784
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 785
    const/4 v0, 0x4

    const/4 v2, 0x1

    const-string v3, "crash"

    invoke-virtual {p4, v3, v0, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 789
    :cond_1
    invoke-static {p3}, Landroid/os/Process;->killProcess(I)V

    .line 790
    move/from16 v2, p8

    invoke-static {v2, p3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 791
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x0

    const-string v5, "crash"

    const/4 v3, 0x4

    move v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    .line 797
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$scheduleAppCrashLocked$0(Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;

    .line 573
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 575
    :try_start_1
    const-string v7, "forced"

    const-string/jumbo v8, "killed for invalid state"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v5, 0xd

    const/16 v6, 0xe

    move-object v3, p0

    move-object v4, p1

    .end local p1    # "p":Lcom/android/server/am/ProcessRecord;
    .local v4, "p":Lcom/android/server/am/ProcessRecord;
    :try_start_2
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 578
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 579
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 578
    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v4    # "p":Lcom/android/server/am/ProcessRecord;
    .restart local p1    # "p":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    .end local p1    # "p":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "p":Lcom/android/server/am/ProcessRecord;
    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v4    # "p":Lcom/android/server/am/ProcessRecord;
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    throw p1

    .line 579
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "p":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    .end local p1    # "p":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "p":Lcom/android/server/am/ProcessRecord;
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 803
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 804
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object v2, v0

    .line 805
    .local v2, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 806
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "shortMsg":Ljava/lang/String;
    .end local p3    # "longMsg":Ljava/lang/String;
    .end local p4    # "stackTrace":Ljava/lang/String;
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    .local v7, "shortMsg":Ljava/lang/String;
    .local v8, "longMsg":Ljava/lang/String;
    .local v9, "stackTrace":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .end local v9    # "stackTrace":Ljava/lang/String;
    .local v6, "shortMsg":Ljava/lang/String;
    .local v7, "longMsg":Ljava/lang/String;
    .local v8, "stackTrace":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 809
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 810
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 811
    iget-object p1, v3, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 812
    :try_start_3
    const-string v5, "force-crash"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v9, p5

    .end local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .local v9, "data":Lcom/android/server/am/AppErrorDialog$Data;
    :try_start_4
    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p2

    .line 815
    .end local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 814
    .restart local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v9    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_2
    move-exception v0

    move-object v9, p5

    move-object p2, v0

    .end local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v9    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :goto_0
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "shortMsg":Ljava/lang/String;
    .end local v7    # "longMsg":Ljava/lang/String;
    .end local v8    # "stackTrace":Ljava/lang/String;
    .end local v9    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    :try_start_7
    throw p2

    .line 815
    .end local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "shortMsg":Ljava/lang/String;
    .restart local v7    # "longMsg":Ljava/lang/String;
    .restart local v8    # "stackTrace":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_3
    move-exception v0

    move-object v9, p5

    move-object p1, v0

    .end local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v9    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    goto :goto_1

    .end local v6    # "shortMsg":Ljava/lang/String;
    .local v7, "shortMsg":Ljava/lang/String;
    .local v8, "longMsg":Ljava/lang/String;
    .local v9, "stackTrace":Ljava/lang/String;
    .restart local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_4
    move-exception v0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p5

    move-object p1, v0

    .end local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v6    # "shortMsg":Ljava/lang/String;
    .local v7, "longMsg":Ljava/lang/String;
    .local v8, "stackTrace":Ljava/lang/String;
    .local v9, "data":Lcom/android/server/am/AppErrorDialog$Data;
    goto :goto_1

    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "shortMsg":Ljava/lang/String;
    .end local v7    # "longMsg":Ljava/lang/String;
    .end local v8    # "stackTrace":Ljava/lang/String;
    .end local v9    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "shortMsg":Ljava/lang/String;
    .restart local p3    # "longMsg":Ljava/lang/String;
    .restart local p4    # "stackTrace":Ljava/lang/String;
    .restart local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_5
    move-exception v0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    move-object p1, v0

    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "shortMsg":Ljava/lang/String;
    .end local p3    # "longMsg":Ljava/lang/String;
    .end local p4    # "stackTrace":Ljava/lang/String;
    .end local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "shortMsg":Ljava/lang/String;
    .restart local v7    # "longMsg":Ljava/lang/String;
    .restart local v8    # "stackTrace":Ljava/lang/String;
    .restart local v9    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :goto_1
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1
.end method

.method private resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V
    .locals 4
    .param p2, "resetEntireUser"    # Z
    .param p3, "appId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;ZII)V"
        }
    .end annotation

    .line 443
    .local p1, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, "remove":Z
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 446
    .local v2, "entUid":I
    if-nez p2, :cond_1

    .line 447
    const/4 v3, -0x1

    if-ne p4, v3, :cond_0

    .line 448
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p3, :cond_2

    .line 449
    const/4 v1, 0x1

    goto :goto_1

    .line 452
    :cond_0
    invoke-static {p4, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 453
    const/4 v1, 0x1

    goto :goto_1

    .line 456
    :cond_1
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p4, :cond_2

    .line 457
    const/4 v1, 0x1

    .line 459
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 460
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 443
    .end local v1    # "remove":Z
    .end local v2    # "entUid":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 463
    .end local v0    # "i":I
    return-void
.end method

.method private stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1114
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 1115
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1118
    return-void
.end method

.method private updateProcessCrashCountLBp(Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J

    .line 1018
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1019
    .local v0, "count":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p3

    if-gez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 1022
    :cond_1
    new-instance v2, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "count":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local v2, "count":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 1020
    .end local v2    # "count":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v0    # "count":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1024
    .end local v0    # "count":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v2    # "count":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1025
    return-void
.end method


# virtual methods
.method clearBadProcess(Ljava/lang/String;I)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 375
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 377
    .local v1, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 378
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 379
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 380
    .end local v1    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    monitor-exit v0

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearBadProcessForUser(Ljava/lang/String;I)V
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 384
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 386
    .local v1, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 387
    invoke-virtual {v1, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 388
    .local v2, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    if-nez v2, :cond_0

    .line 389
    monitor-exit v0

    return-void

    .line 398
    .end local v1    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v2    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 391
    .restart local v1    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v2    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 392
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 393
    .local v4, "uid":I
    const/4 v5, -0x1

    if-eq p2, v5, :cond_1

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p2, v5, :cond_2

    .line 394
    :cond_1
    invoke-virtual {v1, p1, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 391
    .end local v4    # "uid":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 397
    .end local v3    # "i":I
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 398
    .end local v1    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v2    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 602
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 603
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 605
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 607
    .local v2, "origId":J
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    nop

    .line 611
    return-void

    .line 609
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    throw v4
.end method

.method createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 850
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 851
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_0

    .line 852
    const/4 v1, 0x0

    return-object v1

    .line 854
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 856
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 857
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 858
    return-object v1
.end method

.method dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 31
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 177
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 178
    .local v4, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    return-void

    .line 182
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 183
    .local v5, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 184
    .local v7, "now":J
    const-wide v9, 0x10300000001L

    invoke-virtual {v2, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 186
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 187
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 188
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 189
    .local v15, "processCount":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "ip":I
    :goto_0
    if-ge v11, v15, :cond_5

    .line 190
    const-wide v9, 0x20b00000003L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 191
    .local v9, "btoken":J
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 192
    .local v12, "pname":Ljava/lang/String;
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/util/SparseArray;

    .line 193
    .local v13, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 195
    .local v14, "uidCount":I
    move-wide/from16 v22, v7

    const-wide v7, 0x10900000001L

    .end local v7    # "now":J
    .local v22, "now":J
    invoke-virtual {v2, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 196
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v14, :cond_4

    .line 197
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 198
    .local v8, "puid":I
    move-object/from16 v16, v0

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v0

    invoke-virtual {v0, v12, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 199
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 200
    move-object/from16 v24, v0

    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .local v24, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 201
    move/from16 v29, v7

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move/from16 v28, v14

    goto :goto_2

    .line 199
    .end local v24    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_1
    move-object/from16 v24, v0

    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v24    # "r":Lcom/android/server/am/ProcessRecord;
    move/from16 v29, v7

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move/from16 v28, v14

    goto :goto_2

    .end local v24    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_2
    move-object/from16 v24, v0

    .line 203
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v24    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_3
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 204
    .local v0, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move/from16 v28, v14

    const-wide v11, 0x20b00000002L

    .end local v11    # "ip":I
    .end local v12    # "pname":Ljava/lang/String;
    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v14    # "uidCount":I
    .local v25, "ip":I
    .local v26, "pname":Ljava/lang/String;
    .local v27, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v28, "uidCount":I
    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 205
    .local v13, "etoken":J
    const-wide v11, 0x10500000001L

    invoke-virtual {v2, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 206
    iget-wide v11, v0, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move/from16 v29, v7

    move/from16 v30, v8

    const-wide v7, 0x10300000002L

    .end local v7    # "i":I
    .end local v8    # "puid":I
    .local v29, "i":I
    .local v30, "puid":I
    invoke-virtual {v2, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 207
    const-wide v7, 0x10900000003L

    iget-object v11, v0, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v2, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 208
    const-wide v7, 0x10900000004L

    iget-object v11, v0, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v2, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 209
    const-wide v7, 0x10900000005L

    iget-object v11, v0, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v2, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 210
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 196
    .end local v0    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v13    # "etoken":J
    .end local v24    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v30    # "puid":I
    :goto_2
    add-int/lit8 v7, v29, 0x1

    move-object/from16 v0, v16

    move/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move/from16 v14, v28

    .end local v29    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_1

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v25    # "ip":I
    .end local v26    # "pname":Ljava/lang/String;
    .end local v27    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v28    # "uidCount":I
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v11    # "ip":I
    .restart local v12    # "pname":Ljava/lang/String;
    .local v13, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v14    # "uidCount":I
    :cond_4
    move-object/from16 v16, v0

    move/from16 v29, v7

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move/from16 v28, v14

    .line 212
    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v7    # "i":I
    .end local v11    # "ip":I
    .end local v12    # "pname":Ljava/lang/String;
    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v14    # "uidCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v25    # "ip":I
    .restart local v26    # "pname":Ljava/lang/String;
    .restart local v27    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v28    # "uidCount":I
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 189
    .end local v9    # "btoken":J
    .end local v26    # "pname":Ljava/lang/String;
    .end local v27    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v28    # "uidCount":I
    add-int/lit8 v11, v25, 0x1

    move-wide/from16 v7, v22

    .end local v25    # "ip":I
    .restart local v11    # "ip":I
    goto/16 :goto_0

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v22    # "now":J
    .restart local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v7, "now":J
    :cond_5
    move-object/from16 v16, v0

    move-wide/from16 v22, v7

    move/from16 v25, v11

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v7    # "now":J
    .end local v11    # "ip":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v22    # "now":J
    .restart local v25    # "ip":I
    goto :goto_3

    .line 186
    .end local v15    # "processCount":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v22    # "now":J
    .end local v25    # "ip":I
    .restart local v7    # "now":J
    :cond_6
    move-wide/from16 v22, v7

    .line 216
    .end local v7    # "now":J
    .restart local v22    # "now":J
    :goto_3
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v7

    .line 217
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 218
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 219
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 220
    .local v8, "procCount":I
    const/4 v9, 0x0

    .local v9, "ip":I
    :goto_4
    if-ge v9, v8, :cond_b

    .line 221
    const-wide v11, 0x20b00000002L

    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 222
    .local v13, "ctoken":J
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 223
    .local v10, "pname":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 224
    .local v11, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 226
    .local v12, "uidCount":I
    move v15, v8

    move/from16 v16, v9

    const-wide v8, 0x10900000001L

    .end local v8    # "procCount":I
    .end local v9    # "ip":I
    .local v15, "procCount":I
    .local v16, "ip":I
    invoke-virtual {v2, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 227
    const/16 v20, 0x0

    move/from16 v8, v20

    .local v8, "i":I
    :goto_5
    if-ge v8, v12, :cond_a

    .line 228
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 229
    .local v9, "puid":I
    move-object/from16 v20, v0

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v20, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v0

    invoke-virtual {v0, v10, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 230
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_8

    if-eqz v0, :cond_7

    .line 231
    move-object/from16 v21, v0

    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .local v21, "r":Lcom/android/server/am/ProcessRecord;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_9

    .line 232
    move-object/from16 v17, v4

    const-wide v3, 0x10300000002L

    goto :goto_6

    .line 243
    .end local v8    # "i":I
    .end local v9    # "puid":I
    .end local v10    # "pname":Ljava/lang/String;
    .end local v11    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v12    # "uidCount":I
    .end local v13    # "ctoken":J
    .end local v15    # "procCount":I
    .end local v16    # "ip":I
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v21    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_8

    .line 230
    .restart local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "i":I
    .restart local v9    # "puid":I
    .restart local v10    # "pname":Ljava/lang/String;
    .restart local v11    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .restart local v12    # "uidCount":I
    .restart local v13    # "ctoken":J
    .restart local v15    # "procCount":I
    .restart local v16    # "ip":I
    .restart local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_7
    move-object/from16 v21, v0

    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v17, v4

    const-wide v3, 0x10300000002L

    goto :goto_6

    .end local v21    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_8
    move-object/from16 v21, v0

    .line 234
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_9
    const-wide v0, 0x20b00000002L

    :try_start_2
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v18

    move-wide/from16 v26, v18

    .line 235
    .local v26, "etoken":J
    const-wide v0, 0x10500000001L

    invoke-virtual {v2, v0, v1, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 236
    nop

    .line 237
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 236
    move-object/from16 v17, v4

    const-wide v3, 0x10300000002L

    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v17, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :try_start_3
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 238
    move-wide/from16 v0, v26

    .end local v26    # "etoken":J
    .local v0, "etoken":J
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 227
    .end local v0    # "etoken":J
    .end local v9    # "puid":I
    .end local v21    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, v17

    move-object/from16 v0, v20

    goto :goto_5

    .line 243
    .end local v8    # "i":I
    .end local v10    # "pname":Ljava/lang/String;
    .end local v11    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v12    # "uidCount":I
    .end local v13    # "ctoken":J
    .end local v15    # "procCount":I
    .end local v16    # "ip":I
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :catchall_1
    move-exception v0

    goto :goto_8

    .end local v17    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v17    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    goto :goto_8

    .line 227
    .end local v17    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v8    # "i":I
    .restart local v10    # "pname":Ljava/lang/String;
    .restart local v11    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .restart local v12    # "uidCount":I
    .restart local v13    # "ctoken":J
    .restart local v15    # "procCount":I
    .restart local v16    # "ip":I
    :cond_a
    move-object/from16 v20, v0

    move-object/from16 v17, v4

    const-wide v3, 0x10300000002L

    .line 240
    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v8    # "i":I
    .restart local v17    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 220
    .end local v10    # "pname":Ljava/lang/String;
    .end local v11    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v12    # "uidCount":I
    .end local v13    # "ctoken":J
    add-int/lit8 v9, v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move v8, v15

    move-object/from16 v4, v17

    move-object/from16 v0, v20

    .end local v16    # "ip":I
    .local v9, "ip":I
    goto/16 :goto_4

    .end local v15    # "procCount":I
    .end local v17    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v8, "procCount":I
    :cond_b
    move-object/from16 v20, v0

    move-object/from16 v17, v4

    move v15, v8

    move/from16 v16, v9

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v8    # "procCount":I
    .end local v9    # "ip":I
    .restart local v15    # "procCount":I
    .restart local v16    # "ip":I
    .restart local v17    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    goto :goto_7

    .line 217
    .end local v15    # "procCount":I
    .end local v16    # "ip":I
    .end local v17    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_c
    move-object/from16 v17, v4

    .line 243
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v17    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :goto_7
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 246
    return-void

    .line 243
    :goto_8
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method dumpLPr(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 250
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 251
    .local v4, "now":J
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v6

    .line 252
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "printed":Z
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 255
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 256
    .local v8, "processCount":I
    const/4 v9, 0x0

    move v10, v9

    move/from16 v9, p3

    .end local p3    # "needSep":Z
    .local v9, "needSep":Z
    .local v10, "ip":I
    :goto_0
    if-ge v10, v8, :cond_6

    .line 257
    :try_start_1
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 258
    .local v11, "pname":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 259
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 260
    .local v13, "uidCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v13, :cond_5

    .line 261
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 262
    .local v15, "puid":I
    move/from16 p3, v0

    .end local v0    # "printed":Z
    .local p3, "printed":Z
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v0

    invoke-virtual {v0, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 263
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    .line 264
    move-object/from16 v16, v0

    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .local v16, "r":Lcom/android/server/am/ProcessRecord;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    goto :goto_2

    .line 312
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .end local v10    # "ip":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .end local v15    # "puid":I
    .end local v16    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p3    # "printed":Z
    :catchall_0
    move-exception v0

    move-wide/from16 v19, v4

    goto/16 :goto_e

    .line 263
    .restart local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    .restart local v10    # "ip":I
    .restart local v11    # "pname":Ljava/lang/String;
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .restart local v13    # "uidCount":I
    .restart local v14    # "i":I
    .restart local v15    # "puid":I
    .restart local p3    # "printed":Z
    :cond_0
    move-object/from16 v16, v0

    .line 260
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    :goto_2
    move-wide/from16 v19, v4

    move/from16 v0, p3

    goto :goto_4

    .line 263
    .restart local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "puid":I
    :cond_1
    move-object/from16 v16, v0

    .line 267
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_2
    if-nez p3, :cond_4

    .line 268
    if-eqz v9, :cond_3

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 269
    :cond_3
    const/4 v9, 0x1

    .line 270
    const-string v0, "  Time since processes crashed:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    const/4 v0, 0x1

    .end local p3    # "printed":Z
    .local v0, "printed":Z
    goto :goto_3

    .line 267
    .end local v0    # "printed":Z
    .restart local p3    # "printed":Z
    :cond_4
    move/from16 v0, p3

    .line 273
    .end local p3    # "printed":Z
    .restart local v0    # "printed":Z
    :goto_3
    move/from16 p3, v0

    .end local v0    # "printed":Z
    .restart local p3    # "printed":Z
    :try_start_3
    const-string v0, "    Process "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string v0, " uid "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 275
    const-string v0, ": last crashed "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v19, v4

    .end local v4    # "now":J
    .local v19, "now":J
    sub-long v4, v19, v17

    :try_start_4
    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 277
    const-string v0, " ago"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v0, p3

    .line 260
    .end local v15    # "puid":I
    .end local v16    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p3    # "printed":Z
    .restart local v0    # "printed":Z
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v4, v19

    goto :goto_1

    .line 312
    .end local v0    # "printed":Z
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .end local v10    # "ip":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    :catchall_1
    move-exception v0

    goto/16 :goto_e

    .end local v19    # "now":J
    .restart local v4    # "now":J
    :catchall_2
    move-exception v0

    move-wide/from16 v19, v4

    .end local v4    # "now":J
    .restart local v19    # "now":J
    goto/16 :goto_e

    .line 260
    .end local v19    # "now":J
    .restart local v0    # "printed":Z
    .restart local v4    # "now":J
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    .restart local v10    # "ip":I
    .restart local v11    # "pname":Ljava/lang/String;
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .restart local v13    # "uidCount":I
    .restart local v14    # "i":I
    :cond_5
    move/from16 p3, v0

    move-wide/from16 v19, v4

    .line 256
    .end local v0    # "printed":Z
    .end local v4    # "now":J
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .restart local v19    # "now":J
    .restart local p3    # "printed":Z
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .end local v19    # "now":J
    .end local p3    # "printed":Z
    .restart local v0    # "printed":Z
    .restart local v4    # "now":J
    :cond_6
    move-wide/from16 v19, v4

    .end local v4    # "now":J
    .restart local v19    # "now":J
    goto :goto_5

    .line 312
    .end local v0    # "printed":Z
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .end local v9    # "needSep":Z
    .end local v10    # "ip":I
    .end local v19    # "now":J
    .restart local v4    # "now":J
    .local p3, "needSep":Z
    :catchall_3
    move-exception v0

    move-wide/from16 v19, v4

    move/from16 v9, p3

    .end local v4    # "now":J
    .restart local v19    # "now":J
    goto/16 :goto_e

    .line 252
    .end local v19    # "now":J
    .restart local v4    # "now":J
    :cond_7
    move-wide/from16 v19, v4

    .end local v4    # "now":J
    .restart local v19    # "now":J
    move/from16 v9, p3

    .line 282
    .end local p3    # "needSep":Z
    .restart local v9    # "needSep":Z
    :goto_5
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 283
    const/4 v0, 0x0

    .line 284
    .restart local v0    # "printed":Z
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 285
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 286
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 287
    .local v5, "processCount":I
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_6
    if-ge v7, v5, :cond_d

    .line 288
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 289
    .local v8, "pname":Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 290
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 291
    .local v11, "uidCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    if-ge v12, v11, :cond_c

    .line 292
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 293
    .local v13, "puid":I
    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v14

    invoke-virtual {v14, v8, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 294
    .local v14, "r":Lcom/android/server/am/ProcessRecord;
    nop

    nop

    if-eqz v3, :cond_9

    if-eqz v14, :cond_8

    .line 295
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 296
    nop

    .line 291
    .end local v13    # "puid":I
    .end local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_8
    move-object/from16 p3, v4

    move/from16 v17, v5

    goto :goto_8

    .line 298
    .restart local v13    # "puid":I
    .restart local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_9
    if-nez v0, :cond_b

    .line 299
    if-eqz v9, :cond_a

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 300
    :cond_a
    const/4 v9, 0x1

    .line 301
    const-string v15, "  First time processes crashed and counts:"

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x1

    .line 304
    :cond_b
    const-string v15, "    Process "

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    const-string v15, " uid "

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 306
    const-string v15, ": first crashed "

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object/from16 p3, v4

    move/from16 v17, v5

    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .end local v5    # "processCount":I
    .local v17, "processCount":I
    .local p3, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    sub-long v4, v19, v15

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 308
    const-string v4, " ago; crashes since then: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 291
    .end local v13    # "puid":I
    .end local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, p3

    move/from16 v5, v17

    goto :goto_7

    .end local v17    # "processCount":I
    .end local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .restart local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .restart local v5    # "processCount":I
    :cond_c
    move-object/from16 p3, v4

    move/from16 v17, v5

    .line 287
    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .end local v5    # "processCount":I
    .end local v8    # "pname":Ljava/lang/String;
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    .end local v11    # "uidCount":I
    .end local v12    # "i":I
    .restart local v17    # "processCount":I
    .restart local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .end local v17    # "processCount":I
    .end local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .restart local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .restart local v5    # "processCount":I
    :cond_d
    move-object/from16 p3, v4

    move/from16 v17, v5

    .line 312
    .end local v0    # "printed":Z
    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .end local v5    # "processCount":I
    .end local v7    # "ip":I
    :cond_e
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 314
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 315
    .local v0, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 316
    const/4 v4, 0x0

    .line 317
    .local v4, "printed":Z
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    .line 318
    .local v5, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 319
    .local v6, "processCount":I
    const/4 v7, 0x0

    .restart local v7    # "ip":I
    :goto_9
    if-ge v7, v6, :cond_19

    .line 320
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 321
    .restart local v8    # "pname":Ljava/lang/String;
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 322
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 323
    .restart local v11    # "uidCount":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    if-ge v12, v11, :cond_18

    .line 324
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 325
    .restart local v13    # "puid":I
    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v14

    invoke-virtual {v14, v8, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 326
    .restart local v14    # "r":Lcom/android/server/am/ProcessRecord;
    nop

    nop

    if-eqz v3, :cond_10

    if-eqz v14, :cond_f

    .line 327
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 328
    nop

    .line 323
    .end local v13    # "puid":I
    .end local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_f
    move-object/from16 v16, v0

    goto/16 :goto_c

    .line 330
    .restart local v13    # "puid":I
    .restart local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_10
    if-nez v4, :cond_12

    .line 331
    if-eqz v9, :cond_11

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 332
    :cond_11
    const/4 v9, 0x1

    .line 333
    const-string v15, "  Bad processes:"

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    const/4 v4, 0x1

    .line 336
    :cond_12
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 337
    .local v15, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object/from16 v16, v0

    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v16, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    const-string v0, "    Bad process "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    const-string v0, " uid "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 339
    const-string v0, ": crashed at time "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 340
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 341
    const-string v0, "      Short msg: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    :cond_13
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 344
    const-string v0, "      Long msg: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    :cond_14
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 347
    const-string v0, "      Stack:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "lastPos":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_b
    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_16

    .line 350
    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v17, v1

    .end local v1    # "pos":I
    .local v17, "pos":I
    const/16 v1, 0xa

    if-ne v3, v1, :cond_15

    .line 351
    const-string v1, "        "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    iget-object v1, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v3, v17, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 353
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 354
    add-int/lit8 v1, v17, 0x1

    move v0, v1

    .line 349
    :cond_15
    add-int/lit8 v1, v17, 0x1

    move-object/from16 v3, p4

    .end local v17    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_b

    :cond_16
    move/from16 v17, v1

    .line 357
    .end local v1    # "pos":I
    iget-object v1, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 358
    const-string v1, "        "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget-object v1, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 360
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 323
    .end local v0    # "lastPos":I
    .end local v13    # "puid":I
    .end local v14    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    :cond_17
    :goto_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v0, v16

    goto/16 :goto_a

    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v0, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_18
    move-object/from16 v16, v0

    .line 319
    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v11    # "uidCount":I
    .end local v12    # "i":I
    .restart local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    goto/16 :goto_9

    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_19
    move-object/from16 v16, v0

    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    goto :goto_d

    .line 315
    .end local v4    # "printed":Z
    .end local v5    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v6    # "processCount":I
    .end local v7    # "ip":I
    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_1a
    move-object/from16 v16, v0

    .line 366
    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :goto_d
    return v9

    .line 312
    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :goto_e
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .line 833
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 835
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 836
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 837
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 838
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 839
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 840
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 841
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 842
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 844
    return-object v0
.end method

.method handleDismissAnrDialogs(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1184
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1185
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1188
    .local v1, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    .line 1189
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrData()Lcom/android/server/am/AppNotRespondingDialog$Data;

    move-result-object v3

    .line 1188
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1192
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1193
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 1194
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 1195
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    goto :goto_0

    .line 1198
    .end local v1    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1197
    .restart local v1    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 1198
    .end local v1    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1199
    return-void

    .line 1198
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 1121
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1122
    .local v2, "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v3, 0x0

    .line 1123
    .local v3, "doKill":Z
    move-object/from16 v4, p1

    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1124
    .local v5, "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    iget-object v6, v5, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1125
    .local v6, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v6, :cond_0

    .line 1126
    const-string v0, "ActivityManager"

    const-string/jumbo v7, "handleShowAnrUi: proc is null"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-void

    .line 1129
    :cond_0
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v7

    .line 1130
    :try_start_0
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1131
    .local v0, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 1132
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v8, :cond_1

    .line 1133
    :try_start_1
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v8

    goto :goto_0

    .line 1172
    .end local v0    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 1135
    .restart local v0    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v9, 0x13d

    if-eqz v8, :cond_2

    .line 1136
    :try_start_3
    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App already has anr dialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1139
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1142
    :cond_2
    :try_start_4
    iget v8, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v1, v8}, Lcom/android/server/am/AppErrors;->getVisibleUserId(I)I

    move-result v8

    .line 1143
    .local v8, "visibleUserId":I
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "anr_show_background"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v12

    .line 1145
    .local v10, "showBackground":Z
    :goto_1
    iget-object v11, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v11, v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs(I)Z

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v11, :cond_4

    if-eqz v10, :cond_5

    :cond_4
    goto :goto_2

    .line 1167
    :cond_5
    :try_start_5
    iget-object v11, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v12, -0x1

    invoke-static {v11, v9, v12}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1170
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 1146
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ErrorDialogController;->getAnrController()Landroid/app/AnrController;

    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1147
    .local v9, "anrController":Landroid/app/AnrController;
    if-nez v9, :cond_6

    .line 1148
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v16, v3

    goto :goto_3

    .line 1150
    :cond_6
    :try_start_8
    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1151
    .local v11, "packageName":Ljava/lang/String;
    iget-object v13, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1152
    .local v13, "uid":I
    invoke-interface {v9, v11, v13}, Landroid/app/AnrController;->onAnrDelayCompleted(Ljava/lang/String;I)Z

    move-result v14

    .line 1154
    .local v14, "showDialog":Z
    if-eqz v14, :cond_7

    .line 1155
    const-string v12, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move/from16 v16, v3

    .end local v3    # "doKill":Z
    .local v16, "doKill":Z
    :try_start_9
    const-string v3, "ANR delay completed. Showing ANR dialog for package: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_3

    .line 1172
    .end local v0    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v8    # "visibleUserId":I
    .end local v9    # "anrController":Landroid/app/AnrController;
    .end local v10    # "showBackground":Z
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "uid":I
    .end local v14    # "showDialog":Z
    :catchall_1
    move-exception v0

    move/from16 v3, v16

    goto :goto_5

    .end local v16    # "doKill":Z
    .restart local v3    # "doKill":Z
    :catchall_2
    move-exception v0

    move/from16 v16, v3

    .end local v3    # "doKill":Z
    .restart local v16    # "doKill":Z
    goto :goto_5

    .line 1159
    .end local v16    # "doKill":Z
    .restart local v0    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v3    # "doKill":Z
    .restart local v8    # "visibleUserId":I
    .restart local v9    # "anrController":Landroid/app/AnrController;
    .restart local v10    # "showBackground":Z
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v13    # "uid":I
    .restart local v14    # "showDialog":Z
    :cond_7
    move/from16 v16, v3

    .end local v3    # "doKill":Z
    .restart local v16    # "doKill":Z
    const-string v3, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ANR delay completed. Cancelling ANR dialog for package: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 1162
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 1163
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1166
    .end local v9    # "anrController":Landroid/app/AnrController;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "uid":I
    .end local v14    # "showDialog":Z
    :goto_3
    move/from16 v3, v16

    .line 1172
    .end local v0    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v8    # "visibleUserId":I
    .end local v10    # "showBackground":Z
    .end local v16    # "doKill":Z
    .restart local v3    # "doKill":Z
    :goto_4
    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1173
    if-eqz v3, :cond_8

    .line 1174
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    .line 1177
    :cond_8
    if-eqz v2, :cond_9

    .line 1178
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    const/4 v7, 0x4

    invoke-virtual {v0, v2, v7}, Lcom/android/server/PackageWatchdog;->notifyPackageFailure(Ljava/util/List;I)V

    .line 1181
    :cond_9
    return-void

    .line 1172
    :goto_5
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .line 1036
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    .line 1039
    .local v3, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    .line 1040
    :try_start_0
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 1041
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    move-object v6, v0

    .line 1042
    .local v6, "res":Lcom/android/server/am/AppErrorResult;
    if-nez v5, :cond_0

    .line 1043
    const-string v0, "ActivityManager"

    const-string/jumbo v7, "handleShowAppErrorUi: proc is null"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1109
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 1046
    .restart local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "res":Lcom/android/server/am/AppErrorResult;
    :cond_0
    :try_start_1
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object v7, v0

    .line 1047
    .local v7, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    move v8, v0

    .line 1048
    .local v8, "userId":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    const-string v0, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App already has crash dialog: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    if-eqz v6, :cond_1

    .line 1051
    sget v0, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v6, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1053
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1055
    :cond_2
    :try_start_2
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v9, 0x2710

    const/4 v11, 0x0

    if-lt v0, v9, :cond_3

    .line 1057
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v9, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v11

    :goto_0
    nop

    .line 1058
    .local v0, "isBackground":Z
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v9}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v9

    array-length v12, v9

    move v13, v0

    move v0, v11

    .end local v0    # "isBackground":Z
    .local v13, "isBackground":Z
    :goto_1
    if-ge v0, v12, :cond_5

    aget v14, v9, v0

    .line 1059
    .local v14, "profileId":I
    if-eq v8, v14, :cond_4

    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    move v15, v11

    :goto_2
    and-int/2addr v13, v15

    .line 1058
    .end local v14    # "profileId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1061
    :cond_5
    invoke-direct {v1, v8}, Lcom/android/server/am/AppErrors;->getVisibleUserId(I)I

    move-result v0

    move v9, v0

    .line 1062
    .local v9, "visibleUserId":I
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1063
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v0

    move v12, v0

    .line 1064
    .local v12, "isVisibleUser":Z
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "anr_show_background"

    invoke-static {v0, v14, v11, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v11

    :goto_3
    move v14, v0

    .line 1066
    .local v14, "showBackground":Z
    if-eqz v13, :cond_8

    if-nez v14, :cond_8

    if-nez v12, :cond_8

    .line 1067
    const-string v0, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping crash dialog of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": background"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    if-eqz v6, :cond_7

    .line 1069
    sget v0, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v6, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1071
    :cond_7
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1073
    :cond_8
    const/4 v15, 0x0

    .line 1074
    .local v15, "crashShowErrorTime":Ljava/lang/Long;
    :try_start_3
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1075
    :try_start_4
    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v0, :cond_9

    .line 1076
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v11, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v15, v0

    goto :goto_4

    .line 1108
    :catchall_1
    move-exception v0

    move-object/from16 v18, v7

    move/from16 v24, v12

    goto/16 :goto_d

    .line 1079
    :cond_9
    :goto_4
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 1080
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "show_first_crash_dialog"

    .line 1079
    const/4 v11, 0x0

    invoke-static {v0, v2, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v11, 0x1

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    .line 1082
    .local v11, "showFirstCrash":Z
    :goto_5
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 1083
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "show_first_crash_dialog_dev_option"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1082
    move-object/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .local v18, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :try_start_7
    invoke-static {v0, v2, v7, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    move v0, v7

    .line 1087
    .local v0, "showFirstCrashDevOption":Z
    :goto_6
    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1088
    .local v2, "packageName":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v7, :cond_c

    :try_start_8
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    move/from16 v19, v0

    .end local v0    # "showFirstCrashDevOption":Z
    .local v19, "showFirstCrashDevOption":Z
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1089
    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    .line 1108
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v11    # "showFirstCrash":Z
    .end local v19    # "showFirstCrashDevOption":Z
    :catchall_2
    move-exception v0

    move/from16 v24, v12

    goto/16 :goto_d

    .line 1088
    .restart local v0    # "showFirstCrashDevOption":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v11    # "showFirstCrash":Z
    :cond_c
    move/from16 v19, v0

    .line 1089
    .end local v0    # "showFirstCrashDevOption":Z
    .restart local v19    # "showFirstCrashDevOption":Z
    :cond_d
    const/4 v0, 0x0

    :goto_7
    nop

    .line 1090
    .local v0, "crashSilenced":Z
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 1091
    .local v20, "now":J
    if-eqz v15, :cond_e

    .line 1092
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sget v7, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move/from16 v25, v11

    move/from16 v24, v12

    .end local v11    # "showFirstCrash":Z
    .end local v12    # "isVisibleUser":Z
    .local v24, "isVisibleUser":Z
    .local v25, "showFirstCrash":Z
    int-to-long v11, v7

    add-long v22, v22, v11

    cmp-long v7, v20, v22

    if-gez v7, :cond_f

    const/16 v16, 0x1

    goto :goto_8

    .line 1108
    .end local v0    # "crashSilenced":Z
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v19    # "showFirstCrashDevOption":Z
    .end local v20    # "now":J
    .end local v24    # "isVisibleUser":Z
    .end local v25    # "showFirstCrash":Z
    .restart local v12    # "isVisibleUser":Z
    :catchall_3
    move-exception v0

    move/from16 v24, v12

    .end local v12    # "isVisibleUser":Z
    .restart local v24    # "isVisibleUser":Z
    goto/16 :goto_d

    .line 1091
    .end local v24    # "isVisibleUser":Z
    .restart local v0    # "crashSilenced":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v11    # "showFirstCrash":Z
    .restart local v12    # "isVisibleUser":Z
    .restart local v19    # "showFirstCrashDevOption":Z
    .restart local v20    # "now":J
    :cond_e
    move/from16 v25, v11

    move/from16 v24, v12

    .line 1092
    .end local v11    # "showFirstCrash":Z
    .end local v12    # "isVisibleUser":Z
    .restart local v24    # "isVisibleUser":Z
    .restart local v25    # "showFirstCrash":Z
    :cond_f
    const/16 v16, 0x0

    :goto_8
    nop

    .line 1093
    .local v16, "shouldThottle":Z
    :try_start_a
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs(I)Z

    move-result v7

    if-nez v7, :cond_10

    if-eqz v14, :cond_11

    :cond_10
    goto :goto_9

    :cond_11
    move/from16 v17, v0

    goto :goto_b

    :goto_9
    if-nez v0, :cond_14

    if-nez v16, :cond_14

    if-nez v25, :cond_12

    if-nez v19, :cond_12

    iget-boolean v7, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v7, :cond_11

    :cond_12
    goto :goto_a

    .line 1108
    .end local v0    # "crashSilenced":Z
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v16    # "shouldThottle":Z
    .end local v19    # "showFirstCrashDevOption":Z
    .end local v20    # "now":J
    .end local v25    # "showFirstCrash":Z
    :catchall_4
    move-exception v0

    goto :goto_d

    .line 1096
    .restart local v0    # "crashSilenced":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v16    # "shouldThottle":Z
    .restart local v19    # "showFirstCrashDevOption":Z
    .restart local v20    # "now":J
    .restart local v25    # "showFirstCrash":Z
    :goto_a
    const-string v7, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Showing crash dialog for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " u"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/am/ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 1098
    iget-boolean v7, v5, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v7, :cond_13

    .line 1099
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v12, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v17, v0

    .end local v0    # "crashSilenced":Z
    .local v17, "crashSilenced":Z
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v11, v12, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 1098
    .end local v17    # "crashSilenced":Z
    .restart local v0    # "crashSilenced":Z
    :cond_13
    move/from16 v17, v0

    .end local v0    # "crashSilenced":Z
    .restart local v17    # "crashSilenced":Z
    goto :goto_c

    .line 1093
    .end local v17    # "crashSilenced":Z
    .restart local v0    # "crashSilenced":Z
    :cond_14
    move/from16 v17, v0

    .line 1104
    .end local v0    # "crashSilenced":Z
    .restart local v17    # "crashSilenced":Z
    :goto_b
    if-eqz v6, :cond_15

    .line 1105
    sget v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v6, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1108
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v16    # "shouldThottle":Z
    .end local v17    # "crashSilenced":Z
    .end local v19    # "showFirstCrashDevOption":Z
    .end local v20    # "now":J
    .end local v25    # "showFirstCrash":Z
    :cond_15
    :goto_c
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1109
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v9    # "visibleUserId":I
    .end local v13    # "isBackground":Z
    .end local v14    # "showBackground":Z
    .end local v15    # "crashShowErrorTime":Ljava/lang/Long;
    .end local v18    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v24    # "isVisibleUser":Z
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1110
    return-void

    .line 1108
    .restart local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v7    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v9    # "visibleUserId":I
    .restart local v12    # "isVisibleUser":Z
    .restart local v13    # "isBackground":Z
    .restart local v14    # "showBackground":Z
    .restart local v15    # "crashShowErrorTime":Ljava/lang/Long;
    :catchall_5
    move-exception v0

    move-object/from16 v18, v7

    move/from16 v24, v12

    .end local v7    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v12    # "isVisibleUser":Z
    .restart local v18    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v24    # "isVisibleUser":Z
    :goto_d
    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .end local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_d
    throw v0

    .line 1109
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v8    # "userId":I
    .end local v9    # "visibleUserId":I
    .end local v13    # "isBackground":Z
    .end local v14    # "showBackground":Z
    .end local v15    # "crashShowErrorTime":Ljava/lang/Long;
    .end local v18    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v24    # "isVisibleUser":Z
    .restart local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "msg":Landroid/os/Message;
    :goto_e
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method isBadProcess(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 371
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 479
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v1

    .line 481
    .local v1, "controller":Lcom/android/server/am/ErrorDialogController;
    const/4 v2, 0x6

    .line 482
    .local v2, "reasonCode":I
    const/4 v3, 0x0

    .line 483
    .local v3, "subReason":I
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    .line 484
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->hasDebugWaitingDialog()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 485
    const/16 v2, 0xd

    .line 486
    const/4 v3, 0x1

    move v7, v2

    move v8, v3

    goto :goto_0

    .line 484
    :cond_0
    move v7, v2

    move v8, v3

    .line 488
    .end local v2    # "reasonCode":I
    .end local v3    # "subReason":I
    .local v7, "reasonCode":I
    .local v8, "subReason":I
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    .line 489
    const-string/jumbo v9, "user-terminated"

    const-string/jumbo v10, "user request after error"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, p0

    move-object v6, p1

    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    :try_start_2
    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 491
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v0

    move-object p1, v0

    move v2, v7

    move v3, v8

    goto :goto_1

    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    move v2, v7

    move v3, v8

    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_1

    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "reasonCode":I
    .end local v8    # "subReason":I
    .restart local v2    # "reasonCode":I
    .restart local v3    # "subReason":I
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1

    :catchall_3
    move-exception v0

    move-object p1, v0

    goto :goto_1
.end method

.method loadAppsNotReportingCrashesFromConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    .line 466
    if-eqz p1, :cond_0

    .line 467
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 471
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 472
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 475
    .end local v0    # "split":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void
.end method

.method markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "info"    # Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 402
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_0
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 404
    .local v1, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 405
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 406
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 407
    .end local v1    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetProcessCrashTime(Ljava/lang/String;I)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 411
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 413
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 414
    monitor-exit v0

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetProcessCrashTime(ZII)V
    .locals 6
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 418
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 420
    .local v1, "pTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_1

    .line 421
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 422
    .local v3, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    .line 423
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 424
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    .line 437
    .end local v1    # "pTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v2    # "ip":I
    .end local v3    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 420
    .restart local v1    # "pTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v2    # "ip":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 428
    .end local v2    # "ip":I
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 429
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 430
    .local v2, "pCountMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ip":I
    :goto_2
    if-ltz v3, :cond_3

    .line 431
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 432
    .local v4, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    .line 433
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 434
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 430
    .end local v4    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    nop

    .line 437
    .end local v1    # "pTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v2    # "pCountMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .end local v3    # "ip":I
    monitor-exit v0

    .line 438
    return-void

    .line 437
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetState()V
    .locals 2

    .line 164
    const-string v0, "ActivityManager"

    const-string v1, "Resetting AppErrors"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 167
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 168
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 169
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 170
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 171
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 172
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "force"    # Z
    .param p7, "exceptionTypeId"    # I
    .param p8, "extras"    # Landroid/os/Bundle;

    .line 523
    const/4 v0, 0x0

    .line 529
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 530
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 531
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 532
    .local v3, "p":Lcom/android/server/am/ProcessRecord;
    if-ltz p1, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_0

    .line 533
    goto :goto_1

    .line 544
    .end local v2    # "i":I
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    goto/16 :goto_4

    .line 535
    .restart local v2    # "i":I
    .restart local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 536
    move-object v0, v3

    .line 537
    goto :goto_2

    .line 539
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz p4, :cond_2

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_3

    .line 541
    :cond_2
    move-object v0, v3

    .line 530
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    .end local v2    # "i":I
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    if-nez v0, :cond_5

    .line 547
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashApplication: nothing for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " initialPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 554
    :cond_5
    const/4 v1, 0x5

    if-ne p7, v1, :cond_7

    .line 555
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 557
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    aget-object v4, v1, v2

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 558
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crashApplication: Can not crash protected package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void

    .line 556
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 564
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/16 v2, 0xc

    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeProcess(II)V

    .line 566
    invoke-virtual {v0, p5, p7, p8}, Lcom/android/server/am/ProcessRecord;->scheduleCrashLocked(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 567
    if-eqz p6, :cond_8

    .line 570
    move-object v1, v0

    .line 571
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_8
    return-void

    .line 544
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method sendRecoverableCrashToAppExitInfo(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 587
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "Native crash"

    iget-object v1, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList;->noteAppRecoverableCrash(Lcom/android/server/am/ProcessRecord;)V

    .line 591
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 592
    return-void

    .line 591
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 588
    :cond_1
    :goto_0
    return-void
.end method
