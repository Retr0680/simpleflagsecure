.class Lcom/android/server/wm/SnapshotController;
.super Ljava/lang/Object;
.source "SnapshotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SnapshotController$ActivitiesByTask;
    }
.end annotation


# instance fields
.field final mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

.field private final mObsoleteSnapshots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/HardwareBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;


# direct methods
.method public static synthetic $r8$lambda$TV29UzMtxQKVnhnWpRUevvp_os4(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/SnapshotController;->lambda$new$1(Landroid/hardware/HardwareBuffer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ibbxI7ud-kkaypzOJwL5fxr1fg(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/SnapshotController;->lambda$new$0(Landroid/hardware/HardwareBuffer;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 52
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {v0}, Lcom/android/server/wm/SnapshotPersistQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 53
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 54
    new-instance v0, Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/ActivitySnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 55
    new-instance v0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SnapshotController;)V

    .line 69
    .local v0, "releaser":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/HardwareBuffer;>;"
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotReleaser(Ljava/util/function/Consumer;)V

    .line 70
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotReleaser(Ljava/util/function/Consumer;)V

    .line 71
    return-void
.end method

.method private closeObsoleteSnapshots()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 236
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    .line 237
    .local v1, "hb":Landroid/hardware/HardwareBuffer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 235
    .end local v1    # "hb":Landroid/hardware/HardwareBuffer;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 241
    .end local v0    # "i":I
    return-void
.end method

.method private static isTransitionClose(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 248
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-ne p0, v0, :cond_1

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

.method private static isTransitionOpen(I)Z
    .locals 2
    .param p0, "type"    # I

    .line 244
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-ne p0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/HardwareBuffer;)V
    .locals 3
    .param p1, "hb"    # Landroid/hardware/HardwareBuffer;

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 66
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 61
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 66
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    return-void

    .line 66
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private synthetic lambda$new$1(Landroid/hardware/HardwareBuffer;)V
    .locals 2
    .param p1, "hb"    # Landroid/hardware/HardwareBuffer;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivitySnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SnapshotPersistQueue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 1
    .param p1, "appWindowToken"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "visible"    # Z

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivitySnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 93
    return-void
.end method

.method onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 89
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 84
    return-void
.end method

.method onTransactionReady(ILjava/util/ArrayList;)V
    .locals 10
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p2, "changeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionOpen(I)Z

    move-result v0

    .line 99
    .local v0, "isTransitionOpen":Z
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionClose(I)Z

    move-result v1

    .line 100
    .local v1, "isTransitionClose":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    const/4 v2, 0x0

    .line 104
    .local v2, "activityTargets":Lcom/android/server/wm/SnapshotController$ActivitiesByTask;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_9

    .line 105
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 107
    .local v4, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    iget v5, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 108
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 109
    :cond_2
    iget-object v5, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 110
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_3

    iget-boolean v6, v5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_3

    .line 111
    iget-object v6, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 114
    :cond_3
    if-eqz v1, :cond_4

    .line 115
    goto :goto_2

    .line 117
    :cond_4
    iget-object v6, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    nop

    if-nez v6, :cond_5

    iget-object v6, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 118
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 119
    :cond_5
    iget-object v6, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    .line 120
    .local v6, "tf":Lcom/android/server/wm/TaskFragment;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    goto :goto_1

    .line 121
    :cond_6
    iget-object v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    :goto_1
    nop

    .line 122
    .local v7, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 123
    if-nez v2, :cond_7

    .line 124
    new-instance v8, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;-><init>(Lcom/android/server/wm/SnapshotController-IA;)V

    move-object v2, v8

    .line 126
    :cond_7
    invoke-virtual {v2, v7}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->put(Lcom/android/server/wm/ActivityRecord;)V

    .line 104
    .end local v4    # "info":Lcom/android/server/wm/Transition$ChangeInfo;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "tf":Lcom/android/server/wm/TaskFragment;
    .end local v7    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_9
    nop

    .line 130
    .end local v3    # "i":I
    if-eqz v2, :cond_a

    .line 131
    iget-object v3, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->recordSnapshot(Lcom/android/server/wm/ActivitySnapshotController;)V

    .line 133
    :cond_a
    return-void
.end method

.method onTransitionFinish(ILjava/util/ArrayList;)V
    .locals 12
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p2, "changeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionOpen(I)Z

    move-result v0

    .line 190
    .local v0, "isTransitionOpen":Z
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionClose(I)Z

    move-result v1

    .line 191
    .local v1, "isTransitionClose":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_1

    .line 192
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/SnapshotController;->closeObsoleteSnapshots()V

    .line 194
    return-void

    .line 196
    :cond_2
    const-string v2, "SnapshotController_analysis"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivitySnapshotController;->beginSnapshotProcess()V

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 200
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 201
    .local v6, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-nez v7, :cond_3

    .line 202
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_3

    .line 203
    goto :goto_1

    .line 205
    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 207
    .end local v5    # "i":I
    iget-object v5, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivitySnapshotController;->handleTransitionFinish(Ljava/util/ArrayList;)V

    .line 208
    iget-object v5, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivitySnapshotController;->endSnapshotProcess()V

    .line 210
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "i":I
    :goto_2
    if-ltz v5, :cond_7

    .line 211
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 212
    .restart local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 215
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->isNtPopUpView()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 216
    goto :goto_3

    .line 219
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v8

    if-nez v8, :cond_6

    .line 220
    iget-object v8, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v9, v7, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v8

    .line 222
    .local v8, "snapshot":Landroid/window/TaskSnapshot;
    if-eqz v8, :cond_6

    .line 223
    iget-object v9, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v10, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget v11, v7, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/TaskSnapshotController;->removeAndDeleteSnapshot(II)V

    .line 210
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v8    # "snapshot":Landroid/window/TaskSnapshot;
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_7
    nop

    .line 227
    .end local v5    # "i":I
    invoke-direct {p0}, Lcom/android/server/wm/SnapshotController;->closeObsoleteSnapshots()V

    .line 228
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 229
    return-void
.end method

.method setPause(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SnapshotPersistQueue;->setPaused(Z)V

    .line 79
    return-void
.end method

.method systemReady()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->systemReady()V

    .line 75
    return-void
.end method
