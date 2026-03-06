.class public Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field mCheckedForSetup:Z

.field private final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field private mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;"
        }
    .end annotation
.end field

.field private mInExecution:Z

.field private mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$PRaEnwcckEo4XKtmHnHmsUkmZLo(I)[Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/ActivityStartController;->lambda$startActivities$0(I)[Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 112
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v1, Lcom/android/server/wm/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v3, Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V

    .line 115
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p3, "factory"    # Lcom/android/server/wm/ActivityStarter$Factory;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    .line 120
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 121
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 122
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    .line 124
    new-instance v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 126
    return-void
.end method

.method private static synthetic lambda$startActivities$0(I)[Landroid/content/Intent;
    .locals 1
    .param p0, "x$0"    # I

    .line 433
    new-array v0, p0, [Landroid/content/Intent;

    return-object v0
.end method

.method private startExistingRecents(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 646
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 647
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v1, v0

    .line 648
    .local v1, "activityType":I
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 649
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 650
    .local v3, "rootTask":Lcom/android/server/wm/Task;
    if-nez v3, :cond_1

    return v2

    .line 651
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 652
    .local v8, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    move-object v9, p2

    goto/16 :goto_4

    .line 653
    :goto_1
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 654
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 655
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 657
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v9, p2

    goto/16 :goto_4

    .line 660
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v8}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 661
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 662
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v5

    .line 663
    .local v5, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    .line 664
    .local v11, "task":Lcom/android/server/wm/Task;
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 666
    :try_start_0
    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 667
    .local v0, "transition":Lcom/android/server/wm/Transition;
    if-eqz v0, :cond_5

    .line 670
    nop

    .line 671
    :try_start_1
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getEnterPinnedWindowRunnable()Ljava/lang/Runnable;

    move-result-object v4

    .line 670
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Transition;->addTransitionEndedListener(Ljava/lang/Runnable;)V

    .line 673
    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/Transition;->setRemoteAnimationApp(Landroid/app/IApplicationThread;)V

    .line 674
    invoke-static {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 682
    .end local v0    # "transition":Lcom/android/server/wm/Transition;
    :catchall_0
    move-exception v0

    move-object v9, p2

    goto :goto_3

    .line 676
    .restart local v0    # "transition":Lcom/android/server/wm/Transition;
    :cond_5
    :goto_2
    :try_start_2
    const-string v4, "startExistingRecents"

    invoke-virtual {v11, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 677
    iput-boolean v10, v11, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 678
    const/4 v4, 0x0

    invoke-virtual {v11, v4, p2, v10}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 679
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v9, p2

    .end local p2    # "options":Landroid/app/ActivityOptions;
    .local v9, "options":Landroid/app/ActivityOptions;
    :try_start_3
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 682
    .end local v0    # "transition":Lcom/android/server/wm/Transition;
    iput-boolean v2, v11, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 683
    iget-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 684
    nop

    .line 685
    return v10

    .line 682
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v9    # "options":Landroid/app/ActivityOptions;
    .restart local p2    # "options":Landroid/app/ActivityOptions;
    :catchall_2
    move-exception v0

    move-object v9, p2

    .end local p2    # "options":Landroid/app/ActivityOptions;
    .restart local v9    # "options":Landroid/app/ActivityOptions;
    :goto_3
    iput-boolean v2, v11, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 683
    iget-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 684
    throw v0

    .line 655
    .end local v5    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local v9    # "options":Landroid/app/ActivityOptions;
    .end local v11    # "task":Lcom/android/server/wm/Task;
    .restart local p2    # "options":Landroid/app/ActivityOptions;
    :cond_6
    move-object v9, p2

    .end local p2    # "options":Landroid/app/ActivityOptions;
    .restart local v9    # "options":Landroid/app/ActivityOptions;
    goto :goto_4

    .line 654
    .end local v9    # "options":Landroid/app/ActivityOptions;
    .restart local p2    # "options":Landroid/app/ActivityOptions;
    :cond_7
    move-object v9, p2

    .end local p2    # "options":Landroid/app/ActivityOptions;
    .restart local v9    # "options":Landroid/app/ActivityOptions;
    goto :goto_4

    .line 653
    .end local v9    # "options":Landroid/app/ActivityOptions;
    .restart local p2    # "options":Landroid/app/ActivityOptions;
    :cond_8
    move-object v9, p2

    .end local p2    # "options":Landroid/app/ActivityOptions;
    .restart local v9    # "options":Landroid/app/ActivityOptions;
    goto :goto_4

    .line 652
    .end local v9    # "options":Landroid/app/ActivityOptions;
    .restart local p2    # "options":Landroid/app/ActivityOptions;
    :cond_9
    move-object v9, p2

    .line 658
    .end local p2    # "options":Landroid/app/ActivityOptions;
    .restart local v9    # "options":Landroid/app/ActivityOptions;
    :goto_4
    return v2
.end method


# virtual methods
.method checkTargetUser(IZIILjava/lang/String;)I
    .locals 1
    .param p1, "targetUserId"    # I
    .param p2, "validateIncomingUser"    # Z
    .param p3, "realCallingPid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 277
    if-eqz p2, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3, p4, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v0

    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 282
    return p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, "dumped":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 712
    .local v3, "dumpPackagePresent":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "  "

    nop

    if-eqz v4, :cond_2

    nop

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 713
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 714
    :cond_1
    const/4 v0, 0x1

    .line 715
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 717
    const-string v4, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v6, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 721
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v4, :cond_6

    .line 722
    nop

    nop

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 723
    invoke-virtual {v4, p3}, Lcom/android/server/wm/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v4

    nop

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    nop

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 725
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v1, v2

    :goto_2
    nop

    .line 727
    .local v1, "dump":Z
    if-eqz v1, :cond_6

    .line 728
    if-nez v0, :cond_5

    .line 729
    const/4 v0, 0x1

    .line 730
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 732
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 733
    const-string v2, "mLastStarter:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 736
    if-eqz v3, :cond_6

    .line 737
    return-void

    .line 742
    .end local v1    # "dump":Z
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 743
    const/4 v0, 0x1

    .line 744
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHomeLaunchingTaskDisplayAreas:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    :cond_7
    if-nez v0, :cond_8

    .line 749
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 750
    const-string v1, "(nothing)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    :cond_8
    return-void
.end method

.method dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 702
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    const-string v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    iget v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 705
    return-void
.end method

.method getLastStartActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method isInExecution()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    return v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reason"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V
    .locals 1
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->set(Lcom/android/server/wm/ActivityStarter;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    .line 152
    return-void
.end method

.method onExecutionStarted()V
    .locals 1

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    .line 139
    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetRootTask"    # Lcom/android/server/wm/Task;

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    .line 165
    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p3, "launchCookie"    # Landroid/os/IBinder;

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    .line 691
    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .locals 29
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "incomingRealCallingPid"    # I
    .param p4, "incomingRealCallingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;
    .param p7, "intents"    # [Landroid/content/Intent;
    .param p8, "resolvedTypes"    # [Ljava/lang/String;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p11, "userId"    # I
    .param p12, "reason"    # Ljava/lang/String;
    .param p13, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p14, "allowBalExemptionForSystemProcess"    # Z

    .line 394
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move-object/from16 v11, p8

    if-eqz v3, :cond_1d

    .line 397
    if-eqz v11, :cond_1c

    .line 400
    array-length v0, v3

    array-length v4, v11

    if-ne v0, v4, :cond_1b

    .line 404
    if-eqz p3, :cond_0

    .line 405
    move/from16 v0, p3

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    :goto_0
    move v12, v0

    .line 407
    .local v12, "realCallingPid":I
    const/4 v13, -0x1

    move/from16 v14, p4

    if-eq v14, v13, :cond_1

    .line 408
    move v0, v14

    goto :goto_1

    .line 409
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :goto_1
    move v15, v0

    .line 412
    .local v15, "realCallingUid":I
    if-ltz p2, :cond_2

    .line 413
    const/4 v0, -0x1

    move/from16 v4, p2

    move/from16 v23, v0

    .local v0, "callingPid":I
    goto :goto_2

    .line 414
    .end local v0    # "callingPid":I
    :cond_2
    if-nez v2, :cond_3

    .line 415
    move v0, v12

    .line 416
    .restart local v0    # "callingPid":I
    move v4, v15

    move/from16 v23, v0

    .end local p2    # "callingUid":I
    .local v4, "callingUid":I
    goto :goto_2

    .line 418
    .end local v0    # "callingPid":I
    .end local v4    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_3
    move v0, v13

    .end local p2    # "callingUid":I
    .local v0, "callingUid":I
    move v4, v13

    move/from16 v23, v4

    move v4, v0

    .line 420
    .end local v0    # "callingUid":I
    .restart local v4    # "callingUid":I
    .local v23, "callingPid":I
    :goto_2
    const/16 v0, -0x2710

    invoke-static {v4, v15, v0}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v22

    .line 422
    .local v22, "filterCallingUid":I
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v5, v0

    .line 423
    .local v5, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 425
    .local v24, "origId":J
    const/4 v0, 0x0

    .line 426
    .local v0, "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    if-eqz p10, :cond_4

    .line 430
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->selectiveCloneLaunchOptions()Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_3

    .line 426
    :cond_4
    move-object/from16 v26, v0

    .line 433
    .end local v0    # "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v26, "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    :goto_3
    :try_start_0
    new-instance v0, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    move-object v3, v0

    .line 434
    .end local p7    # "intents":[Landroid/content/Intent;
    .local v3, "intents":[Landroid/content/Intent;
    :try_start_1
    array-length v0, v3

    new-array v0, v0, [Lcom/android/server/wm/ActivityStarter;

    move-object v6, v0

    .line 437
    .local v6, "starters":[Lcom/android/server/wm/ActivityStarter;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_4
    array-length v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    const/16 v27, 0x0

    const/4 v8, 0x1

    if-ge v7, v0, :cond_f

    .line 438
    :try_start_2
    aget-object v0, v3, v7

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 442
    .local v9, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    invoke-virtual {v0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v10

    if-nez v10, :cond_e

    .line 447
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_5

    move v10, v8

    goto :goto_5

    :cond_5
    move/from16 v10, v27

    .line 449
    .local v10, "componentSpecified":Z
    :goto_5
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 452
    .end local v0    # "intent":Landroid/content/Intent;
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13, v8}, Landroid/content/Intent;->removeExtendedFlags(I)V

    .line 455
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    aget-object v18, v11, v7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, p11

    move-object/from16 v16, v0

    move-object/from16 v17, v13

    .end local v13    # "intent":Landroid/content/Intent;
    .local v17, "intent":Landroid/content/Intent;
    invoke-virtual/range {v16 .. v23}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;III)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    move-object/from16 v17, v5

    move-object v5, v13

    move/from16 v16, v8

    move/from16 v8, v22

    move/from16 v13, v23

    .line 458
    .end local v22    # "filterCallingUid":I
    .end local v23    # "callingPid":I
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v5, "intent":Landroid/content/Intent;
    .local v8, "filterCallingUid":I
    .local v13, "callingPid":I
    .local v17, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    move-object/from16 p2, v3

    .end local v3    # "intents":[Landroid/content/Intent;
    .local p2, "intents":[Landroid/content/Intent;
    :try_start_3
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    move/from16 v18, v4

    move/from16 v4, p11

    .end local v4    # "callingUid":I
    .local v18, "callingUid":I
    :try_start_4
    invoke-virtual {v3, v0, v4}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 459
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v0, -0x1

    .line 460
    .local v0, "creatorUid":I
    const/16 v19, 0x0

    .line 461
    .local v19, "creatorPackage":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->isValid(Landroid/content/Intent;)Z

    move-result v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    if-eqz v20, :cond_6

    .line 462
    nop

    .line 463
    :try_start_5
    invoke-virtual {v5}, Landroid/content/Intent;->getCreatorToken()Landroid/os/IBinder;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    .line 464
    .local v20, "creatorToken":Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;
    move/from16 p7, v0

    .end local v0    # "creatorUid":I
    .local p7, "creatorUid":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->getCreatorUid()I

    move-result v0

    if-eq v0, v8, :cond_7

    .line 465
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->getCreatorUid()I

    move-result v0

    .line 466
    .end local p7    # "creatorUid":I
    .restart local v0    # "creatorUid":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->getCreatorPackage()Ljava/lang/String;

    move-result-object v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v19, v21

    move v4, v0

    goto :goto_6

    .line 588
    .end local v0    # "creatorUid":I
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v7    # "i":I
    .end local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v10    # "componentSpecified":Z
    .end local v19    # "creatorPackage":Ljava/lang/String;
    .end local v20    # "creatorToken":Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;
    :catchall_0
    move-exception v0

    move-object/from16 v11, p9

    move-object/from16 v10, p12

    move v5, v15

    move-object/from16 v14, v17

    move-object/from16 v15, p2

    move/from16 v17, v12

    move/from16 v12, v18

    goto/16 :goto_19

    .line 461
    .restart local v0    # "creatorUid":I
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v7    # "i":I
    .restart local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v10    # "componentSpecified":Z
    .restart local v19    # "creatorPackage":Ljava/lang/String;
    :cond_6
    move/from16 p7, v0

    .line 471
    .end local v0    # "creatorUid":I
    .restart local p7    # "creatorUid":I
    :cond_7
    move/from16 v4, p7

    .end local p7    # "creatorUid":I
    .local v4, "creatorUid":I
    :goto_6
    if-eqz v3, :cond_b

    .line 474
    :try_start_6
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 p7, v6

    .end local v6    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local p7, "starters":[Lcom/android/server/wm/ActivityStarter;
    :try_start_7
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move/from16 v20, v7

    .end local v7    # "i":I
    .local v20, "i":I
    :try_start_8
    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 477
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 475
    invoke-interface {v0, v5, v8, v6, v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v6, v0

    .line 481
    .end local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v6, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    nop

    .line 483
    const/4 v7, -0x1

    if-eq v4, v7, :cond_9

    .line 485
    :try_start_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 488
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 486
    invoke-interface {v0, v5, v4, v7, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    .line 489
    .local v0, "creatorIntentGrants":Lcom/android/server/uri/NeededUriGrants;
    if-nez v6, :cond_8

    .line 490
    move-object v6, v0

    goto :goto_7

    .line 492
    :cond_8
    invoke-virtual {v6, v0}, Lcom/android/server/uri/NeededUriGrants;->merge(Lcom/android/server/uri/NeededUriGrants;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 499
    .end local v0    # "creatorIntentGrants":Lcom/android/server/uri/NeededUriGrants;
    :goto_7
    move v7, v15

    move-object/from16 v15, p2

    move/from16 p2, v16

    move/from16 v16, v7

    move-object/from16 v28, p7

    move-object v11, v3

    move-object v9, v6

    move-object/from16 v14, v17

    move-object/from16 v7, v19

    move v6, v4

    move/from16 v19, v10

    move/from16 v17, v12

    move/from16 v12, v20

    move-object/from16 v4, p5

    goto/16 :goto_9

    .line 494
    :catch_0
    move-exception v0

    nop

    .line 495
    .local v0, "securityException":Ljava/lang/SecurityException;
    :try_start_a
    iget-object v7, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v9, v6

    move v6, v4

    .end local v4    # "creatorUid":I
    .local v6, "creatorUid":I
    .restart local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    const/4 v4, 0x2

    move v11, v15

    move-object/from16 v15, p2

    move/from16 p2, v16

    move/from16 v16, v11

    move-object/from16 v28, p7

    move-object v11, v3

    move-object v3, v7

    move-object/from16 v14, v17

    move-object/from16 v7, v19

    move/from16 v19, v10

    move/from16 v17, v12

    move/from16 v12, v20

    move-object v10, v0

    move-object/from16 v20, v9

    move-object/from16 v9, p5

    .end local v0    # "securityException":Ljava/lang/SecurityException;
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local p2    # "intents":[Landroid/content/Intent;
    .end local p7    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v7, "creatorPackage":Ljava/lang/String;
    .local v10, "securityException":Ljava/lang/SecurityException;
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "i":I
    .local v14, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .local v16, "realCallingUid":I
    .local v17, "realCallingPid":I
    .local v19, "componentSpecified":Z
    .local v20, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v28, "starters":[Lcom/android/server/wm/ActivityStarter;
    :try_start_b
    invoke-static/range {v3 .. v10}, Lcom/android/server/wm/ActivityStarter;->logAndThrowExceptionForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v4, v9

    goto :goto_8

    .line 588
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "creatorUid":I
    .end local v7    # "creatorPackage":Ljava/lang/String;
    .end local v10    # "securityException":Ljava/lang/SecurityException;
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "i":I
    .end local v19    # "componentSpecified":Z
    .end local v20    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_1
    move-exception v0

    move-object v4, v9

    move-object/from16 v11, p9

    move-object/from16 v10, p12

    move/from16 v5, v16

    move/from16 v12, v18

    goto/16 :goto_19

    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "realCallingUid":I
    .local v12, "realCallingPid":I
    .local v15, "realCallingUid":I
    .local v17, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local p2    # "intents":[Landroid/content/Intent;
    :catchall_2
    move-exception v0

    move-object/from16 v4, p5

    move/from16 v16, v15

    move-object/from16 v14, v17

    move-object/from16 v15, p2

    move/from16 v17, v12

    move-object/from16 v11, p9

    move-object/from16 v10, p12

    move/from16 v5, v16

    move/from16 v12, v18

    .end local v12    # "realCallingPid":I
    .end local p2    # "intents":[Landroid/content/Intent;
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .restart local v16    # "realCallingUid":I
    .local v17, "realCallingPid":I
    goto/16 :goto_19

    .line 483
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "realCallingUid":I
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "creatorUid":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .local v6, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v10, "componentSpecified":Z
    .restart local v12    # "realCallingPid":I
    .local v15, "realCallingUid":I
    .local v17, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v19, "creatorPackage":Ljava/lang/String;
    .local v20, "i":I
    .restart local p2    # "intents":[Landroid/content/Intent;
    .restart local p7    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :cond_9
    move v7, v15

    move-object/from16 v15, p2

    move/from16 p2, v16

    move/from16 v16, v7

    move-object/from16 v28, p7

    move-object v11, v3

    move-object/from16 v14, v17

    move-object/from16 v7, v19

    move/from16 v19, v10

    move/from16 v17, v12

    move/from16 v12, v20

    move-object/from16 v20, v6

    move v6, v4

    move-object/from16 v4, p5

    .line 501
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "creatorUid":I
    .end local v10    # "componentSpecified":Z
    .end local p2    # "intents":[Landroid/content/Intent;
    .end local p7    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v6, "creatorUid":I
    .restart local v7    # "creatorPackage":Ljava/lang/String;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "i":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .restart local v16    # "realCallingUid":I
    .local v17, "realCallingPid":I
    .local v19, "componentSpecified":Z
    .local v20, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :goto_8
    move-object/from16 v9, v20

    .end local v20    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :goto_9
    :try_start_c
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    .line 506
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 588
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "creatorUid":I
    .end local v7    # "creatorPackage":Ljava/lang/String;
    .end local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "i":I
    .end local v19    # "componentSpecified":Z
    .end local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_3
    move-exception v0

    move-object/from16 v11, p9

    move-object/from16 v10, p12

    move/from16 v5, v16

    move/from16 v12, v18

    goto/16 :goto_19

    .line 503
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "creatorUid":I
    .restart local v7    # "creatorPackage":Ljava/lang/String;
    .restart local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "i":I
    .restart local v19    # "componentSpecified":Z
    .restart local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "filterCallingUid":I
    .end local v13    # "callingPid":I
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v15    # "intents":[Landroid/content/Intent;
    .end local v16    # "realCallingUid":I
    .end local v17    # "realCallingPid":I
    .end local v18    # "callingUid":I
    .end local v24    # "origId":J
    .end local v26    # "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBalExemptionForSystemProcess":Z
    throw v0

    .line 478
    .end local v6    # "creatorUid":I
    .end local v7    # "creatorPackage":Ljava/lang/String;
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "creatorUid":I
    .restart local v8    # "filterCallingUid":I
    .restart local v10    # "componentSpecified":Z
    .local v12, "realCallingPid":I
    .restart local v13    # "callingPid":I
    .local v15, "realCallingUid":I
    .local v17, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v18    # "callingUid":I
    .local v19, "creatorPackage":Ljava/lang/String;
    .local v20, "i":I
    .restart local v24    # "origId":J
    .restart local v26    # "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "intents":[Landroid/content/Intent;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p7    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBalExemptionForSystemProcess":Z
    :catch_1
    move-exception v0

    move-object/from16 v28, p7

    move-object v11, v3

    move v6, v4

    move/from16 v16, v15

    move-object/from16 v14, v17

    move-object/from16 v7, v19

    move-object/from16 v15, p2

    move-object/from16 v4, p5

    move/from16 v19, v10

    move/from16 v17, v12

    move/from16 v12, v20

    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "creatorUid":I
    .end local v10    # "componentSpecified":Z
    .end local v20    # "i":I
    .end local p2    # "intents":[Landroid/content/Intent;
    .end local p7    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v6    # "creatorUid":I
    .restart local v7    # "creatorPackage":Ljava/lang/String;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "i":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .restart local v16    # "realCallingUid":I
    .local v17, "realCallingPid":I
    .local v19, "componentSpecified":Z
    .restart local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    goto :goto_a

    .end local v6    # "creatorUid":I
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "realCallingUid":I
    .end local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "creatorUid":I
    .local v7, "i":I
    .restart local v10    # "componentSpecified":Z
    .local v12, "realCallingPid":I
    .local v15, "realCallingUid":I
    .local v17, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v19, "creatorPackage":Ljava/lang/String;
    .restart local p2    # "intents":[Landroid/content/Intent;
    .restart local p7    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catch_2
    move-exception v0

    move-object/from16 v28, p7

    move-object v11, v3

    move v6, v4

    move/from16 v16, v15

    move-object/from16 v14, v17

    move-object/from16 v15, p2

    move-object/from16 v4, p5

    move/from16 v17, v12

    move v12, v7

    move-object/from16 v7, v19

    move/from16 v19, v10

    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "creatorUid":I
    .end local v10    # "componentSpecified":Z
    .end local p2    # "intents":[Landroid/content/Intent;
    .end local p7    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v6    # "creatorUid":I
    .local v7, "creatorPackage":Ljava/lang/String;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "i":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .restart local v16    # "realCallingUid":I
    .local v17, "realCallingPid":I
    .local v19, "componentSpecified":Z
    .restart local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    goto :goto_a

    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "realCallingUid":I
    .end local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "creatorUid":I
    .local v6, "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v7, "i":I
    .restart local v10    # "componentSpecified":Z
    .local v12, "realCallingPid":I
    .local v15, "realCallingUid":I
    .local v17, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v19, "creatorPackage":Ljava/lang/String;
    .restart local p2    # "intents":[Landroid/content/Intent;
    :catch_3
    move-exception v0

    move-object v11, v3

    move-object/from16 v28, v6

    move/from16 v16, v15

    move-object/from16 v14, v17

    move-object/from16 v15, p2

    move v6, v4

    move/from16 v17, v12

    move-object/from16 v4, p5

    move v12, v7

    move-object/from16 v7, v19

    move/from16 v19, v10

    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "creatorUid":I
    .end local v10    # "componentSpecified":Z
    .end local p2    # "intents":[Landroid/content/Intent;
    .local v6, "creatorUid":I
    .local v7, "creatorPackage":Ljava/lang/String;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "i":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .restart local v16    # "realCallingUid":I
    .local v17, "realCallingPid":I
    .local v19, "componentSpecified":Z
    .restart local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :goto_a
    nop

    .line 479
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "ActivityTaskManager"

    const-string v10, "Not allowed to start activity since no uri permission."

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 480
    nop

    .line 588
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 480
    const/16 v3, -0x60

    return v3

    .line 471
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "realCallingUid":I
    .end local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "creatorUid":I
    .local v6, "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v7, "i":I
    .restart local v10    # "componentSpecified":Z
    .local v12, "realCallingPid":I
    .local v15, "realCallingUid":I
    .local v17, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v19, "creatorPackage":Ljava/lang/String;
    .restart local p2    # "intents":[Landroid/content/Intent;
    :cond_b
    move v11, v15

    move-object/from16 v15, p2

    move/from16 p2, v16

    move/from16 v16, v11

    move-object v11, v3

    move-object/from16 v28, v6

    move-object/from16 v14, v17

    move v6, v4

    move/from16 v17, v12

    move-object/from16 v4, p5

    move v12, v7

    move-object/from16 v7, v19

    move/from16 v19, v10

    .line 510
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "creatorUid":I
    .end local v10    # "componentSpecified":Z
    .end local p2    # "intents":[Landroid/content/Intent;
    .local v6, "creatorUid":I
    .local v7, "creatorPackage":Ljava/lang/String;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "i":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .restart local v16    # "realCallingUid":I
    .local v17, "realCallingPid":I
    .local v19, "componentSpecified":Z
    .restart local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :goto_b
    :try_start_d
    array-length v0, v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    add-int/lit8 v0, v0, -0x1

    if-ne v12, v0, :cond_c

    move/from16 v27, p2

    :cond_c
    move/from16 v0, v27

    .line 511
    .local v0, "top":Z
    if-eqz v0, :cond_d

    .line 512
    move-object/from16 v3, p10

    goto :goto_c

    .line 513
    :cond_d
    move-object/from16 v3, v26

    :goto_c
    nop

    .line 514
    .local v3, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v10, p12

    move/from16 v20, v12

    .end local v12    # "i":I
    .restart local v20    # "i":I
    :try_start_e
    invoke-virtual {v1, v5, v10}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 515
    invoke-virtual {v12, v9}, Lcom/android/server/wm/ActivityStarter;->setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 516
    invoke-virtual {v12, v2}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    aget-object v2, p8, v20

    .line 517
    invoke-virtual {v12, v2}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 518
    invoke-virtual {v2, v11}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 519
    const/4 v12, -0x1

    invoke-virtual {v2, v12}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 520
    invoke-virtual {v2, v13}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 521
    move/from16 v12, v18

    .end local v18    # "callingUid":I
    .local v12, "callingUid":I
    :try_start_f
    invoke-virtual {v2, v12}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 522
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 523
    move-object/from16 v18, v5

    move-object/from16 v5, p6

    .end local v5    # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 524
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityStarter;->setIntentCreatorUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 525
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityStarter;->setIntentCreatorPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 526
    move/from16 v5, v17

    .end local v17    # "realCallingPid":I
    .local v5, "realCallingPid":I
    :try_start_10
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 527
    move/from16 v17, v5

    move/from16 v5, v16

    .end local v16    # "realCallingUid":I
    .local v5, "realCallingUid":I
    .restart local v17    # "realCallingPid":I
    :try_start_11
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 528
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 529
    move-object/from16 p2, v3

    move/from16 v3, v19

    .end local v19    # "componentSpecified":Z
    .local v3, "componentSpecified":Z
    .local p2, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 533
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 534
    move/from16 v19, v3

    move-object/from16 v3, p13

    .end local v3    # "componentSpecified":Z
    .restart local v19    # "componentSpecified":Z
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 535
    move/from16 v3, p14

    :try_start_12
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setAllowBalExemptionForSystemProcess(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    move-object/from16 p7, v2

    move-object/from16 v2, v28

    .end local v28    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v2, "starters":[Lcom/android/server/wm/ActivityStarter;
    aput-object p7, v2, v20

    .line 437
    .end local v0    # "top":Z
    .end local v6    # "creatorUid":I
    .end local v7    # "creatorPackage":Ljava/lang/String;
    .end local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "componentSpecified":Z
    .end local p2    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v11, p8

    move-object v6, v2

    move/from16 v22, v8

    move v4, v12

    move/from16 v23, v13

    move-object v3, v15

    move/from16 v12, v17

    const/4 v13, -0x1

    move-object/from16 v2, p1

    move v15, v5

    move-object v5, v14

    move/from16 v14, p4

    .end local v20    # "i":I
    .local v7, "i":I
    goto/16 :goto_4

    .line 588
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v7    # "i":I
    :catchall_4
    move-exception v0

    :goto_d
    move-object/from16 v11, p9

    goto/16 :goto_19

    :catchall_5
    move-exception v0

    move/from16 v3, p14

    goto :goto_d

    .end local v17    # "realCallingPid":I
    .local v5, "realCallingPid":I
    .restart local v16    # "realCallingUid":I
    :catchall_6
    move-exception v0

    move/from16 v3, p14

    move/from16 v17, v5

    move/from16 v5, v16

    move-object/from16 v11, p9

    .end local v16    # "realCallingUid":I
    .local v5, "realCallingUid":I
    .restart local v17    # "realCallingPid":I
    goto/16 :goto_19

    .end local v5    # "realCallingUid":I
    .restart local v16    # "realCallingUid":I
    :catchall_7
    move-exception v0

    move/from16 v3, p14

    move/from16 v5, v16

    move-object/from16 v11, p9

    .end local v16    # "realCallingUid":I
    .restart local v5    # "realCallingUid":I
    goto/16 :goto_19

    .end local v5    # "realCallingUid":I
    .end local v12    # "callingUid":I
    .restart local v16    # "realCallingUid":I
    .local v18, "callingUid":I
    :catchall_8
    move-exception v0

    :goto_e
    move/from16 v3, p14

    move/from16 v5, v16

    move/from16 v12, v18

    move-object/from16 v11, p9

    .end local v16    # "realCallingUid":I
    .end local v18    # "callingUid":I
    .restart local v5    # "realCallingUid":I
    .restart local v12    # "callingUid":I
    goto/16 :goto_19

    .end local v5    # "realCallingUid":I
    .end local v12    # "callingUid":I
    .restart local v16    # "realCallingUid":I
    .restart local v18    # "callingUid":I
    :catchall_9
    move-exception v0

    move-object/from16 v10, p12

    goto :goto_e

    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "realCallingUid":I
    .local v12, "realCallingPid":I
    .local v15, "realCallingUid":I
    .local v17, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p2, "intents":[Landroid/content/Intent;
    :catchall_a
    move-exception v0

    move-object/from16 v4, p5

    move-object/from16 v10, p12

    move/from16 v3, p14

    move v5, v15

    move-object/from16 v14, v17

    move-object/from16 v15, p2

    move/from16 v17, v12

    move/from16 v12, v18

    move-object/from16 v11, p9

    .end local v18    # "callingUid":I
    .end local p2    # "intents":[Landroid/content/Intent;
    .restart local v5    # "realCallingUid":I
    .local v12, "callingUid":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .local v17, "realCallingPid":I
    goto/16 :goto_19

    .end local v5    # "realCallingUid":I
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v4, "callingUid":I
    .local v12, "realCallingPid":I
    .local v15, "realCallingUid":I
    .local v17, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local p2    # "intents":[Landroid/content/Intent;
    :catchall_b
    move-exception v0

    move-object/from16 v10, p12

    move/from16 v3, p14

    move v5, v15

    move-object/from16 v14, v17

    move-object/from16 v15, p2

    move/from16 v17, v12

    move v12, v4

    move-object/from16 v4, p5

    move-object/from16 v11, p9

    .end local v4    # "callingUid":I
    .end local p2    # "intents":[Landroid/content/Intent;
    .restart local v5    # "realCallingUid":I
    .local v12, "callingUid":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .local v17, "realCallingPid":I
    goto/16 :goto_19

    .end local v8    # "filterCallingUid":I
    .end local v13    # "callingPid":I
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v17    # "realCallingPid":I
    .local v3, "intents":[Landroid/content/Intent;
    .restart local v4    # "callingUid":I
    .local v5, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v12, "realCallingPid":I
    .local v15, "realCallingUid":I
    .restart local v22    # "filterCallingUid":I
    .restart local v23    # "callingPid":I
    :catchall_c
    move-exception v0

    move-object/from16 v10, p12

    move-object v14, v5

    move/from16 v17, v12

    move v5, v15

    move/from16 v8, v22

    move/from16 v13, v23

    move-object v15, v3

    move v12, v4

    move-object/from16 v4, p5

    move/from16 v3, p14

    :goto_f
    move-object/from16 v11, p9

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v22    # "filterCallingUid":I
    .end local v23    # "callingPid":I
    .local v5, "realCallingUid":I
    .restart local v8    # "filterCallingUid":I
    .local v12, "callingUid":I
    .restart local v13    # "callingPid":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .restart local v17    # "realCallingPid":I
    goto/16 :goto_19

    .line 443
    .end local v8    # "filterCallingUid":I
    .end local v13    # "callingPid":I
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v17    # "realCallingPid":I
    .local v0, "intent":Landroid/content/Intent;
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v4    # "callingUid":I
    .local v5, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v6, "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v7    # "i":I
    .restart local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v12, "realCallingPid":I
    .local v15, "realCallingUid":I
    .restart local v22    # "filterCallingUid":I
    .restart local v23    # "callingPid":I
    :cond_e
    move-object/from16 v10, p12

    move-object v14, v5

    move-object v2, v6

    move/from16 v20, v7

    move/from16 v17, v12

    move v5, v15

    move/from16 v8, v22

    move/from16 v13, v23

    move-object v15, v3

    move v12, v4

    move-object/from16 v4, p5

    move/from16 v3, p14

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v6    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v7    # "i":I
    .end local v22    # "filterCallingUid":I
    .end local v23    # "callingPid":I
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v5, "realCallingUid":I
    .restart local v8    # "filterCallingUid":I
    .local v12, "callingUid":I
    .restart local v13    # "callingPid":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .restart local v17    # "realCallingPid":I
    .restart local v20    # "i":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "File descriptors passed in Intent"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "realCallingUid":I
    .end local v8    # "filterCallingUid":I
    .end local v12    # "callingUid":I
    .end local v13    # "callingPid":I
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v15    # "intents":[Landroid/content/Intent;
    .end local v17    # "realCallingPid":I
    .end local v24    # "origId":J
    .end local v26    # "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBalExemptionForSystemProcess":Z
    throw v6

    .line 437
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v20    # "i":I
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v4    # "callingUid":I
    .local v5, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v6    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v7    # "i":I
    .local v12, "realCallingPid":I
    .local v15, "realCallingUid":I
    .restart local v22    # "filterCallingUid":I
    .restart local v23    # "callingPid":I
    .restart local v24    # "origId":J
    .restart local v26    # "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBalExemptionForSystemProcess":Z
    :cond_f
    move-object/from16 v10, p12

    move-object v14, v5

    move-object v2, v6

    move/from16 v20, v7

    move/from16 p2, v8

    move/from16 v17, v12

    move v5, v15

    move/from16 v8, v22

    move/from16 v13, v23

    move-object v15, v3

    move v12, v4

    move-object/from16 v4, p5

    move/from16 v3, p14

    .line 538
    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v6    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v7    # "i":I
    .end local v22    # "filterCallingUid":I
    .end local v23    # "callingPid":I
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v5, "realCallingUid":I
    .restart local v8    # "filterCallingUid":I
    .local v12, "callingUid":I
    .restart local v13    # "callingPid":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .restart local v17    # "realCallingPid":I
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    move/from16 v6, p2

    if-le v0, v6, :cond_12

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "startActivities: different apps ["

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 541
    .local v6, "size":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_10
    if-ge v7, v6, :cond_11

    .line 542
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    nop

    if-ne v7, v9, :cond_10

    const-string v9, "]"

    goto :goto_11

    :cond_10
    const-string v9, ", "

    :goto_11
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_11
    nop

    .line 544
    .end local v7    # "i":I
    const-string v7, " from "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v7, "ActivityTaskManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "size":I
    :cond_12
    move-object/from16 v6, p9

    .line 549
    .local v6, "sourceResultTo":Landroid/os/IBinder;
    const/4 v7, 0x1

    new-array v0, v7, [Lcom/android/server/wm/ActivityRecord;

    move-object v7, v0

    .line 551
    .local v7, "outActivity":[Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 552
    :try_start_13
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 556
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/StartingSurfaceController;->beginDeferAddStartingWindow()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    .line 558
    const/4 v0, 0x0

    move-object/from16 v11, p9

    .end local p9    # "resultTo":Landroid/os/IBinder;
    .local v0, "i":I
    .local v11, "resultTo":Landroid/os/IBinder;
    :goto_12
    const/16 v16, 0x0

    :try_start_14
    array-length v3, v2

    if-ge v0, v3, :cond_18

    .line 559
    aget-object v3, v2, v0

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 560
    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3

    .line 561
    .local v3, "startResult":I
    if-gez v3, :cond_15

    .line 563
    add-int/lit8 v18, v0, 0x1

    move/from16 p7, v3

    move/from16 v3, v18

    .local v3, "j":I
    .local p7, "startResult":I
    :goto_13
    array-length v4, v2

    if-ge v3, v4, :cond_13

    .line 564
    iget-object v4, v1, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    move/from16 v18, v3

    .end local v3    # "j":I
    .local v18, "j":I
    aget-object v3, v2, v18

    invoke-interface {v4, v3}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 563
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v4, p5

    .end local v18    # "j":I
    .restart local v3    # "j":I
    goto :goto_13

    .line 582
    .end local v0    # "i":I
    .end local v3    # "j":I
    .end local p7    # "startResult":I
    :catchall_d
    move-exception v0

    goto/16 :goto_17

    .line 563
    .restart local v0    # "i":I
    .restart local v3    # "j":I
    .restart local p7    # "startResult":I
    :cond_13
    move/from16 v18, v3

    .line 566
    .end local v3    # "j":I
    nop

    .line 582
    :try_start_15
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 583
    if-eqz p10, :cond_14

    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v16

    :cond_14
    move-object/from16 v4, v16

    goto :goto_14

    .line 586
    .end local v0    # "i":I
    .end local p7    # "startResult":I
    :catchall_e
    move-exception v0

    goto/16 :goto_18

    .line 582
    .restart local v0    # "i":I
    .restart local p7    # "startResult":I
    :goto_14
    invoke-virtual {v3, v4}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V

    .line 584
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 588
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    return p7

    .line 568
    .end local p7    # "startResult":I
    .local v3, "startResult":I
    :cond_15
    move/from16 p7, v3

    .end local v3    # "startResult":I
    .restart local p7    # "startResult":I
    :try_start_16
    aget-object v3, v7, v27

    .line 569
    .local v3, "started":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    if-ne v4, v8, :cond_16

    .line 572
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    move/from16 v19, v0

    const/16 v18, 0x1

    move-object v11, v4

    .end local v11    # "resultTo":Landroid/os/IBinder;
    .local v4, "resultTo":Landroid/os/IBinder;
    goto :goto_16

    .line 574
    .end local v4    # "resultTo":Landroid/os/IBinder;
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    :cond_16
    move-object v4, v6

    .line 576
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .restart local v4    # "resultTo":Landroid/os/IBinder;
    :try_start_17
    array-length v11, v2

    const/16 v18, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ge v0, v11, :cond_17

    .line 577
    add-int/lit8 v11, v0, 0x1

    aget-object v11, v2, v11

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStarter;->getIntent()Landroid/content/Intent;

    move-result-object v11

    move/from16 v19, v0

    .end local v0    # "i":I
    .local v19, "i":I
    const/high16 v0, 0x10000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    goto :goto_15

    .line 582
    .end local v3    # "started":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "i":I
    .end local p7    # "startResult":I
    :catchall_f
    move-exception v0

    move-object v11, v4

    goto :goto_17

    .line 576
    .restart local v0    # "i":I
    .restart local v3    # "started":Lcom/android/server/wm/ActivityRecord;
    .restart local p7    # "startResult":I
    :cond_17
    move/from16 v19, v0

    .line 558
    .end local v0    # "i":I
    .end local v3    # "started":Lcom/android/server/wm/ActivityRecord;
    .end local p7    # "startResult":I
    .restart local v19    # "i":I
    :goto_15
    move-object v11, v4

    .end local v4    # "resultTo":Landroid/os/IBinder;
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    :goto_16
    add-int/lit8 v0, v19, 0x1

    move-object/from16 v4, p5

    move/from16 v3, p14

    .end local v19    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_12

    :cond_18
    move/from16 v19, v0

    .line 582
    .end local v0    # "i":I
    :try_start_18
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 583
    if-eqz p10, :cond_19

    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v16

    :cond_19
    move-object/from16 v3, v16

    .line 582
    invoke-virtual {v0, v3}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V

    .line 584
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 585
    nop

    .line 586
    monitor-exit v9
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    .line 588
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v6    # "sourceResultTo":Landroid/os/IBinder;
    .end local v7    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 589
    nop

    .line 591
    return v27

    .line 588
    :catchall_10
    move-exception v0

    goto :goto_19

    .line 582
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v6    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v7    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    :goto_17
    :try_start_1a
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 583
    if-eqz p10, :cond_1a

    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v16

    :cond_1a
    move-object/from16 v4, v16

    .line 582
    invoke-virtual {v3, v4}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V

    .line 584
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 585
    nop

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v5    # "realCallingUid":I
    .end local v6    # "sourceResultTo":Landroid/os/IBinder;
    .end local v7    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "filterCallingUid":I
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "callingUid":I
    .end local v13    # "callingPid":I
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v15    # "intents":[Landroid/content/Intent;
    .end local v17    # "realCallingPid":I
    .end local v24    # "origId":J
    .end local v26    # "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBalExemptionForSystemProcess":Z
    throw v0

    .line 586
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v5    # "realCallingUid":I
    .restart local v6    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v7    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v8    # "filterCallingUid":I
    .restart local v12    # "callingUid":I
    .restart local v13    # "callingPid":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v15    # "intents":[Landroid/content/Intent;
    .restart local v17    # "realCallingPid":I
    .restart local v24    # "origId":J
    .restart local v26    # "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBalExemptionForSystemProcess":Z
    :catchall_11
    move-exception v0

    move-object/from16 v11, p9

    .end local p9    # "resultTo":Landroid/os/IBinder;
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    :goto_18
    monitor-exit v9
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v5    # "realCallingUid":I
    .end local v8    # "filterCallingUid":I
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "callingUid":I
    .end local v13    # "callingPid":I
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v15    # "intents":[Landroid/content/Intent;
    .end local v17    # "realCallingPid":I
    .end local v24    # "origId":J
    .end local v26    # "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBalExemptionForSystemProcess":Z
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    .line 588
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v6    # "sourceResultTo":Landroid/os/IBinder;
    .end local v7    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .local v3, "intents":[Landroid/content/Intent;
    .local v4, "callingUid":I
    .local v5, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v12, "realCallingPid":I
    .local v15, "realCallingUid":I
    .restart local v22    # "filterCallingUid":I
    .restart local v23    # "callingPid":I
    .restart local v24    # "origId":J
    .restart local v26    # "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBalExemptionForSystemProcess":Z
    :catchall_12
    move-exception v0

    move-object/from16 v10, p12

    move-object v14, v5

    move/from16 v17, v12

    move v5, v15

    move/from16 v8, v22

    move/from16 v13, v23

    move-object v15, v3

    move v12, v4

    goto/16 :goto_f

    .end local v3    # "intents":[Landroid/content/Intent;
    .local p7, "intents":[Landroid/content/Intent;
    :catchall_13
    move-exception v0

    move-object/from16 v10, p12

    move-object v14, v5

    move/from16 v17, v12

    move v5, v15

    move/from16 v8, v22

    move/from16 v13, v23

    move v12, v4

    move-object/from16 v15, p7

    move-object/from16 v11, p9

    .end local v4    # "callingUid":I
    .end local v22    # "filterCallingUid":I
    .end local v23    # "callingPid":I
    .end local p7    # "intents":[Landroid/content/Intent;
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .local v5, "realCallingUid":I
    .restart local v8    # "filterCallingUid":I
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    .local v12, "callingUid":I
    .restart local v13    # "callingPid":I
    .restart local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "intents":[Landroid/content/Intent;
    .restart local v17    # "realCallingPid":I
    :goto_19
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 589
    throw v0

    .line 401
    .end local v5    # "realCallingUid":I
    .end local v8    # "filterCallingUid":I
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "callingUid":I
    .end local v13    # "callingPid":I
    .end local v14    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v15    # "intents":[Landroid/content/Intent;
    .end local v17    # "realCallingPid":I
    .end local v24    # "origId":J
    .end local v26    # "bottomOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local p2, "callingUid":I
    .restart local p7    # "intents":[Landroid/content/Intent;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    :cond_1b
    move-object/from16 v10, p12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "intents are length different than resolvedTypes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1c
    move-object/from16 v10, p12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "resolvedTypes is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1d
    move-object/from16 v10, p12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "intents is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 22
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p10, "userId"    # I
    .param p11, "validateIncomingUser"    # Z
    .param p12, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p13, "allowBalExemptionForSystemProcess"    # Z

    .line 378
    const-string v0, "startActivityInPackage"

    .line 380
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 381
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 380
    const-string v6, "startActivityInPackage"

    move-object/from16 v1, p0

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v18

    .line 384
    .end local p10    # "userId":I
    .local v18, "userId":I
    const/4 v8, 0x0

    const-string v19, "startActivityInPackage"

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move-object/from16 v20, p12

    move/from16 v21, p13

    invoke-virtual/range {v7 .. v21}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v1

    return v1
.end method

.method final startActivitiesInPackage(ILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 14
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p8, "userId"    # I
    .param p9, "validateIncomingUser"    # Z
    .param p10, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p11, "allowBalExemptionForSystemProcess"    # Z

    .line 351
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v2

    return v2
.end method

.method final startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 16
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p13, "userId"    # I
    .param p14, "inTask"    # Lcom/android/server/wm/Task;
    .param p15, "reason"    # Ljava/lang/String;
    .param p16, "validateIncomingUser"    # Z
    .param p17, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p18, "allowBalExemptionForSystemProcess"    # Z

    .line 308
    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v1, p13

    move-object/from16 v5, p15

    move/from16 v2, p16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    .line 312
    .end local p13    # "userId":I
    .local v1, "userId":I
    move-object/from16 v2, p6

    invoke-virtual {v0, v2, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 313
    move/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 314
    move/from16 v6, p2

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 315
    move/from16 v7, p3

    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 316
    move-object/from16 v8, p4

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 317
    move-object/from16 v9, p5

    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 318
    move-object/from16 v10, p7

    invoke-virtual {v3, v10}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 319
    move-object/from16 v11, p8

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 320
    move-object/from16 v12, p9

    invoke-virtual {v3, v12}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 321
    move/from16 v13, p10

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 322
    move/from16 v14, p11

    invoke-virtual {v3, v14}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 323
    move-object/from16 v15, p12

    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 324
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 325
    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 326
    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 327
    move/from16 v0, p18

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStarter;->setAllowBalExemptionForSystemProcess(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 328
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3

    .line 312
    return v3
.end method

.method startActivityInTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;IILandroid/os/IBinder;)I
    .locals 4
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityOptions"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p4, "resultTo"    # Landroid/os/IBinder;
    .param p5, "callingUid"    # I
    .param p6, "callingPid"    # I
    .param p7, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 609
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 610
    .local v0, "caller":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 611
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "resolvedType":Ljava/lang/String;
    const-string v2, "startActivityInTaskFragment"

    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 613
    invoke-virtual {v2, p3}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 614
    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityStarter;->setInTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 615
    invoke-virtual {v2, p4}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 616
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 617
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 618
    invoke-virtual {v2, p5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 619
    invoke-virtual {v2, p6}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 620
    invoke-virtual {v2, p5}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 621
    invoke-virtual {v2, p6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 622
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v3

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 623
    invoke-virtual {v2, p7}, Lcom/android/server/wm/ActivityStarter;->setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 624
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v2

    .line 612
    return v2
.end method

.method startExistingRecentsIfPossible(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 634
    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "startExistingRecents"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 635
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->startExistingRecents(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 636
    nop

    .line 640
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 636
    const/4 v0, 0x1

    return v0

    .line 640
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 641
    nop

    .line 642
    const/4 v0, 0x0

    return v0

    .line 640
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 641
    throw v2
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abort starting home on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " recursively."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 174
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 175
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 176
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 182
    :cond_1
    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 183
    .local v2, "displayId":I
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 184
    iget-object v3, p4, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 185
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 184
    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 189
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 193
    :try_start_0
    invoke-virtual {p4, v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    .local v1, "rootHomeTask":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 196
    nop

    .line 199
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startHomeActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 201
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 202
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 203
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 204
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 205
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 204
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;II)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 206
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    nop

    .line 210
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 211
    iget-boolean v3, v1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    .line 217
    :cond_2
    return-void

    .line 208
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    throw v3

    .line 195
    .end local v1    # "rootHomeTask":Lcom/android/server/wm/Task;
    :catchall_1
    move-exception v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 196
    throw v1
.end method

.method startSetupActivity()V
    .locals 10

    .line 224
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    if-eqz v0, :cond_0

    .line 225
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    nop

    if-eq v1, v2, :cond_3

    .line 233
    const-string v1, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 237
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 242
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 243
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 244
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    if-eqz v5, :cond_1

    .line 245
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 246
    :cond_1
    const/4 v5, 0x0

    :goto_0
    nop

    .line 247
    .local v5, "vers":Ljava/lang/String;
    if-nez v5, :cond_2

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    .line 248
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 251
    :cond_2
    nop

    .line 252
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v6

    .line 251
    const-string v7, "last_setup_shown"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "lastVers":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 254
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 257
    const-string v7, "startSetupActivity"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 258
    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 259
    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 260
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 264
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "vers":Ljava/lang/String;
    .end local v6    # "lastVers":Ljava/lang/String;
    :cond_3
    return-void
.end method
