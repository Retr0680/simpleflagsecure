.class Lcom/android/server/wm/ActivityRefresher;
.super Ljava/lang/Object;
.source "ActivityRefresher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityRefresher$Evaluator;
    }
.end annotation


# static fields
.field private static final REFRESH_CALLBACK_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private final mEvaluators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRefresher$Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$WDYeu8LhQV7CvDT_5B8bMM1qFDw(Lcom/android/server/wm/ActivityRefresher;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->lambda$onActivityConfigurationChanging$0(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZwO7VpmwnP9FlPRmGMzyHmcJCmE(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityRefresher;->lambda$shouldRefreshActivity$1(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 54
    iput-object p2, p0, Lcom/android/server/wm/ActivityRefresher;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method private synthetic lambda$onActivityConfigurationChanging$0(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static synthetic lambda$shouldRefreshActivity$1(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "lastReportedConfig"    # Landroid/content/res/Configuration;
    .param p3, "evaluator"    # Ljava/lang/Object;

    .line 126
    move-object v0, p3

    check-cast v0, Lcom/android/server/wm/ActivityRefresher$Evaluator;

    .line 127
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/ActivityRefresher$Evaluator;->shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    .line 126
    return v0
.end method

.method private shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatRefreshEnabled()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 123
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityForCameraCompat()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0
.end method


# virtual methods
.method addEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V
    .locals 1
    .param p1, "evaluator"    # Lcom/android/server/wm/ActivityRefresher$Evaluator;

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method isActivityRefreshing(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 111
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isRefreshRequested()Z

    move-result v0

    return v0
.end method

.method onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityRefresher;->shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 79
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatRefreshCycleThroughStopEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 80
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityViaPauseForCameraCompat()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    nop

    .line 83
    .local v0, "cycleThroughStop":Z
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/AppCompatCameraOverrides;->setIsRefreshRequested(Z)V

    .line 84
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x6413691bf2e03f6eL    # 1.200206803860267E174

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5, v6, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 87
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/app/servertransaction/RefreshCallbackItem;

    iget-object v4, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 88
    if-eqz v0, :cond_3

    const/4 v5, 0x5

    goto :goto_1

    :cond_3
    const/4 v5, 0x4

    :goto_1
    invoke-direct {v3, v4, v5}, Landroid/app/servertransaction/RefreshCallbackItem;-><init>(Landroid/os/IBinder;I)V

    .line 89
    .local v3, "refreshCallbackItem":Landroid/app/servertransaction/RefreshCallbackItem;
    new-instance v4, Landroid/app/servertransaction/ResumeActivityItem;

    iget-object v5, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v4, v5, v2, v2}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;ZZ)V

    .line 93
    .local v4, "resumeActivityItem":Landroid/app/servertransaction/ResumeActivityItem;
    :try_start_0
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 94
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/app/servertransaction/ClientTransactionItem;

    aput-object v3, v7, v2

    aput-object v4, v7, v1

    .line 93
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItems(Landroid/app/IApplicationThread;[Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v1, "isSuccessful":Z
    goto :goto_2

    .line 95
    .end local v1    # "isSuccessful":Z
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v1, v5

    .line 98
    .local v1, "isSuccessful":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 99
    iget-object v2, p0, Lcom/android/server/wm/ActivityRefresher;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p1}, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRefresher;Lcom/android/server/wm/ActivityRecord;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 105
    :cond_4
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/wm/AppCompatCameraOverrides;->setIsRefreshRequested(Z)V

    .line 108
    :goto_3
    return-void
.end method

.method onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 117
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatCameraOverrides;->setIsRefreshRequested(Z)V

    .line 118
    return-void
.end method

.method removeEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V
    .locals 1
    .param p1, "evaluator"    # Lcom/android/server/wm/ActivityRefresher$Evaluator;

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
