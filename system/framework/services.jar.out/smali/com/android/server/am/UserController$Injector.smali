.class Lcom/android/server/am/UserController$Injector;
.super Ljava/lang/Object;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field private mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

.field private final mUserSwitchingDialogLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$FvvzSlnmEfZ797QDRQWwplqhvGU(Landroid/appwidget/AppWidgetManagerInternal;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/UserController$Injector;->lambda$startUserWidgets$0(Landroid/appwidget/AppWidgetManagerInternal;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 3934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3930
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    .line 3935
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3936
    return-void
.end method

.method private static synthetic lambda$startUserWidgets$0(Landroid/appwidget/AppWidgetManagerInternal;I)V
    .locals 0
    .param p0, "awm"    # Landroid/appwidget/AppWidgetManagerInternal;
    .param p1, "userId"    # I

    .line 4093
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManagerInternal;->unlockUser(I)V

    .line 4094
    return-void
.end method


# virtual methods
.method activityManagerForceStopUserPackages(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "evenImportantServices"    # Z

    .line 4067
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 4068
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopUserPackagesLocked(ILjava/lang/String;Z)Z

    .line 4069
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4070
    return-void

    .line 4069
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method activityManagerOnUserStopped(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 3992
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 3993
    return-void
.end method

.method batteryStatsServiceNoteEvent(ILjava/lang/String;I)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 4034
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 4035
    return-void
.end method

.method protected broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I
    .locals 27
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Ljava/lang/String;
    .param p6, "resultExtras"    # Landroid/os/Bundle;
    .param p7, "requiredPermissions"    # [Ljava/lang/String;
    .param p8, "appOp"    # I
    .param p9, "bOptions"    # Landroid/os/Bundle;
    .param p10, "sticky"    # Z
    .param p11, "callingPid"    # I
    .param p12, "callingUid"    # I
    .param p13, "realCallingUid"    # I
    .param p14, "realCallingPid"    # I
    .param p15, "userId"    # I

    .line 3964
    move-object/from16 v1, p0

    const-string v0, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    move-object/from16 v7, p1

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3965
    .local v0, "logUserId":I
    if-ne v0, v2, :cond_0

    .line 3966
    move/from16 v0, p15

    move v2, v0

    goto :goto_0

    .line 3965
    :cond_0
    move v2, v0

    .line 3968
    .end local v0    # "logUserId":I
    .local v2, "logUserId":I
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x7581

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3970
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    move-object v3, v0

    .line 3972
    .local v3, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    iget-object v4, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    .line 3973
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastIntent-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3974
    move-object v6, v3

    .end local v3    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v6, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_1
    iget-object v3, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v8, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v9, v6

    .end local v6    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v9, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    const/4 v6, 0x0

    const/4 v14, 0x0

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v19, p10

    move/from16 v20, p11

    move/from16 v21, p12

    move/from16 v22, p13

    move/from16 v23, p14

    move/from16 v24, p15

    move-object/from16 v26, v8

    move-object/from16 v25, v9

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .end local v9    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v25, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_2
    invoke-virtual/range {v3 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    move-result v0

    .line 3978
    .local v0, "result":I
    invoke-virtual/range {v25 .. v25}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3979
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 3980
    .end local v0    # "result":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v25    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v6    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_1
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v25, v6

    .end local v6    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v25    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_1

    .end local v25    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v3    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_2
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    .end local v3    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v25    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :goto_1
    :try_start_3
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method checkCallingPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 3984
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method checkComponentPermission(Ljava/lang/String;IIIZ)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "owningUid"    # I
    .param p5, "exported"    # Z

    .line 4074
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method checkPermissionForPreflight(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "pkg"    # Ljava/lang/String;

    .line 4078
    nop

    .line 4080
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4079
    invoke-static {v0, p1, p2, p3, p4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4078
    :goto_0
    return v0
.end method

.method protected clearAllLockedTasks(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 4171
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearLockedTasks(Ljava/lang/String;)V

    .line 4172
    return-void
.end method

.method clearBroadcastQueueForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4103
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 4104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    .line 4105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4106
    return-void

    .line 4105
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dismissUserSwitchingDialog(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onDismissed"    # Ljava/lang/Runnable;

    .line 4121
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    if-eqz v1, :cond_0

    .line 4123
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    invoke-virtual {v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->dismiss(Ljava/lang/Runnable;)V

    .line 4124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    goto :goto_0

    .line 4128
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4125
    :cond_0
    if-eqz p1, :cond_1

    .line 4126
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4128
    :cond_1
    :goto_0
    monitor-exit v0

    .line 4129
    return-void

    .line 4128
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAlarmManagerInternal()Lcom/android/server/AlarmManagerInternal;
    .locals 1

    .line 4026
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 3951
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 3939
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 4030
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method protected getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    .line 3955
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .locals 1

    .line 4019
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_0

    .line 4020
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 4022
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method protected getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 1

    .line 4179
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method getSystemServiceManager()Lcom/android/server/SystemServiceManager;
    .locals 1

    .line 4042
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method protected getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 3943
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method protected getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;
    .locals 1

    .line 3947
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    return-object v0
.end method

.method protected getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .line 4004
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_0

    .line 4005
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4006
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4008
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 4012
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    .line 4013
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 4015
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object v0
.end method

.method getWindowManager()Lcom/android/server/wm/WindowManagerService;
    .locals 1

    .line 3988
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method installEncryptionUnawareProviders(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 4117
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ContentProviderHelper;->installEncryptionUnawareProviders(I)V

    .line 4118
    return-void
.end method

.method isCallerRecents(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 4175
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    return v0
.end method

.method isFirstBootOrUpgrade()Z
    .locals 3

    .line 4046
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4048
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 4049
    :catch_0
    move-exception v1

    goto :goto_2

    .line 4048
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 4049
    :goto_2
    nop

    .line 4050
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method isHeadlessSystemUserMode()Z
    .locals 1

    .line 4183
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    return v0
.end method

.method isRuntimeRestarted()Z
    .locals 1

    .line 4038
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v0

    return v0
.end method

.method isUsersOnSecondaryDisplaysEnabled()Z
    .locals 1

    .line 4187
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    return v0
.end method

.method loadUserRecents(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 4109
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->loadRecentTasksForUser(I)V

    .line 4110
    return-void
.end method

.method lockDeviceNowAndWaitForKeyguardShown()V
    .locals 6

    .line 4205
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4206
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string/jumbo v1, "lockDeviceNowAndWaitForKeyguardShown"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4208
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4209
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4210
    .local v2, "bundle":Landroid/os/Bundle;
    new-instance v3, Lcom/android/server/am/UserController$Injector$2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/UserController$Injector$2;-><init>(Lcom/android/server/am/UserController$Injector;Ljava/util/concurrent/CountDownLatch;)V

    const-string/jumbo v4, "onSwitchCallback"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4215
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 4217
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4224
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4225
    nop

    .line 4226
    return-void

    .line 4218
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "User controller expected a callback while waiting to show the keyguard. Timed out after 20 seconds."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/android/server/am/UserController$Injector;
    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4224
    .restart local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local p0    # "this":Lcom/android/server/am/UserController$Injector;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 4221
    :catch_0
    move-exception v3

    nop

    .line 4222
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/android/server/am/UserController$Injector;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4224
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local p0    # "this":Lcom/android/server/am/UserController$Injector;
    :goto_0
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4225
    throw v3
.end method

.method onSystemUserVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 4201
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->onSystemUserVisibilityChanged(Z)V

    .line 4202
    return-void
.end method

.method onUserStarting(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4191
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SystemServiceManager;->onUserStarting(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 4192
    return-void
.end method

.method reportCurWakefulnessUsageEvent()V
    .locals 1

    .line 4155
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->reportCurWakefulnessUsageEvent()V

    .line 4156
    return-void
.end method

.method reportGlobalUsageEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .line 4151
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 4152
    return-void
.end method

.method sendPreBootBroadcast(IZLjava/lang/Runnable;)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "quiet"    # Z
    .param p3, "onFinish"    # Ljava/lang/Runnable;

    .line 4055
    nop

    .line 4056
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android.intent.action.PRE_BOOT_COMPLETED"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 4055
    const/16 v1, 0x7581

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4057
    new-instance v2, Lcom/android/server/am/UserController$Injector$1;

    iget-object v4, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p1

    move v7, p2

    move-object v8, p3

    .end local p1    # "userId":I
    .end local p2    # "quiet":Z
    .end local p3    # "onFinish":Ljava/lang/Runnable;
    .local v5, "userId":I
    .local v7, "quiet":Z
    .local v8, "onFinish":Ljava/lang/Runnable;
    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/UserController$Injector$1;-><init>(Lcom/android/server/am/UserController$Injector;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLjava/lang/Runnable;)V

    .line 4062
    invoke-virtual {v2}, Lcom/android/server/am/PreBootBroadcaster;->sendNext()V

    .line 4063
    return-void
.end method

.method setPerformancePowerMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 4195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting power mode MODE_FIXED_PERFORMANCE to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 4198
    return-void
.end method

.method showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "fromUser"    # Landroid/content/pm/UserInfo;
    .param p2, "toUser"    # Landroid/content/pm/UserInfo;
    .param p3, "switchingFromUserMessage"    # Ljava/lang/String;
    .param p4, "switchingToUserMessage"    # Ljava/lang/String;
    .param p5, "onShown"    # Ljava/lang/Runnable;

    .line 4134
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    .line 4135
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4139
    const-string v0, "ActivityManager"

    const-string v1, "Showing user switch dialog on UserController, it could cause a race condition if it\'s shown by CarSystemUI as well"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4143
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController$Injector;->dismissUserSwitchingDialog(Ljava/lang/Runnable;)V

    .line 4144
    new-instance v2, Lcom/android/server/am/UserSwitchingDialog;

    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "fromUser":Landroid/content/pm/UserInfo;
    .end local p2    # "toUser":Landroid/content/pm/UserInfo;
    .end local p3    # "switchingFromUserMessage":Ljava/lang/String;
    .end local p4    # "switchingToUserMessage":Ljava/lang/String;
    .local v4, "fromUser":Landroid/content/pm/UserInfo;
    .local v5, "toUser":Landroid/content/pm/UserInfo;
    .local v7, "switchingFromUserMessage":Ljava/lang/String;
    .local v8, "switchingToUserMessage":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    .line 4146
    iget-object p1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    invoke-virtual {p1, p5}, Lcom/android/server/am/UserSwitchingDialog;->show(Ljava/lang/Runnable;)V

    .line 4147
    monitor-exit v1

    .line 4148
    return-void

    .line 4147
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v4    # "fromUser":Landroid/content/pm/UserInfo;
    .end local v5    # "toUser":Landroid/content/pm/UserInfo;
    .end local v7    # "switchingFromUserMessage":Ljava/lang/String;
    .end local v8    # "switchingToUserMessage":Ljava/lang/String;
    .restart local p1    # "fromUser":Landroid/content/pm/UserInfo;
    .restart local p2    # "toUser":Landroid/content/pm/UserInfo;
    .restart local p3    # "switchingFromUserMessage":Ljava/lang/String;
    .restart local p4    # "switchingToUserMessage":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    move-object p1, v0

    .end local p1    # "fromUser":Landroid/content/pm/UserInfo;
    .end local p2    # "toUser":Landroid/content/pm/UserInfo;
    .end local p3    # "switchingFromUserMessage":Ljava/lang/String;
    .end local p4    # "switchingToUserMessage":Ljava/lang/String;
    .restart local v4    # "fromUser":Landroid/content/pm/UserInfo;
    .restart local v5    # "toUser":Landroid/content/pm/UserInfo;
    .restart local v7    # "switchingFromUserMessage":Ljava/lang/String;
    .restart local v8    # "switchingToUserMessage":Ljava/lang/String;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected startHomeActivity(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 4084
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    .line 4085
    return-void
.end method

.method startPersistentApps(I)V
    .locals 1
    .param p1, "matchFlags"    # I

    .line 4113
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->startPersistentApps(I)V

    .line 4114
    return-void
.end method

.method startUserWidgets(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 4088
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManagerInternal;

    .line 4089
    .local v0, "awm":Landroid/appwidget/AppWidgetManagerInternal;
    if-eqz v0, :cond_0

    .line 4092
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManagerInternal;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4096
    :cond_0
    return-void
.end method

.method systemServiceManagerOnUserCompletedEvent(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "eventTypes"    # I

    .line 4000
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SystemServiceManager;->onUserCompletedEvent(II)V

    .line 4001
    return-void
.end method

.method systemServiceManagerOnUserStopped(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 3996
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/SystemServiceManager;->onUserStopped(I)V

    .line 3997
    return-void
.end method

.method taskSupervisorRemoveUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 4159
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeUser(I)V

    .line 4160
    return-void
.end method

.method protected taskSupervisorResumeFocusedStackTopActivity()V
    .locals 2

    .line 4167
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 4168
    return-void
.end method

.method protected taskSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 4163
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->switchUser(ILcom/android/server/am/UserState;)Z

    move-result v0

    return v0
.end method

.method updateUserConfiguration()V
    .locals 1

    .line 4099
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->updateUserConfiguration()V

    .line 4100
    return-void
.end method
